namespace ChallengeModes.Progression;

public class AlternateLevelingSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, alternate leveling hooks are available for opted-in players.";

    [JsonPropertyName("// LevelPropertyStart")]
    public string LevelPropertyStartDoc { get; init; } = "Starting fake property id range for alternate level storage.";

    [JsonPropertyName("// SpentPropertyStart")]
    public string SpentPropertyStartDoc { get; init; } = "Starting fake property id range for spent alternate progression.";

    [JsonPropertyName("// PreferStandard")]
    public string PreferStandardDoc { get; init; } = "Prefer standard ACE leveling when both paths apply.";

    [JsonPropertyName("// OffsetByLastStandard")]
    public string OffsetByLastStandardDoc { get; init; } = "Offset alternate costs by last standard level reached.";

    [JsonPropertyName("// Attribute")]
    public string AttributeSectionDoc { get; init; } = "XP cost curve for alternate attribute buys. Inside: // lines first, then values (same order).";

    [JsonPropertyName("// Vital")]
    public string VitalSectionDoc { get; init; } = "XP cost curve for alternate vital buys. Inside: // lines first, then values (same order).";

    [JsonPropertyName("// Trained")]
    public string TrainedSectionDoc { get; init; } = "XP cost curve for trained skill progression. Inside: // lines first, then values (same order).";

    [JsonPropertyName("// Specialized")]
    public string SpecializedSectionDoc { get; init; } = "XP cost curve for specialized skill progression. Inside: // lines first, then values (same order).";

    public bool Enabled { get; set; } = true;

    public int LevelPropertyStart { get; set; } = 20_800;
    public int SpentPropertyStart { get; set; } = 20_800;

    public bool PreferStandard { get; set; } = true;
    public bool OffsetByLastStandard { get; set; } = true;

    public LevelCost Attribute { get; set; } = new(10_000_000, 2, 5_000_000, growthType: GrowthType.Polynomial);
    public LevelCost Vital { get; set; } = new(1_000_000_000, 1_000_000_000, 0, growthType: GrowthType.Linear);
    public LevelCost Trained { get; set; } = new();
    public LevelCost Specialized { get; set; } = new(100, 1.5);
}
