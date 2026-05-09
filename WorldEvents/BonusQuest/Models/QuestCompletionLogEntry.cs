namespace WorldEvents.BonusQuest.Models;

public record QuestCompletionLogEntry(uint TimestampUnix, uint PlayerGuid, string QuestName);
