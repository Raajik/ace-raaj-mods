namespace ChallengeModes;

// Reserved for future aptitude-style systems (not wired yet). Keeps Settings.json compact at the root.
public class FutureAptitudeFeatures
{
    public bool EnableBonusSkillCredits { get; set; } = true;

    public bool EnableMasteryTiers { get; set; } = true;

    public bool EnableAttributeVitalEfficiency { get; set; } = true;

    public float AttributeVitalEfficiencyMultiplier { get; set; } = 1.05f;

    public List<int> SkillCreditMilestoneLevels { get; set; } = new() { 50, 100, 150, 200, 275 };

    public List<int> TitleMilestoneLevels { get; set; } = new() { 50, 100, 200, 275 };

    public List<string> TitleMilestoneNames { get; set; } = new() { "OSRS Enjoyer", "Aptitude Adept", "Master of Practice", "Aptitude Paragon" };

    public List<int> MasteryTierSkillCounts { get; set; } = new() { 5, 10, 20 };
}
