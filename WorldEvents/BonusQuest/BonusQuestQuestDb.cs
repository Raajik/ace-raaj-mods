using ACE.Database;

namespace WorldEvents;

internal static class BonusQuestQuestDb
{
    // Returns quest name → recent completion count across all characters.
    // Uses a direct ShardDbContext query since there's no ACE manager API for this.
    internal static Dictionary<string, long> GetRecentCompletions(int lookbackDays)
    {
        try
        {
            var nowUnix = (long)Time.GetUnixTime();
            var cutoff = (uint)Math.Max(0L, nowUnix - (long)lookbackDays * 86400L);

            using var context = new ShardDbContext();
            var names = context.CharacterPropertiesQuestRegistry
                .AsNoTracking()
                .Where(q => q.LastTimeCompleted >= cutoff)
                .Select(q => q.QuestName)
                .ToList();

            return names
                .GroupBy(n => n, StringComparer.OrdinalIgnoreCase)
                .ToDictionary(g => g.Key, g => (long)g.Count(), StringComparer.OrdinalIgnoreCase);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BonusQuest] GetRecentCompletions failed: {ex.Message}", ModManager.LogLevel.Error);
            return new Dictionary<string, long>(StringComparer.OrdinalIgnoreCase);
        }
    }

    // Weighted random pick: quests with fewer completions get higher selection probability.
    // excludeLast: skip quests added last rotation (no-repeat guard).
    // excludeActive: skip quests already on the board.
    // count: how many to pick (defaults to settings.BonusQuestCount).
    internal static List<string> PickBonusQuests(Settings settings, Dictionary<string, long> completions,
        HashSet<string>? excludeLast = null, HashSet<string>? excludeActive = null, int count = -1)
    {
        var pool = BuildEligiblePool(settings, completions, excludeLast, excludeActive);
        if (pool.Count == 0)
            return new List<string>();

        if (count < 0) count = settings.BonusQuestCount;
        var random = Random.Shared;
        var picked = new List<string>();
        var remaining = pool.ToList();

        while (picked.Count < count && remaining.Count > 0)
        {
            var weights = remaining.Select(kv =>
            {
                var count = Math.Max(0L, kv.Value);
                return 1.0 / (1.0 + Math.Log10(1.0 + count));
            }).ToList();

            var sum = weights.Sum();
            var roll = random.NextDouble() * sum;
            double acc = 0;
            var idx = remaining.Count - 1;
            for (var i = 0; i < remaining.Count; i++)
            {
                acc += weights[i];
                if (roll <= acc) { idx = i; break; }
            }

            picked.Add(remaining[idx].Key);
            remaining.RemoveAt(idx);
        }

        return picked;
    }

    static List<KeyValuePair<string, long>> BuildEligiblePool(Settings settings, Dictionary<string, long> completions,
        HashSet<string>? excludeLast, HashSet<string>? excludeActive)
    {
        var deny = new HashSet<string>(settings.BonusQuestDenylist, StringComparer.OrdinalIgnoreCase);
        var pool = new List<KeyValuePair<string, long>>();

        foreach (var kv in completions)
        {
            if (deny.Contains(kv.Key)) continue;
            if (excludeActive?.Contains(kv.Key) == true) continue;
            if (excludeLast?.Contains(kv.Key) == true) continue;
            if (kv.Value < settings.BonusQuestMinGlobalCompletions) continue;

            // Check world DB for repeatability
            var worldQuest = DatabaseManager.World.GetCachedQuest(kv.Key);
            if (worldQuest != null)
            {
                // MaxSolves == 1 means it can only ever be done once — skip
                if (worldQuest.MaxSolves == 1) continue;
                // MaxSolves == 0 means world DB has no quest entry; honor IncludeUnknownMaxSolves
                if (worldQuest.MaxSolves == 0 && !settings.BonusQuestIncludeUnknownMaxSolves) continue;
            }
            else if (!settings.BonusQuestIncludeUnknownMaxSolves)
            {
                continue;
            }

            pool.Add(kv);
        }

        return pool;
    }
}
