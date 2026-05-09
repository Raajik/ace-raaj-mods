namespace WorldEvents.Hunt.Models;

public sealed class GlobalSpeciesKillsData
{
    public Dictionary<uint, long> Species { get; set; } = new();
}
