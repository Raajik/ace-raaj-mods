namespace WorldEvents.Hunt.Models;

public sealed class PlayerHuntData
{
    public Dictionary<uint, long> SpeciesKills { get; set; } = new();

    public long TotalLifetimeKills { get; set; }

    public double TotalHuntXp { get; set; }

    // 0 = none announced; 1–3 = achievement band announced (see Settings achievement kill thresholds).
    public int LastAnnouncedAchievementTier { get; set; }

    public int StreakCount { get; set; }

    public DateTime? LastKillUtc { get; set; }

    public uint? LastKillWcid { get; set; }
}
