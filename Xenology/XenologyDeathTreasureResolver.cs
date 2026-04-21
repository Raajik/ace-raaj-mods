using ACE.Database;
using ACE.Database.Models.World;

namespace Xenology;

internal static class XenologyDeathTreasureResolver
{
    static readonly object CacheLock = new();
    static List<TreasureDeath>? CachedRows;

    internal static List<TreasureDeath> GetAllRows()
    {
        lock (CacheLock)
        {
            if (CachedRows != null)
                return CachedRows;

            try
            {
                var dict = DatabaseManager.World.GetAllTreasureDeath();
                CachedRows = dict.Values.Where(r => r != null).ToList();
            }
            catch
            {
                CachedRows = new List<TreasureDeath>();
            }

            return CachedRows;
        }
    }

    // Picks a TreasureDeath row at the highest tier <= desiredTier (down to nominal.Tier + 1) with rows present; tie-break by nearest TreasureType id.
    internal static TreasureDeath? ResolveBumpedProfile(TreasureDeath nominal, int tierOffset, int maxEffectiveTier, IReadOnlyList<TreasureDeath> allRows)
    {
        if (nominal == null || tierOffset <= 0 || allRows.Count == 0)
            return null;

        var desiredTier = nominal.Tier + tierOffset;
        if (desiredTier <= nominal.Tier)
            return null;

        var cap = Math.Max(1, maxEffectiveTier);
        desiredTier = Math.Min(desiredTier, cap);

        for (var t = desiredTier; t > nominal.Tier; t--)
        {
            var candidates = allRows.Where(r => r.Tier == t).ToList();
            if (candidates.Count == 0)
                continue;

            return PickNearestTreasureType(candidates, nominal.TreasureType);
        }

        return null;
    }

    static TreasureDeath PickNearestTreasureType(List<TreasureDeath> candidates, uint nominalTreasureType)
    {
        TreasureDeath best = candidates[0];
        var bestDist = long.MaxValue;
        foreach (var c in candidates)
        {
            var d = Math.Abs((long)c.TreasureType - (long)nominalTreasureType);
            if (d < bestDist)
            {
                bestDist = d;
                best = c;
            }
        }

        return best;
    }
}
