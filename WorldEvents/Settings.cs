using SharedLoot;
using WorldEvents.Invasion.Models;
using WorldEvents.Sale.Models;
using WorldEvents.Cull.Models;
using WorldEvents.PoiHunt.Models;

namespace WorldEvents;

public enum Features
{
    Hunt,
}

public sealed class Settings
{
    [JsonPropertyName("// SchedulerSettings")]
    public string SchedulerSettingsDoc { get; init; } = "Unified event scheduler: rotates through enabled events on a fixed timer instead of independent cooldowns.";

    [JsonPropertyName("// UseUnifiedScheduler")]
    public string UseUnifiedSchedulerDoc { get; init; } = "When true, all world events are managed by the central scheduler (EventScheduler). When false, each event uses its own independent cooldown timer.";
    public bool UseUnifiedScheduler { get; set; } = false;

    [JsonPropertyName("// EventDurationMinutes")]
    public string EventDurationMinutesDoc { get; init; } = "How long each scheduled event lasts in minutes.";
    public double EventDurationMinutes { get; set; } = 60.0;

    [JsonPropertyName("// EventStartIntervalMinutes")]
    public string EventStartIntervalMinutesDoc { get; init; } = "Minutes between event starts. With a 60m duration and 45m interval, events overlap by 15 minutes.";
    public double EventStartIntervalMinutes { get; set; } = 45.0;

    [JsonPropertyName("// EventFiveMinuteWarning")]
    public string EventFiveMinuteWarningDoc { get; init; } = "When true, broadcast a warning 5 minutes before each scheduled event ends.";
    public bool EventFiveMinuteWarning { get; set; } = true;

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
    public string HuntGrantLootTableRollsDoc { get; init; } = "When true, at hunt end grant random loot rolls from BetterLootControl LootConfig (same table as Loremaster repeat-loot).";
    public bool HuntGrantLootTableRolls { get; set; } = true;

    [JsonPropertyName("// HuntLootNote")]
    public string HuntLootNoteDoc { get; init; } = "Only top 3 receive loot (1 item each). 1st gets rare-or-better; 2nd gets uncommon-or-better; 3rd gets any category. Rarity floor falls back if the category has no items.";
    public string HuntLootNote { get; init; } = "(see above)";

    [JsonPropertyName("// HuntGrantPlacementCharacterXp")]
    public string HuntGrantPlacementCharacterXpDoc { get; init; } = "When true, grant normal character XP at hunt end as a fraction of XP-to-next-level (same basis as Loremaster parchment tier XP).";
    public bool HuntGrantPlacementCharacterXp { get; set; } = true;

    [JsonPropertyName("// HuntPlacementXpFractionFirst")]
    public string HuntPlacementXpFractionFirstDoc { get; init; } = "Fraction of XP-to-next-level for 1st place (0.30 = 30%).";
    public double HuntPlacementXpFractionFirst { get; set; } = 0.30;

    [JsonPropertyName("// HuntPlacementXpFractionSecond")]
    public string HuntPlacementXpFractionSecondDoc { get; init; } = "Fraction for 2nd place (0.20 = 20%).";
    public double HuntPlacementXpFractionSecond { get; set; } = 0.20;

    [JsonPropertyName("// HuntPlacementXpFractionThird")]
    public string HuntPlacementXpFractionThirdDoc { get; init; } = "Fraction for 3rd place (0.10 = 10%).";
    public double HuntPlacementXpFractionThird { get; set; } = 0.10;

    [JsonPropertyName("// HuntPlacementXpFractionRest")]
    public string HuntPlacementXpFractionRestDoc { get; init; } = "Fraction for all other participants (4th+) who participated (0.05 = 5%).";
    public double HuntPlacementXpFractionRest { get; set; } = 0.05;

    [JsonPropertyName("// HuntPlacementXpMinRest")]
    public string HuntPlacementXpMinRestDoc { get; init; } = "Minimum XP grant for 4th+ place participants (whichever is larger: 5% of XP-to-next-level or this flat amount).";
    public long HuntPlacementXpMinRest { get; set; } = 500_000;

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

    [JsonPropertyName("// UseAchievementXpForTiers")]
    public string UseAchievementXpForTiersDoc { get; init; } = "When true, loot tier achievements use Total Hunt XP (linear progression with multipliers). When false, use raw lifetime kill count.";
    public bool UseAchievementXpForTiers { get; set; } = true;

    [JsonPropertyName("// AchievementXpTier1")]
    public string AchievementXpTier1Doc { get; init; } = "Total Hunt XP for +1 loot tier offset (linear tier curve).";
    public double AchievementXpTier1 { get; set; } = 100_000;

    [JsonPropertyName("// AchievementXpTier2")]
    public string AchievementXpTier2Doc { get; init; } = "Total Hunt XP for +2 loot tier offset.";
    public double AchievementXpTier2 { get; set; } = 500_000;

    [JsonPropertyName("// AchievementXpTier3")]
    public string AchievementXpTier3Doc { get; init; } = "Total Hunt XP for +3 loot tier offset.";
    public double AchievementXpTier3 { get; set; } = 1_000_000;

    [JsonPropertyName("// AchievementKillsTier1")]
    public string AchievementKillsTier1Doc { get; init; } = "When UseAchievementXpForTiers is false: lifetime kills for +1 loot tier offset.";
    public long AchievementKillsTier1 { get; set; } = 100_000;

    [JsonPropertyName("// AchievementKillsTier2")]
    public string AchievementKillsTier2Doc { get; init; } = "When UseAchievementXpForTiers is false: lifetime kills for +2 loot tier offset.";
    public long AchievementKillsTier2 { get; set; } = 500_000;

    [JsonPropertyName("// AchievementKillsTier3")]
    public string AchievementKillsTier3Doc { get; init; } = "When UseAchievementXpForTiers is false: lifetime kills for +3 loot tier offset.";
    public long AchievementKillsTier3 { get; set; } = 1_000_000;

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
    public string MaxEffectiveLootTierDoc { get; init; } = "Clamp nominal tier + achievement offset to this maximum.";
    public int MaxEffectiveLootTier { get; set; } = 8;

    [JsonPropertyName("// AchievementLootExtraRollsPerTier")]
    public string AchievementLootExtraRollsPerTierDoc { get; init; } = "Extra create-list style rolls added in GenerateTreasure postfix per achievement tier (0–3).";
    public int AchievementLootExtraRollsPerTier { get; set; } = 1;

    [JsonPropertyName("// AchievementApplyDeathTreasureTierBump")]
    public string AchievementApplyDeathTreasureTierBumpDoc { get; init; } = "When true, temporarily swap DeathTreasureType to a world DB TreasureDeath row at nominal tier + achievement offset (clamped) so primary death loot uses the higher tier.";
    public bool AchievementApplyDeathTreasureTierBump { get; set; } = true;

    [JsonPropertyName("// AchievementStackExtraCreateListRollsWithTierBump")]
    public string AchievementStackExtraCreateListRollsWithTierBumpDoc { get; init; } = "When false, skip achievement create-list extra rolls if a DeathTreasure tier bump was applied for this kill (avoids double-dipping).";
    public bool AchievementStackExtraCreateListRollsWithTierBump { get; set; } = false;

    [JsonPropertyName("// DebounceSaveMilliseconds")]
    public string DebounceSaveMillisecondsDoc { get; init; } = "Minimum delay between global JSON flush to disk.";
    public int DebounceSaveMilliseconds { get; set; } = 2000;

    [JsonPropertyName("// DenylistCreatureTypes")]
    public string DenylistCreatureTypesDoc { get; init; } = "CreatureType IDs excluded from hunt selection and global rank (e.g. Humans for peasants).";
    public List<uint> DenylistCreatureTypes { get; set; } = new();

    // ── Bonus Quest ───────────────────────────────────────────────────────────

    [JsonPropertyName("// BonusQuestSettings")]
    public string BonusQuestSettingsDoc { get; init; } = "Bonus Quest world event: server picks N recently-completed quests each window; completing them again grants bonus XP. Lesser-completed quests are weighted higher for selection.";

    [JsonPropertyName("// EnableBonusQuest")]
    public string EnableBonusQuestDoc { get; init; } = "Master switch for the Bonus Quest event and quest completion logging.";
    public bool EnableBonusQuest { get; set; } = true;

    [JsonPropertyName("// BonusQuestIntervalHours")]
    public string BonusQuestIntervalHoursDoc { get; init; } = "How often the board rotates — adds new quests and prunes expired ones (hours; 0.333 ≈ 20 minutes).";
    public double BonusQuestIntervalHours { get; set; } = 0.333;

    [JsonPropertyName("// BonusQuestCount")]
    public string BonusQuestCountDoc { get; init; } = "Number of new quests added to the board per rotation.";
    public int BonusQuestCount { get; set; } = 2;

    [JsonPropertyName("// BonusQuestQuestLifetimeHours")]
    public string BonusQuestQuestLifetimeHoursDoc { get; init; } = "How long each quest stays on the board after being added (hours). Default 20.";
    public double BonusQuestQuestLifetimeHours { get; set; } = 20.0;

    [JsonPropertyName("// BonusQuestReminderIntervalMinutes")]
    public string BonusQuestReminderIntervalMinutesDoc { get; init; } = "How often (minutes) to broadcast a bonus quest reminder. 0 = no reminders.";
    public double BonusQuestReminderIntervalMinutes { get; set; } = 60.0;

    [JsonPropertyName("// BonusQuestMaxActiveQuests")]
    public string BonusQuestMaxActiveQuestsDoc { get; init; } = "Maximum quests on the board at once. New quests are only added when there is room.";
    public int BonusQuestMaxActiveQuests { get; set; } = 10;

    [JsonPropertyName("// BonusQuestLookbackDays")]
    public string BonusQuestLookbackDaysDoc { get; init; } = "How many days back to scan for eligible recently-completed quests.";
    public int BonusQuestLookbackDays { get; set; } = 7;

    [JsonPropertyName("// BonusQuestMinGlobalCompletions")]
    public string BonusQuestMinGlobalCompletionsDoc { get; init; } = "Minimum number of shard-wide completions in the lookback window for a quest to be eligible.";
    public long BonusQuestMinGlobalCompletions { get; set; } = 1;

    [JsonPropertyName("// BonusQuestBottomTierMinCompletions")]
    public string BonusQuestBottomTierMinCompletionsDoc { get; init; } = "Minimum completions for a quest to be eligible for the bottom (rare) tier. Prevents uncompletable quests from being selected.";
    public long BonusQuestBottomTierMinCompletions { get; set; } = 10;

    [JsonPropertyName("// BonusQuestGrantXp")]
    public string BonusQuestGrantXpDoc { get; init; } = "When true, grant bonus XP on each bonus quest completion.";
    public bool BonusQuestGrantXp { get; set; } = true;

    [JsonPropertyName("// BonusQuestFirstCompletionFraction")]
    public string BonusQuestFirstCompletionFractionDoc { get; init; } = "Fraction of XP-to-next-level for the player's 1st bonus quest completion in the window. Default 0.20 = 20%.";
    public double BonusQuestFirstCompletionFraction { get; set; } = 0.20;

    [JsonPropertyName("// BonusQuestSecondCompletionFraction")]
    public string BonusQuestSecondCompletionFractionDoc { get; init; } = "Fraction for the 2nd completion. Default 0.15 = 15%.";
    public double BonusQuestSecondCompletionFraction { get; set; } = 0.15;

    [JsonPropertyName("// BonusQuestThirdCompletionFraction")]
    public string BonusQuestThirdCompletionFractionDoc { get; init; } = "Fraction for the 3rd completion. Default 0.10 = 10%.";
    public double BonusQuestThirdCompletionFraction { get; set; } = 0.10;

    [JsonPropertyName("// BonusQuestRemainingCompletionFraction")]
    public string BonusQuestRemainingCompletionFractionDoc { get; init; } = "Fraction for 4th and subsequent completions. Default 0.05 = 5%.";
    public double BonusQuestRemainingCompletionFraction { get; set; } = 0.05;

    [JsonPropertyName("// BonusQuestIncludeUnknownMaxSolves")]
    public string BonusQuestIncludeUnknownMaxSolvesDoc { get; init; } = "When true, quests not found in the world DB (unknown repeat limits) are eligible for selection.";
    public bool BonusQuestIncludeUnknownMaxSolves { get; set; } = true;

    [JsonPropertyName("// BonusQuestDenylist")]
    public string BonusQuestDenylistDoc { get; init; } = "Quest stamps that are never selected as bonus quests (e.g. one-time story quests you don't want repeated).";
    public List<string> BonusQuestDenylist { get; set; } = new();

    [JsonPropertyName("// BonusQuestGeneratedNamePatterns")]
    public string BonusQuestGeneratedNamePatternsDoc { get; init; } = "Regex patterns for generated quest names that should never be selected (e.g. timestamped/GUID quests).";
    public List<string> BonusQuestGeneratedNamePatterns { get; set; } = new()
    {
        @"\d{10,}",           // Unix timestamps
        @"[0-9a-f]{8}-[0-9a-f]{4}", // GUID fragments
        @"#repeatQB",         // repeatQB unique entries
    };

    [JsonPropertyName("// QuestLogEnabled")]
    public string QuestLogEnabledDoc { get; init; } = "When true, every quest completion shard-wide is appended to Data/BonusQuest/QuestLog/QuestCompletionLog.jsonl. Used for future multi-step chain detection and analytics.";
    public bool QuestLogEnabled { get; set; } = true;

    // ── Invasion ──────────────────────────────────────────────────────────

    [JsonPropertyName("// InvasionSettings")]
    public string InvasionSettingsDoc { get; init; } = "Invasion world event: periodically triggers a town attack via ACE events (Scripted) or programmatic vanilla mob spawns (Dynamic).";

    [JsonPropertyName("// EnableInvasion")]
    public string EnableInvasionDoc { get; init; } = "Master switch for the Invasion event.";
    public bool EnableInvasion { get; set; } = true;

    [JsonPropertyName("// InvasionWindowMinutes")]
    public string InvasionWindowMinutesDoc { get; init; } = "How long each invasion lasts (minutes). Default 45.";
    public double InvasionWindowMinutes { get; set; } = 45.0;

    [JsonPropertyName("// InvasionCooldownMinutesMin")]
    public string InvasionCooldownMinutesMinDoc { get; init; } = "Minimum cooldown between invasions (minutes). A random value between Min and Max is rolled when each wave ends.";
    public double InvasionCooldownMinutesMin { get; set; } = 30.0;

    [JsonPropertyName("// InvasionCooldownMinutesMax")]
    public string InvasionCooldownMinutesMaxDoc { get; init; } = "Maximum cooldown between invasions (minutes).";
    public double InvasionCooldownMinutesMax { get; set; } = 90.0;

    // ── Kill tracking & boss ──────────────────────────────────────────────

    [JsonPropertyName("// InvasionKillThresholdMin")]
    public string InvasionKillThresholdMinDoc { get; init; } = "Minimum kill count rolled for boss spawn threshold each wave.";
    public int InvasionKillThresholdMin { get; set; } = 100;

    [JsonPropertyName("// InvasionKillThresholdMax")]
    public string InvasionKillThresholdMaxDoc { get; init; } = "Maximum kill count rolled for boss spawn threshold. Higher threshold = faster boss respawn (harder wave, better farmed).";
    public int InvasionKillThresholdMax { get; set; } = 500;

    [JsonPropertyName("// InvasionBossRespawnAtMinThreshold")]
    public string InvasionBossRespawnAtMinThresholdDoc { get; init; } = "Boss respawn time (minutes) when threshold = KillThresholdMin (easier wave, slower respawn).";
    public double InvasionBossRespawnAtMinThreshold { get; set; } = 10.0;

    [JsonPropertyName("// InvasionBossRespawnAtMaxThreshold")]
    public string InvasionBossRespawnAtMaxThresholdDoc { get; init; } = "Boss respawn time (minutes) when threshold = KillThresholdMax (harder wave, faster respawn).";
    public double InvasionBossRespawnAtMaxThreshold { get; set; } = 2.0;

    [JsonPropertyName("// InvasionBossPointsMultiplier")]
    public string InvasionBossPointsMultiplierDoc { get; init; } = "Points for a boss kill as a fraction of a normal wave kill. Default 0.1 — so wave participants dominate the leaderboard.";
    public double InvasionBossPointsMultiplier { get; set; } = 0.1;

    [JsonPropertyName("// InvasionBossLootTopN")]
    public string InvasionBossLootTopNDoc { get; init; } = "Top N participants who receive boss-kill loot immediately on boss death.";
    public int InvasionBossLootTopN { get; set; } = 5;

    [JsonPropertyName("// InvasionGrantLoot")]
    public string InvasionGrantLootDoc { get; init; } = "When true, distribute BetterLootControl loot-table items to participants at boss kill and wave end.";
    public bool InvasionGrantLoot { get; set; } = true;

    [JsonPropertyName("// InvasionIdleTimeoutMinutes")]
    public string InvasionIdleTimeoutMinutesDoc { get; init; } = "Minutes with no kills before the invasion fades. Players get a reminder before this triggers.";
    public double InvasionIdleTimeoutMinutes { get; set; } = 25.0;

    [JsonPropertyName("// InvasionReminderIntervalMinutes")]
    public string InvasionReminderIntervalMinutesDoc { get; init; } = "How often the server-wide reminder fires for an ongoing invasion.";
    public double InvasionReminderIntervalMinutes { get; set; } = 15.0;

    [JsonPropertyName("// InvasionMinTowns")]
    public string InvasionMinTownsDoc { get; init; } = "Minimum number of towns attacked simultaneously per wave.";
    public int InvasionMinTowns { get; set; } = 1;

    [JsonPropertyName("// InvasionMaxTowns")]
    public string InvasionMaxTownsDoc { get; init; } = "Maximum number of towns attacked simultaneously per wave. Range: InvasionMinTowns–InvasionMaxTowns (rolled randomly each wave).";
    public int InvasionMaxTowns { get; set; } = 3;

    [JsonPropertyName("// InvasionUseCreatureTypeTheme")]
    public string InvasionUseCreatureTypeThemeDoc { get; init; } = "When true, each wave picks a creature type from InvasionCreatureTypePool and spawns only that type (in Dynamic mode).";
    public bool InvasionUseCreatureTypeTheme { get; set; } = false;

    [JsonPropertyName("// InvasionCreatureTypePool")]
    public string InvasionCreatureTypePoolDoc { get; init; } = "Pool of CreatureType IDs to pick from for themed waves (e.g. 17 = Lugian, 1 = Banderling, 2 = Drudge, 9 = Mosswart, 14 = Undead, 16 = Virindi). Random if empty.";
    public List<uint> InvasionCreatureTypePool { get; set; } = new()
    {
        1,  // Banderling
        2,  // Drudge
        9,  // Mosswart
        14, // Undead
        17, // Lugian
        16, // Virindi
        8,  // Hollow Minion
    };

    [JsonPropertyName("// InvasionPortalStormChancePercent")]
    public string InvasionPortalStormChancePercentDoc { get; init; } = "Chance (0-100) that an invasion wave becomes a Portal Storm (chaos mode) even when creature themes are enabled. Set to 0 to disable Portal Storms entirely, 100 for always.";
    public int InvasionPortalStormChancePercent { get; set; } = 5;

    [JsonPropertyName("// InvasionTownCountWeights")]
    public string InvasionTownCountWeightsDoc { get; init; } = "Relative weights for how many towns are attacked per wave. Index 0 = 1 town weight, index 1 = 2 towns weight, etc.";
    public List<int> InvasionTownCountWeights { get; set; } = new() { 50, 30, 20 };

    [JsonPropertyName("// InvasionTierThresholdVariance")]
    public string InvasionTierThresholdVarianceDoc { get; init; } = "Random variance (+/-) applied to per-town kill thresholds after tier scaling.";
    public int InvasionTierThresholdVariance { get; set; } = 25;

    [JsonPropertyName("// InvasionSoloTownThresholdMultiplier")]
    public string InvasionSoloTownThresholdMultiplierDoc { get; init; } = "When only 1 town is invaded, multiply its kill threshold by this amount (more action).";
    public double InvasionSoloTownThresholdMultiplier { get; set; } = 1.5;

    [JsonPropertyName("// InvasionSoloTownRespawnMultiplier")]
    public string InvasionSoloTownRespawnMultiplierDoc { get; init; } = "When only 1 town is invaded, multiply boss respawn time by this (lower = faster respawn).";
    public double InvasionSoloTownRespawnMultiplier { get; set; } = 0.5;

    [JsonPropertyName("// InvasionTargetMobCount")]
    public string InvasionTargetMobCountDoc { get; init; } = "Target living invasion mobs per town that trickle spawn tries to maintain.";
    public int InvasionTargetMobCount { get; set; } = 50;

    [JsonPropertyName("// InvasionTargetMobMin")]
    public string InvasionTargetMobMinDoc { get; init; } = "Minimum living mobs per town that trickle spawn will never drop below.";
    public int InvasionTargetMobMin { get; set; } = 10;

    [JsonPropertyName("// InvasionUseTierSystem")]
    public string InvasionUseTierSystemDoc { get; init; } = "When true, each town in a wave is assigned a random tier (1–6); tier determines the level range for Dynamic mob selection.";
    public bool InvasionUseTierSystem { get; set; } = true;

    [JsonPropertyName("// InvasionTierRanges")]
    public string InvasionTierRangesDoc { get; init; } = "Maps invasion tiers to creature level ranges. Tier 1 = newbie, Tier 6 = endgame.";
    public List<InvasionTierSettings> InvasionTierRanges { get; set; } = new()
    {
        new() { Tier = 1, LevelMin = 1,   LevelMax = 30  },
        new() { Tier = 2, LevelMin = 31,  LevelMax = 60  },
        new() { Tier = 3, LevelMin = 61,  LevelMax = 90  },
        new() { Tier = 4, LevelMin = 91,  LevelMax = 120 },
        new() { Tier = 5, LevelMin = 121, LevelMax = 150 },
        new() { Tier = 6, LevelMin = 151, LevelMax = 200 },
    };

    [JsonPropertyName("// TrickleSwarmMultiplier")]
    public string TrickleSwarmMultiplierDoc { get; init; } = "Each trickle spawn pulse adds this fraction of the scaled spawn cap as NEW mobs on top of refilling dead ones. 0.5 = +50% new swarm each pulse. Set 0 to disable swarm growth (only refill losses).";
    public double TrickleSwarmMultiplier { get; set; } = 0.5;

    [JsonPropertyName("// CreatureExWcid")]
    public string CreatureExWcidDoc { get; init; } = "Global WCID used as the base weenie when summoning a CreatureEx champion at the 50% scaling threshold. If 0 and a creature-type theme is active, a random matching WCID is picked instead.";
    public uint CreatureExWcid { get; set; } = 0;

    [JsonPropertyName("// InvasionThemeMonsterMixMin")]
    public string InvasionThemeMonsterMixMinDoc { get; init; } = "Themed waves spawn a mix of N different monster WCIDs (same CreatureType). Minimum N.";
    public int InvasionThemeMonsterMixMin { get; set; } = 2;

    [JsonPropertyName("// InvasionThemeMonsterMixMax")]
    public string InvasionThemeMonsterMixMaxDoc { get; init; } = "Themed waves spawn a mix of N different monster WCIDs (same CreatureType). Maximum N.";
    public int InvasionThemeMonsterMixMax { get; set; } = 4;

    [JsonPropertyName("// InvasionChaosScalingPercent")]
    public string InvasionChaosScalingPercentDoc { get; init; } = "Per-pulse scaling multiplier for unthemed chaos waves. 0.20 = +20% per pulse (vs +10% for themed).";
    public double InvasionChaosScalingPercent { get; set; } = 0.20;

    [JsonPropertyName("// InvasionChaosCreatureExPerPulse")]
    public string InvasionChaosCreatureExPerPulseDoc { get; init; } = "How many CreatureEx bosses spawn per trickle pulse in chaos mode.";
    public int InvasionChaosCreatureExPerPulse { get; set; } = 2;

    [JsonPropertyName("// InvasionChaosMaxCreatureExTotal")]
    public string InvasionChaosMaxCreatureExTotalDoc { get; init; } = "Maximum total CreatureEx bosses allowed in a single chaos wave.";
    public int InvasionChaosMaxCreatureExTotal { get; set; } = 10;

    [JsonPropertyName("// InvasionCreatureExOnThemedPulse")]
    public string InvasionCreatureExOnThemedPulseDoc { get; init; } = "When true, themed waves also spawn a CreatureEx boss on the 5th trickle pulse (same as chaos).";
    public bool InvasionCreatureExOnThemedPulse { get; set; } = true;

    [JsonPropertyName("// PortalStormMinPortals")]
    public string PortalStormMinPortalsDoc { get; init; } = "Minimum random portals spawned during a Portal Storm.";
    public int PortalStormMinPortals { get; set; } = 3;

    [JsonPropertyName("// PortalStormMaxPortals")]
    public string PortalStormMaxPortalsDoc { get; init; } = "Maximum random portals spawned during a Portal Storm (before tier/pulse scaling).";
    public int PortalStormMaxPortals { get; set; } = 5;

    [JsonPropertyName("// PortalStormShuffleIntervalSeconds")]
    public string PortalStormShuffleIntervalSecondsDoc { get; init; } = "How often storm portals relocate during an active Portal Storm.";
    public int PortalStormShuffleIntervalSeconds { get; set; } = 45;

    [JsonPropertyName("// PortalStormExcludedWcids")]
    public string PortalStormExcludedWcidsDoc { get; init; } = "Portal WCIDs to exclude from random storm selection (Town Network, marketplace, etc.).";
    public List<uint> PortalStormExcludedWcids { get; set; } = new()
    {
        42841, 42842, 42843, 42844, 42845, // Town Network portals
        28728, // Marketplace
    };

    [JsonPropertyName("// InvasionCreatureBlacklist")]
    public string InvasionCreatureBlacklistDoc { get; init; } = "Creature WCIDs excluded from invasion spawn pools (e.g. custom Valheel creatures that shouldn't invade towns).";
    public List<uint> InvasionCreatureBlacklist { get; set; } = new()
    {
        1,          // human (modified into placeholder NPC "Clay")
        46603, 46652, // claygolemsamurai (Valheel custom)
    };

    [JsonPropertyName("// PathwardenVendorSettings")]
    public string PathwardenVendorSettingsDoc { get; init; } = "Settings for Pathwarden vendor system - vendors in Town Network that sell Academy weapons, Pathwarden armor, and SpellSiphon tools.";

    [JsonPropertyName("// EnablePathwardenVendorTracking")]
    public string EnablePathwardenVendorTrackingDoc { get; init; } = "When true, tracks all purchases from Pathwarden vendors (player, account, item, price) for analytics.";
    public bool EnablePathwardenVendorTracking { get; set; } = true;

    [JsonPropertyName("// PathwardenVendorWcids")]
    public string PathwardenVendorWcidsDoc { get; init; } = "WCIDs of the Pathwarden vendor NPCs. These vendors restock when WorldEvents start and are tracked for analytics.";
    public List<uint> PathwardenVendorWcids { get; set; } = new()
    {
        850300, // Kaelith
        850301, // Thornwick
        850302, // Mirelle
        850303, // Eldrin
    };

    [JsonPropertyName("// InvasionTowns")]
    public string InvasionTownsDoc { get; init; } = "List of towns eligible for invasion. Mode: Scripted (fires ACE event from SQL), Dynamic (spawns mobs at TownCenterObjCellId), Random. TownCenterObjCellId required for Dynamic.";
    public List<InvasionTownSettings> InvasionTowns { get; set; } = DefaultInvasionTowns();

    // ── Cull ─────────────────────────────────────────────────────────────

    [JsonPropertyName("// CullSettings")]
    public string CullSettingsDoc { get; init; } = "Cull world event: picks an under-hunted species, makes them swarm on death, and awards 5x XP. Top-3 killers earn loot rewards.";

    [JsonPropertyName("// CullEnabled")]
    public string CullEnabledDoc { get; init; } = "Master switch for the Cull event.";
    public bool CullEnabled { get; set; } = true;

    [JsonPropertyName("// CullIntervalMinutes")]
    public string CullIntervalMinutesDoc { get; init; } = "Cooldown minutes between culls (starts after each cull ends).";
    public double CullIntervalMinutes { get; set; } = 60.0;

    [JsonPropertyName("// CullDurationMinutes")]
    public string CullDurationMinutesDoc { get; init; } = "How long each cull lasts in minutes.";
    public double CullDurationMinutes { get; set; } = 45.0;

    [JsonPropertyName("// CullXpMultiplier")]
    public string CullXpMultiplierDoc { get; init; } = "Kill XP multiplier for the target species during a cull. Stacks multiplicatively with Hunt.";
    public double CullXpMultiplier { get; set; } = 5.0;

    [JsonPropertyName("// CullSwarmChance")]
    public string CullSwarmChanceDoc { get; init; } = "Probability (0–1) that each kill spawns additional adds.";
    public double CullSwarmChance { get; set; } = 0.75;

    [JsonPropertyName("// CullSwarmKillsPerTier")]
    public string CullSwarmKillsPerTierDoc { get; init; } = "Total kills needed to advance one swarm tier (more adds, bigger, tougher).";
    public int CullSwarmKillsPerTier { get; set; } = 25;

    [JsonPropertyName("// CullSwarmMaxTiers")]
    public string CullSwarmMaxTiersDoc { get; init; } = "Maximum swarm tier (caps growth).";
    public int CullSwarmMaxTiers { get; set; } = 3;

    [JsonPropertyName("// CullSwarmBaseAdds")]
    public string CullSwarmBaseAddsDoc { get; init; } = "Adds spawned per kill at tier 0.";
    public int CullSwarmBaseAdds { get; set; } = 1;

    [JsonPropertyName("// CullSwarmAddsPerTier")]
    public string CullSwarmAddsPerTierDoc { get; init; } = "Additional adds per swarm tier.";
    public int CullSwarmAddsPerTier { get; set; } = 1;

    [JsonPropertyName("// CullSwarmScaleBase")]
    public string CullSwarmScaleBaseDoc { get; init; } = "ObjScale multiplier for spawned adds at tier 0 (1.0 = same size).";
    public double CullSwarmScaleBase { get; set; } = 1.0;

    [JsonPropertyName("// CullSwarmScalePerTier")]
    public string CullSwarmScalePerTierDoc { get; init; } = "Additional ObjScale per swarm tier. Player deaths also stack +0.05 each.";
    public double CullSwarmScalePerTier { get; set; } = 0.25;

    [JsonPropertyName("// CullSwarmHealthMultBase")]
    public string CullSwarmHealthMultBaseDoc { get; init; } = "MaxHealth multiplier for spawned adds at tier 0.";
    public double CullSwarmHealthMultBase { get; set; } = 1.0;

    [JsonPropertyName("// CullSwarmHealthMultPerTier")]
    public string CullSwarmHealthMultPerTierDoc { get; init; } = "Additional MaxHealth multiplier per swarm tier. Player deaths also stack +0.05 each.";
    public double CullSwarmHealthMultPerTier { get; set; } = 0.5;

    [JsonPropertyName("// CullReminderIntervalMinutes")]
    public string CullReminderIntervalMinutesDoc { get; init; } = "How often (minutes) to broadcast a cull reminder. 0 = no reminders.";
    public double CullReminderIntervalMinutes { get; set; } = 15.0;

    // ── Sale ─────────────────────────────────────────────────────────────

    [JsonPropertyName("// SaleSettings")]
    public string SaleSettingsDoc { get; init; } = "Sale world event: periodically picks a town or Master Mage for a timed vendor sale with bonus loot.";

    [JsonPropertyName("// SaleEnabled")]
    public string SaleEnabledDoc { get; init; } = "Master switch for the Sale event.";
    public bool SaleEnabled { get; set; } = true;

    [JsonPropertyName("// SaleIntervalMinutes")]
    public string SaleIntervalMinutesDoc { get; init; } = "Cooldown minutes between sales (starts after the previous sale ends).";
    public double SaleIntervalMinutes { get; set; } = 60.0;

    [JsonPropertyName("// SaleDurationMinutes")]
    public string SaleDurationMinutesDoc { get; init; } = "How long each sale lasts in minutes.";
    public double SaleDurationMinutes { get; set; } = 30.0;

    [JsonPropertyName("// SaleVendorPriceMultiplier")]
    public string SaleVendorPriceMultiplierDoc { get; init; } = "Global vendor buy-rate multiplier applied to all vendors at all times (e.g. 5.0 = 5× prices). Set 1.0 to disable.";
    public double SaleVendorPriceMultiplier { get; set; } = 5.0;

    [JsonPropertyName("// SaleVendorDiscountMultiplier")]
    public string SaleVendorDiscountMultiplierDoc { get; init; } = "Additional multiplier on vendors during a sale (e.g. 0.5 = half-price on top of global inflation → 5.0 × 0.5 = 2.5× during sale).";
    public double SaleVendorDiscountMultiplier { get; set; } = 0.5;

    [JsonPropertyName("// SaleLootValueMultiplier")]
    public string SaleLootValueMultiplierDoc { get; init; } = "Multiplier on item Value (pyreal worth) for loot dropped in sale landblocks. 1.5 = +50% value.";
    public double SaleLootValueMultiplier { get; set; } = 1.5;

    [JsonPropertyName("// SaleLootBonusItems")]
    public string SaleLootBonusItemsDoc { get; init; } = "DEPRECATED — ignored. Use BonusEventLoot instead.";
    public int SaleLootBonusItems { get; set; } = 1;

    [JsonPropertyName("// SaleLootBonusRarity")]
    public string SaleLootBonusRarityDoc { get; init; } = "DEPRECATED — ignored. Use BonusEventLoot instead.";
    public string SaleLootBonusRarity { get; set; } = "Any";

    [JsonPropertyName("// BonusEventLoot")]
    public string BonusEventLootDoc { get; init; } = "Weighted bonus loot for corpses in sale landblocks (~ProcChance for any extra; common pool dominates). Reusable pattern for future events.";

    [JsonPropertyName("BonusEventLoot")]
    public BonusEventLootWeights BonusEventLoot { get; set; } = new();

    [JsonPropertyName("// SaleAccelerateGeneratorRespawn")]
    public string SaleAccelerateGeneratorRespawnDoc { get; init; } = "When true, generator regen interval is scaled in sale landblocks (faster repop).";
    public bool SaleAccelerateGeneratorRespawn { get; set; } = true;

    [JsonPropertyName("// SaleGeneratorRegenerationIntervalScale")]
    public string SaleGeneratorRegenerationIntervalScaleDoc { get; init; } = "Multiplier on time until next generator regen in sale LBs (0.1 = ~10% wait vs normal).";
    public double SaleGeneratorRegenerationIntervalScale { get; set; } = 0.1;

    [JsonPropertyName("// SaleGeneratorRegenerationMinSeconds")]
    public string SaleGeneratorRegenerationMinSecondsDoc { get; init; } = "Floor (seconds) after scaling so regen does not thrash.";
    public double SaleGeneratorRegenerationMinSeconds { get; set; } = 20.0;

    [JsonPropertyName("// SaleBuddyIdleThresholdScale")]
    public string SaleBuddyIdleThresholdScaleDoc { get; init; } = "Swarmed: multiply buddy idle threshold seconds in sale landblocks (0.1 = buddies eligible ~10x sooner).";
    public double SaleBuddyIdleThresholdScale { get; set; } = 0.1;

    [JsonPropertyName("// SaleMasterMageChance")]
    public string SaleMasterMageChanceDoc { get; init; } = "Relative weight for a global Master Mage sale instead of a town. 0 = never, 1 = same weight as one town.";
    public double SaleMasterMageChance { get; set; } = 0.25;

    [JsonPropertyName("// MasterMageVendorNameSubstrings")]
    public string MasterMageVendorNameSubstringsDoc { get; init; } = "Vendor name substrings (case-insensitive) treated as a Master Mage. Fallback when WCID not in MasterMageVendorWcids.";
    public List<string> MasterMageVendorNameSubstrings { get; set; } = new() { "Master Mage", "Archmage" };

    [JsonPropertyName("// MasterMageVendorWcids")]
    public string MasterMageVendorWcidsDoc { get; init; } = "Explicit vendor WCIDs treated as Master Mages for sale discounts. Takes priority over name matching. 2246=Celdiseth, 2247=Fadsahil, 2249=Shoyanen Kenchu.";
    public List<uint> MasterMageVendorWcids { get; set; } = new() { 2246, 2247, 2249 };

    [JsonPropertyName("// SaleReminderIntervalMinutes")]
    public string SaleReminderIntervalMinutesDoc { get; init; } = "How often (minutes) to broadcast a sale reminder during an active sale. 0 = no reminders.";
    public double SaleReminderIntervalMinutes { get; set; } = 10.0;

    [JsonPropertyName("// SaleTowns")]
    public string SaleTownsDoc { get; init; } = "Towns eligible for a sale. Landblocks: list of top-16-bit landblock IDs (use /loc in-game — the high 4 hex digits). HasMasterMage: include the local Master Mage in the sale.";
    public List<SaleTownSettings> SaleTowns { get; set; } = DefaultSaleTowns();

    // ── POI Hunt ──────────────────────────────────────────────────────────

    [JsonPropertyName("// PoiHuntSettings")]
    public string PoiHuntSettingsDoc { get; init; } = "POI Hunt world event: server spawns a narrator NPC who gives clues to a point-of-interest location; players race to find it.";

    [JsonPropertyName("// EnablePoiHunt")]
    public string EnablePoiHuntDoc { get; init; } = "Master switch for the POI Hunt event.";
    public bool EnablePoiHunt { get; set; } = true;

    [JsonPropertyName("// PoiHunt")]
    public string PoiHuntDoc { get; init; } = "POI Hunt configuration.";
    public PoiHuntSettings PoiHunt { get; set; } = new();

    [JsonPropertyName("// SoloCompetitorBonus")]
    public string _doc_SoloCompetitorBonus { get; set; } = "Bonus applied when only one player participates in a world event.";
    [JsonPropertyName("SoloCompetitorBonus")]
    public SoloCompetitorBonusSettings SoloCompetitorBonus { get; set; } = new();

    [JsonPropertyName("// EnableScavengerHunt")]
    public string _doc_EnableScavengerHunt { get; set; } = "Master switch for the Scavenger Hunt world event.";
    [JsonPropertyName("EnableScavengerHunt")]
    public bool EnableScavengerHunt { get; set; } = true;

    [JsonPropertyName("// ScavengerHunt")]
    public string _doc_ScavengerHunt { get; set; } = "Scavenger Hunt configuration.";
    [JsonPropertyName("ScavengerHunt")]
    public ScavengerHuntSettings ScavengerHunt { get; set; } = new();

    static List<SaleTownSettings> DefaultSaleTowns() => new()
    {
        new() { TownName = "Holtburg",            CenterLandblocks = new() { 0xA9B4 },               HasMasterMage = true  },
        new() { TownName = "Lytelthorpe",         CenterLandblocks = new() { 0xBF80 },               HasMasterMage = true  },
        new() { TownName = "Rithwic",             CenterLandblocks = new() { 0xC98C, 0xC88C },       HasMasterMage = true  },
        new() { TownName = "Arwic",               CenterLandblocks = new() { 0xC6A9 },               HasMasterMage = true  },
        new() { TownName = "Cragstone",           CenterLandblocks = new() { 0xBB9F },               HasMasterMage = true  },
        new() { TownName = "Kara",                CenterLandblocks = new() { 0xBA17 },               HasMasterMage = true  },
        new() { TownName = "Eastham",             CenterLandblocks = new() { 0xCE95 },               HasMasterMage = true  },
        new() { TownName = "Stonehold",           CenterLandblocks = new() { 0x64D5 },               HasMasterMage = true  },
        new() { TownName = "Glenden Wood",        CenterLandblocks = new() { 0xA0A4, 0xA1A4 },       HasMasterMage = true  },
        new() { TownName = "Eastwatch",           CenterLandblocks = new() { 0x49F0 },               HasMasterMage = true  },
        new() { TownName = "Danby's Outpost",     CenterLandblocks = new() { 0x5B9C },               HasMasterMage = true  },
        new() { TownName = "Plateau Village",     CenterLandblocks = new() { 0x49B6 },               HasMasterMage = true  },
        new() { TownName = "Timaru",              CenterLandblocks = new() { 0x1DB6 },               HasMasterMage = true  },
        new() { TownName = "Sanamar",             CenterLandblocks = new() { 0x32D9 },               HasMasterMage = true  },
        new() { TownName = "Redspire",            CenterLandblocks = new() { 0x17B2 },               HasMasterMage = true  },
        new() { TownName = "Silyun",              CenterLandblocks = new() { 0x27EC },               HasMasterMage = true  },
        new() { TownName = "Westwatch",           CenterLandblocks = new() { 0x23DA },               HasMasterMage = true  },
        new() { TownName = "Fort Tethana",        CenterLandblocks = new() { 0x2581 },               HasMasterMage = true  },
        new() { TownName = "Shoushi",             CenterLandblocks = new() { 0xDA55 },               HasMasterMage = true  },
        new() { TownName = "Baishi",              CenterLandblocks = new() { 0xCD41 },               HasMasterMage = true  },
        new() { TownName = "Hebian-To",           CenterLandblocks = new() { 0xE74E },               HasMasterMage = true  },
        new() { TownName = "Sawato",              CenterLandblocks = new() { 0xC95B },               HasMasterMage = true  },
        new() { TownName = "Yanshi",              CenterLandblocks = new() { 0xB470 },               HasMasterMage = true  },
        new() { TownName = "Mayoi",               CenterLandblocks = new() { 0xE532 },               HasMasterMage = true  },
        new() { TownName = "Lin",                 CenterLandblocks = new() { 0xDC3B, 0xDB3B, 0xDA3A }, HasMasterMage = true  },
        new() { TownName = "Nanto",               CenterLandblocks = new() { 0xE53D },               HasMasterMage = true  },
        new() { TownName = "Kryst",               CenterLandblocks = new() { 0xE922 },               HasMasterMage = true  },
        new() { TownName = "Tou-Tou",             CenterLandblocks = new() { 0xF559 },               HasMasterMage = false },
        new() { TownName = "Yaraq",               CenterLandblocks = new() { 0x7D64 },               HasMasterMage = true  },
        new() { TownName = "Al-Arqas",            CenterLandblocks = new() { 0x9058 },               HasMasterMage = true  },
        new() { TownName = "Khayyaban",           CenterLandblocks = new() { 0x9E44 },               HasMasterMage = true  },
        new() { TownName = "Al-Jalima",           CenterLandblocks = new() { 0x8588 },               HasMasterMage = true  },
        new() { TownName = "Uziz",                CenterLandblocks = new() { 0xA25F },               HasMasterMage = true  },
        new() { TownName = "Tufa",                CenterLandblocks = new() { 0x866D },               HasMasterMage = true  },
        new() { TownName = "Samsur",              CenterLandblocks = new() { 0x977B },               HasMasterMage = true  },
        new() { TownName = "Zaikhal",             CenterLandblocks = new() { 0x8090 },               HasMasterMage = true  },
        new() { TownName = "Xarabydun",           CenterLandblocks = new() { 0x934B },               HasMasterMage = true  },
        new() { TownName = "Qalabar",             CenterLandblocks = new() { 0x9722 },               HasMasterMage = true  },
        new() { TownName = "Dry Reach",           CenterLandblocks = new() { 0xDA75 },               HasMasterMage = true  },
        new() { TownName = "Ahurenga",            CenterLandblocks = new() { 0x0EBA },               HasMasterMage = true  },
        new() { TownName = "Neydisa Castle",      CenterLandblocks = new() { 0x95D6 },               HasMasterMage = true  },
        new() { TownName = "Fiun Outpost",        CenterLandblocks = new() { 0x38F7 },               HasMasterMage = true  },
        new() { TownName = "Linvak Tukal",        CenterLandblocks = new() { 0xA21E },               HasMasterMage = true  },
        new() { TownName = "Macniall's Freehold", CenterLandblocks = new() { 0xF222 },               HasMasterMage = true  },
        new() { TownName = "Shoyanen",            CenterLandblocks = new() { 0xEA31 },               HasMasterMage = true  },
        new() { TownName = "Celdiseth",           CenterLandblocks = new() { 0x9AEB },               HasMasterMage = true  },
        new() { TownName = "Olutanga's Refuge",   CenterLandblocks = new() { 0xF682 },               HasMasterMage = true  },
        new() { TownName = "Ayan Baqur",          CenterLandblocks = new() { 0x1134 },               HasMasterMage = true  },
    };

    static List<InvasionTownSettings> DefaultInvasionTowns() => new()
    {
        new() { TownName = "Holtburg",        EventName = "HoltAttack",
            TownCenterObjCellId = 0xA9B40023, TownCenterX = 110.487144f, TownCenterY =  48.396507f, TownCenterZ =  93.773705f,
            DynamicLandblocks = new() { 0xA9B2, 0xA9B3, 0xA9B4, 0xA9B5, 0xA9B6 } },
        new() { TownName = "Lytelthorpe",     EventName = "LytAttack",
            TownCenterObjCellId = 0xBF80001B, TownCenterX =  81.709595f, TownCenterY =  67.743492f, TownCenterZ =  40.005001f,
            DynamicLandblocks = new() { 0xBF7E, 0xBF7F, 0xBF80, 0xBF81, 0xBF82 } },
        new() { TownName = "Rithwic",         EventName = "RithAttack",
            TownCenterObjCellId = 0xC98C0028, TownCenterX =  97.910332f, TownCenterY = 184.511230f, TownCenterZ =  22.004999f,
            DynamicLandblocks = new() { 0xC98A, 0xC98B, 0xC98C, 0xC98D, 0xC98E,
                                        0xC88A, 0xC88B, 0xC88C, 0xC88D, 0xC88E } },
        new() { TownName = "Arwic",           EventName = "ArwicAttack",
            TownCenterObjCellId = 0xC6A90013, TownCenterX =  66.278503f, TownCenterY =  66.782890f, TownCenterZ =  42.005001f,
            DynamicLandblocks = new() { 0xC6A7, 0xC6A8, 0xC6A9, 0xC6AA, 0xC6AB } },
        new() { TownName = "Cragstone",       EventName = "CragAttack",
            TownCenterObjCellId = 0xBB9F0035, TownCenterX = 160.885773f, TownCenterY = 107.920700f, TownCenterZ =  70.005005f,
            DynamicLandblocks = new() { 0xBB9D, 0xBB9E, 0xBB9F, 0xBBA0, 0xBBA1 } },
        new() { TownName = "Kara",            EventName = "KaraAttack",
            TownCenterObjCellId = 0xBA170013, TownCenterX =  70.900757f, TownCenterY =  63.556080f, TownCenterZ = 132.004990f,
            DynamicLandblocks = new() { 0xBA15, 0xBA16, 0xBA17, 0xBA18, 0xBA19 } },
        new() { TownName = "Eastham",         EventName = "EasthamAttack",
            TownCenterObjCellId = 0xCE95002B, TownCenterX = 131.459671f, TownCenterY =  63.580212f, TownCenterZ =  20.004999f,
            DynamicLandblocks = new() { 0xCE93, 0xCE94, 0xCE95, 0xCE96, 0xCE97 } },
        new() { TownName = "Stonehold",       EventName = "StoneAttack",
            TownCenterObjCellId = 0x64D5001C, TownCenterX =  79.445526f, TownCenterY =  86.485596f, TownCenterZ =  78.005005f,
            DynamicLandblocks = new() { 0x64D3, 0x64D4, 0x64D5, 0x64D6, 0x64D7 } },
        new() { TownName = "Glenden Wood",    EventName = "GWAttack",
            TownCenterObjCellId = 0xA0A40016, TownCenterX =  59.592045f, TownCenterY = 138.108597f, TownCenterZ =  69.106995f,
            DynamicLandblocks = new() { 0xA0A2, 0xA0A3, 0xA0A4, 0xA0A5, 0xA0A6,
                                        0xA1A2, 0xA1A3, 0xA1A4, 0xA1A5, 0xA1A6 } },
        new() { TownName = "Eastwatch",       EventName = "EastwatchAttack",
            TownCenterObjCellId = 0x49F00023, TownCenterX = 102.444061f, TownCenterY =  66.661095f, TownCenterZ = 170.004990f,
            DynamicLandblocks = new() { 0x49EE, 0x49EF, 0x49F0, 0x49F1, 0x49F2 } },
        new() { TownName = "Danby's Outpost", EventName = "DanbyAttack",
            TownCenterObjCellId = 0x5B9C0026, TownCenterX = 103.201820f, TownCenterY = 139.333237f, TownCenterZ =  14.004999f,
            DynamicLandblocks = new() { 0x5B9A, 0x5B9B, 0x5B9C, 0x5B9D, 0x5B9E } },
        new() { TownName = "Plateau Village", EventName = "PlateauAttack",
            TownCenterObjCellId = 0x49B6000E, TownCenterX =  44.044659f, TownCenterY = 130.120880f, TownCenterZ = 240.004990f,
            DynamicLandblocks = new() { 0x49B4, 0x49B5, 0x49B6, 0x49B7, 0x49B8 } },
        new() { TownName = "Timaru",          EventName = "TimaruAttack",
            TownCenterObjCellId = 0x1DB60025, TownCenterX = 113.340675f, TownCenterY = 100.866089f, TownCenterZ = 120.005005f,
            DynamicLandblocks = new() { 0x1DB4, 0x1DB5, 0x1DB6, 0x1DB7, 0x1DB8 } },
        new() { TownName = "Sanamar",         EventName = "SanamarAttack",
            TownCenterObjCellId = 0x32D9003B, TownCenterX = 180.773621f, TownCenterY =  56.063869f, TownCenterZ =  52.005001f,
            DynamicLandblocks = new() { 0x32D7, 0x32D8, 0x32D9, 0x32DA, 0x32DB } },
        new() { TownName = "Redspire",        EventName = "RedAttack",
            TownCenterObjCellId = 0x17B20023, TownCenterX = 105.134438f, TownCenterY =  56.375637f, TownCenterZ =  44.005001f,
            DynamicLandblocks = new() { 0x17B0, 0x17B1, 0x17B2, 0x17B3, 0x17B4 } },
        new() { TownName = "Silyun",          EventName = "SilyunAttack",
            TownCenterObjCellId = 0x27EC000D, TownCenterX =  37.503853f, TownCenterY = 101.463142f, TownCenterZ =  80.005005f,
            DynamicLandblocks = new() { 0x27EA, 0x27EB, 0x27EC, 0x27ED, 0x27EE } },
        new() { TownName = "Westwatch",       EventName = "WestwatchAttack",
            TownCenterObjCellId = 0x23DA002C, TownCenterX = 140.899994f, TownCenterY =  86.000000f, TownCenterZ =   2.005000f,
            DynamicLandblocks = new() { 0x23D8, 0x23D9, 0x23DA, 0x23DB, 0x23DC } },
        new() { TownName = "Fort Tethana",    EventName = "TethAttack",
            TownCenterObjCellId = 0x2581002C, TownCenterX = 132.744614f, TownCenterY =  77.137367f, TownCenterZ = 224.004990f,
            DynamicLandblocks = new() { 0x257F, 0x2580, 0x2581, 0x2582, 0x2583 } },
        new() { TownName = "Shoushi",         EventName = "ShoushiAttack",
            TownCenterObjCellId = 0xDA55001D, TownCenterX =  84.800003f, TownCenterY =  99.000000f, TownCenterZ =  20.004999f,
            DynamicLandblocks = new() { 0xDA53, 0xDA54, 0xDA55, 0xDA56, 0xDA57 } },
        new() { TownName = "Baishi",          EventName = "BaishiAttack",
            TownCenterObjCellId = 0xCD410026, TownCenterX = 108.752991f, TownCenterY = 120.503082f, TownCenterZ =  54.005001f,
            DynamicLandblocks = new() { 0xCD3F, 0xCD40, 0xCD41, 0xCD42, 0xCD43 } },
        new() { TownName = "Hebian-To",       EventName = "HebianAttack",
            TownCenterObjCellId = 0xE74E0023, TownCenterX =  97.089348f, TownCenterY =  59.854691f, TownCenterZ =  32.005001f,
            DynamicLandblocks = new() { 0xE74C, 0xE74D, 0xE74E, 0xE74F, 0xE750 } },
        new() { TownName = "Sawato",          EventName = "SawatoAttack",
            TownCenterObjCellId = 0xC95B0025, TownCenterX = 112.814865f, TownCenterY =  97.790413f, TownCenterZ =  12.004999f,
            DynamicLandblocks = new() { 0xC959, 0xC95A, 0xC95B, 0xC95C, 0xC95D } },
        new() { TownName = "Yanshi",          EventName = "YanshiAttack",
            TownCenterObjCellId = 0xB4700023, TownCenterX =  96.284630f, TownCenterY =  60.681797f, TownCenterZ =  42.005001f,
            DynamicLandblocks = new() { 0xB46E, 0xB46F, 0xB470, 0xB471, 0xB472 } },
        new() { TownName = "Mayoi",           EventName = "MayoiAttack",
            TownCenterObjCellId = 0xE532003C, TownCenterX = 183.650101f, TownCenterY =  87.043877f, TownCenterZ =  16.852381f,
            DynamicLandblocks = new() { 0xE530, 0xE531, 0xE532, 0xE533, 0xE534 } },
        new() { TownName = "Lin",             EventName = "LinAttack",
            TownCenterObjCellId = 0xDC3B0007, TownCenterX =  16.148998f, TownCenterY = 159.593552f, TownCenterZ =  20.004999f,
            DynamicLandblocks = new() { 0xDC39, 0xDC3A, 0xDC3B, 0xDC3C, 0xDC3D,
                                        0xDB39, 0xDB3A, 0xDB3B, 0xDB3C, 0xDB3D,
                                        0xDA38, 0xDA39, 0xDA3A, 0xDA3B, 0xDA3C } },
        new() { TownName = "Nanto",           EventName = "NantoAttack",
            TownCenterObjCellId = 0xE53D003F, TownCenterX = 182.748917f, TownCenterY = 165.054169f, TownCenterZ =  96.005005f,
            DynamicLandblocks = new() { 0xE53B, 0xE53C, 0xE53D, 0xE53E, 0xE53F } },
        new() { TownName = "Kryst",           EventName = "KrystAttack",
            TownCenterObjCellId = 0xE9220003, TownCenterX =  11.202666f, TownCenterY =  65.377960f, TownCenterZ =   4.971529f,
            DynamicLandblocks = new() { 0xE920, 0xE921, 0xE922, 0xE923, 0xE924 } },
        new() { TownName = "Tou-Tou",         EventName = "TouTouAttack",
            TownCenterObjCellId = 0xF5590034, TownCenterX = 165.971237f, TownCenterY =  94.180931f, TownCenterZ =  20.004999f,
            DynamicLandblocks = new() { 0xF557, 0xF558, 0xF559, 0xF55A, 0xF55B } },
        new() { TownName = "Yaraq",           EventName = "YaraqAttack",
            TownCenterObjCellId = 0x7D640014, TownCenterX =  64.735443f, TownCenterY =  87.098083f, TownCenterZ =  12.004999f,
            DynamicLandblocks = new() { 0x7D62, 0x7D63, 0x7D64, 0x7D65, 0x7D66 } },
        new() { TownName = "Al-Arqas",        EventName = "AlArqasAttack",
            TownCenterObjCellId = 0x9058001C, TownCenterX =  92.884277f, TownCenterY =  89.753799f, TownCenterZ =  -0.095000f,
            DynamicLandblocks = new() { 0x9056, 0x9057, 0x9058, 0x9059, 0x905A } },
        new() { TownName = "Khayyaban",       EventName = "KhayyabanAttack",
            TownCenterObjCellId = 0x9E440029, TownCenterX = 129.046494f, TownCenterY =  18.461159f, TownCenterZ =  34.620293f,
            DynamicLandblocks = new() { 0x9E42, 0x9E43, 0x9E44, 0x9E45, 0x9E46 } },
        new() { TownName = "Al-Jalima",       EventName = "AlJalimaAttack",
            TownCenterObjCellId = 0x8588001E, TownCenterX =  74.654839f, TownCenterY = 131.600372f, TownCenterZ =  86.005005f,
            DynamicLandblocks = new() { 0x8586, 0x8587, 0x8588, 0x8589, 0x858A } },
        new() { TownName = "Uziz",            EventName = "UzizAttack",
            TownCenterObjCellId = 0xA25F0037, TownCenterX = 146.171631f, TownCenterY = 157.171738f, TownCenterZ =  20.004999f,
            DynamicLandblocks = new() { 0xA25D, 0xA25E, 0xA25F, 0xA260, 0xA261 } },
        new() { TownName = "Tufa",            EventName = "TufaAttack",
            TownCenterObjCellId = 0x866D000B, TownCenterX =  34.480206f, TownCenterY =  59.560982f, TownCenterZ =  11.768596f,
            DynamicLandblocks = new() { 0x866B, 0x866C, 0x866D, 0x866E, 0x866F } },
        new() { TownName = "Samsur",          EventName = "SamsurAttack",
            TownCenterObjCellId = 0x977B0026, TownCenterX = 106.024963f, TownCenterY = 132.166916f, TownCenterZ =   0.005000f,
            DynamicLandblocks = new() { 0x9779, 0x977A, 0x977B, 0x977C, 0x977D } },
        new() { TownName = "Zaikhal",         EventName = "ZiakAttack",
            TownCenterObjCellId = 0x8090000C, TownCenterX =  38.709255f, TownCenterY =  90.331749f, TownCenterZ = 124.005005f,
            DynamicLandblocks = new() { 0x808E, 0x808F, 0x8090, 0x8091, 0x8092 } },
        new() { TownName = "Xarabydun",       EventName = "XaraAttack",
            TownCenterObjCellId = 0x934B0011, TownCenterX =  67.856850f, TownCenterY =  17.787344f, TownCenterZ =  14.004999f,
            DynamicLandblocks = new() { 0x9349, 0x934A, 0x934B, 0x934C, 0x934D } },
        new() { TownName = "Qalabar",         EventName = "QbarAttack",
            TownCenterObjCellId = 0x9722001D, TownCenterX =  94.787956f, TownCenterY = 101.740623f, TownCenterZ = 102.005005f,
            DynamicLandblocks = new() { 0x9720, 0x9721, 0x9722, 0x9723, 0x9724 } },
        new() { TownName = "Dry Reach",       EventName = "DryAttack",
            TownCenterObjCellId = 0xDA750033, TownCenterX = 144.978729f, TownCenterY =  68.456848f, TownCenterZ =  18.004999f,
            DynamicLandblocks = new() { 0xDA73, 0xDA74, 0xDA75, 0xDA76, 0xDA77 } },
        new() { TownName = "Ahurenga",        EventName = "AhurengaAttack",
            TownCenterObjCellId = 0x0EBA002A, TownCenterX = 129.624573f, TownCenterY =  43.895432f, TownCenterZ =   1.662953f,
            DynamicLandblocks = new() { 0x0EB8, 0x0EB9, 0x0EBA, 0x0EBB, 0x0EBC } },
        new() { TownName = "Neydisa Castle",  EventName = "NeydiAttack",
            TownCenterObjCellId = 0x95D6001C, TownCenterX =  88.241966f, TownCenterY =  83.686394f, TownCenterZ = 100.005013f,
            DynamicLandblocks = new() { 0x95D4, 0x95D5, 0x95D6, 0x95D7, 0x95D8 } },
        new() { TownName = "Fiun Outpost",    EventName = "FiunAttack",
            TownCenterObjCellId = 0x38F7001A, TownCenterX =  83.225510f, TownCenterY =  41.372726f, TownCenterZ =   0.557273f,
            DynamicLandblocks = new() { 0x38F5, 0x38F6, 0x38F7, 0x38F8, 0x38F9 } },
        new() { TownName = "Linvak Tukal",    EventName = "LinvakAttack",
            TownCenterObjCellId = 0xA21E001A, TownCenterX =  83.000000f, TownCenterY =  38.000000f, TownCenterZ = 560.362488f,
            DynamicLandblocks = new() { 0xA21C, 0xA21D, 0xA21E, 0xA21F, 0xA220 } },
        new() { TownName = "Macniall's Freehold", EventName = "MacniallAttack",
            TownCenterObjCellId = 0xF2220030, TownCenterX = 142.380844f, TownCenterY = 176.336212f, TownCenterZ =  18.004999f,
            DynamicLandblocks = new() { 0xF220, 0xF221, 0xF222, 0xF223, 0xF224 } },
        new() { TownName = "Shoyanen",        EventName = "ShoyAttack",
            TownCenterObjCellId = 0xEA300103, TownCenterX = 155.893417f, TownCenterY =  37.723984f, TownCenterZ = 110.455498f,
            DynamicLandblocks = new() { 0xEA2F, 0xEA30, 0xEA31, 0xEA32, 0xEA33 } },
        new() { TownName = "Celdiseth",       EventName = "CeldisethAttack",
            TownCenterObjCellId = 0x9AEB0102, TownCenterX =  84.029907f, TownCenterY = 131.132263f, TownCenterZ =  19.205000f,
            DynamicLandblocks = new() { 0x98E9, 0x98EA, 0x98EB, 0x98EC, 0x98ED,
                                        0x99E9, 0x99EA, 0x99EB, 0x99EC, 0x99ED,
                                        0x9AE9, 0x9AEA, 0x9AEB, 0x9AEC, 0x9AED,
                                        0x9BE9, 0x9BEA, 0x9BEB, 0x9BEC, 0x9BED,
                                        0x9CE9, 0x9CEA, 0x9CEB, 0x9CEC, 0x9CED } },
        new() { TownName = "Olutanga's Refuge", EventName = "OlutangaAttack",
            TownCenterObjCellId = 0xF6820033, TownCenterX = 145.699997f, TownCenterY =  49.855000f, TownCenterZ =  58.005001f,
            DynamicLandblocks = new() { 0xF680, 0xF681, 0xF682, 0xF683, 0xF684 } },
        new() { TownName = "Crystal Cove",    EventName = "CCattack",     Mode = InvasionMode.Scripted },
        new() { TownName = "Shadow Spire",    EventName = "GspireAttack", Mode = InvasionMode.Scripted, Enabled = false },
        new() { TownName = "Shadow Sanctum",  EventName = "Shadowattack", Mode = InvasionMode.Scripted },
        new() { TownName = "Withered",        EventName = "WitherAttack", Mode = InvasionMode.Scripted },
        new() { TownName = "Ayan Baqur",      EventName = "AyanAttack",
            TownCenterObjCellId = 0x1134001D, TownCenterX = 77.731384f, TownCenterY = 104.264702f, TownCenterZ = 42.005001f,
            DynamicLandblocks = new() { 0x1132, 0x1133, 0x1134, 0x1135, 0x1136 } },
    };
}

public class PoiHuntSettings
{
    [JsonPropertyName("// PoiLocations")]
    public string _doc_PoiLocations { get; set; } = "List of POI locations eligible for the hunt.";
    [JsonPropertyName("PoiLocations")]
    public List<PoiLocation> PoiLocations { get; set; } = new();

    [JsonPropertyName("// ClueIntervalMinutes")]
    public string _doc_ClueIntervalMinutes { get; set; } = "Minutes between narrator clue broadcasts.";
    [JsonPropertyName("ClueIntervalMinutes")]
    public int ClueIntervalMinutes { get; set; } = 5;

    [JsonPropertyName("// RoundDurationMinutes")]
    public string _doc_RoundDurationMinutes { get; set; } = "How long each round lasts in minutes.";
    [JsonPropertyName("RoundDurationMinutes")]
    public int RoundDurationMinutes { get; set; } = 15;

    [JsonPropertyName("// MinRounds")]
    public string _doc_MinRounds { get; set; } = "Minimum number of rounds per event.";
    [JsonPropertyName("MinRounds")]
    public int MinRounds { get; set; } = 4;

    [JsonPropertyName("// MaxRounds")]
    public string _doc_MaxRounds { get; set; } = "Maximum number of rounds per event.";
    [JsonPropertyName("MaxRounds")]
    public int MaxRounds { get; set; } = 15;

    [JsonPropertyName("// NarratorBaseWcids")]
    public string _doc_NarratorBaseWcids { get; set; } = "Base WCIDs for narrator NPCs (randomly selected each round).";
    [JsonPropertyName("NarratorBaseWcids")]
    public List<uint> NarratorBaseWcids { get; set; } = new();

    [JsonPropertyName("// NarratorRobeWcids")]
    public string _doc_NarratorRobeWcids { get; set; } = "Robe WCIDs for narrator NPC appearance (randomly selected each round).";
    [JsonPropertyName("NarratorRobeWcids")]
    public List<uint> NarratorRobeWcids { get; set; } = new() { 28256, 28257 };

    [JsonPropertyName("// RewardPool")]
    public string _doc_RewardPool { get; set; } = "Loot pool ID used for rewards.";
    [JsonPropertyName("RewardPool")]
    public string RewardPool { get; set; } = "Default";

    [JsonPropertyName("// XpPerFind")]
    public string _doc_XpPerFind { get; set; } = "XP granted to each player who finds the POI.";
    [JsonPropertyName("XpPerFind")]
    public int XpPerFind { get; set; } = 5_000_000;

    [JsonPropertyName("// LootForTopN")]
    public string _doc_LootForTopN { get; set; } = "How many top finders receive loot rewards at event end.";
    [JsonPropertyName("LootForTopN")]
    public int LootForTopN { get; set; } = 3;
}

public class SoloCompetitorBonusSettings
{
    [JsonPropertyName("// Enable")]
    public string _doc_Enable { get; set; } = "When true, solo competitors receive bonus rewards.";
    [JsonPropertyName("Enable")]
    public bool Enable { get; set; } = true;

    [JsonPropertyName("// LootFloorBonus")]
    public string _doc_LootFloorBonus { get; set; } = "Additional loot tier offset granted to solo competitors.";
    [JsonPropertyName("LootFloorBonus")]
    public int LootFloorBonus { get; set; } = 1;

    [JsonPropertyName("// XpMultiplier")]
    public string _doc_XpMultiplier { get; set; } = "XP multiplier applied to solo competitor rewards.";
    [JsonPropertyName("XpMultiplier")]
    public float XpMultiplier { get; set; } = 1.5f;

    [JsonPropertyName("// BroadcastMessage")]
    public string _doc_BroadcastMessage { get; set; } = "Server-wide broadcast when a solo competitor earns bonus rewards. Use {Name} for the player name.";
    [JsonPropertyName("BroadcastMessage")]
    public string BroadcastMessage { get; set; } = "{Name} reigns supreme as the only competitor and earns bonus rewards!";
}

public class ScavengerHuntSettings
{
    [JsonPropertyName("// MinLootCount")] public string _doc_MinLootCount { get; set; } = "Minimum global loot count for an item to be eligible as a scavenger hunt target.";
    [JsonPropertyName("MinLootCount")] public int MinLootCount { get; set; } = 100;

    [JsonPropertyName("// LootTrackerLookbackDays")] public string _doc_LootTrackerLookbackDays { get; set; } = "How many days back to look for loot tracking data (requires time-based tracking storage to enforce).";
    [JsonPropertyName("LootTrackerLookbackDays")] public int LootTrackerLookbackDays { get; set; } = 7;

    [JsonPropertyName("// FallbackItems")] public string _doc_FallbackItems { get; set; } = "Default target pool if LootTracker data is unavailable or insufficient.";
    [JsonPropertyName("FallbackItems")] public List<uint> FallbackItems { get; set; } = new() { 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381 };

    [JsonPropertyName("// TurnInNpcWcid")] public string _doc_TurnInNpcWcid { get; set; } = "WCID of the NPC players turn items in to.";
    [JsonPropertyName("TurnInNpcWcid")] public uint TurnInNpcWcid { get; set; } = 850016;

    [JsonPropertyName("// TurnInNpcLandblock")] public string _doc_TurnInNpcLandblock { get; set; } = "Landblock where the turn-in NPC spawns.";
    [JsonPropertyName("TurnInNpcLandblock")] public uint TurnInNpcLandblock { get; set; } = 0x016C;

    [JsonPropertyName("// MaxRounds")] public string _doc_MaxRounds { get; set; } = "Maximum number of rounds per scavenger hunt event.";
    [JsonPropertyName("MaxRounds")] public int MaxRounds { get; set; } = 15;

    [JsonPropertyName("// RoundDurationMinutes")] public string _doc_RoundDurationMinutes { get; set; } = "How long each round lasts in minutes.";
    [JsonPropertyName("RoundDurationMinutes")] public int RoundDurationMinutes { get; set; } = 15;

    [JsonPropertyName("// RewardPool")] public string _doc_RewardPool { get; set; } = "Loot pool ID used for rewards.";
    [JsonPropertyName("RewardPool")] public string RewardPool { get; set; } = "Default";

    [JsonPropertyName("// XpPerTurnIn")] public string _doc_XpPerTurnIn { get; set; } = "XP granted each time a player turns in the target item.";
    [JsonPropertyName("XpPerTurnIn")] public int XpPerTurnIn { get; set; } = 5000000;

    [JsonPropertyName("// BonusLootTopN")] public string _doc_BonusLootTopN { get; set; } = "How many top participants receive bonus loot at event end.";
    [JsonPropertyName("BonusLootTopN")] public int BonusLootTopN { get; set; } = 3;
}
