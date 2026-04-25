namespace WorldEvents;

internal static class HuntRanks
{
    internal static HashSet<uint> BuildTopSet(Dictionary<uint, long> species, Settings settings)
    {
        var filtered = FilterSpecies(species, settings);
        var ordered = filtered.OrderByDescending(kv => kv.Value).Select(kv => kv.Key).ToList();
        var take = Math.Min(settings.TopTenRankCount, ordered.Count);
        return new HashSet<uint>(ordered.Take(take));
    }

    internal static HashSet<uint> BuildBottomSet(Dictionary<uint, long> species, Settings settings)
    {
        var filtered = FilterSpecies(species, settings);
        var ordered = filtered.OrderBy(kv => kv.Value).Select(kv => kv.Key).ToList();
        var take = Math.Min(settings.BottomTenRankCount, ordered.Count);
        return new HashSet<uint>(ordered.Take(take));
    }

    internal static IEnumerable<KeyValuePair<uint, long>> FilterSpecies(Dictionary<uint, long> species, Settings settings)
    {
        foreach (var kv in species)
        {
            if (kv.Key == 0)
                continue;
            if (settings.DenylistCreatureTypes.Contains(kv.Key))
                continue;
            if (kv.Value < settings.MinGlobalKillsForPopularityBonus)
                continue;
            yield return kv;
        }
    }

    internal static double HuntMultiplierForBand(SpeciesRankBand band, Settings settings)
    {
        return band switch
        {
            SpeciesRankBand.Top => settings.HuntMultiplierTopRank,
            SpeciesRankBand.Bottom => settings.HuntMultiplierBottomRank,
            _ => settings.HuntMultiplierMidRank,
        };
    }

    internal static SpeciesRankBand Classify(uint wcid, HashSet<uint> top, HashSet<uint> bottom, Settings settings)
    {
        if (top.Contains(wcid))
            return SpeciesRankBand.Top;
        if (bottom.Contains(wcid))
            return SpeciesRankBand.Bottom;
        return SpeciesRankBand.Mid;
    }

    internal static int AchievementLootTierFromProgress(double progress, Settings settings)
    {
        if (settings.UseAchievementXpForTiers)
        {
            if (progress >= settings.AchievementXpTier3)
                return 3;
            if (progress >= settings.AchievementXpTier2)
                return 2;
            if (progress >= settings.AchievementXpTier1)
                return 1;
            return 0;
        }

        var k = (long)Math.Max(0, Math.Min(long.MaxValue, progress));
        if (k >= settings.AchievementKillsTier3)
            return 3;
        if (k >= settings.AchievementKillsTier2)
            return 2;
        if (k >= settings.AchievementKillsTier1)
            return 1;
        return 0;
    }

    internal static double AchievementProgressForLoot(Player player, PlayerHuntData data, Settings settings)
    {
        if (!settings.UseAchievementXpForTiers)
            return data.TotalLifetimeKills;

        double pending = player.GetProperty((PropertyFloat)HuntPropertyIds.PendingHuntXpPreview) ?? 0.0;
        return data.TotalHuntXp + pending;
    }
}

internal enum SpeciesRankBand
{
    Top,
    Mid,
    Bottom,
}
