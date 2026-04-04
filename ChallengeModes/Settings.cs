namespace ChallengeModes;

public class Settings
{
    // Master switch: false = no Harmony (Meta.json Enabled should also be false while in testing).
    public bool Enabled { get; set; } = false;

    // Special skill usage XP (to be wired in later)
    public bool EnableArcaneLore { get; set; } = true;
    public bool EnableManaConversion { get; set; } = true;

    public float ProficiencyXpMultiplier { get; set; } = 1.0f;
    public float ArcaneLoreXpPerMana { get; set; } = 0.01f;
    public float ManaConversionXpPerMana { get; set; } = 0.01f;

    // Rewards
    public bool EnableBonusSkillCredits { get; set; } = true;
    public bool EnableMasteryTiers { get; set; } = true;
    public bool EnableAttributeVitalEfficiency { get; set; } = true;
    public float AttributeVitalEfficiencyMultiplier { get; set; } = 1.05f;
    public List<int> SkillCreditMilestoneLevels { get; set; } = new() { 50, 100, 150, 200, 275 };
    public List<int> TitleMilestoneLevels { get; set; } = new() { 50, 100, 200, 275 };
    public List<string> TitleMilestoneNames { get; set; } = new() { "OSRS Enjoyer", "Aptitude Adept", "Master of Practice", "Aptitude Paragon" };
    public List<int> MasteryTierSkillCounts { get; set; } = new() { 5, 10, 20 };

    // Extended character level cap (PortalDat XP table); merged from former AureatePath.
    public int MaxLevel { get; set; } = 9999;
    public int CreditInterval { get; set; } = 10;
    public Progression.LevelCost LevelCost { get; set; } = new(1_000_000_000u, 1_000_000_000u, 0, -276, growthType: Progression.GrowthType.Linear);

    public Progression.AlternateLevelingSettings AlternateLeveling { get; set; } = new();

    // Adds Creature.GetBonus on top of InitLevel / StartingValue (BonusStats lived in EmpyreanEchoes; now here).
    public bool BonusStatsEnabled { get; set; } = true;

    public float HardcoreSecondsBetweenDeathAllowed { get; set; } = 60;
    public int HardcoreStartingLives { get; set; } = 5;

    // Challenge rewards (any active /cm challenge). Applied after Loremaster QP multiplier when present.
    public bool ChallengeRewardsEnabled { get; set; } = true;
    public List<int> ChallengeMilestoneLevels { get; set; } = new() { 50, 126, 200, 275 };
    public float BonusPerMilestonePercentPerChallenge { get; set; } = 1f;
}
