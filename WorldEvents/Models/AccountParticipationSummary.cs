namespace WorldEvents.Models;

public class AccountParticipationSummary
{
    public uint AccountId { get; set; }
    public int TotalEventCompletions { get; set; }
    public Dictionary<string, int> CompletionsByEventType { get; set; } = new();
    public Dictionary<string, HashSet<string>> UniqueQuestNamesByEventType { get; set; } = new();
    public Dictionary<uint, string> Characters { get; set; } = new();
    public DateTime? FirstCompletionUtc { get; set; }
    public DateTime? LastCompletionUtc { get; set; }
}
