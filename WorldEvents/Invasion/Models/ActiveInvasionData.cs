namespace WorldEvents.Invasion.Models;

/// <summary>One town's entry in an active invasion wave.</summary>
public sealed class TownInvasionEntry
{
    public string TownName { get; set; } = "";
    public string EventName { get; set; } = "";
    public InvasionMode Mode { get; set; }
    public int Tier { get; set; } = 0;  // 0 = no tier system
}

/// <summary>Represents an active invasion wave (potentially multiple towns simultaneously).</summary>
public sealed class ActiveInvasionData
{
    public List<TownInvasionEntry> Towns { get; set; } = new();
    public DateTime StartedUtc { get; set; }
    public DateTime EndsUtc { get; set; }

    /// <summary>CreatureType display name for the themed wave (empty if no theme).</summary>
    public string ThemeName { get; set; } = "";

    /// <summary>Kill threshold rolled for this wave (100–500). Higher = faster boss respawn.</summary>
    public int WaveKillThreshold { get; set; } = 100;

    /// <summary>Boss respawn delay in minutes, computed from threshold.</summary>
    public double BossRespawnMinutes { get; set; } = 5.0;

    // Dynamic-mode spawn references are tracked in-memory only (InvasionRuntime._dynamicSpawns);
    // not serialized since spawned mobs don't survive server restarts anyway.
}
