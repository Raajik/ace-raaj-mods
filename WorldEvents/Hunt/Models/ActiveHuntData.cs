namespace WorldEvents.Hunt.Models;

public sealed class ActiveHuntData
{
    public DateTime WindowStartUtc { get; set; }

    public DateTime WindowEndUtc { get; set; }

    public List<uint> TargetSpecies { get; set; } = new();

    public Dictionary<uint, double> TargetMultipliers { get; set; } = new();

    // bracket (0=Lv1-50, 1=Lv51-150, 2=Lv151-225, 3=Lv226+) → player guid → hunt points
    public Dictionary<int, Dictionary<uint, double>> HuntPointsByBracket { get; set; } = new();

    // Player guid → bracket they were locked into at first kill this window
    public Dictionary<uint, int> PlayerBrackets { get; set; } = new();
}
