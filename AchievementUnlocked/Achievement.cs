namespace AchievementUnlocked;

public enum AchievementType
{
    KillCreature,
    KillAny,
    CompleteQuest,
    ReachLevel,
    ReachSkill,
    ReachSkillSet,
    ReachAttribute,
    ReachPropertyInt,
    ReachPropertyFloat,
    ReachProgressPoints,
    Custom,
}

public enum AchievementRewardType
{
    None,
    Title,
    SkillCredits,
    Xp,
    Luminance,
    PropertyInt,
    PropertyFloat,
    PropertyBool,
    Item,
    Command,
}

public class AchievementReward
{
    [JsonPropertyName("// RewardType")]
    public string RewardTypeDoc { get; init; } = "Type of reward granted on unlock.";
    public AchievementRewardType RewardType { get; set; } = AchievementRewardType.None;

    [JsonPropertyName("// Value")]
    public string ValueDoc { get; init; } = "Numeric value or amount (amount of XP, skill credits, item count, property value).";
    public long Value { get; set; } = 0;

    [JsonPropertyName("// Target")]
    public string TargetDoc { get; init; } = "Contextual target: title name, skill name, attribute name, property enum name, item WCID, or command text.";
    public string Target { get; set; } = "";
}

public class Achievement
{
    [JsonPropertyName("// Id")]
    public string IdDoc { get; init; } = "Unique identifier used by other mods to gate content. Alphanumeric, no spaces.";
    public string Id { get; set; } = "";

    [JsonPropertyName("// Name")]
    public string NameDoc { get; init; } = "Display name shown to players.";
    public string Name { get; set; } = "";

    [JsonPropertyName("// Description")]
    public string DescriptionDoc { get; init; } = "Tooltip / chat description of how to earn the achievement.";
    public string Description { get; set; } = "";

    [JsonPropertyName("// Category")]
    public string CategoryDoc { get; init; } = "Group heading for /ach list (e.g. Combat, Exploration, Crafting).";
    public string Category { get; set; } = "General";

    [JsonPropertyName("// Type")]
    public string TypeDoc { get; init; } = "Trigger type: KillCreature, KillAny, CompleteQuest, ReachLevel, ReachSkill, ReachAttribute, ReachPropertyInt, ReachPropertyFloat, Custom.";
    public AchievementType Type { get; set; } = AchievementType.Custom;

    [JsonPropertyName("// Target")]
    public string TargetDoc { get; init; } = "Context target: creature WCID (int), quest name, skill/attribute/property enum name, or freeform tag for Custom.";
    public string Target { get; set; } = "";

    [JsonPropertyName("// RequiredCount")]
    public string RequiredCountDoc { get; init; } = "How many times the trigger must occur (default 1).";
    public int RequiredCount { get; set; } = 1;

    [JsonPropertyName("// RequiredValue")]
    public string RequiredValueDoc { get; init; } = "For Reach* types: the threshold value (level, skill trained, property value). Ignored for counter types.";
    public int RequiredValue { get; set; } = 0;

    [JsonPropertyName("// Prerequisites")]
    public string PrerequisitesDoc { get; init; } = "List of achievement Ids that must already be unlocked before this one can progress or unlock.";
    public List<string> Prerequisites { get; set; } = new();

    [JsonPropertyName("// Rewards")]
    public string RewardsDoc { get; init; } = "List of rewards granted on first unlock.";
    public List<AchievementReward> Rewards { get; set; } = new();

    [JsonPropertyName("// Hidden")]
    public string HiddenDoc { get; init; } = "If true, the achievement is hidden until unlocked (shows as ???).";
    public bool Hidden { get; set; } = false;

    [JsonPropertyName("// Notify")]
    public string NotifyDoc { get; init; } = "If true, send a broadcast message when unlocked. False to suppress (mods may handle their own UI).";
    public bool Notify { get; set; } = true;

    [JsonPropertyName("// AccountWide")]
    public string AccountWideDoc { get; init; } = "If true (default), the unlock persists across all characters on the same account. Set to false for per-character achievements.";
    public bool AccountWide { get; set; } = true;
}
