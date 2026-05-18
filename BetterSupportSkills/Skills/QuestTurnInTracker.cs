using System.Text.Json;

namespace BetterSupportSkills.Skills;

/// <summary>
/// Tracks per-player daily quest item turn-ins for TrophyDrops quest item XP capping.
/// </summary>
public static class QuestTurnInTracker
{
    static readonly string DataPath = BetterSupportSkillsDataPaths.InModData("QuestTurnInTracker.json");

    static readonly Dictionary<uint, Dictionary<uint, TurnInRecord>> _data = new();
    static bool _loaded;
    static readonly object _ioLock = new();

    public class TurnInRecord
    {
        public int Count { get; set; }
        public DateTime FirstTurnInUtc { get; set; }
        public DateTime LastResetUtc { get; set; }
    }

    public record TurnInResult(bool WasCapped, int NewCount);

    public static void Load()
    {
        if (_loaded) return;
        try
        {
            if (File.Exists(DataPath))
            {
                var json = File.ReadAllText(DataPath);
                var data = JsonSerializer.Deserialize<Dictionary<uint, Dictionary<uint, TurnInRecord>>>(json);
                if (data is not null)
                {
                    _data.Clear();
                    foreach (var kvp in data)
                        _data[kvp.Key] = new Dictionary<uint, TurnInRecord>(kvp.Value);
                }
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS QuestTurnIn] Failed to load tracker: {ex.Message}", ModManager.LogLevel.Warn);
        }
        _loaded = true;
    }

    static void Save()
    {
        lock (_ioLock)
        {
            try
            {
                var json = JsonSerializer.Serialize(_data, new JsonSerializerOptions { WriteIndented = true });
                File.WriteAllText(DataPath, json);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BSS QuestTurnIn] Failed to save tracker: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
    }

    /// <summary>
    /// Records a turn-in and returns whether the player was already at/above cap.
    /// </summary>
    public static TurnInResult RecordTurnIn(uint playerGuid, uint wcid, QuestTrophyDropsSettings settings)
    {
        if (!_loaded) Load();

        if (!_data.TryGetValue(playerGuid, out var items))
        {
            items = new Dictionary<uint, TurnInRecord>();
            _data[playerGuid] = items;
        }

        if (!items.TryGetValue(wcid, out var record))
        {
            record = new TurnInRecord { Count = 0, FirstTurnInUtc = DateTime.UtcNow, LastResetUtc = DateTime.UtcNow };
            items[wcid] = record;
        }

        bool needsReset = false;

        // Rolling window reset
        if (DateTime.UtcNow - record.FirstTurnInUtc >= TimeSpan.FromHours(settings.RollingWindowHours))
            needsReset = true;

        // Fixed daily reset (e.g. 9pm CST)
        try
        {
            var tz = TimeZoneInfo.FindSystemTimeZoneById(settings.FixedResetTimeZone);
            var nowLocal = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, tz);
            var lastResetLocal = TimeZoneInfo.ConvertTimeFromUtc(record.LastResetUtc, tz);
            if (lastResetLocal.Date < nowLocal.Date && nowLocal.Hour >= settings.FixedResetHour)
                needsReset = true;
        }
        catch (TimeZoneNotFoundException)
        {
            ModManager.Log($"[BSS QuestTurnIn] Time zone '{settings.FixedResetTimeZone}' not found, skipping fixed reset check.", ModManager.LogLevel.Warn);
        }

        if (needsReset)
        {
            record.Count = 0;
            record.FirstTurnInUtc = DateTime.UtcNow;
            record.LastResetUtc = DateTime.UtcNow;
        }

        if (record.Count >= settings.DailyCapPerItemType)
        {
            return new TurnInResult(WasCapped: true, record.Count);
        }

        record.Count++;
        Save();
        return new TurnInResult(WasCapped: false, record.Count);
    }

    /// <summary>
    /// Gets the current turn-in count for a player/WCID without incrementing.
    /// </summary>
    public static int GetTurnInCount(uint playerGuid, uint wcid, QuestTrophyDropsSettings settings)
    {
        if (!_loaded) Load();
        if (!_data.TryGetValue(playerGuid, out var items)) return 0;
        if (!items.TryGetValue(wcid, out var record)) return 0;

        bool needsReset = false;
        if (DateTime.UtcNow - record.FirstTurnInUtc >= TimeSpan.FromHours(settings.RollingWindowHours))
            needsReset = true;

        try
        {
            var tz = TimeZoneInfo.FindSystemTimeZoneById(settings.FixedResetTimeZone);
            var nowLocal = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, tz);
            var lastResetLocal = TimeZoneInfo.ConvertTimeFromUtc(record.LastResetUtc, tz);
            if (lastResetLocal.Date < nowLocal.Date && nowLocal.Hour >= settings.FixedResetHour)
                needsReset = true;
        }
        catch { /* ignore */ }

        return needsReset ? 0 : record.Count;
    }
}
