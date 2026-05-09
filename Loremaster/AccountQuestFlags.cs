using System.Text.Json;

namespace Loremaster;

// Account-wide quest completion flags: once any character on the account completes a quest,
// all characters on the account are treated as having completed it for gating purposes
// (portal restrictions, NPC dialogue, etc.). Repeat completions are still allowed.
public static class AccountQuestFlags
{
    static readonly string DataPath = Path.Combine(
        Path.GetDirectoryName(typeof(AccountQuestFlags).Assembly.Location) ?? "",
        "AccountQuestFlags.json");

    static readonly Dictionary<uint, HashSet<string>> _flags = new();
    static bool _loaded;

    public static void Load()
    {
        if (_loaded) return;
        try
        {
            if (File.Exists(DataPath))
            {
                var json = File.ReadAllText(DataPath);
                var data = JsonSerializer.Deserialize<Dictionary<uint, List<string>>>(json);
                if (data is not null)
                {
                    _flags.Clear();
                    foreach (var kvp in data)
                        _flags[kvp.Key] = new HashSet<string>(kvp.Value, StringComparer.OrdinalIgnoreCase);
                }
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Loremaster] Failed to load account quest flags: {ex.Message}", ModManager.LogLevel.Warn);
        }
        _loaded = true;
    }

    static void Save()
    {
        try
        {
            var data = new Dictionary<uint, List<string>>();
            foreach (var kvp in _flags)
                data[kvp.Key] = new List<string>(kvp.Value);
            var json = JsonSerializer.Serialize(data, new JsonSerializerOptions { WriteIndented = true });
            File.WriteAllText(DataPath, json);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Loremaster] Failed to save account quest flags: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    public static bool HasFlag(uint accountId, string questName)
    {
        if (!_loaded) Load();
        return _flags.TryGetValue(accountId, out var set)
            && set.Contains(questName);
    }

    public static void AddFlag(uint accountId, string questName)
    {
        if (!_loaded) Load();
        if (!_flags.TryGetValue(accountId, out var set))
        {
            set = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
            _flags[accountId] = set;
        }
        if (set.Add(questName))
            Save();
    }

    public static IReadOnlyCollection<string> GetAllFlags(uint accountId)
    {
        if (!_loaded) Load();
        return _flags.TryGetValue(accountId, out var set)
            ? set.ToList().AsReadOnly()
            : Array.Empty<string>();
    }
}
