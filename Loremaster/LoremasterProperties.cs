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

    // JSON array: quest internal names that have already given their one-time repeat reward (XP + loot).
    internal const PropertyString RepeatRewardsGranted = (PropertyString)11031;
}

// Per-character notification and achievement flags (stored as PropertyBool via FakeBool cast).
internal static class LMBool
{
    internal const FakeBool NotifyQuest          = (FakeBool)11020;
    internal const FakeBool NotifyKillXp         = (FakeBool)11021;
    internal const FakeBool NotifyQuestXp        = (FakeBool)11022;
    internal const FakeBool NotifyKillLuminance  = (FakeBool)11023;
    internal const FakeBool NotifyQuestLuminance = (FakeBool)11024;
    // One-time per-character vitae-cap achievement grant
    internal const FakeBool VitaeCapAchievementGranted = (FakeBool)11025;
    // Marker on vendor WorldObjects sold as parchment contracts
    internal const FakeBool ParchmentVendorContract = (FakeBool)11026;
}

// Per-character achievement progress (stored as PropertyInt via FakeInt cast).
internal static class LMInt
{
    // Current unlocked achievement tier (0 = none, 1–4). Set by RecalcAndStoreTier.
    internal const FakeInt AchievementTier = (FakeInt)11050;
}

// Per-character parchment contract runtime state (stored as PropertyInt via FakeInt cast).
internal static class LMParchmentInt
{
    // 1-based index into BarkeeperParchments.ParchmentTemplates; 0 = no active contract
    internal const FakeInt ActiveTemplate            = (FakeInt)11040;
    // Progress toward the current contract goal (e.g. kill count reached)
    internal const FakeInt Progress                  = (FakeInt)11041;
    // Resolved explore landblock raw uint stored as int
    internal const FakeInt ExploreTargetLandblockRaw = (FakeInt)11042;
    internal const FakeInt RuntimeKillTargetWcid     = (FakeInt)11043;
    internal const FakeInt RuntimeKillTargetRare     = (FakeInt)11044;
    internal const FakeInt RuntimeFetchItemWcid      = (FakeInt)11045;
    internal const FakeInt RuntimeFetchItemCount     = (FakeInt)11046;
    // Unix seconds until the parchment cooldown gate opens
    internal const FakeInt CooldownUntilUnix         = (FakeInt)11047;
}
