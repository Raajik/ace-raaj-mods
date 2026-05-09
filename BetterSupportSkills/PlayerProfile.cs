namespace BetterSupportSkills;

public class PlayerProfile
{
    public bool CleaveDisabled { get; set; } = false;
    public float? CleaveRange { get; set; } = null; // null = use server default
    public bool ChaosTinkerUnlocked { get; set; } = false;
    public bool SummonMessagesEnabled { get; set; } = true;
    public string? ManualClassOverride { get; set; } = null; // e.g. "Druid", "Windwalker", "DeathKnight", or null for auto
    public bool AuraEnabled { get; set; } = true; // Toggle for class auras (e.g. Death Knight)
    public bool ThornsEnabled { get; set; } = true; // Toggle for Shield thorns reflect damage
}
