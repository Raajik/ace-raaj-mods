namespace WorldEvents.BonusQuest.Models;

public class ActiveBonusQuestData
{
    public DateTime WindowStartUtc { get; set; }
    // Next time the board rotates (adds new quests / expires old ones)
    public DateTime WindowEndUtc { get; set; }
    public List<string> QuestNames { get; set; } = new();
    // Per-quest expiry times (name → UTC when it falls off the board)
    public Dictionary<string, DateTime> QuestExpiries { get; set; } = new();
    // Per-player total completion count (guid → count)
    public Dictionary<uint, int> PlayerCompletions { get; set; } = new();
    // Per-quest multiplier (name → repeatQB multiplier)
    public Dictionary<string, int> QuestMultipliers { get; set; } = new();
}
