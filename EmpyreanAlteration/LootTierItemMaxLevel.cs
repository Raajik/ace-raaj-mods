namespace EmpyreanAlteration;

// Treasure tier T: tiers 1..LootLowTreasureTierMaxBandCutoff use LootLowTreasureTierItemMaxLevelMin/Max (default 10..20).
// Above that, ItemMaxLevel rolls in [5*T, 10*T] after clamping T to TreasureTierItemMaxLevelBandMinTier/MaxTier.
internal static class LootTierItemMaxLevel
{
    internal static (int Min, int Max) GetBand(int rawTier, Settings s)
    {
        int tMin = s.TreasureTierItemMaxLevelBandMinTier > 0 ? s.TreasureTierItemMaxLevelBandMinTier : 1;
        int tMax = s.TreasureTierItemMaxLevelBandMaxTier > 0 ? s.TreasureTierItemMaxLevelBandMaxTier : 8;
        int tier = Math.Clamp(rawTier, tMin, tMax);

        int cutoff = s.LootLowTreasureTierMaxBandCutoff;
        if (cutoff > 0 && tier <= cutoff)
        {
            int lo = s.LootLowTreasureTierItemMaxLevelMin;
            int hi = s.LootLowTreasureTierItemMaxLevelMax;
            if (lo > hi)
                (lo, hi) = (hi, lo);

            return (lo, hi);
        }

        int min = 5 * tier;
        int max = 10 * tier;
        if (min > max)
            (min, max) = (max, min);

        return (min, max);
    }
}
