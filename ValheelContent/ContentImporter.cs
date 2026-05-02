using System.Security.Cryptography;
using System.Text;
using System.Text.Json;
using ACE.Database.Models.World;
using ACE.Database;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

namespace ValheelContent;

internal static class ContentImporter
{
    private static Settings? _settings;
    private static string _contentPath = "";
    private static string _statePath = "";

    public static void Initialize(Settings settings, string modDirectory)
    {
        _settings = settings;
        _contentPath = Path.Combine(modDirectory, "Content");
        _statePath = Path.Combine(modDirectory, "import-state.json");
    }

    public static bool IsSqlImportAllowed()
    {
        return _settings?.EnableValheelContent == true;
    }

    public static bool ValidateContentFolder()
    {
        if (!Directory.Exists(_contentPath))
        {
            ModManager.Log("[Valheel] Content folder not found. Expected: " + _contentPath, ModManager.LogLevel.Warn);
            return false;
        }
        return true;
    }

    public static void RunImport()
    {
        if (_settings?.EnableValheelContent != true)
            return;

        if (!ValidateContentFolder())
            return;

        var cfg = _settings!;

        var stopwatch = System.Diagnostics.Stopwatch.StartNew();
        var previousState = ContentHashTracker.LoadState(_statePath);
        var currentHashes = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);

        var categories = Directory.GetDirectories(_contentPath)
            .OrderBy(d => d, StringComparer.OrdinalIgnoreCase)
            .ToList();

        int totalFiles = 0;
        int importedFiles = 0;
        int skippedFiles = 0;
        int failedFiles = 0;
        bool isFirstRun = previousState == null;

        var disabledFolders = cfg.DisabledContentFolders ?? new List<string>();
        var enabledFiles = cfg.EnabledContentFiles ?? new List<string>();
        var neverImport = cfg.NeverImportFiles ?? new List<string>();

        foreach (var categoryDir in categories)
        {
            var categoryName = Path.GetFileName(categoryDir);
            var allSqlFiles = Directory.GetFiles(categoryDir, "*.sql", SearchOption.AllDirectories)
                .OrderBy(f => f, StringComparer.OrdinalIgnoreCase)
                .ToList();

            // Filter out files in disabled subfolders, unless explicitly in EnabledContentFiles
            var sqlFiles = allSqlFiles
                .Where(f =>
                {
                    var rel = GetRelativePath(f, _contentPath);
                    bool disabled = IsPathDisabled(rel, disabledFolders);
                    bool excepted = IsPathExactMatch(rel, enabledFiles);
                    return !disabled || excepted;
                })
                .ToList();

            int skippedByFolder = allSqlFiles.Count - sqlFiles.Count;
            if (skippedByFolder > 0)
            {
                ModManager.Log($"[Valheel] Skipping {skippedByFolder} file(s) in disabled subfolders under {categoryName}", ModManager.LogLevel.Info);
            }

            if (sqlFiles.Count == 0)
                continue;

            ModManager.Log($"[Valheel] Scanning {categoryName}: {sqlFiles.Count} SQL files...", ModManager.LogLevel.Info);

            var filesToImport = new List<SqlFileInfo>();

            foreach (var filePath in sqlFiles)
            {
                var relativePath = GetRelativePath(filePath, _contentPath);
                totalFiles++;

                if (IsNeverImportFile(relativePath, neverImport))
                {
                    ModManager.Log($"[Valheel] Skipping blocklisted file: {relativePath}", ModManager.LogLevel.Info);
                    skippedFiles++;
                    continue;
                }

                string content;
                try
                {
                    content = File.ReadAllText(filePath);
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[Valheel] Failed to read {relativePath}: {ex.Message}", ModManager.LogLevel.Error);
                    failedFiles++;
                    continue;
                }

                if (string.IsNullOrWhiteSpace(content))
                {
                    ModManager.Log($"[Valheel] Skipping empty file: {relativePath}", ModManager.LogLevel.Debug);
                    skippedFiles++;
                    continue;
                }

                var hash = ComputeHash(content);
                currentHashes[relativePath] = hash;

                if (cfg.TrackImportHash && previousState?.FileHashes != null)
                {
                    if (previousState.FileHashes.TryGetValue(relativePath, out var previousHash) && previousHash == hash)
                    {
                        skippedFiles++;
                        continue;
                    }
                }

                filesToImport.Add(new SqlFileInfo(filePath, relativePath, hash, content));
            }

            if (filesToImport.Count > 0)
            {
                ModManager.Log($"[Valheel] Importing {filesToImport.Count} new/changed files in {categoryName}...", ModManager.LogLevel.Info);
                var (catImported, catFailed) = ImportBatch(filesToImport);
                importedFiles += catImported;
                failedFiles += catFailed;
            }
        }

        // Clear ACE caches after all imports
        if (importedFiles > 0)
        {
            ClearAceCaches();
        }

        // Save state
        ContentHashTracker.SaveState(_statePath, new ImportState
        {
            LastImportUtc = DateTime.UtcNow,
            FileHashes = currentHashes
        });

        stopwatch.Stop();

        if (cfg.LogImportSummary)
        {
            ModManager.Log($"[Valheel] Import complete in {stopwatch.Elapsed.TotalSeconds:F1}s. Total: {totalFiles}, Imported: {importedFiles}, Skipped: {skippedFiles}, Failed: {failedFiles}", ModManager.LogLevel.Info);
        }

        if (isFirstRun && cfg.RequireRestartAfterFirstImport && importedFiles > 0)
        {
            ModManager.Log("[Valheel] FIRST IMPORT COMPLETE. A server restart is strongly recommended to ensure all ACE caches are fully refreshed and new content is available.", ModManager.LogLevel.Warn);
        }
    }

    private static (int imported, int failed) ImportBatch(List<SqlFileInfo> files)
    {
        int imported = 0;
        int failed = 0;
        int batchSize = _settings!.BatchSize > 0 ? _settings.BatchSize : 50;

        for (int i = 0; i < files.Count; i += batchSize)
        {
            var batch = files.Skip(i).Take(batchSize).ToList();

            try
            {
                using var ctx = new WorldDbContext();
                using var tx = ctx.Database.BeginTransaction();

                foreach (var file in batch)
                {
                    try
                    {
                        ctx.Database.ExecuteSqlRaw(file.Content);
                        imported++;
                    }
                    catch (Exception ex)
                    {
                        ModManager.Log($"[Valheel] SQL error in {file.RelativePath}: {ex.Message}", ModManager.LogLevel.Error);
                        failed++;
                        // Continue with next file in batch — don't abort the batch
                    }
                }

                tx.Commit();
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Valheel] Batch transaction failed (files {i}-{i + batch.Count}): {ex.Message}", ModManager.LogLevel.Error);
                failed += batch.Count;
            }
        }

        return (imported, failed);
    }

    private static void ClearAceCaches()
    {
        try
        {
            DatabaseManager.World.ClearWeenieCache();
            ModManager.Log("[Valheel] Cleared weenie cache.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Valheel] Failed to clear weenie cache: {ex.Message}", ModManager.LogLevel.Warn);
        }

        try
        {
            DatabaseManager.World.ClearCookbookCache();
            ModManager.Log("[Valheel] Cleared cookbook cache.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Valheel] Failed to clear cookbook cache: {ex.Message}", ModManager.LogLevel.Warn);
        }

        try
        {
            DatabaseManager.World.ClearCachedLandblockInstances();
            ModManager.Log("[Valheel] Cleared landblock instance cache.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Valheel] Failed to clear landblock cache: {ex.Message}", ModManager.LogLevel.Warn);
        }

        try
        {
            DatabaseManager.World.ClearWieldedTreasureCache();
            ModManager.Log("[Valheel] Cleared wielded treasure cache.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Valheel] Failed to clear wielded treasure cache: {ex.Message}", ModManager.LogLevel.Warn);
        }

        try
        {
            DatabaseManager.World.ClearSpellCache();
            ModManager.Log("[Valheel] Cleared spell cache.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Valheel] Failed to clear spell cache: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    private static bool IsNeverImportFile(string relativePath, List<string> neverImportFiles)
    {
        if (neverImportFiles == null || neverImportFiles.Count == 0)
            return false;

        var normalizedRel = relativePath.Replace('\\', '/');
        foreach (var entry in neverImportFiles)
        {
            if (string.IsNullOrWhiteSpace(entry))
                continue;

            var n = entry.Replace('\\', '/').TrimStart('/');
            if (string.Equals(normalizedRel, n, StringComparison.OrdinalIgnoreCase))
                return true;
        }

        return false;
    }

    private static bool IsPathDisabled(string relativePath, List<string> disabledFolders)
    {
        if (disabledFolders == null || disabledFolders.Count == 0)
            return false;

        foreach (var df in disabledFolders)
        {
            var normalized = df.Replace('\\', '/').TrimEnd('/');
            if (string.IsNullOrWhiteSpace(normalized))
                continue;

            // Exact folder match or subfolder match
            if (relativePath.StartsWith(normalized + "/", StringComparison.OrdinalIgnoreCase) ||
                string.Equals(relativePath, normalized, StringComparison.OrdinalIgnoreCase))
            {
                return true;
            }
        }
        return false;
    }

    private static bool IsPathExactMatch(string relativePath, List<string> enabledFiles)
    {
        if (enabledFiles == null || enabledFiles.Count == 0)
            return false;

        foreach (var ef in enabledFiles)
        {
            var normalized = ef.Replace('\\', '/').TrimStart('/');
            if (string.IsNullOrWhiteSpace(normalized))
                continue;

            if (string.Equals(relativePath, normalized, StringComparison.OrdinalIgnoreCase) ||
                relativePath.StartsWith(normalized + "/", StringComparison.OrdinalIgnoreCase))
            {
                return true;
            }
        }
        return false;
    }

    private static string ComputeHash(string content)
    {
        var bytes = Encoding.UTF8.GetBytes(content);
        var hash = MD5.HashData(bytes);
        return Convert.ToHexString(hash);
    }

    private static string GetRelativePath(string fullPath, string basePath)
    {
        if (fullPath.StartsWith(basePath, StringComparison.OrdinalIgnoreCase))
        {
            var relative = fullPath.Substring(basePath.Length).TrimStart(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar);
            return relative.Replace(Path.DirectorySeparatorChar, '/');
        }
        return fullPath;
    }

    private record SqlFileInfo(string FullPath, string RelativePath, string Hash, string Content);
}
