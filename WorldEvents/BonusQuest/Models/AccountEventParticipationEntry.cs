namespace WorldEvents.BonusQuest.Models;

// One record written per world-event participation (any event type).
// Stored as append-only JSONL for future long-term participation reward queries.
public record AccountEventParticipationEntry(
    uint TimestampUnix,
    uint AccountId,
    string AccountName,
    uint PlayerGuid,
    string PlayerName,
    string EventType,       // "BonusQuest", "Hunt", etc.
    string EventDetail,     // quest name for BonusQuest, species name for Hunt, etc.
    string WindowStartUtc   // ISO-8601
);
