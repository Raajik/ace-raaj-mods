namespace SharedLoot;

public static class LootConfigPaths
{
    // ModManager.ModPath is the ACE Mods root (parent of per-mod folders).
    public static string DefaultLootConfigPath(string modsRoot) =>
        Path.Combine(modsRoot.TrimEnd(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar), "Loremaster", "LootConfig.json");

    // optionalPath: absolute path, or relative to mods root (e.g. "Loremaster/LootConfig.json").
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
