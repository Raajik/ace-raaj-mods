namespace Loremaster;

public class Settings
{
    [JsonPropertyName("// LoremasterSettings")]
    public string LoremasterSettingsDoc { get; init; } = "Reading order: below this line, every // key is documentation; the next block lists real settings in the same order. Loremaster extends quest points (QP), account-wide tracking, completion bonus XP, repeat loot, achievements, cooldown reduction, /qb notify defaults, optional Harmony equip patches, and BarkeeperParchments contracts. Nested BarkeeperParchments and ParchmentTemplates follow two-band // then values inside each object. Dictionary keys in QuestBonuses, CompletionBonusXpOverrides, and AchievementBonusQPOverrides are case-sensitive quest or threshold keys.";

    [JsonPropertyName("// EnableAccountWideAugments")]
    public string EnableAccountWideAugmentsDoc { get; init; } = "When true, non-exempt augment purchases are shared across all characters on the same account. Exempt: attribute augs, resist augs, skill-spec augs (one-time side effects).";
    public bool EnableAccountWideAugments { get; set; } = true;

    [JsonPropertyName("// ChallengeCharactersShareAccountAugments")]
    public string ChallengeCharactersShareAccountAugmentsDoc { get; init; } = "When true, challenge mode characters receive account-wide augments immediately (exception to challenge isolation). When false, they only get augments on /cm quit.";
    public bool ChallengeCharactersShareAccountAugments { get; set; } = true;

    [JsonPropertyName("// StandardBaseXpRetentionPercent")]
    public string StandardBaseXpRetentionPercentDoc { get; init; } = "Multiplicative base: fraction of raw ACE kill/quest XP kept before other terms (25 = 25% of raw, i.e. -75% vs full vanilla). Applied with Quest Points, equipment, etc. as a product.";
    public float StandardBaseXpRetentionPercent { get; set; } = 0.2f;

    [JsonPropertyName("// BonusXpBaseRetentionPercent")]
    public string BonusXpBaseRetentionPercentDoc { get; init; } = "Separate base retention for intentional reward XP (completion bonuses, trophy turn-ins, parchments). 100 = full reward amount. Does NOT affect kill XP or normal quest grants. Use this to make trophy looting feel rewarding while keeping combat XP tight.";
    public float BonusXpBaseRetentionPercent { get; set; } = 10f;

    [JsonPropertyName("// BonusPerQuestPoint")]
    public string BonusPerQuestPointDoc { get; init; } = "Quest Points factor = 1 + (QP × BonusPerQuestPoint / 100), multiplied after base retention and with equipment/augments/enlight/challenge.";
    public float BonusPerQuestPoint { get; set; } = 0.025f;

    [JsonPropertyName("// AugmentXpMultiplier")]
    public string AugmentXpMultiplierDoc { get; init; } = "Multiplicative augment term for /qb and XP (default 1 = no change). Raise above 1 to mirror server augment bonuses not on equipment.";
    public float AugmentXpMultiplier { get; set; } = 1f;

    [JsonPropertyName("// ChallengeModeXpMultiplier")]
    public string ChallengeModeXpMultiplierDoc { get; init; } = "Multiplicative term in the GrantXP / luminance chain only (default 1). Does not change stored quest points (FakeFloat.QuestBonus); use ChallengeModeQuestPointsMultiplier for that while a /cm challenge is active.";
    public float ChallengeModeXpMultiplier { get; set; } = 1f;

    [JsonPropertyName("// ChallengeModeQuestPointsMultiplier")]
    public string ChallengeModeQuestPointsMultiplierDoc { get; init; } = "While /cm challenge active: if not 1, this value scales flag-derived base QP and overrides ChallengeModes (including per-track m^n stacking). If left at 1, Loremaster uses ChallengeModes bridge then ChallengeModeXpMultiplier when that is not 1.";
    public float ChallengeModeQuestPointsMultiplier { get; set; } = 1f;

    [JsonPropertyName("// ApplyStandardBaseXpScaleToLuminance")]
    public string ApplyStandardBaseXpScaleToLuminanceDoc { get; init; } = "When true, the same multiplicative chain as XP applies to luminance gains Loremaster scales.";
    public bool ApplyStandardBaseXpScaleToLuminance { get; set; } = true;

    [JsonPropertyName("// CooldownReductionPerQuestPoint")]
    public string CooldownReductionPerQuestPointDoc { get; init; } = "Independent of BonusPerQuestPoint: cooldown reduction fraction uses QP × (CooldownReductionPerQuestPoint / 100), then QuestCooldownReductionCap.";
    public float CooldownReductionPerQuestPoint { get; set; } = 0.1f;

    [JsonPropertyName("// CompletionBonusPerQuestPoint")]
    public string CompletionBonusPerQuestPointDoc { get; init; } = "Added to DefaultCompletionBonusXpMultiplier when computing completion bonus: effective fraction = DefaultCompletionBonusXpMultiplier + (QP × CompletionBonusPerQuestPoint / 100), then × per-quest override.";
    public float CompletionBonusPerQuestPoint { get; set; } = 0.01f;

    [JsonPropertyName("// QuestXpPerQuestPoint")]
    public string QuestXpPerQuestPointDoc { get; init; } = "Minimum quest XP floor per QB: fraction of next-level XP granted when normal quest XP (after BonusXpBaseRetentionPercent) is lower. 0.00005 = 5% of a level at 1000 QB.";
    public float QuestXpPerQuestPoint { get; set; } = 0.00005f;

    [JsonPropertyName("// DefaultPoints")]
    public string DefaultPointsDoc { get; init; } = "QP awarded for quests not listed in QuestBonuses; 0 = only explicit QuestBonuses grant QP.";
    public float DefaultPoints { get; set; } = 1;

    [JsonPropertyName("// QuestBonuses")]
    public string QuestBonusesDoc { get; init; } = "Per-quest QP overrides (case-sensitive internal quest names). 0 = tracked but no QP; unlisted uses DefaultPoints.";
    public Dictionary<string, float> QuestBonuses { get; set; } = new()
    {
        ["PathwardenComplete"] = 1,
        ["PathwardenFound1111"] = 1,
        ["StipendsCollectedInAMonth"] = 1,
        ["StipendTimer_08"] = 1,
        ["StipendTimer_Monthly"] = 1,
    };

    [JsonPropertyName("// UseAccountWideQuests")]
    public string UseAccountWideQuestsDoc { get; init; } = "When true, QP and XP multiplier use unique quests solved across all characters on the account.";
    public bool UseAccountWideQuests { get; set; } = true;

    [JsonPropertyName("// EnableVitaeCapAchievement")]
    public string EnableVitaeCapAchievementDoc { get; init; } = "When true, the first time a character reaches VitaeCapThreshold vitae (server cap), grant VitaeCapBonusQuestPoints to the extra QP pool once per character.";
    public bool EnableVitaeCapAchievement { get; set; } = true;

    [JsonPropertyName("// VitaeCapThreshold")]
    public string VitaeCapThresholdDoc { get; init; } = "Vitae fraction (0–1) treated as 'at cap' for the goofy bonus; 0.99 matches a typical 99% server vitae ceiling.";
    public double VitaeCapThreshold { get; set; } = 0.99;

    [JsonPropertyName("// VitaeCapBonusQuestPoints")]
    public string VitaeCapBonusQuestPointsDoc { get; init; } = "Extra quest points added to LMFloat QuestPointsExtra when VitaeCapAchievement triggers (one time per character).";
    public float VitaeCapBonusQuestPoints { get; set; } = 25f;

    [JsonPropertyName("// EnableCompletionBonusXp")]
    public string EnableCompletionBonusXpDoc { get; init; } = "Grant one-shot completion bonus XP on each solve; stacks with the ongoing QP multiplier.";
    public bool EnableCompletionBonusXp { get; set; } = true;

    [JsonPropertyName("// DefaultCompletionBonusXpMultiplier")]
    public string DefaultCompletionBonusXpMultiplierDoc { get; init; } = "Flat fraction of next-level XP for completion bonus, before the CompletionBonusPerQuestPoint term; 0 = only QP-scaled + overrides.";
    public float DefaultCompletionBonusXpMultiplier { get; set; } = 0.0025f;

    [JsonPropertyName("// CompletionBonusXpOverrides")]
    public string CompletionBonusXpOverridesDoc { get; init; } = "Per-quest absolute fraction of next-level XP for completion bonus when the quest is listed. 0 suppresses. Unlisted quests use DefaultCompletionBonusXpMultiplier + (QP × CompletionBonusPerQuestPoint / 100).";
    public Dictionary<string, float> CompletionBonusXpOverrides { get; set; } = new()
    {
        ["PathwardenComplete"] = 0.3f,
        ["PathwardenFound1111"] = 0.3f,
        ["StipendsCollectedInAMonth"] = 0.3f,
        ["StipendTimer_08"] = 0.3f,
        ["StipendTimer_Monthly"] = 0.3f,
    };

    [JsonPropertyName("// EnableRepeatSolveLoot")]
    public string EnableRepeatSolveLootDoc { get; init; } = "When true, award loot on repeat solves (2nd+) from LootConfig.json (same table as BetterChestLoot by default).";
    public bool EnableRepeatSolveLoot { get; set; } = true;

    [JsonPropertyName("// EnableRepeatRewardOnceOnly")]
    public string EnableRepeatRewardOnceOnlyDoc { get; init; } = "When true, each quest grants its repeat reward (XP + loot) only once per character. Subsequent repeat solves still earn stamps but no additional XP or loot.";
    public bool EnableRepeatRewardOnceOnly { get; set; } = true;

    [JsonPropertyName("// LootConfigPath")]
    public string LootConfigPathDoc { get; init; } = "Optional path to LootConfig.json. Empty = Mods/Loremaster/LootConfig.json.";
    public string LootConfigPath { get; set; } = "";

    [JsonPropertyName("// EnableAchievementBroadcasts")]
    public string EnableAchievementBroadcastsDoc { get; init; } = "Broadcast server-wide when an account hits an achievement unique-quest count.";
    public bool EnableAchievementBroadcasts { get; set; } = true;

    [JsonPropertyName("// AchievementThresholds")]
    public string AchievementThresholdsDoc { get; init; } = "Account-wide unique quest counts that trigger achievement broadcasts and bonus QP.";
    public List<int> AchievementThresholds { get; set; } = new()
    {
        25, 50, 100, 250, 500, 750, 1000,
        1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000,
        5500, 6000, 6500, 7000, 7500, 8000, 8500, 9000, 9500, 10000
    };

    [JsonPropertyName("// AchievementBonusQPPercent")]
    public string AchievementBonusQPPercentDoc { get; init; } = "Bonus QP formula: (AchievementBonusQPPercent / 100) × AchievementBonusQPBase unless overridden.";
    public float AchievementBonusQPPercent { get; set; } = 10f;

    [JsonPropertyName("// AchievementBonusQPBase")]
    public string AchievementBonusQPBaseDoc { get; init; } = "Base term for achievement bonus QP before percent (default 10% of 100 = 10 QP).";
    public float AchievementBonusQPBase { get; set; } = 100f;

    [JsonPropertyName("// AchievementBonusQPOverrides")]
    public string AchievementBonusQPOverridesDoc { get; init; } = "Per achievement threshold (int key): fixed QP instead of the percent×base formula.";
    public Dictionary<int, float> AchievementBonusQPOverrides { get; set; } = new();

    [JsonPropertyName("// AchievementBroadcastFormat")]
    public string AchievementBroadcastFormatDoc { get; init; } = "Broadcast format: {0} character name, {1} ordinal achievement, {2} bonus QP.";
    public string AchievementBroadcastFormat { get; set; } =
        "[Loremaster] {0} has just completed their {1} unique quest and earned {2} bonus quest points!";

    [JsonPropertyName("// EnableRepeatStampSystem")]
    public string EnableRepeatStampSystemDoc { get; init; } = "DEPRECATED (2026-04-27): Replaced by repeatQB unique entries. Kept for Settings.json backward compatibility.";
    public bool EnableRepeatStampSystem { get; set; } = true;

    [JsonPropertyName("// RepeatStampBonusPerStamp")]
    public string RepeatStampBonusPerStampDoc { get; init; } = "DEPRECATED (2026-04-27): Replaced by repeatQB unique entries. Kept for Settings.json backward compatibility.";
    public float RepeatStampBonusPerStamp { get; set; } = 0.00025f;

    [JsonPropertyName("// RepeatStampCooldownSeconds")]
    public string RepeatStampCooldownSecondsDoc { get; init; } = "DEPRECATED (2026-04-27): Replaced by repeatQB unique entries. Kept for Settings.json backward compatibility.";
    public int RepeatStampCooldownSeconds { get; set; } = 72000;

    [JsonPropertyName("// EnableAccountWideRepeatCooldown")]
    public string EnableAccountWideRepeatCooldownDoc { get; init; } = "When true, repeat quest completions are tracked account-wide with a per-quest cooldown. Alts on the same account share cooldowns.";
    public bool EnableAccountWideRepeatCooldown { get; set; } = true;

    [JsonPropertyName("// AccountRepeatCooldownSeconds")]
    public string AccountRepeatCooldownSecondsDoc { get; init; } = "Account-wide cooldown between repeat completions of the same quest (default 10h = 36000).";
    public int AccountRepeatCooldownSeconds { get; set; } = 36000;

    [JsonPropertyName("// BypassPortalMaxLevelRestriction")]
    public string BypassPortalMaxLevelRestrictionDoc { get; init; } = "When true, ACE portal max-level checks (use_portal_max_level_requirement) are bypassed so over-level characters may use those portals.";
    public bool BypassPortalMaxLevelRestriction { get; set; } = false;

    [JsonPropertyName("// EnlightenmentBonusPercentPer")]
    public string EnlightenmentBonusPercentPerDoc { get; init; } = "When UseEnlightenmentPoolForXpMultiplier is false: multiplier uses (1 + enlightenment × EnlightenmentBonusPercentPer / 100). When true, this linear term is ignored.";
    public float EnlightenmentBonusPercentPer { get; set; } = 0f;

    [JsonPropertyName("// UseEnlightenmentPoolForXpMultiplier")]
    public string UseEnlightenmentPoolForXpMultiplierDoc { get; init; } = "When true, the enlightenment term is (1 + LMFloat.EnlightenmentPoolBonus) from AureatePath/ChallengeModes contributions (level/10000 each); when false, use EnlightenmentBonusPercentPer × enlightenment count instead.";
    public bool UseEnlightenmentPoolForXpMultiplier { get; set; } = true;

    [JsonPropertyName("// EnableQuestCooldownReduction")]
    public string EnableQuestCooldownReductionDoc { get; init; } = "Scale repeat cooldowns using CooldownReductionPerQuestPoint × total QP (capped by QuestCooldownReductionCap).";
    public bool EnableQuestCooldownReduction { get; set; } = true;

    [JsonPropertyName("// QuestCooldownReductionCap")]
    public string QuestCooldownReductionCapDoc { get; init; } = "Max fraction of cooldown removed (0–1); null = uncapped.";
    public float? QuestCooldownReductionCap { get; set; } = 0.95f;

    [JsonPropertyName("// QuestCooldownReductionOnlyIfMinDeltaExceedsSeconds")]
    public string QuestCooldownReductionOnlyIfMinDeltaExceedsSecondsDoc { get; init; } = "Only scale MinDelta when world quest MinDelta (seconds) is greater than this; avoids breaking short portal timers. 0 = all quests.";
    public int QuestCooldownReductionOnlyIfMinDeltaExceedsSeconds { get; set; } = 86400;

    [JsonPropertyName("// PermanentFlagQuests")]
    public string PermanentFlagQuestsDoc { get; init; } = "Quest names that skip cooldown reduction (vanilla GetNextSolveTime); case-sensitive.";
    public List<string> PermanentFlagQuests { get; set; } = new()
    {
        "AcademyTokenGiven",
    };

    [JsonPropertyName("// NotifyKillXpDefault")]
    public string NotifyKillXpDefaultDoc { get; init; } = "Default /qb kill XP notify when the character has never toggled it.";
    public bool NotifyKillXpDefault { get; set; } = true;

    [JsonPropertyName("// NotifyQuestXpDefault")]
    public string NotifyQuestXpDefaultDoc { get; init; } = "Default /qb quest XP lines when unset on the character.";
    public bool NotifyQuestXpDefault { get; set; } = true;

    [JsonPropertyName("// NotifyKillLuminanceDefault")]
    public string NotifyKillLuminanceDefaultDoc { get; init; } = "Default /qb kill luminance notify when unset.";
    public bool NotifyKillLuminanceDefault { get; set; } = true;

    [JsonPropertyName("// NotifyQuestLuminanceDefault")]
    public string NotifyQuestLuminanceDefaultDoc { get; init; } = "Default /qb quest luminance when unset.";
    public bool NotifyQuestLuminanceDefault { get; set; } = true;

    [JsonPropertyName("// EnableEquipPostCreation")]
    public string EnableEquipPostCreationDoc { get; init; } = "Harmony: equip post-creation patches (same category style as EmpyreanAlteration).";
    public bool EnableEquipPostCreation { get; set; } = false;

    [JsonPropertyName("// EnableOverrideCheckUseRequirements")]
    public string EnableOverrideCheckUseRequirementsDoc { get; init; } = "Harmony: override CheckUseRequirements when enabled.";
    public bool EnableOverrideCheckUseRequirements { get; set; } = false;

    [JsonPropertyName("// EnableTrophyBurdenXp")]
    public string EnableTrophyBurdenXpDoc { get; init; } = "Award bonus XP when turning in trophies to a listed collector, scaled per item by burden (StackUnitEncumbrance when stacked) and multiplied by the number of items given in one action. Many collectibles have 0 encumbrance in data; use TrophyEncumbranceWhenZero for those.";
    public bool EnableTrophyBurdenXp { get; set; } = false;

    [JsonPropertyName("// TrophyEncumbranceWhenZero")]
    public string TrophyEncumbranceWhenZeroDoc { get; init; } = "When the item’s EncumbranceVal is 0 or null, use this value only for the burden-based XP formula (treats zero-burden collectibles as lightweight trophies). Set 0 to require a positive weenie burden (vanilla-strict).";
    public int TrophyEncumbranceWhenZero { get; set; } = 25;

    [JsonPropertyName("// TrophyQualityBonusChance")]
    public string TrophyQualityBonusChanceDoc { get; init; } = "Per turn-in: chance (0–1) for a Quality specimen — 2× burden XP. Independent of Pristine.";
    public double TrophyQualityBonusChance { get; set; } = 0.10;

    [JsonPropertyName("// TrophyPristineBonusChance")]
    public string TrophyPristineBonusChanceDoc { get; init; } = "Per turn-in: chance (0–1) for a Pristine specimen — 3× burden XP. Stacks with Quality (6× if both).";
    public double TrophyPristineBonusChance { get; set; } = 0.05;

    [JsonPropertyName("// TrophyCollectorWcids")]
    public string TrophyCollectorWcidsDoc { get; init; } = "WCIDs of trophy collector NPCs that accept items via Give emote.";
    public List<uint> TrophyCollectorWcids { get; set; } = new()
    {
        3917, // Collector (Aluvian)
        3918, // Collector (Gharu'ndim)
        3919, // Jewel Collector
        3920, // Collector (Sho)
        3921, // Stone Collector
        3922, // Tumerok Collector
        3923, // Wing Collector
        11343, // Hea Riketura the Collector
        11348, // Aun Mareura the Collector
        21338, // Collector (Sho, Yanshi - Destroyed)
        24215, // Black Hill Collector
    };

    [JsonPropertyName("// TrophyAttunedXpFraction")]
    public string TrophyAttunedXpFractionDoc { get; init; } = "When the turned-in item is Attuned (PropertyInt.Attuned > 0), award this flat fraction of XP-to-next-level instead of the burden formula. Quality/Pristine multipliers still apply. Set 0 to block attuned items entirely.";
    public float TrophyAttunedXpFraction { get; set; } = 0.10f;

    [JsonPropertyName("// TrophyMinBuyValue")]
    public string TrophyMinBuyValueDoc { get; init; } = "Minimum item Value (pyreal buy price) to be eligible for burden XP. Items worth less than this threshold are silently rejected. 0 = disabled (all values allowed). Useful for blocking cheap vendor items like training-academy consumables.";
    public int TrophyMinBuyValue { get; set; } = 0;

    [JsonPropertyName("// TrophyBlacklistWcids")]
    public string TrophyBlacklistWcidsDoc { get; init; } = "WCIDs permanently blocked from earning trophy burden XP regardless of value or attuned status. Use this for specific vendor-bought items that slip past TrophyMinBuyValue (e.g. Oil of Rendering, spell Foci).";
    public List<uint> TrophyBlacklistWcids { get; set; } = new();

    [JsonPropertyName("// TrophyLogEnabled")]
    public string TrophyLogEnabledDoc { get; init; } = "When true, append every trophy turn-in to Data/TrophyLog.jsonl for analytics and blacklist building.";
    public bool TrophyLogEnabled { get; set; } = false;

    [JsonPropertyName("// BarkeeperParchments")]
    public string BarkeeperParchmentsSectionDoc { get; init; } = "Bartender parchment contracts: cooldown, Town Criers, boards, tier XP bands, templates. Inside BarkeeperParchments: // lines first, then values (same order).";
    public BarkeeperParchmentsSettings BarkeeperParchments { get; set; } = new();

    // ── Achievement Tier system ────────────────────────────────────────────

    [JsonPropertyName("// EnableAchievementTiers")]
    public string EnableAchievementTiersDoc { get; init; } = "When true, track a per-character achievement tier (LMInt 11050) based on progress points. Other mods gate features behind this tier.";
    public bool EnableAchievementTiers { get; set; } = true;

    [JsonPropertyName("// KillsPerQuestEquivalent")]
    public string KillsPerQuestEquivalentDoc { get; init; } = "How many total creature kills (from WorldEvents TotalLifetimeKills) equals one progress point. Default 100 = 100 kills ≈ 1 unique quest. Requires WorldEvents loaded; otherwise only quest count contributes.";
    public int KillsPerQuestEquivalent { get; set; } = 100;

    [JsonPropertyName("// AchievementTierThresholds")]
    public string AchievementTierThresholdsDoc { get; init; } = "Ordered list of progress-point thresholds that unlock Tier 1, 2, 3, 4 respectively. Progress points = uniqueQuestCount + floor(totalKills / KillsPerQuestEquivalent).";
    public List<int> AchievementTierThresholds { get; set; } = new() { 50, 150, 300, 500 };

    [JsonPropertyName("// Momentum")]
    public string MomentumSectionDoc { get; init; } = "Account-wide momentum pool + optional level parity. Replaces RestedXp.";
    public MomentumSettings Momentum { get; set; } = new();

    [JsonPropertyName("// LootTierDelay")]
    public string LootTierDelaySectionDoc { get; init; } = "Delays high spell tiers on creature drops based on killer level.";
    public LootTierDelaySettings LootTierDelay { get; set; } = new();

    [JsonPropertyName("// QuestPointLotteryContributionPercent")]
    public string QuestPointLotteryContributionPercentDoc { get; init; } = "Fraction of repeatQB earned that gets added to the LeyLineLedger lottery pool. 10.0 = 10%. Players do NOT lose QP; this is a server-side match.";
    public float QuestPointLotteryContributionPercent { get; set; } = 10f;
}

public class BarkeeperParchmentsSettings
{
    [JsonPropertyName("// Enable")]
    public string EnableDoc { get; init; } = "Master toggle for barkeeper parchment feature.";
    public bool Enable { get; set; }

    [JsonPropertyName("// CooldownSeconds")]
    public string CooldownSecondsDoc { get; init; } = "0 = disabled. After starting a parchment, Unix-time gate until another can start.";
    public int CooldownSeconds { get; set; }

    [JsonPropertyName("// TownCrierWeenieClassIds")]
    public string TownCrierWeenieClassIdsDoc { get; init; } = "Town Crier WCIDs used to turn in Explore/Fetch (not Kill) contracts.";
    public List<uint> TownCrierWeenieClassIds { get; set; } = new();

    [JsonPropertyName("// BartenderContractBoards")]
    public string BartenderContractBoardsDoc { get; init; } = "Per bartender vendor: WCID and five 0-based template row indices. Each board object: // lines first, then values.";
    public List<BartenderContractBoardSettings> BartenderContractBoards { get; set; } = new();

    [JsonPropertyName("// TierEasyXpPercentMin")]
    public string TierEasyXpPercentMinDoc { get; init; } = "Easy tier: min fraction of level-up XP for contract reward band.";
    public float TierEasyXpPercentMin { get; set; } = 0.25f;

    [JsonPropertyName("// TierEasyXpPercentMax")]
    public string TierEasyXpPercentMaxDoc { get; init; } = "Easy tier: max fraction of level-up XP for contract reward band.";
    public float TierEasyXpPercentMax { get; set; } = 1.0f;

    [JsonPropertyName("// TierAverageXpPercentMin")]
    public string TierAverageXpPercentMinDoc { get; init; } = "Average tier: min fraction of level-up XP.";
    public float TierAverageXpPercentMin { get; set; } = 0.75f;

    [JsonPropertyName("// TierAverageXpPercentMax")]
    public string TierAverageXpPercentMaxDoc { get; init; } = "Average tier: max fraction of level-up XP.";
    public float TierAverageXpPercentMax { get; set; } = 1.5f;

    [JsonPropertyName("// TierChallengingXpPercentMin")]
    public string TierChallengingXpPercentMinDoc { get; init; } = "Challenging tier: min fraction of level-up XP.";
    public float TierChallengingXpPercentMin { get; set; } = 1.5f;

    [JsonPropertyName("// TierChallengingXpPercentMax")]
    public string TierChallengingXpPercentMaxDoc { get; init; } = "Challenging tier: max fraction of level-up XP.";
    public float TierChallengingXpPercentMax { get; set; } = 2.5f;

    [JsonPropertyName("// ParchmentTemplates")]
    public string ParchmentTemplatesDoc { get; init; } = "Contract templates; each array element is a full ParchmentTemplateSettings object with // lines first, then values (same order).";
    public List<ParchmentTemplateSettings> ParchmentTemplates { get; set; } = new();
}

public class BartenderContractBoardSettings
{
    [JsonPropertyName("// BartenderVendorWeenieClassId")]
    public string BartenderVendorWeenieClassIdDoc { get; init; } = "Bartender vendor WCID offering five template rows.";
    public uint BartenderVendorWeenieClassId { get; set; }

    [JsonPropertyName("// OfferTemplateRow0Based")]
    public string OfferTemplateRow0BasedDoc { get; init; } = "Up to five 0-based indices into ParchmentTemplates for this bartender.";
    public List<int> OfferTemplateRow0Based { get; set; } = new();
}

public class ParchmentExplorePoolEntry
{
    [JsonPropertyName("// LandblockRaw")]
    public string LandblockRawDoc { get; init; } = "Explore destination landblock raw id.";
    public uint LandblockRaw { get; set; }

    [JsonPropertyName("// Weight")]
    public string WeightDoc { get; init; } = "Roll weight; non-rare weights clamped to 25–100 when rolling.";
    public int Weight { get; set; } = 50;

    [JsonPropertyName("// Rare")]
    public string RareDoc { get; init; } = "Rare pool entry; at most one Rare per template pool.";
    public bool Rare { get; set; }
}

public class ParchmentKillPoolEntry
{
    [JsonPropertyName("// CreatureWcid")]
    public string CreatureWcidDoc { get; init; } = "Kill target creature WCID.";
    public uint CreatureWcid { get; set; }

    [JsonPropertyName("// Weight")]
    public string WeightDoc { get; init; } = "Roll weight; non-rare weights clamped to 25–100.";
    public int Weight { get; set; } = 50;

    [JsonPropertyName("// Rare")]
    public string RareDoc { get; init; } = "Rare entry; at most one per pool.";
    public bool Rare { get; set; }
}

public class ParchmentFetchPoolEntry
{
    [JsonPropertyName("// Wcid")]
    public string WcidDoc { get; init; } = "Fetch item WCID.";
    public uint Wcid { get; set; }

    [JsonPropertyName("// Weight")]
    public string WeightDoc { get; init; } = "Roll weight; non-rare weights clamped to 25–100.";
    public int Weight { get; set; } = 50;

    [JsonPropertyName("// Rare")]
    public string RareDoc { get; init; } = "Rare entry; at most one per pool.";
    public bool Rare { get; set; }

    [JsonPropertyName("// StackMin")]
    public string StackMinDoc { get; init; } = "Inclusive min stack count rolled at contract start.";
    public int StackMin { get; set; } = 1;

    [JsonPropertyName("// StackMax")]
    public string StackMaxDoc { get; init; } = "Inclusive max stack count rolled at contract start.";
    public int StackMax { get; set; } = 1;
}

public class ParchmentTemplateSettings
{
    [JsonPropertyName("// ParchmentWeenieClassId")]
    public string ParchmentWeenieClassIdDoc { get; init; } = "Parchment item WCID; avoid LeyLineLedger luminance gem WCIDs if using gems.";
    public uint ParchmentWeenieClassId { get; set; }

    [JsonPropertyName("// ParchmentActivation")]
    public string ParchmentActivationDoc { get; init; } = "Gem (default): Gem.UseGem. Book: Book.ActOnUse (consumes, no read UI).";
    public string ParchmentActivation { get; set; } = "Gem";

    [JsonPropertyName("// TemplateMatchInscription")]
    public string TemplateMatchInscriptionDoc { get; init; } = "When set, only matches PropertyString.Inscription after trim; order specific rows before catch-all.";
    public string? TemplateMatchInscription { get; set; }

    [JsonPropertyName("// Kind")]
    public string KindDoc { get; init; } = "Kill, Explore, or Fetch (case-insensitive).";
    public string Kind { get; set; } = "Kill";

    [JsonPropertyName("// Tier")]
    public string TierDoc { get; init; } = "Easy, Average, or Challenging — XP band; parchment loot uses LootConfig.json (default: beside Loremaster).";
    public string Tier { get; set; } = "Easy";

    [JsonPropertyName("// TargetCreatureWcid")]
    public string TargetCreatureWcidDoc { get; init; } = "Kill: filter WCID, or 0 for any kill you credit / pool below.";
    public uint TargetCreatureWcid { get; set; }

    [JsonPropertyName("// KillTargetCreatureWcidPool")]
    public string KillTargetCreatureWcidPoolDoc { get; init; } = "Kill: when TargetCreatureWcid is 0 and pool non-empty, pick WCID at start (simple list).";
    public List<uint> KillTargetCreatureWcidPool { get; set; } = new();

    [JsonPropertyName("// KillTargetWeightedPool")]
    public string KillTargetWeightedPoolDoc { get; init; } = "Kill: weighted targets; takes precedence over KillTargetCreatureWcidPool when non-empty. Each entry: // CreatureWcid, Weight, Rare then values.";
    public List<ParchmentKillPoolEntry> KillTargetWeightedPool { get; set; } = new();

    [JsonPropertyName("// KillCount")]
    public string KillCountDoc { get; init; } = "Kill contracts: required kill count.";
    public int KillCount { get; set; } = 1;

    [JsonPropertyName("// ExploreLandblockRaw")]
    public string ExploreLandblockRawDoc { get; init; } = "Explore: required landblock when pools empty.";
    public uint ExploreLandblockRaw { get; set; }

    [JsonPropertyName("// ExploreLandblockRawPool")]
    public string ExploreLandblockRawPoolDoc { get; init; } = "Explore: pick one landblock at start when non-empty.";
    public List<uint> ExploreLandblockRawPool { get; set; } = new();

    [JsonPropertyName("// ExploreLandblockWeightedPool")]
    public string ExploreLandblockWeightedPoolDoc { get; init; } = "Explore: weighted destinations; precedence over ExploreLandblockRawPool. Each entry: // then values.";
    public List<ParchmentExplorePoolEntry> ExploreLandblockWeightedPool { get; set; } = new();

    [JsonPropertyName("// ExploreAnchorLoc")]
    public string ExploreAnchorLocDoc { get; init; } = "Optional LOC/0x cell for TryParsePosition guidance.";
    public string? ExploreAnchorLoc { get; set; }

    [JsonPropertyName("// ExploreOutdoorCoordsText")]
    public string ExploreOutdoorCoordsTextDoc { get; init; } = "Manual outdoor coords text when non-empty.";
    public string? ExploreOutdoorCoordsText { get; set; }

    [JsonPropertyName("// ExploreDungeonName")]
    public string ExploreDungeonNameDoc { get; init; } = "Dungeon name hint text.";
    public string? ExploreDungeonName { get; set; }

    [JsonPropertyName("// ExploreEntranceCoordsText")]
    public string ExploreEntranceCoordsTextDoc { get; init; } = "Dungeon entrance coords text.";
    public string? ExploreEntranceCoordsText { get; set; }

    [JsonPropertyName("// FetchItemWcid")]
    public string FetchItemWcidDoc { get; init; } = "Fetch: legacy single WCID when FetchItemWeightedPool is empty.";
    public uint FetchItemWcid { get; set; }

    [JsonPropertyName("// FetchItemWeightedPool")]
    public string FetchItemWeightedPoolDoc { get; init; } = "Fetch: weighted WCID and stack; precedence when non-empty. Each entry: // then values.";
    public List<ParchmentFetchPoolEntry> FetchItemWeightedPool { get; set; } = new();

    [JsonPropertyName("// CompletionQuestStamp")]
    public string CompletionQuestStampDoc { get; init; } = "Optional quest stamp passed to QuestManager.Update on complete.";
    public string? CompletionQuestStamp { get; set; }

    [JsonPropertyName("// StartMessage")]
    public string StartMessageDoc { get; init; } = "Message shown when contract starts.";
    public string? StartMessage { get; set; }

    [JsonPropertyName("// CompleteMessage")]
    public string CompleteMessageDoc { get; init; } = "Message shown on completion.";
    public string? CompleteMessage { get; set; }
}
