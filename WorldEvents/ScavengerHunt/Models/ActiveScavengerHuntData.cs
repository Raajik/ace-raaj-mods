namespace WorldEvents.ScavengerHunt.Models;

public class ActiveScavengerHuntData
{
    public string EventId { get; set; } = "";
    public List<ScavengerRound> Rounds { get; set; } = new();
    public int CurrentRoundIndex { get; set; } = -1;
    public Dictionary<uint, int> PlayerTurnInCounts { get; set; } = new();
    public DateTime StartTime { get; set; }
    public DateTime EndTime { get; set; }
    public bool IsActive { get; set; }
    public uint NpcWcid { get; set; }
}
