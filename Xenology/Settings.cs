namespace Xenology;

public sealed class Settings
{
    [JsonPropertyName("// XenologySettings")]
    public string XenologySettingsDoc { get; init; } = "Doc lines (// keys) precede each real setting block in shipped Settings.json.";

    [JsonPropertyName("// EnableXenology")]
    public string EnableXenologyDoc { get; init; } = "Master switch for kill tracking, xXP, hunt, and combat hooks.";
    public bool EnableXenology { get; set; } = true;

    [JsonPropertyName("// BottomTenPopularityMultiplier")]
    public string BottomTenPopularityMultiplierDoc { get; init; } = "Kill credit and kill-XP multiplier for globally least-killed species (bottom 10 by rank).";
    public double BottomTenPopularityMultiplier { get; set; } = 10.0;

    [JsonPropertyName("// TopTenRankCount")]
    public string TopTenRankCountDoc { get; init; } = "How many species count as global top tier for hunt multipliers.";
    public int TopTenRankCount { get; set; } = 10;

    [JsonPropertyName("// BottomTenRankCount")]
    public string BottomTenRankCountDoc { get; init; } = "How many species count as global bottom tier for popularity and hunt.";
    public int BottomTenRankCount { get; set; } = 10;

    [JsonPropertyName("// MinGlobalKillsForPopularityBonus")]
    public string MinGlobalKillsForPopularityBonusDoc { get; init; } = "Require at least this many global kills on a species before popularity tier applies.";
    public long MinGlobalKillsForPopularityBonus { get; set; } = 1;

    [JsonPropertyName("// HuntIntervalHours")]
    public string HuntIntervalHoursDoc { get; init; } = "Hours between hunt rotations.";
    public double HuntIntervalHours { get; set; } = 1.0;

    [JsonPropertyName("// HuntTargetCount")]
    public string HuntTargetCountDoc { get; init; } = "Distinct species selected per hunt.";
    public int HuntTargetCount { get; set; } = 3;

    [JsonPropertyName("// HuntMultiplierTopRank")]
    public string HuntMultiplierTopRankDoc { get; init; } = "Hunt multiplier for species in global top tier.";
    public double HuntMultiplierTopRank { get; set; } = 3.0;

    [JsonPropertyName("// HuntMultiplierMidRank")]
    public string HuntMultiplierMidRankDoc { get; init; } = "Hunt multiplier for middle-tier species.";
    public double HuntMultiplierMidRank { get; set; } = 5.0;

    [JsonPropertyName("// HuntMultiplierBottomRank")]
    public string HuntMultiplierBottomRankDoc { get; init; } = "Hunt multiplier for bottom-tier species.";
    public double HuntMultiplierBottomRank { get; set; } = 10.0;

    [JsonPropertyName("// HuntLeaderboardTopBonusMultiplier")]
    public string HuntLeaderboardTopBonusMultiplierDoc { get; init; } = "At hunt end, top N participants get this multiplier on hunt points earned that window.";
    public double HuntLeaderboardTopBonusMultiplier { get; set; } = 2.0;

    [JsonPropertyName("// HuntLeaderboardTopCount")]
    public string HuntLeaderboardTopCountDoc { get; init; } = "How many leaderboard slots receive the hunt bonus.";
    public int HuntLeaderboardTopCount { get; set; } = 10;

    [JsonPropertyName("// HuntWeightByInversePopularity")]
    public string HuntWeightByInversePopularityDoc { get; init; } = "When true, prefer low global-kill species when sampling hunt targets.";
    public bool HuntWeightByInversePopularity { get; set; } = true;

    [JsonPropertyName("// BaseXenologyXpPerKill")]
    public string BaseXenologyXpPerKillDoc { get; init; } = "Base xXP before popularity, hunt, and streak multipliers.";
    public double BaseXenologyXpPerKill { get; set; } = 1.0;

    [JsonPropertyName("// StreakTimeoutSeconds")]
    public string StreakTimeoutSecondsDoc { get; init; } = "Reset streak if no qualifying kill within this many seconds.";
    public int StreakTimeoutSeconds { get; set; } = 30;

    [JsonPropertyName("// StreakMultiplierPerStack")]
    public string StreakMultiplierPerStackDoc { get; init; } = "Additional multiplier per streak count after the first kill (0 disables streak scaling).";
    public double StreakMultiplierPerStack { get; set; } = 0.02;

    [JsonPropertyName("// StreakMaxMultiplierBonus")]
    public string StreakMaxMultiplierBonusDoc { get; init; } = "Cap on extra streak multiplier (e.g. 0.5 = +50% max from streak).";
    public double StreakMaxMultiplierBonus { get; set; } = 0.5;

    [JsonPropertyName("// DamageBonusPerWeightedKill")]
    public string DamageBonusPerWeightedKillDoc { get; init; } = "Outgoing damage bonus percent per weighted kill unit (see TotalWeightedKillsMode).";
    public double DamageBonusPerWeightedKill { get; set; } = 0.00001;

    [JsonPropertyName("// DamageBonusCapPercent")]
    public string DamageBonusCapPercentDoc { get; init; } = "Maximum outgoing damage bonus percent from Xenology.";
    public double DamageBonusCapPercent { get; set; } = 25.0;

    [JsonPropertyName("// OnlyScaleDamageVsCreatures")]
    public string OnlyScaleDamageVsCreaturesDoc { get; init; } = "When true, damage bonus only applies when defender is not a player.";
    public bool OnlyScaleDamageVsCreatures { get; set; } = true;

    [JsonPropertyName("// TrophyChancePerDamagePercent")]
    public string TrophyChancePerDamagePercentDoc { get; init; } = "Maps damage bonus percent to extra rare/trophy probability budget in GenerateTreasure postfix.";
    public double TrophyChancePerDamagePercent { get; set; } = 0.001;

    [JsonPropertyName("// TrophyChanceCap")]
    public string TrophyChanceCapDoc { get; init; } = "Hard cap on additive trophy probability from Xenology.";
    public double TrophyChanceCap { get; set; } = 0.15;

    [JsonPropertyName("// MilestoneKillsTier1")]
    public string MilestoneKillsTier1Doc { get; init; } = "Lifetime kills for +1 effective loot tier offset.";
    public long MilestoneKillsTier1 { get; set; } = 100_000;

    [JsonPropertyName("// MilestoneKillsTier2")]
    public string MilestoneKillsTier2Doc { get; init; } = "Lifetime kills for +2 effective loot tier offset.";
    public long MilestoneKillsTier2 { get; set; } = 500_000;

    [JsonPropertyName("// MilestoneKillsTier3")]
    public string MilestoneKillsTier3Doc { get; init; } = "Lifetime kills for +3 effective loot tier offset.";
    public long MilestoneKillsTier3 { get; set; } = 1_000_000;

    [JsonPropertyName("// MaxEffectiveLootTier")]
    public string MaxEffectiveLootTierDoc { get; init; } = "Clamp nominal tier + milestone offset to this maximum.";
    public int MaxEffectiveLootTier { get; set; } = 8;

    [JsonPropertyName("// MilestoneLootExtraRollsPerTier")]
    public string MilestoneLootExtraRollsPerTierDoc { get; init; } = "Extra create-list style rolls added in GenerateTreasure postfix per milestone tier (0–3).";
    public int MilestoneLootExtraRollsPerTier { get; set; } = 1;

    [JsonPropertyName("// MilestoneApplyDeathTreasureTierBump")]
    public string MilestoneApplyDeathTreasureTierBumpDoc { get; init; } = "When true, temporarily swap DeathTreasureType to a world DB TreasureDeath row at nominal tier + milestone offset (clamped) so primary death loot uses the higher tier.";
    public bool MilestoneApplyDeathTreasureTierBump { get; set; } = true;

    [JsonPropertyName("// MilestoneStackExtraCreateListRollsWithTierBump")]
    public string MilestoneStackExtraCreateListRollsWithTierBumpDoc { get; init; } = "When false, skip milestone create-list extra rolls if a DeathTreasure tier bump was applied for this kill (avoids double-dipping).";
    public bool MilestoneStackExtraCreateListRollsWithTierBump { get; set; } = false;

    [JsonPropertyName("// DebounceSaveMilliseconds")]
    public string DebounceSaveMillisecondsDoc { get; init; } = "Minimum delay between global JSON flush to disk.";
    public int DebounceSaveMilliseconds { get; set; } = 2000;

    [JsonPropertyName("// DenylistWcids")]
    public string DenylistWcidsDoc { get; init; } = "Species WCIDs excluded from hunt selection and global rank (e.g. peasants).";
    public List<uint> DenylistWcids { get; set; } = new();
}
