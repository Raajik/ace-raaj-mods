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

    [JsonPropertyName("// EnableBonusSkillCredits")]
    public string EnableBonusSkillCreditsDoc { get; init; } = "Grant bonus skill credits at milestone character levels.";

    [JsonPropertyName("// EnableMasteryTiers")]
    public string EnableMasteryTiersDoc { get; init; } = "Enable mastery tier progression from trained/specialized skill counts.";

    [JsonPropertyName("// EnableAttributeVitalEfficiency")]
    public string EnableAttributeVitalEfficiencyDoc { get; init; } = "Toggle attribute/vital efficiency bonus from aptitude-style rules.";

    [JsonPropertyName("// AttributeVitalEfficiencyMultiplier")]
    public string AttributeVitalEfficiencyMultiplierDoc { get; init; } = "Multiplier for attribute/vital efficiency when that feature is on.";

    [JsonPropertyName("// SkillCreditMilestoneLevels")]
    public string SkillCreditMilestoneLevelsDoc { get; init; } = "Character levels at which bonus skill credits are awarded (if EnableBonusSkillCredits).";

    [JsonPropertyName("// TitleMilestoneLevels")]
    public string TitleMilestoneLevelsDoc { get; init; } = "Levels at which milestone titles are applied (paired with TitleMilestoneNames).";

    [JsonPropertyName("// TitleMilestoneNames")]
    public string TitleMilestoneNamesDoc { get; init; } = "Title strings for each TitleMilestoneLevels entry (same length as that list).";

    [JsonPropertyName("// MasteryTierSkillCounts")]
    public string MasteryTierSkillCountsDoc { get; init; } = "Skill count thresholds for successive mastery tiers.";

    [JsonPropertyName("// MaxLevel")]
    public string MaxLevelDoc { get; init; } = "Extended character level cap (PortalDat XP table); merged from former AureatePath.";

    [JsonPropertyName("// CreditInterval")]
    public string CreditIntervalDoc { get; init; } = "Interval used with extended leveling / credit progression.";

    [JsonPropertyName("// LevelCost")]
    public string LevelCostSectionDoc { get; init; } = "XP cost curve for levels above vanilla table (C, Rate, Coefficient, Offset, GrowthType). Inside LevelCost: // lines first, then values (same order).";

    [JsonPropertyName("// AlternateLeveling")]
    public string AlternateLevelingSectionDoc { get; init; } = "Alternate leveling costs and property ranges. Inside AlternateLeveling: // lines first, then values (same order); each Attribute/Vital/Trained/Specialized is a LevelCost block.";

    [JsonPropertyName("// BonusStatsEnabled")]
    public string BonusStatsEnabledDoc { get; init; } = "Adds Creature.GetBonus on top of InitLevel / StartingValue when true.";

    [JsonPropertyName("// HardcoreSecondsBetweenDeathAllowed")]
    public string HardcoreSecondsBetweenDeathAllowedDoc { get; init; } = "Minimum seconds between deaths counted for hardcore rules.";

    [JsonPropertyName("// HardcoreStartingLives")]
    public string HardcoreStartingLivesDoc { get; init; } = "Starting life count for hardcore mode.";

    [JsonPropertyName("// ChallengeRewardsEnabled")]
    public string ChallengeRewardsEnabledDoc { get; init; } = "Apply challenge milestone rewards when any /cm challenge is active (after Loremaster QP multiplier when present).";

    [JsonPropertyName("// ChallengeMilestoneLevels")]
    public string ChallengeMilestoneLevelsDoc { get; init; } = "Levels for challenge reward milestones.";

    [JsonPropertyName("// BonusPerMilestonePercentPerChallenge")]
    public string BonusPerMilestonePercentPerChallengeDoc { get; init; } = "Bonus percent per milestone per active challenge.";

    public bool Enabled { get; set; } = false;

    public bool EnableArcaneLore { get; set; } = true;
    public bool EnableManaConversion { get; set; } = true;

    public float ProficiencyXpMultiplier { get; set; } = 1.0f;
    public float ArcaneLoreXpPerMana { get; set; } = 0.01f;
    public float ManaConversionXpPerMana { get; set; } = 0.01f;

    public bool EnableBonusSkillCredits { get; set; } = true;
    public bool EnableMasteryTiers { get; set; } = true;
    public bool EnableAttributeVitalEfficiency { get; set; } = true;
    public float AttributeVitalEfficiencyMultiplier { get; set; } = 1.05f;
    public List<int> SkillCreditMilestoneLevels { get; set; } = new() { 50, 100, 150, 200, 275 };
    public List<int> TitleMilestoneLevels { get; set; } = new() { 50, 100, 200, 275 };
    public List<string> TitleMilestoneNames { get; set; } = new() { "OSRS Enjoyer", "Aptitude Adept", "Master of Practice", "Aptitude Paragon" };
    public List<int> MasteryTierSkillCounts { get; set; } = new() { 5, 10, 20 };

    public int MaxLevel { get; set; } = 9999;
    public int CreditInterval { get; set; } = 10;
    public Progression.LevelCost LevelCost { get; set; } = new(1_000_000_000u, 1_000_000_000u, 0, -276, growthType: Progression.GrowthType.Linear);

    public Progression.AlternateLevelingSettings AlternateLeveling { get; set; } = new();

    public bool BonusStatsEnabled { get; set; } = true;

    public float HardcoreSecondsBetweenDeathAllowed { get; set; } = 60;
    public int HardcoreStartingLives { get; set; } = 5;

    public bool ChallengeRewardsEnabled { get; set; } = true;
    public List<int> ChallengeMilestoneLevels { get; set; } = new() { 50, 126, 200, 275 };
    public float BonusPerMilestonePercentPerChallenge { get; set; } = 1f;
}
