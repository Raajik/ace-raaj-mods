using ACE.Server.Factories;
using ACE.Server.WorldObjects;

namespace SharedLoot;

public static class SalvageBagShaper
{
    // Salvage WCIDs from LeyLineLedger DepositRules (20981–21089)
    static readonly HashSet<uint> SalvageWcids = new()
    {
        20981, 20982, 20983, 20984, 20985, 20986, 20987, 20988, 20989, 20990,
        20991, 20992, 20993, 20994, 20995, 21034, 21035, 21036, 21037, 21038,
        21039, 21040, 21041, 21042, 21043, 21044, 21045, 21046, 21047, 21048,
        21049, 21050, 21051, 21052, 21053, 21054, 21055, 21056, 21057, 21058,
        21059, 21060, 21061, 21062, 21063, 21064, 21065, 21066, 21067, 21068,
        21069, 21070, 21071, 21072, 21073, 21074, 21075, 21076, 21077, 21078,
        21079, 21080, 21081, 21082, 21083, 21084, 21085, 21086, 21087, 21088,
        21089,
    };

    internal static bool IsSalvageWcid(uint wcid) => SalvageWcids.Contains(wcid);

    internal static void ApplyShape(WorldObject? item)
    {
        if (item is null) return;
        if (!SalvageWcids.Contains(item.WeenieClassId)) return;

        item.Name = "Salvage (100)";
        item.Structure = 100;
        item.ItemWorkmanship = 100;
        item.NumItemsInMaterial = 10;
    }

    /// <summary>
    /// Creates a random shaped salvage bag (100 units, workmanship 100).
    /// </summary>
    public static WorldObject? CreateRandomSalvageBag()
    {
        if (SalvageWcids.Count == 0) return null;

        var random = new System.Random();
        var wcid = SalvageWcids.ElementAt(random.Next(SalvageWcids.Count));

        var item = WorldObjectFactory.CreateNewWorldObject(wcid);
        if (item is null) return null;

        ApplyShape(item);
        return item;
    }
}
