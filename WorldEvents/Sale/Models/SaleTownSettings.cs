namespace WorldEvents.Sale.Models;

public class SaleTownSettings
{
    public string TownName { get; set; } = "";
    public bool Enabled { get; set; } = true;
    // Exact top-16-bit landblock IDs. Use Landblocks for precise control or CenterLandblocks for auto 3x3 expansion.
    public List<int> Landblocks { get; set; } = new();
    // Center landblock IDs — each expands to a 3x3 grid (center + 8 neighbors) at runtime. Get from /loc high word.
    public List<int> CenterLandblocks { get; set; } = new();
    public bool HasMasterMage { get; set; } = false;

    public bool ContainsLandblock(int lb)
    {
        if (Landblocks.Contains(lb)) return true;
        foreach (var center in CenterLandblocks)
        {
            int cx = (center >> 8) & 0xFF;
            int cy = center & 0xFF;
            int tx = (lb >> 8) & 0xFF;
            int ty = lb & 0xFF;
            if (Math.Abs(tx - cx) <= 2 && Math.Abs(ty - cy) <= 2)
                return true;
        }
        return false;
    }

    public bool HasAnyLandblocks => Landblocks.Count > 0 || CenterLandblocks.Count > 0;
}
