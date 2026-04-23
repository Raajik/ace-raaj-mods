namespace LockpickLedger;

public sealed class Settings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "Master switch. When false, no patches are applied.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// LimitlessRegenEnabled")]
    public string LimitlessRegenEnabledDoc { get; init; } = "When true, players who have banked a Limitless Lockpick (WCID 30253) receive passive Lockpick Durability regen at the interval below.";
    public bool LimitlessRegenEnabled { get; set; } = true;

    [JsonPropertyName("// LimitlessRegenIntervalSeconds")]
    public string LimitlessRegenIntervalSecondsDoc { get; init; } = "Seconds between passive regen grants for Limitless Lockpick holders (default 21600 = 6 hours).";
    public int LimitlessRegenIntervalSeconds { get; set; } = 21600;

    [JsonPropertyName("// LimitlessRegenChargesPerInterval")]
    public string LimitlessRegenChargesPerIntervalDoc { get; init; } = "Lockpick Durability granted per Limitless Lockpick each interval (default 600; multiplied by the number of Limitless Lockpicks banked).";
    public int LimitlessRegenChargesPerInterval { get; set; } = 600;

    [JsonPropertyName("// RequireLockpickSkill")]
    public string RequireLockpickSkillDoc { get; init; } = "When true, only characters with Lockpick trained or specialized can auto-bank lockpick items and use banked durability on locks. When false, all characters benefit.";
    public bool RequireLockpickSkill { get; set; } = true;
}
