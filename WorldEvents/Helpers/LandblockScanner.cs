using ACE.Database;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Models;

namespace WorldEvents.Helpers;

public static class LandblockScanner
{
    public static List<(string Name, uint Wcid)> GetNearbyPortals(uint landblockId, int radiusLandblocks = 3)
    {
        var results = new List<(string, uint)>();
        var centerX = (int)(landblockId >> 24);
        var centerY = (int)((landblockId >> 16) & 0xFF);

        for (int dx = -radiusLandblocks; dx <= radiusLandblocks; dx++)
        {
            for (int dy = -radiusLandblocks; dy <= radiusLandblocks; dy++)
            {
                var lb = new LandblockId((byte)(centerX + dx), (byte)(centerY + dy)).Landblock;
                var instances = DatabaseManager.World.GetCachedInstancesByLandblock(lb);
                foreach (var inst in instances ?? new())
                {
                    var weenie = DatabaseManager.World.GetCachedWeenie(inst.WeenieClassId);
                    if (weenie?.WeenieType == WeenieType.Portal)
                    {
                        var name = weenie.GetProperty(PropertyString.Name) ?? "Unknown Portal";
                        // Prefer dungeons (avoid town names)
                        if (!name.Contains("Town") && !name.Contains("City") && !name.Contains("Outpost"))
                            results.Add((name, inst.WeenieClassId));
                    }
                }
            }
        }
        return results;
    }

    public static List<(string Name, uint Wcid)> GetNearbyNpcs(uint landblockId, int radiusLandblocks = 2)
    {
        var results = new List<(string, uint)>();
        var centerX = (int)(landblockId >> 24);
        var centerY = (int)((landblockId >> 16) & 0xFF);

        for (int dx = -radiusLandblocks; dx <= radiusLandblocks; dx++)
        {
            for (int dy = -radiusLandblocks; dy <= radiusLandblocks; dy++)
            {
                var lb = new LandblockId((byte)(centerX + dx), (byte)(centerY + dy)).Landblock;
                var instances = DatabaseManager.World.GetCachedInstancesByLandblock(lb);
                foreach (var inst in instances ?? new())
                {
                    var weenie = DatabaseManager.World.GetCachedWeenie(inst.WeenieClassId);
                    if (weenie?.WeenieType == WeenieType.Creature || weenie?.WeenieType == WeenieType.Vendor)
                    {
                        var name = weenie.GetProperty(PropertyString.Name) ?? "Unknown";
                        if (!string.IsNullOrEmpty(name) && name != "Unknown")
                            results.Add((name, inst.WeenieClassId));
                    }
                }
            }
        }
        return results;
    }

    public static string? GetBearingFromTown(Position pos, Dictionary<string, Position> townCenters)
    {
        string? nearestTown = null;
        double nearestDist = double.MaxValue;

        foreach (var (townName, townPos) in townCenters)
        {
            var dist = pos.DistanceTo(townPos);
            if (dist < nearestDist)
            {
                nearestDist = dist;
                nearestTown = townName;
            }
        }

        if (nearestTown == null) return null;

        var dx = pos.PositionX - townCenters[nearestTown].PositionX;
        var dy = pos.PositionY - townCenters[nearestTown].PositionY;

        string bearing = (Math.Abs(dx), Math.Abs(dy)) switch
        {
            var (ax, ay) when ax > ay * 2 && dx > 0 => "East",
            var (ax, ay) when ax > ay * 2 && dx < 0 => "West",
            var (ax, ay) when ay > ax * 2 && dy > 0 => "North",
            var (ax, ay) when ay > ax * 2 && dy < 0 => "South",
            var (ax, ay) when dx > 0 && dy > 0 => "Northeast",
            var (ax, ay) when dx < 0 && dy > 0 => "Northwest",
            var (ax, ay) when dx > 0 && dy < 0 => "Southeast",
            _ => "Southwest"
        };

        return $"{bearing} of {nearestTown}";
    }
}
