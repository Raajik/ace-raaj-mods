namespace Xenology.Models;

public sealed class PlayerXenologyData
{
    public Dictionary<uint, long> SpeciesKills { get; set; } = new();

    public long TotalLifetimeKills { get; set; }

    public double TotalXenologyXp { get; set; }

    // 0 = none announced; 1–3 = milestone band announced (see Settings milestone kill thresholds).
    public int LastAnnouncedMilestoneTier { get; set; }

    public int StreakCount { get; set; }

    public DateTime? LastKillUtc { get; set; }

    public uint? LastKillWcid { get; set; }
}
