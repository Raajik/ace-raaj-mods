using System.Diagnostics;
using System.Text.Json;

namespace LinearSync;

internal static class Program
{
    private static readonly JsonSerializerOptions JsonRead = new()
    {
        PropertyNameCaseInsensitive = true,
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
        ReadCommentHandling = JsonCommentHandling.Skip,
        AllowTrailingCommas = true
    };

    private static readonly JsonSerializerOptions JsonWrite = new()
    {
        WriteIndented = true
    };

    public static async Task<int> Main(string[] args)
    {
        try
        {
            return await RunAsync(args, CancellationToken.None).ConfigureAwait(false);
        }
        catch (Exception ex)
        {
            Console.Error.WriteLine(ex.Message);
            return 1;
        }
    }

    private static async Task<int> RunAsync(string[] args, CancellationToken cancellationToken)
    {
        bool includeUncommitted = false;
        string? configPath = null;
        string command = "push";

        for (int i = 0; i < args.Length; i++)
        {
            string a = args[i];
            if (string.Equals(a, "dry-run", StringComparison.OrdinalIgnoreCase))
            {
                command = "dry-run";
            }
            else if (string.Equals(a, "bootstrap", StringComparison.OrdinalIgnoreCase))
            {
                command = "bootstrap";
            }
            else if (string.Equals(a, "push", StringComparison.OrdinalIgnoreCase))
            {
                command = "push";
            }
            else if (string.Equals(a, "--include-uncommitted", StringComparison.OrdinalIgnoreCase))
            {
                includeUncommitted = true;
            }
            else if (string.Equals(a, "--config", StringComparison.OrdinalIgnoreCase) && i + 1 < args.Length)
            {
                configPath = args[++i];
            }
            else if (string.Equals(a, "--help", StringComparison.OrdinalIgnoreCase) || string.Equals(a, "-h", StringComparison.OrdinalIgnoreCase))
            {
                PrintHelp();
                return 0;
            }
            else
            {
                Console.Error.WriteLine($"Unknown argument: {a}");
                PrintHelp();
                return 1;
            }
        }

        string repoRoot = FindRepoRoot(Directory.GetCurrentDirectory());
        string configFile = configPath ?? Path.Combine(repoRoot, "linear-sync.config.json");
        if (!File.Exists(configFile))
        {
            throw new InvalidOperationException(
                $"Missing config: {configFile}. Copy linear-sync.config.example.json to linear-sync.config.json and edit.");
        }

        string configText = await File.ReadAllTextAsync(configFile, cancellationToken).ConfigureAwait(false);
        SyncConfig config = JsonSerializer.Deserialize<SyncConfig>(configText, JsonRead)
            ?? throw new InvalidOperationException("Config parse failed.");

        string? envTeam = Environment.GetEnvironmentVariable("LINEAR_SYNC_TEAM");
        if (!string.IsNullOrWhiteSpace(envTeam))
        {
            config.Team = envTeam.Trim();
        }

        string? envProject = Environment.GetEnvironmentVariable("LINEAR_SYNC_DEFAULT_PROJECT");
        if (!string.IsNullOrWhiteSpace(envProject))
        {
            config.DefaultProject = envProject.Trim();
        }

        bool needsTeam = !string.Equals(command, "dry-run", StringComparison.OrdinalIgnoreCase);
        if (needsTeam && string.IsNullOrWhiteSpace(config.Team))
        {
            throw new InvalidOperationException("Config Team is required (or set LINEAR_SYNC_TEAM).");
        }

        List<string> excludes = config.ExcludeModFolders.Count > 0
            ? config.ExcludeModFolders
            : new List<string> { "tools" };

        string mapPath = Path.Combine(repoRoot, "linear-mod-map.json");
        Dictionary<string, string> map = await LoadMapAsync(mapPath, cancellationToken).ConfigureAwait(false);

        string? apiKey = Environment.GetEnvironmentVariable("LINEAR_API_KEY");

        if (string.Equals(command, "dry-run", StringComparison.OrdinalIgnoreCase))
        {
            await DryRunAsync(repoRoot, config, excludes, map, includeUncommitted, cancellationToken).ConfigureAwait(false);
            return 0;
        }

        if (string.IsNullOrWhiteSpace(apiKey))
        {
            throw new InvalidOperationException("LINEAR_API_KEY is not set.");
        }

        using var client = new LinearGraphQlClient(apiKey!);
        string teamId = await client.ResolveTeamIdAsync(config.Team, cancellationToken).ConfigureAwait(false);
        string? projectId = await client.ResolveProjectIdAsync(config.DefaultProject, cancellationToken).ConfigureAwait(false);

        if (string.Equals(command, "bootstrap", StringComparison.OrdinalIgnoreCase))
        {
            await BootstrapAsync(client, repoRoot, config, teamId, projectId, excludes, map, mapPath, cancellationToken)
                .ConfigureAwait(false);
            return 0;
        }

        await PushAsync(client, repoRoot, config, excludes, map, includeUncommitted, cancellationToken).ConfigureAwait(false);
        return 0;
    }

    private static void PrintHelp()
    {
        Console.WriteLine("""
            LinearSync — post git changes to Linear issue comments (ace-raaj-mods).

            Usage:
              dotnet run --project tools/LinearSync -- [push] [--include-uncommitted] [--config path]
              dotnet run --project tools/LinearSync -- bootstrap [--config path]
              dotnet run --project tools/LinearSync -- dry-run [--include-uncommitted] [--config path]

            Environment:
              LINEAR_API_KEY              Personal API key (not required for dry-run)
              LINEAR_SYNC_TEAM            Overrides config team (e.g. CI)
              LINEAR_SYNC_DEFAULT_PROJECT Overrides config defaultProject

            Files (repo root):
              linear-sync.config.json   Team, base ref, optional project URL
              linear-mod-map.json       Mod folder name -> Linear issue id (e.g. ACE-12)
            """);
    }

    private static async Task DryRunAsync(
        string repoRoot,
        SyncConfig config,
        List<string> excludes,
        Dictionary<string, string> map,
        bool includeUncommitted,
        CancellationToken cancellationToken)
    {
        IReadOnlyList<string> paths = CollectChangedPaths(repoRoot, config.BaseRef, includeUncommitted);
        IReadOnlyDictionary<string, List<string>> byMod = BucketByMod(paths, repoRoot, excludes);
        Console.WriteLine($"[dry-run] base={config.BaseRef} paths={paths.Count} includeUncommitted={includeUncommitted}");
        foreach (KeyValuePair<string, List<string>> kv in byMod.OrderBy(k => k.Key, StringComparer.OrdinalIgnoreCase))
        {
            if (!map.TryGetValue(kv.Key, out string? issueId))
            {
                Console.WriteLine($"[dry-run] skip (no map): {kv.Key} ({kv.Value.Count} files)");
                continue;
            }

            Console.WriteLine($"[dry-run] comment {issueId} for mod {kv.Key}:");
            foreach (string p in kv.Value.OrderBy(x => x, StringComparer.OrdinalIgnoreCase))
            {
                Console.WriteLine($"    {p}");
            }
        }

        List<string> mods = DiscoverModFolders(repoRoot, excludes);
        foreach (string mod in mods.OrderBy(x => x, StringComparer.OrdinalIgnoreCase))
        {
            if (map.ContainsKey(mod))
            {
                continue;
            }

            Console.WriteLine($"[dry-run] bootstrap would create issue for unmapped mod: {mod}");
        }

        await Task.CompletedTask.ConfigureAwait(false);
    }

    private static async Task BootstrapAsync(
        LinearGraphQlClient client,
        string repoRoot,
        SyncConfig config,
        string teamId,
        string? projectId,
        List<string> excludes,
        Dictionary<string, string> map,
        string mapPath,
        CancellationToken cancellationToken)
    {
        List<string> mods = DiscoverModFolders(repoRoot, excludes);
        bool changed = false;
        foreach (string mod in mods.OrderBy(x => x, StringComparer.OrdinalIgnoreCase))
        {
            if (map.ContainsKey(mod))
            {
                continue;
            }

            ModMeta? meta = ReadMeta(repoRoot, mod);
            string title = meta?.Name ?? mod;
            if (!string.Equals(title, mod, StringComparison.OrdinalIgnoreCase))
            {
                title = $"{title} ({mod})";
            }

            string description = BuildBootstrapDescription(repoRoot, mod, meta, config);

            string identifier = await client.IssueCreateAsync(teamId, title, description, projectId, cancellationToken)
                .ConfigureAwait(false);
            map[mod] = identifier;
            changed = true;
            Console.WriteLine($"Created {identifier} for mod {mod}");
        }

        if (changed)
        {
            await SaveMapAsync(mapPath, map, cancellationToken).ConfigureAwait(false);
        }
    }

    private static async Task PushAsync(
        LinearGraphQlClient client,
        string repoRoot,
        SyncConfig config,
        List<string> excludes,
        Dictionary<string, string> map,
        bool includeUncommitted,
        CancellationToken cancellationToken)
    {
        IReadOnlyList<string> paths = CollectChangedPaths(repoRoot, config.BaseRef, includeUncommitted);
        IReadOnlyDictionary<string, List<string>> byMod = BucketByMod(paths, repoRoot, excludes);
        string stamp = DateTimeOffset.UtcNow.ToString("u");

        foreach (KeyValuePair<string, List<string>> kv in byMod.OrderBy(k => k.Key, StringComparer.OrdinalIgnoreCase))
        {
            if (!map.TryGetValue(kv.Key, out string? issueIdentifier))
            {
                Console.WriteLine($"Skip (not in linear-mod-map.json): {kv.Key}");
                continue;
            }

            if (kv.Value.Count == 0)
            {
                continue;
            }

            string body = BuildCommentBody(stamp, config.BaseRef, includeUncommitted, kv.Value);

            string uuid = await client.ResolveIssueUuidAsync(issueIdentifier, cancellationToken).ConfigureAwait(false);
            await client.CommentCreateAsync(uuid, body, cancellationToken).ConfigureAwait(false);
            Console.WriteLine($"Commented {issueIdentifier} ({kv.Key}, {kv.Value.Count} files)");
        }
    }

    private static string BuildCommentBody(string stampUtc, string baseRef, bool includeUncommitted, List<string> files)
    {
        var sb = new System.Text.StringBuilder();
        sb.AppendLine("**Workspace sync** (LinearSync)");
        sb.AppendLine();
        sb.AppendLine($"- **UTC:** {stampUtc}");
        sb.AppendLine($"- **Base:** `{baseRef}`");
        sb.AppendLine($"- **Include uncommitted:** {includeUncommitted}");
        sb.AppendLine();
        sb.AppendLine("Changed paths:");
        foreach (string p in files.OrderBy(x => x, StringComparer.OrdinalIgnoreCase))
        {
            sb.AppendLine($"- `{p}`");
        }

        return sb.ToString();
    }

    private static string BuildBootstrapDescription(string repoRoot, string mod, ModMeta? meta, SyncConfig config)
    {
        var sb = new System.Text.StringBuilder();
        sb.AppendLine("ACE mod tracked from ace-raaj-mods workspace.");
        sb.AppendLine();
        sb.AppendLine("## Meta");
        if (meta is null)
        {
            sb.AppendLine("- *(Meta.json not found or invalid)*");
        }
        else
        {
            sb.AppendLine($"- **Version:** {meta.Version}");
            sb.AppendLine($"- **Enabled:** {meta.Enabled}");
            if (!string.IsNullOrWhiteSpace(meta.Description))
            {
                sb.AppendLine();
                sb.AppendLine(meta.Description.Trim());
            }
        }

        if (!string.IsNullOrWhiteSpace(config.RepoUrl))
        {
            string branch = string.IsNullOrWhiteSpace(config.RepoBranch) ? "main" : config.RepoBranch.Trim();
            string url = config.RepoUrl.TrimEnd('/');
            sb.AppendLine();
            sb.AppendLine($"[Open `{mod}` in repo]({url}/tree/{branch}/{mod})");
        }

        return sb.ToString();
    }

    private static ModMeta? ReadMeta(string repoRoot, string mod)
    {
        string path = Path.Combine(repoRoot, mod, "Meta.json");
        if (!File.Exists(path))
        {
            return null;
        }

        try
        {
            string text = File.ReadAllText(path);
            return JsonSerializer.Deserialize<ModMeta>(text, JsonRead);
        }
        catch
        {
            return null;
        }
    }

    private static IReadOnlyList<string> CollectChangedPaths(string repoRoot, string baseRef, bool includeUncommitted)
    {
        var set = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
        foreach (string line in RunGit(repoRoot, $"diff --name-only {baseRef}...HEAD"))
        {
            string t = line.Trim().Replace('\\', '/');
            if (t.Length > 0)
            {
                set.Add(t);
            }
        }

        if (includeUncommitted)
        {
            foreach (string line in RunGit(repoRoot, "diff --name-only HEAD"))
            {
                string t = line.Trim().Replace('\\', '/');
                if (t.Length > 0)
                {
                    set.Add(t);
                }
            }
        }

        return set.OrderBy(x => x, StringComparer.OrdinalIgnoreCase).ToList();
    }

    private static List<string> RunGit(string repoRoot, string arguments)
    {
        var psi = new ProcessStartInfo
        {
            FileName = "git",
            Arguments = arguments,
            WorkingDirectory = repoRoot,
            RedirectStandardOutput = true,
            RedirectStandardError = true,
            UseShellExecute = false,
            CreateNoWindow = true
        };

        using var p = Process.Start(psi) ?? throw new InvalidOperationException("Failed to start git.");
        string stdout = p.StandardOutput.ReadToEnd();
        string stderr = p.StandardError.ReadToEnd();
        p.WaitForExit();
        if (p.ExitCode != 0)
        {
            throw new InvalidOperationException($"git {arguments} failed ({p.ExitCode}): {stderr.Trim()}");
        }

        return stdout.Split(new[] { '\r', '\n' }, StringSplitOptions.RemoveEmptyEntries).ToList();
    }

    private static IReadOnlyDictionary<string, List<string>> BucketByMod(
        IReadOnlyList<string> paths,
        string repoRoot,
        List<string> excludes)
    {
        var dict = new Dictionary<string, List<string>>(StringComparer.OrdinalIgnoreCase);
        foreach (string path in paths)
        {
            string normalized = path.Replace('\\', '/');
            int slash = normalized.IndexOf('/');
            string top = slash < 0 ? normalized : normalized[..slash];
            if (string.IsNullOrEmpty(top))
            {
                continue;
            }

            if (excludes.Contains(top, StringComparer.OrdinalIgnoreCase))
            {
                continue;
            }

            if (!IsModFolder(repoRoot, top))
            {
                continue;
            }

            if (!dict.TryGetValue(top, out List<string>? list))
            {
                list = new List<string>();
                dict[top] = list;
            }

            list.Add(normalized);
        }

        return dict;
    }

    private static List<string> DiscoverModFolders(string repoRoot, List<string> excludes)
    {
        var result = new List<string>();
        foreach (string dir in Directory.GetDirectories(repoRoot))
        {
            string name = Path.GetFileName(dir);
            if (string.IsNullOrEmpty(name) || name.StartsWith(".", StringComparison.Ordinal))
            {
                continue;
            }

            if (excludes.Contains(name, StringComparer.OrdinalIgnoreCase))
            {
                continue;
            }

            if (IsModFolder(repoRoot, name))
            {
                result.Add(name);
            }
        }

        return result;
    }

    private static bool IsModFolder(string repoRoot, string folderName)
    {
        string modDir = Path.Combine(repoRoot, folderName);
        if (!Directory.Exists(modDir))
        {
            return false;
        }

        return Directory.GetFiles(modDir, "*.csproj", SearchOption.TopDirectoryOnly).Length > 0;
    }

    private static string FindRepoRoot(string start)
    {
        string? dir = Path.GetFullPath(start);
        while (dir != null)
        {
            if (Directory.Exists(Path.Combine(dir, ".git")))
            {
                return dir;
            }

            dir = Directory.GetParent(dir)?.FullName;
        }

        throw new InvalidOperationException("Could not find repo root (.git). Run from inside the repository.");
    }

    private static async Task<Dictionary<string, string>> LoadMapAsync(string mapPath, CancellationToken cancellationToken)
    {
        if (!File.Exists(mapPath))
        {
            return new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
        }

        string text = await File.ReadAllTextAsync(mapPath, cancellationToken).ConfigureAwait(false);
        Dictionary<string, string>? raw = JsonSerializer.Deserialize<Dictionary<string, string>>(text, JsonRead);
        if (raw is null)
        {
            return new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
        }

        return new Dictionary<string, string>(raw, StringComparer.OrdinalIgnoreCase);
    }

    private static async Task SaveMapAsync(string mapPath, Dictionary<string, string> map, CancellationToken cancellationToken)
    {
        var ordered = map.OrderBy(k => k.Key, StringComparer.OrdinalIgnoreCase).ToDictionary(k => k.Key, v => v.Value, StringComparer.OrdinalIgnoreCase);
        string text = JsonSerializer.Serialize(ordered, JsonWrite);
        await File.WriteAllTextAsync(mapPath, text, cancellationToken).ConfigureAwait(false);
    }

    private sealed class SyncConfig
    {
        public string Team { get; set; } = "";

        public string? DefaultProject { get; set; }

        public string BaseRef { get; set; } = "origin/main";

        public string? RepoUrl { get; set; }

        public string RepoBranch { get; set; } = "main";

        public List<string> ExcludeModFolders { get; set; } = new();
    }

    private sealed class ModMeta
    {
        public string Name { get; set; } = "";
        public string Description { get; set; } = "";
        public string Version { get; set; } = "";
        public bool Enabled { get; set; } = true;
    }
}
