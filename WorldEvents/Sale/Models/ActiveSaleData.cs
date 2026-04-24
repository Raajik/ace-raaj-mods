namespace WorldEvents.Sale.Models;

public class ActiveSaleData
{
    public string TownName { get; set; } = "";
    public List<int> Landblocks { get; set; } = new();
    public List<int> CenterLandblocks { get; set; } = new();
    public bool IncludesMasterMage { get; set; }
    public bool MasterMageOnly { get; set; }
    public DateTime StartsUtc { get; set; }
    public DateTime EndsUtc { get; set; }

    public bool ContainsCenterLandblock(int lb)
    {
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
}
