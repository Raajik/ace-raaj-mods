using System.Collections.Concurrent;
using System.Text.Json;
using WorldEvents.Models;

namespace WorldEvents;

public static class ParticipationLedger
{
    internal static readonly string BasePath = Path.Combine(ModManager.ModPath, "WorldEvents", "Participation");
    private static readonly ConcurrentDictionary<uint, object> FileLocks = new();

    public static void RecordCompletion(uint accountId, string eventType, string questName)
    {
        var lockObj = FileLocks.GetOrAdd(accountId, _ => new object());
        lock (lockObj)
        {
            var summary = Load(accountId);
            summary.TotalEventCompletions++;
            summary.CompletionsByEventType.TryAdd(eventType, 0);
            summary.CompletionsByEventType[eventType]++;
            summary.UniqueQuestNamesByEventType.TryAdd(eventType, new HashSet<string>(StringComparer.OrdinalIgnoreCase));
            summary.UniqueQuestNamesByEventType[eventType].Add(questName);
            summary.LastCompletionUtc = DateTime.UtcNow;
            if (summary.FirstCompletionUtc == null)
                summary.FirstCompletionUtc = DateTime.UtcNow;
            Save(accountId, summary);
        }
    }

    public static int GetCompletionCount(uint accountId, string eventType)
    {
        var summary = Load(accountId);
        return summary.CompletionsByEventType.TryGetValue(eventType, out var count) ? count : 0;
    }

    public static bool HasQuest(uint accountId, string questName)
    {
        var summary = Load(accountId);
        foreach (var set in summary.UniqueQuestNamesByEventType.Values)
            if (set.Contains(questName)) return true;
        return false;
    }

    public static List<string> GetUniqueQuests(uint accountId, string eventType)
    {
        var summary = Load(accountId);
        return summary.UniqueQuestNamesByEventType.TryGetValue(eventType, out var set)
            ? set.ToList() : new List<string>();
    }

    public static List<AccountParticipationSummary> GetLeaderboard()
    {
        var results = new List<AccountParticipationSummary>();
        if (!Directory.Exists(BasePath)) return results;

        foreach (var file in Directory.GetFiles(BasePath, "*.json"))
        {
            try
            {
                var fileName = Path.GetFileNameWithoutExtension(file);
                if (uint.TryParse(fileName, out var accountId))
                {
                    var summary = Load(accountId);
                    if (summary.TotalEventCompletions > 0)
                        results.Add(summary);
                }
            }
            catch { }
        }

        results.Sort((a, b) => b.TotalEventCompletions.CompareTo(a.TotalEventCompletions));
        return results;
    }

    public static AccountParticipationSummary Load(uint accountId)
    {
        var path = Path.Combine(BasePath, $"{accountId}.json");
        if (!File.Exists(path)) return new AccountParticipationSummary { AccountId = accountId };
        try
        {
            var json = File.ReadAllText(path);
            return JsonSerializer.Deserialize<AccountParticipationSummary>(json) ?? new AccountParticipationSummary { AccountId = accountId };
        }
        catch
        {
            return new AccountParticipationSummary { AccountId = accountId };
        }
    }

    public static void Save(uint accountId, AccountParticipationSummary summary)
    {
        Directory.CreateDirectory(BasePath);
        var path = Path.Combine(BasePath, $"{accountId}.json");
        File.WriteAllText(path, JsonSerializer.Serialize(summary, new JsonSerializerOptions { WriteIndented = true }));
    }
}
