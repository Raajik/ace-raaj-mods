namespace WorldEvents.BonusQuest.Models;

// Per-account running totals, stored as Data/BonusQuest/Participation/Accounts/{accountId}.json.
// Written on every event completion — gives instant leaderboard reads without scanning the JSONL log.
public class AccountParticipationSummary
{
    public uint AccountId { get; set; }
    public string AccountName { get; set; } = "";

    // All character guids → names seen on this account
    public Dictionary<uint, string> Characters { get; set; } = new();

    // Total world-event completions across all event types
    public int TotalEventCompletions { get; set; }

    // Breakdown by event type (e.g. "BonusQuest", "Hunt")
    public Dictionary<string, int> CompletionsByEventType { get; set; } = new();

    // Unique quest stamps completed per event type (for unique vs repeat breakdown)
    public Dictionary<string, List<string>> UniqueQuestNamesByEventType { get; set; } = new();

    public string FirstCompletionUtc { get; set; } = "";
    public string LastCompletionUtc { get; set; } = "";
}
