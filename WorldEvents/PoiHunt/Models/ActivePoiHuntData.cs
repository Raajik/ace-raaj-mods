namespace WorldEvents.PoiHunt.Models;

public class ActivePoiHuntData
{
    public string EventId { get; set; } = "";
    public List<PoiHuntRound> Rounds { get; set; } = new();
    public Dictionary<uint, int> PlayerFindCounts { get; set; } = new();
    public int CurrentRoundIndex { get; set; } = -1;
    public DateTime StartTime { get; set; }
    public DateTime EndTime { get; set; }
    public bool IsActive { get; set; }
}
