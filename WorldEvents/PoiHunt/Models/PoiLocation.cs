namespace WorldEvents.PoiHunt.Models;

public class PoiLocation
{
    public uint LandblockId { get; set; }
    public string Position { get; set; } = ""; // "0x1234[0.5, 1.0, 2.0] 0 0 0 1" format
    public string Tier { get; set; } = "Medium";
    public List<string> ClueTexts { get; set; } = new();
    public string RewardPoolId { get; set; } = "Default";
}
