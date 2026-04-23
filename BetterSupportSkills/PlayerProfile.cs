namespace BetterSupportSkills;

public class PlayerProfile
{
    public bool CleaveDisabled { get; set; } = false;
    public float? CleaveRange { get; set; } = null; // null = use server default
}
