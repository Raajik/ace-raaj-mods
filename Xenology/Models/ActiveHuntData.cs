namespace Xenology.Models;

public sealed class ActiveHuntData
{
    public DateTime WindowStartUtc { get; set; }

    public DateTime WindowEndUtc { get; set; }

    public List<uint> TargetSpecies { get; set; } = new();

    public Dictionary<uint, double> TargetMultipliers { get; set; } = new();

    public Dictionary<uint, double> HuntPointsByPlayer { get; set; } = new();
}
