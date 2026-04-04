namespace Loremaster;

internal static class ParchmentWeightedPick
{
    internal static int EffectiveWeight(int raw, bool rare)
    {
        if (rare)
            return Math.Max(1, raw);

        return Math.Clamp(raw, 25, 100);
    }

    internal static uint? PickLandblock(IReadOnlyList<ParchmentExplorePoolEntry> entries)
    {
        if (entries.Count == 0)
            return null;

        var total = 0;
        foreach (var e in entries)
        {
            if (e.LandblockRaw == 0)
                continue;
            total += EffectiveWeight(e.Weight, e.Rare);
        }

        if (total <= 0)
            return null;

        var roll = Random.Shared.Next(total);
        var cumulative = 0;
        foreach (var e in entries)
        {
            if (e.LandblockRaw == 0)
                continue;
            cumulative += EffectiveWeight(e.Weight, e.Rare);
            if (roll < cumulative)
                return e.LandblockRaw;
        }

        return entries[^1].LandblockRaw;
    }

    internal static (uint Wcid, bool Rare)? PickKill(IReadOnlyList<ParchmentKillPoolEntry> entries)
    {
        if (entries.Count == 0)
            return null;

        var total = 0;
        foreach (var e in entries)
        {
            if (e.CreatureWcid == 0)
                continue;
            total += EffectiveWeight(e.Weight, e.Rare);
        }

        if (total <= 0)
            return null;

        var roll = Random.Shared.Next(total);
        var cumulative = 0;
        foreach (var e in entries)
        {
            if (e.CreatureWcid == 0)
                continue;
            cumulative += EffectiveWeight(e.Weight, e.Rare);
            if (roll < cumulative)
                return (e.CreatureWcid, e.Rare);
        }

        var last = entries[^1];
        return (last.CreatureWcid, last.Rare);
    }

    internal static (uint Wcid, int Stack)? PickFetch(IReadOnlyList<ParchmentFetchPoolEntry> entries)
    {
        if (entries.Count == 0)
            return null;

        var total = 0;
        foreach (var e in entries)
        {
            if (e.Wcid == 0)
                continue;
            total += EffectiveWeight(e.Weight, e.Rare);
        }

        if (total <= 0)
            return null;

        var roll = Random.Shared.Next(total);
        var cumulative = 0;
        foreach (var e in entries)
        {
            if (e.Wcid == 0)
                continue;
            cumulative += EffectiveWeight(e.Weight, e.Rare);
            if (roll < cumulative)
            {
                var sm = Math.Max(1, e.StackMin);
                var sx = Math.Max(sm, e.StackMax);
                var stack = sm >= sx ? sm : Random.Shared.Next(sm, sx + 1);
                return (e.Wcid, stack);
            }
        }

        var fe = entries[^1];
        var sm2 = Math.Max(1, fe.StackMin);
        var sx2 = Math.Max(sm2, fe.StackMax);
        var st = sm2 >= sx2 ? sm2 : Random.Shared.Next(sm2, sx2 + 1);
        return (fe.Wcid, st);
    }
}
