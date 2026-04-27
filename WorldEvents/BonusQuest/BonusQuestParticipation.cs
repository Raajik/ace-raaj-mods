namespace WorldEvents;

using WorldEvents.Models;

internal static class BonusQuestParticipation
{
    static readonly JsonSerializerOptions JsonOptions = new()
    {
        WriteIndented = true,
        PropertyNameCaseInsensitive = true,
    };

    static string AccountsDirectory =>
        Path.Combine(ModManager.ModPath, "WorldEvents", "Data", "BonusQuest", "Participation", "Accounts");

    static string AccountFile(uint accountId) =>
        Path.Combine(AccountsDirectory, $"{accountId}.json");

    internal static void EnsureDirectories() =>
        Directory.CreateDirectory(AccountsDirectory);

    // Record one event completion for an account; updates the per-account summary file.
    internal static void RecordCompletion(uint accountId, string accountName, uint playerGuid, string playerName, string eventType, string questName = "")
    {
        try
        {
            EnsureDirectories();
            var path = AccountFile(accountId);
            AccountParticipationSummary summary;

            if (File.Exists(path))
            {
                var existing = File.ReadAllText(path);
                summary = JsonSerializer.Deserialize<AccountParticipationSummary>(existing, JsonOptions)
                          ?? new AccountParticipationSummary();
            }
            else
            {
                summary = new AccountParticipationSummary
                {
                    AccountId = accountId,
                };
            }

            // Keep account/character names current
            summary.AccountId = accountId;
            summary.Characters[playerGuid] = playerName;

            summary.TotalEventCompletions++;
            summary.CompletionsByEventType.TryGetValue(eventType, out var prev);
            summary.CompletionsByEventType[eventType] = prev + 1;

            if (!string.IsNullOrEmpty(questName))
            {
                if (!summary.UniqueQuestNamesByEventType.TryGetValue(eventType, out var names))
                    summary.UniqueQuestNamesByEventType[eventType] = names = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
                names.Add(questName);
            }

            var now = DateTime.UtcNow;
            if (!summary.FirstCompletionUtc.HasValue)
                summary.FirstCompletionUtc = now;
            summary.LastCompletionUtc = now;

            File.WriteAllText(path, JsonSerializer.Serialize(summary, JsonOptions));
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BonusQuest] RecordCompletion failed for account {accountId}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    // Returns all account summaries sorted by TotalEventCompletions descending.
    internal static List<AccountParticipationSummary> GetLeaderboard()
    {
        try
        {
            EnsureDirectories();
            var results = new List<AccountParticipationSummary>();

            foreach (var file in Directory.GetFiles(AccountsDirectory, "*.json"))
            {
                try
                {
                    var json = File.ReadAllText(file);
                    var summary = JsonSerializer.Deserialize<AccountParticipationSummary>(json, JsonOptions);
                    if (summary != null)
                        results.Add(summary);
                }
                catch { }
            }

            results.Sort((a, b) => b.TotalEventCompletions.CompareTo(a.TotalEventCompletions));
            return results;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BonusQuest] GetLeaderboard failed: {ex.Message}", ModManager.LogLevel.Warn);
            return new List<AccountParticipationSummary>();
        }
    }

    // Returns the summary for one account by id, or null if not found.
    internal static AccountParticipationSummary? GetByAccountId(uint accountId)
    {
        try
        {
            EnsureDirectories();
            var path = AccountFile(accountId);
            if (!File.Exists(path))
                return null;

            var json = File.ReadAllText(path);
            return JsonSerializer.Deserialize<AccountParticipationSummary>(json, JsonOptions);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BonusQuest] GetByAccountId failed: {ex.Message}", ModManager.LogLevel.Warn);
        }

        return null;
    }
}
