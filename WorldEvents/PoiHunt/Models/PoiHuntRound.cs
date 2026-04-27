namespace WorldEvents.PoiHunt.Models;

public class PoiHuntRound
{
    public int RoundNumber { get; set; }
    public int LocationIndex { get; set; }
    public uint NarratorWcid { get; set; }
    public DateTime StartTime { get; set; }
    public DateTime EndTime { get; set; }
    public List<uint> FoundByPlayerGuids { get; set; } = new();
    public bool IsActive { get; set; }
    public uint NarratorGuid { get; set; }
    public uint NarratorLandblockId { get; set; }
}
