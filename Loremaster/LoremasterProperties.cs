namespace Loremaster;

// Custom property IDs (Loremaster range). Must not collide with other mods on this shard.
internal static class LMFloat
{
    // Extra QP from milestones and repeat-solve awards; total QP = CalculateQuestPoints + QuestPointsExtra.
    internal const FakeFloat QuestPointsExtra = (FakeFloat)11011;

    // Cumulative bonus from enlightenment and /cm quit: each contribution adds (character level at exit / 10000) to this float; Loremaster enF uses (1 + value) when UseEnlightenmentPoolForXpMultiplier is true.
    internal const FakeFloat EnlightenmentPoolBonus = (FakeFloat)11012;

    // ChallengeModes /cm chaos: multiplies Loremaster QuestBonus() factor when > 1 (same id is ChallengeModes CmFloat.ChaosQuestBonusMultiplier).
    internal const FakeFloat ChaosQuestBonusMultiplier = (FakeFloat)11013;

    // The multiplier from the new "Repeat Stamp" tier.
    internal const FakeFloat RepeatStampMultiplier = (FakeFloat)11014;

    // The aggregate prestige/achievement bonus pool (Achievements, Vitae Achievement, etc.).
    internal const FakeFloat AchievementPoolBonus = (FakeFloat)11015;
}

internal static class LMString
{
    // JSON object: quest internal name (string) -> unix seconds when repeat QP was last awarded.
    internal const PropertyString RepeatQuestPointTimestamps = (PropertyString)11030;
}
