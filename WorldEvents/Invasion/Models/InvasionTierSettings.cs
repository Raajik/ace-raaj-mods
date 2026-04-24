namespace WorldEvents.Invasion.Models;

/// <summary>Maps a difficulty tier (1–6) to a creature level range for Dynamic mode spawning.</summary>
public sealed class InvasionTierSettings
{
    public int Tier { get; set; } = 1;
    public int LevelMin { get; set; } = 1;
    public int LevelMax { get; set; } = 30;
}
