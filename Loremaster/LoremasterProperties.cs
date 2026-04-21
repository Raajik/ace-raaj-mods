namespace Loremaster;

// Custom property IDs (Loremaster range). Must not collide with other mods on this shard.
internal static class LMFloat
{
    // Extra QP from milestones and repeat-solve awards; total QP = CalculateQuestPoints + QuestPointsExtra.
    internal const FakeFloat QuestPointsExtra = (FakeFloat)11011;
}

internal static class LMString
{
    // JSON object: quest internal name (string) -> unix seconds when repeat QP was last awarded.
    internal const PropertyString RepeatQuestPointTimestamps = (PropertyString)11030;
}
