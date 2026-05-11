namespace ChallengeModes;

public class Settings
{
    [JsonPropertyName("// ChallengeModes")]
    public string ChallengeModesSectionDoc { get; init; } = "Every // key is documentation; the following properties list real settings in the same order. Nested objects use // lines first, then values (same order).";

    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "Master switch: false disables ChallengeModes Harmony patches (Meta.json Enabled should match for clean testing).";

    [JsonPropertyName("// EnableArcaneLore")]
    public string EnableArcaneLoreDoc { get; init; } = "Special skill usage XP for Arcane Lore (when wired).";

    [JsonPropertyName("// EnableManaConversion")]
    public string EnableManaConversionDoc { get; init; } = "Special skill usage XP for Mana Conversion (when wired).";

    [JsonPropertyName("// ProficiencyXpMultiplier")]
    public string ProficiencyXpMultiplierDoc { get; init; } = "Multiplier applied to proficiency-related XP.";

    [JsonPropertyName("// ArcaneLoreXpPerMana")]
    public string ArcaneLoreXpPerManaDoc { get; init; } = "Arcane Lore XP per mana spent (when enabled).";

    [JsonPropertyName("// ManaConversionXpPerMana")]
    public string ManaConversionXpPerManaDoc { get; init; } = "Mana Conversion XP per mana spent (when enabled).";

    [JsonPropertyName("// FutureAptitude")]
    public string FutureAptitudeDoc { get; init; } = "Reserved toggles for future aptitude systems (mastery tiers, attr/vital efficiency, etc.); not wired yet.";

    [JsonPropertyName("// MaxLevel")]
    public string MaxLevelDoc { get; init; } = "DEPRECATED — moved to AureatePath. Extended character level cap is now owned by AureatePath. This property is preserved for Settings.json compatibility but ignored.";

    [JsonPropertyName("// CreditInterval")]
    public string CreditIntervalDoc { get; init; } = "DEPRECATED — moved to AureatePath. Preserved for Settings.json compatibility but ignored.";

    [JsonPropertyName("// LevelCost")]
    public string LevelCostSectionDoc { get; init; } = "DEPRECATED — moved to AureatePath. XP cost curve is now owned by AureatePath. Preserved for Settings.json compatibility but ignored.";

    [JsonPropertyName("// AlternateLeveling")]
    public string AlternateLevelingSectionDoc { get; init; } = "Alternate leveling costs and property ranges. Inside AlternateLeveling: // lines first, then values (same order); each Attribute/Vital/Trained/Specialized is a LevelCost block.";

    [JsonPropertyName("// BonusStatsEnabled")]
    public string BonusStatsEnabledDoc { get; init; } = "Adds Creature.GetBonus on top of InitLevel / StartingValue when true.";

    [JsonPropertyName("// HardcoreSecondsBetweenDeathAllowed")]
    public string HardcoreSecondsBetweenDeathAllowedDoc { get; init; } = "Minimum seconds between deaths counted for hardcore rules.";

    [JsonPropertyName("// HardcoreStartingLives")]
    public string HardcoreStartingLivesDoc { get; init; } = "Starting life count for hardcore mode.";

    [JsonPropertyName("// ChallengeAchievementRewardsEnabled")]
    public string ChallengeAchievementRewardsEnabledDoc { get; init; } = "One-time skill credits + permanent XP/lum % at ChallengeAchievementLevels while a challenge is active at level-up; after Loremaster QP multiplier.";

    [JsonPropertyName("// ChallengeAchievementLevels")]
    public string ChallengeAchievementLevelsDoc { get; init; } = "Character levels for skill-credit achievements; one credit per active Chaos / Aptitude track per level, each track once forever.";

    [JsonPropertyName("// ChallengeAchievementPercentEach")]
    public string ChallengeAchievementPercentEachDoc { get; init; } = "Skill-credit message / bookkeeping; achievement XP/lum % uses ChallengeBonusPercentPerLevel × furthest level per segment.";

    [JsonPropertyName("// ChallengeBonusPercentPerLevel")]
    public string ChallengeBonusPercentPerLevelDoc { get; init; } = "XP/luminance bonus percent per character level toward the current 300-level segment (e.g. 0.01 = 0.01% per level, level 60 => 0.6%).";

    [JsonPropertyName("// ChallengeBonusSegmentCapLevel")]
    public string ChallengeBonusSegmentCapLevelDoc { get; init; } = "Character level that completes one segment (banks cap × percent per level; resets in-run progress so you can stack again).";

    [JsonPropertyName("// ChallengeModeDefaultTitles")]
    public string ChallengeModeDefaultTitlesDoc { get; init; } = "Future wishlist: nameplate titles when activating /cm modes (ACE CharacterTitle is dat-only; not wired). Precedence if implemented: SSF+HC > SSF > HC > alternate > aptitude.";

    [JsonPropertyName("// CmQuitRequiresConfirmation")]
    public string CmQuitRequiresConfirmationDoc { get; init; } = "When true, /cm quit shows a Yes/No dialog before applying penalties and clearing modes.";

    [JsonPropertyName("// CmQuitUnequipAll")]
    public string CmQuitUnequipAllDoc { get; init; } = "When true, /cm quit de-equips all worn items into the main pack before attribute/skill/level strips.";

    [JsonPropertyName("// CmQuitRemoveLevel")]
    public string CmQuitRemoveLevelDoc { get; init; } = "When true, /cm quit calls Enlightenment.RemoveLevel (same family as AureatePath enlightenment).";

    [JsonPropertyName("// CmQuitRemoveAttributes")]
    public string CmQuitRemoveAttributesDoc { get; init; } = "When true, /cm quit calls Enlightenment.RemoveAttributes.";

    [JsonPropertyName("// CmQuitRemoveSkills")]
    public string CmQuitRemoveSkillsDoc { get; init; } = "When true, /cm quit calls Enlightenment.RemoveSkills.";

    [JsonPropertyName("// CmQuitRemoveLuminance")]
    public string CmQuitRemoveLuminanceDoc { get; init; } = "When true, /cm quit calls Enlightenment.RemoveLuminance.";

    [JsonPropertyName("// CmQuitRemoveSociety")]
    public string CmQuitRemoveSocietyDoc { get; init; } = "When true, /cm quit calls Enlightenment.RemoveSociety.";

    [JsonPropertyName("// CmQuitRemoveAetheria")]
    public string CmQuitRemoveAetheriaDoc { get; init; } = "When true, /cm quit calls Enlightenment.RemoveAetheria.";

    [JsonPropertyName("// ChaosQuestBonusMultiplier")]
    public string ChaosQuestBonusMultiplierDoc { get; init; } = "FakeFloat 11013 applied when /cm chaos is active (Swarmed / legacy Loremaster QuestBonus paths). Default 3 matches per-track QB scaling; keep separate from LoremasterQuestPointsBridge (also ×3 per track).";

    [JsonPropertyName("// QuestPointsMultiplierWhileChallengeActive")]
    public string QuestPointsMultiplierWhileChallengeActiveDoc { get; init; } = "DEPRECATED — Loremaster uses ChallengeModes.Features.LoremasterQuestPointsBridge (×3 Chaos × ×3 Aptitude). Kept for Settings.json compatibility.";

    [JsonPropertyName("// QuestPointsMultiplyPerActiveChallengeTrack")]
    public string QuestPointsMultiplyPerActiveChallengeTrackDoc { get; init; } = "DEPRECATED — same as QuestPointsMultiplierWhileChallengeActive. Kept for Settings.json compatibility.";

    public bool Enabled { get; set; } = false;

    public bool EnableArcaneLore { get; set; } = true;
    public bool EnableManaConversion { get; set; } = true;

    public float ProficiencyXpMultiplier { get; set; } = 1.0f;
    public float ArcaneLoreXpPerMana { get; set; } = 0.01f;
    public float ManaConversionXpPerMana { get; set; } = 0.01f;

    public FutureAptitudeFeatures FutureAptitude { get; set; } = new();

    public int MaxLevel { get; set; } = 9999;
    public int CreditInterval { get; set; } = 10;
    public Progression.LevelCost LevelCost { get; set; } = new(1_000_000_000u, 1_000_000_000u, 0, -276, growthType: Progression.GrowthType.Linear);

    public Progression.AlternateLevelingSettings AlternateLeveling { get; set; } = new();

    public bool BonusStatsEnabled { get; set; } = true;

    public float HardcoreSecondsBetweenDeathAllowed { get; set; } = 60;
    public int HardcoreStartingLives { get; set; } = 5;

    public bool ChallengeAchievementRewardsEnabled { get; set; } = true;

    public List<int> ChallengeAchievementLevels { get; set; } = new()
    {
        50, 100, 150, 200, 250, 275, 300,
        400, 500, 600, 700, 800, 900, 1000,
        1250, 1500, 2000, 2500, 3000,
        4000, 5000, 7500, 9999
    };

    public float ChallengeAchievementPercentEach { get; set; } = 1f;

    public float ChallengeBonusPercentPerLevel { get; set; } = 0.01f;

    public int ChallengeBonusSegmentCapLevel { get; set; } = 300;

    public ChallengeModeDefaultTitles ChallengeModeDefaultTitles { get; set; } = new();

    public bool CmQuitRequiresConfirmation { get; set; } = true;

    public bool CmQuitUnequipAll { get; set; } = true;

    public bool CmQuitRemoveLevel { get; set; } = true;

    public bool CmQuitRemoveAttributes { get; set; } = true;

    public bool CmQuitRemoveSkills { get; set; } = true;

    public bool CmQuitRemoveLuminance { get; set; } = false;

    public bool CmQuitRemoveSociety { get; set; } = false;

    public bool CmQuitRemoveAetheria { get; set; } = false;

    public float ChaosQuestBonusMultiplier { get; set; } = 3f;

    public float QuestPointsMultiplierWhileChallengeActive { get; set; } = 2f;

    public bool QuestPointsMultiplyPerActiveChallengeTrack { get; set; } = true;

    [JsonPropertyName("// ChallengeAbsorbPassupXp")]
    public string ChallengeAbsorbPassupXpDoc { get; init; } = "When true, characters in challenge modes do not receive allegiance passup XP; instead, the XP is automatically passed up to their patron.";
    public bool ChallengeAbsorbPassupXp { get; set; } = true;
}
