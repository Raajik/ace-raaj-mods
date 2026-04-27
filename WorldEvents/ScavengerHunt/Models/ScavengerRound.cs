namespace WorldEvents.ScavengerHunt.Models;

public class ScavengerRound
{
    public int RoundNumber { get; set; }
    public uint TargetWcid { get; set; }
    public string TargetName { get; set; } = "";
    public DateTime StartTime { get; set; }
    public DateTime EndTime { get; set; }
    public bool IsActive { get; set; }
    public List<uint> TurnedInByPlayerGuids { get; set; } = new();
}
