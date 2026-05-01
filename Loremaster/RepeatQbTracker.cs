using System.Text.Json;

namespace Loremaster;

/// <summary>
/// Account-wide repeatQB tracker. Each quest has its own cooldown
/// across all characters on the same account. WorldEvents bonus quests bypass
/// the cooldown (they are one-off quests).
/// </summary>
public static class RepeatQbTracker
{
    static readonly string DataPath = Path.Combine(
        Path.GetDirectoryName(typeof(RepeatQbTracker).Assembly.Location) ?? "",
        "RepeatQbTracker.json");

    static readonly Dictionary<uint, Dictionary<string, long>> _data = new();
    static bool _loaded;

    public static void Load()
    {
        if (_loaded) return;
        try
        {
            // Migrate from old filename if it exists
            var oldPath = Path.Combine(
                Path.GetDirectoryName(typeof(RepeatQbTracker).Assembly.Location) ?? "",
                "AccountRepeatQuests.json");
            if (File.Exists(oldPath) && !File.Exists(DataPath))
            {
                File.Move(oldPath, DataPath);
                ModManager.Log("[repeatQB] Migrated AccountRepeatQuests.json → RepeatQbTracker.json", ModManager.LogLevel.Info);
            }

            if (File.Exists(DataPath))
            {
                var json = File.ReadAllText(DataPath);
                var data = JsonSerializer.Deserialize<Dictionary<uint, Dictionary<string, long>>>(json);
                if (data is not null)
                {
                    _data.Clear();
                    foreach (var kvp in data)
                        _data[kvp.Key] = new Dictionary<string, long>(kvp.Value, StringComparer.OrdinalIgnoreCase);
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
            var json = JsonSerializer.Serialize(_data, new JsonSerializerOptions { WriteIndented = true });
            File.WriteAllText(DataPath, json);
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
}
