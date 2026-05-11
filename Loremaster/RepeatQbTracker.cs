using System.Text.Json;

namespace Loremaster;

/// <summary>
/// Account-wide repeatQB tracker. Each quest has its own cooldown
/// across all characters on the same account. WorldEvents bonus quests bypass
/// the cooldown (they are one-off quests).
/// </summary>
public static class RepeatQbTracker
{
    static readonly string DataPath = LoremasterDataPaths.InModData("RepeatQbTracker.json");
    static readonly string LegacyDataPath = LoremasterDataPaths.InLegacyModRoot("RepeatQbTracker.json");
    static readonly string LegacyOldDataPath = LoremasterDataPaths.InLegacyModRoot("AccountRepeatQuests.json");

    static readonly Dictionary<uint, Dictionary<string, long>> _data = new();
    static bool _loaded;

    public static void Load()
    {
        if (_loaded) return;
        try
        {
            Directory.CreateDirectory(Path.GetDirectoryName(DataPath)!);

            var path = ResolveLoadPath();
            if (path != null && File.Exists(path))
            {
                var json = File.ReadAllText(path);
                var data = JsonSerializer.Deserialize<Dictionary<uint, Dictionary<string, long>>>(json);
                if (data is not null)
                {
                    _data.Clear();
                    foreach (var kvp in data)
                        _data[kvp.Key] = new Dictionary<string, long>(kvp.Value, StringComparer.OrdinalIgnoreCase);

                    if (path != DataPath)
                    {
                        Save();
                        TryDeleteLegacyFiles();

                        if (path == LegacyOldDataPath)
                            ModManager.Log("[repeatQB] Migrated AccountRepeatQuests.json -> RepeatQbTracker.json (ModData)", ModManager.LogLevel.Info);
                        else
                            ModManager.Log("[repeatQB] Migrated RepeatQbTracker.json -> ModData/RepeatQbTracker.json", ModManager.LogLevel.Info);
                    }
                }
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[repeatQB] Failed to load repeatQB tracker: {ex.Message}", ModManager.LogLevel.Warn);
        }
        _loaded = true;
    }

    static void Save()
    {
        try
        {
            Directory.CreateDirectory(Path.GetDirectoryName(DataPath)!);
            var json = JsonSerializer.Serialize(_data, new JsonSerializerOptions { WriteIndented = true });
            File.WriteAllText(DataPath, json);
            TryDeleteLegacyFiles();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[repeatQB] Failed to save repeatQB tracker: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    public static void RecordRepeatQb(uint accountId, string questName)
    {
        if (!_loaded) Load();
        if (!_data.TryGetValue(accountId, out var quests))
        {
            quests = new Dictionary<string, long>(StringComparer.OrdinalIgnoreCase);
            _data[accountId] = quests;
        }
        quests[questName] = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
        Save();
    }

    public static bool HasRepeatQb(uint accountId, string questName)
    {
        if (!_loaded) Load();
        return _data.TryGetValue(accountId, out var quests)
            && quests.ContainsKey(questName);
    }

    public static (bool isOnCooldown, TimeSpan remaining) CheckRepeatQbCooldown(uint accountId, string questName, int cooldownSeconds)
    {
        if (!_loaded) Load();
        if (!_data.TryGetValue(accountId, out var quests))
            return (false, TimeSpan.Zero);

        if (!quests.TryGetValue(questName, out var timestamp))
            return (false, TimeSpan.Zero);

        var now = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
        var elapsed = now - timestamp;
        if (elapsed >= cooldownSeconds)
            return (false, TimeSpan.Zero);

        return (true, TimeSpan.FromSeconds(cooldownSeconds - elapsed));
    }

    static string? ResolveLoadPath()
    {
        if (File.Exists(DataPath))
            return DataPath;

        if (File.Exists(LegacyDataPath))
            return LegacyDataPath;

        if (File.Exists(LegacyOldDataPath))
            return LegacyOldDataPath;

        return null;
    }

    static void TryDeleteLegacyFiles()
    {
        TryDeleteIfExists(LegacyDataPath);
        TryDeleteIfExists(LegacyOldDataPath);
    }

    static void TryDeleteIfExists(string path)
    {
        if (!File.Exists(path))
            return;

        try
        {
            File.Delete(path);
        }
        catch
        {
        }
    }
}
