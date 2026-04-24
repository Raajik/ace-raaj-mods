namespace WorldEvents.Cull.Models;

public class ActiveCullData
{
    public uint TargetCreatureType { get; set; }
    public string TargetSpeciesName { get; set; } = "";
    public DateTime StartsUtc { get; set; }
    public DateTime EndsUtc { get; set; }
    public int TotalKills { get; set; }
    // guid → kill count for leaderboard
    public Dictionary<uint, int> KillsByPlayer { get; set; } = new();
    // guid → player name snapshot for offline display
    public Dictionary<uint, string> PlayerNames { get; set; } = new();
}
