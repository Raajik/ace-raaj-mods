namespace SharedLoot;

public static class LootConfigPaths
{
    // ModManager.ModPath is the ACE Mods root (parent of per-mod folders).
    public static string DefaultLootConfigPath(string modsRoot)
    {
        var root = modsRoot.TrimEnd(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar);
        var owned = Path.Combine(root, "BetterLootControl", "LootConfig.json");
        if (File.Exists(owned))
            return owned;

        // Legacy fallback so existing shards do not break if only the old path exists.
        var legacy = Path.Combine(root, "Loremaster", "LootConfig.json");
        if (File.Exists(legacy))
            return legacy;

        return owned;
    }

    // optionalPath: absolute path, or relative to mods root (e.g. "BetterLootControl/LootConfig.json").
    public static string ResolveLootConfigPath(string modsRoot, string? optionalPath)
    {
        if (string.IsNullOrWhiteSpace(optionalPath))
            return DefaultLootConfigPath(modsRoot);

        var p = optionalPath.Trim();
        if (Path.IsPathRooted(p))
            return Path.GetFullPath(p);

        return Path.GetFullPath(Path.Combine(modsRoot, p));
    }
}
