namespace EmpyreanAlteration;

// Maps item total XP <-> item level: CharacterLevelXPList (CharacterTable) or geometric series (Geometric).
internal static class ItemXpCurve
{
    internal static bool ShouldUseCharacterTable(WorldObject item, Settings s)
    {
        if (item == null || s.ItemXpCurveMode != ItemXpCurveMode.CharacterTable)
            return false;

        if (!item.HasItemLevel)
            return false;

        return item.ItemXpStyle == ItemXpStyle.ScalesWithLevel;
    }

    internal static bool ShouldUseGeometric(WorldObject item, Settings s)
    {
        if (item == null || s.ItemXpCurveMode != ItemXpCurveMode.Geometric)
            return false;

        if (!item.HasItemLevel)
            return false;

        return item.ItemXpStyle == ItemXpStyle.ScalesWithLevel;
    }

    // Total XP required to have reached itemLevel (1 => first level threshold). Series: sum_{i=0}^{L-1} first * mult^i.
    internal static ulong TotalXpToReachItemLevelGeometric(int itemLevel, long firstLevelTotal, double multPerStep, int maxLevel)
    {
        if (itemLevel < 1)
            return 0;

        if (itemLevel > maxLevel)
            itemLevel = maxLevel;

        long first = firstLevelTotal > 0 ? firstLevelTotal : 1;
        double mult = multPerStep > 1.0001 ? multPerStep : 1.0001;

        double sum = first * (Math.Pow(mult, itemLevel) - 1.0) / (mult - 1.0);
        if (double.IsNaN(sum) || double.IsInfinity(sum) || sum < 0)
            return 0;

        if (sum >= ulong.MaxValue)
            return ulong.MaxValue;

        return (ulong)Math.Round(sum);
    }

    internal static int ItemLevelFromTotalXpGeometric(long gainedXp, long firstLevelTotal, double multPerStep, int maxLevel)
    {
        if (gainedXp < 0)
            gainedXp = 0;

        int level = 0;
        for (int L = 1; L <= maxLevel; L++)
        {
            ulong need = TotalXpToReachItemLevelGeometric(L, firstLevelTotal, multPerStep, maxLevel);
            if ((ulong)gainedXp >= need)
                level = L;
            else
                break;
        }

        return level;
    }

    internal static ulong TotalXpToReachItemLevel(int itemLevel, IReadOnlyList<ulong> table, int virtualCharLevel, double mult, int maxLevel)
    {
        if (itemLevel < 1)
            return 0;

        if (itemLevel > maxLevel)
            itemLevel = maxLevel;

        int baseIdx = virtualCharLevel - 1;
        int targetIdx = baseIdx + itemLevel;
        if (baseIdx < 0 || baseIdx >= table.Count)
            return 0;

        if (targetIdx >= table.Count)
        {
            ModManager.Log($"[EmpyreanAlteration] ItemXpCurve: clamping target index {targetIdx} to table max {table.Count - 1} (virtual={virtualCharLevel}, itemLevel={itemLevel}).", ModManager.LogLevel.Warn);
            targetIdx = table.Count - 1;
        }

        double delta = (double)table[targetIdx] - (double)table[baseIdx];
        if (delta < 0)
            delta = 0;

        return (ulong)Math.Round(delta * mult);
    }

    internal static int ItemLevelFromTotalXp(long gainedXp, IReadOnlyList<ulong> table, int virtualCharLevel, double mult, int maxLevel)
    {
        if (gainedXp < 0)
            gainedXp = 0;

        int baseIdx = virtualCharLevel - 1;
        if (baseIdx < 0 || baseIdx >= table.Count)
            return 0;

        int level = 0;
        for (int L = 1; L <= maxLevel; L++)
        {
            ulong need = TotalXpToReachItemLevel(L, table, virtualCharLevel, mult, maxLevel);
            if ((ulong)gainedXp >= need)
                level = L;
            else
                break;
        }

        return level;
    }
}
