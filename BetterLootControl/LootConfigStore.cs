namespace SharedLoot;

// In-memory table for BetterLootControl, Loremaster repeat loot, and parchment tier rewards.
public static class LootConfigStore
{
    public static LootConfig? Loaded { get; private set; }
    public static string? LoadedPath { get; private set; }

    public static LootConfig GetLoadedOrDefault() =>
        Loaded ?? DefaultLootConfig.Create();

    public static bool TryLoad(string path, Action<string>? logWarn, out LootConfig config)
    {
        config = null!;
        try
        {
            if (string.IsNullOrWhiteSpace(path) || !File.Exists(path))
            {
                logWarn?.Invoke($"[LootConfig] File not found at {path} — using compiled defaults.");
                config = DefaultLootConfig.Create();
                Loaded = config;
                LoadedPath = path;
                return false;
            }

            var json = File.ReadAllText(path);
            var parsed = LootConfigJson.Deserialize(json);
            if (parsed is null)
            {
                logWarn?.Invoke($"[LootConfig] Failed to deserialize {path} — using compiled defaults.");
                config = DefaultLootConfig.Create();
                Loaded = config;
                LoadedPath = path;
                return false;
            }

            Loaded = parsed;
            LoadedPath = path;
            config = parsed;
            return true;
        }
        catch (Exception ex)
        {
            logWarn?.Invoke($"[LootConfig] Error loading {path}: {ex.Message} — using compiled defaults.");
            config = DefaultLootConfig.Create();
            Loaded = config;
            LoadedPath = path;
            return false;
        }
    }
}
