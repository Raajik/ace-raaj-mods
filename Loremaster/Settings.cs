namespace Loremaster;

public class Settings
{
    [JsonPropertyName("// LoremasterSettings")]
    public string LoremasterSettingsDoc { get; init; } = "Reading order: below this line, every // key is documentation; the next block lists real settings in the same order. Loremaster extends quest points (QP), account-wide tracking, completion bonus XP, repeat loot, milestones, cooldown reduction, /qb notify defaults, optional Harmony equip patches, and BarkeeperParchments contracts. Nested BarkeeperParchments and ParchmentTemplates follow two-band // then values inside each object. Dictionary keys in QuestBonuses, CompletionBonusXpOverrides, and MilestoneBonusQPOverrides are case-sensitive quest or threshold keys.";

    [JsonPropertyName("// StandardBaseXpRetentionPercent")]
    public string StandardBaseXpRetentionPercentDoc { get; init; } = "Multiplicative base: fraction of raw ACE kill/quest XP kept before other terms (25 = 25% of raw, i.e. -75% vs full vanilla). Applied with Quest Points, equipment, etc. as a product.";
    public float StandardBaseXpRetentionPercent { get; set; } = 25f;

    [JsonPropertyName("// BonusPerQuestPoint")]
    public string BonusPerQuestPointDoc { get; init; } = "Quest Points factor = 1 + (QP × BonusPerQuestPoint / 100), multiplied after base retention and with equipment/augments/enlight/challenge.";
    public float BonusPerQuestPoint { get; set; } = 0.1f;

    [JsonPropertyName("// AugmentXpMultiplier")]
    public string AugmentXpMultiplierDoc { get; init; } = "Multiplicative augment term for /qb and XP (default 1 = no change). Raise above 1 to mirror server augment bonuses not on equipment.";
    public float AugmentXpMultiplier { get; set; } = 1f;

    [JsonPropertyName("// ChallengeModeXpMultiplier")]
    public string ChallengeModeXpMultiplierDoc { get; init; } = "Multiplicative Challenge Mode term (default 1). Set to match your ChallengeModes reward tuning, or leave 1 if unused.";
    public float ChallengeModeXpMultiplier { get; set; } = 1f;

    [JsonPropertyName("// ApplyStandardBaseXpScaleToLuminance")]
    public string ApplyStandardBaseXpScaleToLuminanceDoc { get; init; } = "When true, the same multiplicative chain as XP applies to luminance gains Loremaster scales.";
    public bool ApplyStandardBaseXpScaleToLuminance { get; set; } = true;

    [JsonPropertyName("// CooldownReductionPerQuestPoint")]
    public string CooldownReductionPerQuestPointDoc { get; init; } = "Independent of BonusPerQuestPoint: cooldown reduction fraction uses QP × (CooldownReductionPerQuestPoint / 100), then QuestCooldownReductionCap.";
    public float CooldownReductionPerQuestPoint { get; set; } = 0.1f;

    [JsonPropertyName("// CompletionBonusPerQuestPoint")]
    public string CompletionBonusPerQuestPointDoc { get; init; } = "Added to DefaultCompletionBonusXpMultiplier when computing completion bonus: effective fraction = DefaultCompletionBonusXpMultiplier + (QP × CompletionBonusPerQuestPoint / 100), then × per-quest override.";
    public float CompletionBonusPerQuestPoint { get; set; } = 0.1f;

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

    [JsonPropertyName("// EnableCompletionBonusXp")]
    public string EnableCompletionBonusXpDoc { get; init; } = "Grant one-shot completion bonus XP on each solve; stacks with the ongoing QP multiplier.";
    public bool EnableCompletionBonusXp { get; set; } = true;

    [JsonPropertyName("// DefaultCompletionBonusXpMultiplier")]
    public string DefaultCompletionBonusXpMultiplierDoc { get; init; } = "Flat fraction of next-level XP for completion bonus, before the CompletionBonusPerQuestPoint term; 0 = only QP-scaled + overrides.";
    public float DefaultCompletionBonusXpMultiplier { get; set; } = 0f;

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

    [JsonPropertyName("// LootConfigPath")]
    public string LootConfigPathDoc { get; init; } = "Optional path to LootConfig.json. Empty = Mods/Loremaster/LootConfig.json.";
    public string LootConfigPath { get; set; } = "";

    [JsonPropertyName("// EnableMilestoneBroadcasts")]
    public string EnableMilestoneBroadcastsDoc { get; init; } = "Broadcast server-wide when an account hits a milestone unique-quest count.";
    public bool EnableMilestoneBroadcasts { get; set; } = true;

    [JsonPropertyName("// MilestoneThresholds")]
    public string MilestoneThresholdsDoc { get; init; } = "Account-wide unique quest counts that trigger milestone broadcasts and bonus QP.";
    public List<int> MilestoneThresholds { get; set; } = new()
    {
        25, 50, 100, 250, 500, 750, 1000,
        1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000,
        5500, 6000, 6500, 7000, 7500, 8000, 8500, 9000, 9500, 10000
    };

    [JsonPropertyName("// MilestoneBonusQPPercent")]
    public string MilestoneBonusQPPercentDoc { get; init; } = "Bonus QP formula: (MilestoneBonusQPPercent / 100) × MilestoneBonusQPBase unless overridden.";
    public float MilestoneBonusQPPercent { get; set; } = 10f;

    [JsonPropertyName("// MilestoneBonusQPBase")]
    public string MilestoneBonusQPBaseDoc { get; init; } = "Base term for milestone bonus QP before percent (default 10% of 100 = 10 QP).";
    public float MilestoneBonusQPBase { get; set; } = 100f;

    [JsonPropertyName("// MilestoneBonusQPOverrides")]
    public string MilestoneBonusQPOverridesDoc { get; init; } = "Per milestone threshold (int key): fixed QP instead of the percent×base formula.";
    public Dictionary<int, float> MilestoneBonusQPOverrides { get; set; } = new();

    [JsonPropertyName("// MilestoneBroadcastFormat")]
    public string MilestoneBroadcastFormatDoc { get; init; } = "Broadcast format: {0} character name, {1} ordinal milestone, {2} bonus QP.";
    public string MilestoneBroadcastFormat { get; set; } =
        "[Loremaster] {0} has just completed their {1} unique quest and earned {2} bonus quest points!";

    [JsonPropertyName("// EnableRepeatQuestPoints")]
    public string EnableRepeatQuestPointsDoc { get; init; } = "When true, repeat quest solves can award QP to the extra pool at most once per quest per cooldown window.";
    public bool EnableRepeatQuestPoints { get; set; } = true;

    [JsonPropertyName("// RepeatQuestPointCooldownSeconds")]
    public string RepeatQuestPointCooldownSecondsDoc { get; init; } = "Min seconds between repeat-QP awards for the same quest (default 10 hours).";
    public int RepeatQuestPointCooldownSeconds { get; set; } = 36000;

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
    public string EnableTrophyBurdenXpDoc { get; init; } = "Award bonus XP when turning in trophies based on item burden (5% of burden = 1% of level XP).";
    public bool EnableTrophyBurdenXp { get; set; } = false;

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

    [JsonPropertyName("// BarkeeperParchments")]
    public string BarkeeperParchmentsSectionDoc { get; init; } = "Bartender parchment contracts: cooldown, Town Criers, boards, tier XP bands, templates. Inside BarkeeperParchments: // lines first, then values (same order).";
    public BarkeeperParchmentsSettings BarkeeperParchments { get; set; } = new();
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
