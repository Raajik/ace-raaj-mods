namespace Windblown.TrophyLines;

/// <summary>
/// Loads <see cref="TrophyLineConfig"/> JSON files from Content/TrophyLines/, indexes them by
/// CreatureType (for drop rolls), tier WCID (for turn-ins), and sibling WCID (for replacement).
/// </summary>
internal static class TrophyLineRegistry
{
    static readonly List<TrophyLineConfig> _lines = new();
    static readonly Dictionary<CreatureType, List<TrophyLineConfig>> _byCreatureType = new();
    static readonly Dictionary<uint, (TrophyLineConfig Line, TrophyTier Tier)> _byTierWcid = new();
    static readonly Dictionary<uint, uint> _siblingReplacement = new();

    public static volatile bool IsReady;

    public static IReadOnlyList<TrophyLineConfig> Lines => _lines;

    public static int Count => _lines.Count;

    public static IEnumerable<TrophyLineConfig> ForCreatureType(CreatureType ct)
    {
        return _byCreatureType.TryGetValue(ct, out var list) ? list : Array.Empty<TrophyLineConfig>();
    }

    public static bool TryGetTier(uint wcid, out TrophyLineConfig line, out TrophyTier tier)
    {
        if (_byTierWcid.TryGetValue(wcid, out var pair))
        {
            line = pair.Line;
            tier = pair.Tier;
            return true;
        }

        // Fallback: if wcid is a replaced sibling (old vanilla head/body part),
        // look up its base tier so the turn-in system can intercept it.
        if (_siblingReplacement.TryGetValue(wcid, out var baseWcid) && _byTierWcid.TryGetValue(baseWcid, out pair))
        {
            line = pair.Line;
            tier = pair.Tier;
            return true;
        }

        line = null!;
        tier = null!;
        return false;
    }

    public static bool TryGetReplacementBaseWcid(uint siblingWcid, out uint baseWcid) =>
        _siblingReplacement.TryGetValue(siblingWcid, out baseWcid);

    public static void Clear()
    {
        IsReady = false;
        _lines.Clear();
        _byCreatureType.Clear();
        _byTierWcid.Clear();
        _siblingReplacement.Clear();
    }

    public static void Initialize(string modDirectory, Settings cfg)
    {
        Clear();

        var contentDir = Path.Combine(modDirectory, "Content", "TrophyLines");
        if (!Directory.Exists(contentDir))
        {
            ModManager.Log($"[Windblown] Content/TrophyLines/ not found at {contentDir} — no trophy lines registered.", ModManager.LogLevel.Info);
            IsReady = true;
            return;
        }

        var files = Directory.GetFiles(contentDir, "*.json", SearchOption.AllDirectories)
            .OrderBy(f => f, StringComparer.OrdinalIgnoreCase)
            .ToList();

        var opts = new JsonSerializerOptions
        {
            ReadCommentHandling = JsonCommentHandling.Skip,
            AllowTrailingCommas = true,
            PropertyNameCaseInsensitive = true,
        };

        foreach (var file in files)
        {
            try
            {
                var json = File.ReadAllText(file);
                var configFile = JsonSerializer.Deserialize<TrophyLineConfigFile>(json, opts);
                if (configFile?.Lines == null) continue;

                foreach (var line in configFile.Lines)
                {
                    try
                    {
                        Register(line, cfg, file);
                    }
                    catch (Exception ex)
                    {
                        ModManager.Log($"[Windblown] Failed to register trophy line '{line?.Name}' from {Path.GetFileName(file)}: {ex.Message}", ModManager.LogLevel.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Windblown] Failed to load {Path.GetFileName(file)}: {ex.Message}", ModManager.LogLevel.Error);
            }
        }

        IsReady = true;
    }

    static void Register(TrophyLineConfig line, Settings cfg, string sourceFile)
    {
        if (!line.Enabled) return;

        if (string.IsNullOrWhiteSpace(line.CreatureTypeGate)
            || (!Enum.TryParse<CreatureType>(line.CreatureTypeGate, ignoreCase: true, out var creatureType) && !line.CreatureTypeGate.Equals("Universal", StringComparison.OrdinalIgnoreCase)))
        {
            ModManager.Log($"[Windblown] Trophy line '{line.Name}' has missing/invalid CreatureTypeGate '{line.CreatureTypeGate}'; skipping.", ModManager.LogLevel.Warn);
            return;
        }

        if (line.Tiers == null || line.Tiers.Count == 0)
        {
            ModManager.Log($"[Windblown] Trophy line '{line.Name}' has no tiers; skipping.", ModManager.LogLevel.Warn);
            return;
        }

        _lines.Add(line);

        if (line.CreatureTypeGate.Equals("Universal", StringComparison.OrdinalIgnoreCase))
        {
            foreach (var ct in Enum.GetValues<CreatureType>())
            {
                if (!_byCreatureType.TryGetValue(ct, out var bucket))
                {
                    bucket = new List<TrophyLineConfig>();
                    _byCreatureType[ct] = bucket;
                }
                bucket.Add(line);
            }
        }
        else if (Enum.TryParse<CreatureType>(line.CreatureTypeGate, ignoreCase: true, out creatureType))
        {
            if (!_byCreatureType.TryGetValue(creatureType, out var bucket))
            {
                bucket = new List<TrophyLineConfig>();
                _byCreatureType[creatureType] = bucket;
            }
            bucket.Add(line);
        }

        foreach (var tier in line.Tiers)
        {
            if (tier.Wcid == 0) continue;
            _byTierWcid[tier.Wcid] = (line, tier);
        }

        var baseWcid = line.Tiers[0].Wcid;
        foreach (var sibling in line.ReplaceSiblingWcids ?? new())
        {
            if (sibling == 0 || sibling == baseWcid) continue;
            _siblingReplacement[sibling] = baseWcid;
        }

        if (cfg.LogTrophyLinesVerbose)
            ModManager.Log($"[Windblown] Registered trophy line '{line.Name}' on CreatureType.{creatureType} with {line.Tiers.Count} tier(s) and {line.ReplaceSiblingWcids?.Count ?? 0} sibling replacement(s).", ModManager.LogLevel.Info);
    }
}
