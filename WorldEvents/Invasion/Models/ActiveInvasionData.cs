namespace WorldEvents.Invasion.Models;

/// <summary>One town's entry in an active invasion wave.</summary>
public sealed class TownInvasionEntry
{
    public string TownName { get; set; } = "";
    public string EventName { get; set; } = "";
    public InvasionMode Mode { get; set; }
    public int Tier { get; set; } = 0;  // 0 = no tier system

    // ── Per-town kill tracking & boss state ─────────────────────────────

    /// <summary>Kill threshold for this town's boss spawn. Rolled at wave start based on tier.</summary>
    public int KillThreshold { get; set; } = 0;

    /// <summary>Boss respawn delay (minutes) for this town.</summary>
    public double BossRespawnMinutes { get; set; } = 5.0;

    /// <summary>Kills since last boss spawn in this town.</summary>
    public int KillsSinceBoss { get; set; } = 0;

    /// <summary>Total kills this town this wave (never resets).</summary>
    public int TotalKills { get; set; } = 0;

    /// <summary>UTC of last kill in this town.</summary>
    public DateTime LastKillUtc { get; set; } = DateTime.MinValue;

    /// <summary>Is this town's boss currently alive?</summary>
    public bool BossIsAlive { get; set; } = false;

    /// <summary>UTC when this town's boss died (for respawn timer).</summary>
    public DateTime BossDeathUtc { get; set; } = DateTime.MinValue;
}

/// <summary>Represents an active invasion wave (potentially multiple towns simultaneously).</summary>
public sealed class ActiveInvasionData
{
    public List<TownInvasionEntry> Towns { get; set; } = new();
    public DateTime StartedUtc { get; set; }
    public DateTime EndsUtc { get; set; }

    /// <summary>CreatureType display name for the themed wave (empty if no theme).</summary>
    public string ThemeName { get; set; } = "";

    /// <summary>Legacy global kill threshold. Kept for backward compat with old saves. New code uses per-town thresholds.</summary>
    public int WaveKillThreshold { get; set; } = 100;

    /// <summary>Legacy global boss respawn. Kept for backward compat.</summary>
    public double BossRespawnMinutes { get; set; } = 5.0;

    /// <summary>How many trickle spawn pulses have fired for this wave. Used for scaling per pulse.</summary>
    public int TricklePulseCount { get; set; } = 0;

    /// <summary>When true, this is an unthemed chaos wave with amplified CreatureEx spawning.</summary>
    public bool ChaosMode { get; set; } = false;

    /// <summary>Number of CreatureEx bosses spawned so far in this wave (chaos cap tracking).</summary>
    public int CreatureExSpawnedCount { get; set; } = 0;

    // Dynamic-mode spawn references are tracked in-memory only (InvasionRuntime._dynamicSpawns);
    // not serialized since spawned mobs don't survive server restarts anyway.
}
