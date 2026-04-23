namespace WorldEvents;

public enum Features
{
    Hunt,
}

public sealed class Settings
{
    [JsonPropertyName("// HuntSettings")]
    public string HuntSettingsDoc { get; init; } = "Doc lines (// keys) precede each real setting block in shipped Settings.json.";

    [JsonPropertyName("// EnableHunt")]
    public string EnableHuntDoc { get; init; } = "Master switch for kill tracking, Hunt XP, hunt, and combat hooks.";
    public bool EnableHunt { get; set; } = true;

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

    [JsonPropertyName("// HuntUseClockSchedule")]
    public string HuntUseClockScheduleDoc { get; init; } = "When true, hunts use fixed UTC slots (HuntSlotStartMinutes + HuntSlotDurationMinutes), three windows per hour with gaps. When false, HuntIntervalHours rotates from server start.";
    public bool HuntUseClockSchedule { get; set; } = true;

    [JsonPropertyName("// HuntSlotStartMinutes")]
    public string HuntSlotStartMinutesDoc { get; init; } = "UTC minute-of-hour when each hunt window begins (e.g. 0, 20, 40 for :00, :20, :40).";
    public List<int> HuntSlotStartMinutes { get; set; } = new() { 0, 20, 40 };

    [JsonPropertyName("// HuntSlotDurationMinutes")]
    public string HuntSlotDurationMinutesDoc { get; init; } = "Length of each hunt window in minutes (e.g. 15).";
    public int HuntSlotDurationMinutes { get; set; } = 15;

    [JsonPropertyName("// HuntIntervalHours")]
    public string HuntIntervalHoursDoc { get; init; } = "Hours between hunt rotations when HuntUseClockSchedule is false.";
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

    [JsonPropertyName("// HuntGrantLootTableRolls")]
    public string HuntGrantLootTableRollsDoc { get; init; } = "When true, at hunt end grant random loot rolls from SharedLoot LootConfig (same table as Loremaster repeat-loot / BetterChestLoot).";
    public bool HuntGrantLootTableRolls { get; set; } = true;

    [JsonPropertyName("// HuntLootNote")]
    public string HuntLootNoteDoc { get; init; } = "Only top 3 receive loot (1 item each). 1st gets rare-or-better; 2nd gets uncommon-or-better; 3rd gets any category. Rarity floor falls back if the category has no items.";
    public string HuntLootNote { get; init; } = "(see above)";

    [JsonPropertyName("// HuntGrantPlacementCharacterXp")]
    public string HuntGrantPlacementCharacterXpDoc { get; init; } = "When true, grant normal character XP at hunt end as a fraction of XP-to-next-level (same basis as Loremaster parchment tier XP).";
    public bool HuntGrantPlacementCharacterXp { get; set; } = true;

    [JsonPropertyName("// HuntPlacementXpFractionFirst")]
    public string HuntPlacementXpFractionFirstDoc { get; init; } = "Fraction of XP-to-next-level for 1st place (0.99 = 99%).";
    public double HuntPlacementXpFractionFirst { get; set; } = 0.99;

    [JsonPropertyName("// HuntPlacementXpFractionSecond")]
    public string HuntPlacementXpFractionSecondDoc { get; init; } = "Fraction for 2nd place (0.66 = 66%).";
    public double HuntPlacementXpFractionSecond { get; set; } = 0.66;

    [JsonPropertyName("// HuntPlacementXpFractionThird")]
    public string HuntPlacementXpFractionThirdDoc { get; init; } = "Fraction for 3rd place (0.33 = 33%).";
    public double HuntPlacementXpFractionThird { get; set; } = 0.33;

    [JsonPropertyName("// HuntPlacementXpFractionRest")]
    public string HuntPlacementXpFractionRestDoc { get; init; } = "Fraction for all other participants (4th+) who participated (0.20 = 20%).";
    public double HuntPlacementXpFractionRest { get; set; } = 0.20;

    [JsonPropertyName("// HuntWeightByInversePopularity")]
    public string HuntWeightByInversePopularityDoc { get; init; } = "When true, prefer low global-kill species when sampling hunt targets.";
    public bool HuntWeightByInversePopularity { get; set; } = true;

    [JsonPropertyName("// BaseHuntXpPerKill")]
    public string BaseHuntXpPerKillDoc { get; init; } = "Base Hunt XP before popularity, hunt, and streak multipliers.";
    public double BaseHuntXpPerKill { get; set; } = 1.0;

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
    public string DamageBonusCapPercentDoc { get; init; } = "Maximum outgoing damage bonus percent from the Hunt system.";
    public double DamageBonusCapPercent { get; set; } = 25.0;

    [JsonPropertyName("// OnlyScaleDamageVsCreatures")]
    public string OnlyScaleDamageVsCreaturesDoc { get; init; } = "When true, damage bonus only applies when defender is not a player.";
    public bool OnlyScaleDamageVsCreatures { get; set; } = true;

    [JsonPropertyName("// TrophyChancePerDamagePercent")]
    public string TrophyChancePerDamagePercentDoc { get; init; } = "Maps damage bonus percent to extra rare/trophy probability budget in GenerateTreasure postfix.";
    public double TrophyChancePerDamagePercent { get; set; } = 0.001;

    [JsonPropertyName("// TrophyChanceCap")]
    public string TrophyChanceCapDoc { get; init; } = "Hard cap on additive trophy probability from the Hunt system.";
    public double TrophyChanceCap { get; set; } = 0.15;

    [JsonPropertyName("// UseMilestoneXpForTiers")]
    public string UseMilestoneXpForTiersDoc { get; init; } = "When true, loot tier milestones use Total Hunt XP (linear progression with multipliers). When false, use raw lifetime kill count.";
    public bool UseMilestoneXpForTiers { get; set; } = true;

    [JsonPropertyName("// MilestoneXpTier1")]
    public string MilestoneXpTier1Doc { get; init; } = "Total Hunt XP for +1 loot tier offset (linear tier curve).";
    public double MilestoneXpTier1 { get; set; } = 100_000;

    [JsonPropertyName("// MilestoneXpTier2")]
    public string MilestoneXpTier2Doc { get; init; } = "Total Hunt XP for +2 loot tier offset.";
    public double MilestoneXpTier2 { get; set; } = 500_000;

    [JsonPropertyName("// MilestoneXpTier3")]
    public string MilestoneXpTier3Doc { get; init; } = "Total Hunt XP for +3 loot tier offset.";
    public double MilestoneXpTier3 { get; set; } = 1_000_000;

    [JsonPropertyName("// MilestoneKillsTier1")]
    public string MilestoneKillsTier1Doc { get; init; } = "When UseMilestoneXpForTiers is false: lifetime kills for +1 loot tier offset.";
    public long MilestoneKillsTier1 { get; set; } = 100_000;

    [JsonPropertyName("// MilestoneKillsTier2")]
    public string MilestoneKillsTier2Doc { get; init; } = "When UseMilestoneXpForTiers is false: lifetime kills for +2 loot tier offset.";
    public long MilestoneKillsTier2 { get; set; } = 500_000;

    [JsonPropertyName("// MilestoneKillsTier3")]
    public string MilestoneKillsTier3Doc { get; init; } = "When UseMilestoneXpForTiers is false: lifetime kills for +3 loot tier offset.";
    public long MilestoneKillsTier3 { get; set; } = 1_000_000;

    [JsonPropertyName("// RarityGlobalKillsThreshold")]
    public string RarityGlobalKillsThresholdDoc { get; init; } = "If shard-wide kills for this species are below this, multiply Hunt XP by RarityXpMultiplier (helps under-hunted species). 0 = off.";
    public long RarityGlobalKillsThreshold { get; set; } = 10_000;

    [JsonPropertyName("// RarityXpMultiplier")]
    public string RarityXpMultiplierDoc { get; init; } = "Extra Hunt XP when species global kills < RarityGlobalKillsThreshold (stacks with bottom-ten and hunt).";
    public double RarityXpMultiplier { get; set; } = 1.25;

    [JsonPropertyName("// DamageBonusUsesHuntXp")]
    public string DamageBonusUsesHuntXpDoc { get; init; } = "When true, outgoing damage bonus uses TotalHuntXp × DamageBonusPerHuntXp; when false, uses lifetime kills × DamageBonusPerWeightedKill.";
    public bool DamageBonusUsesHuntXp { get; set; } = true;

    [JsonPropertyName("// DamageBonusPerHuntXp")]
    public string DamageBonusPerHuntXpDoc { get; init; } = "Damage bonus percent = TotalHuntXp × this × 100 (before cap), when DamageBonusUsesHuntXp is true.";
    public double DamageBonusPerHuntXp { get; set; } = 0.00001;

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

    [JsonPropertyName("// DenylistCreatureTypes")]
    public string DenylistCreatureTypesDoc { get; init; } = "CreatureType IDs excluded from hunt selection and global rank (e.g. Humans for peasants).";
    public List<uint> DenylistCreatureTypes { get; set; } = new();
}
