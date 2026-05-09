namespace WorldEvents;

using WorldEvents.Models;

internal static class BonusQuestParticipation
{
    // Record one event completion for an account; updates the per-account summary file.
    internal static void RecordCompletion(uint accountId, string accountName, uint playerGuid, string playerName, string eventType, string questName = "")
    {
        try
        {
            var summary = ParticipationLedger.Load(accountId);
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

            ParticipationLedger.Save(accountId, summary);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BonusQuest] RecordCompletion failed for account {accountId}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

}
