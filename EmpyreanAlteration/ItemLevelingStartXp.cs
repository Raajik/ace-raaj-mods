namespace EmpyreanAlteration;

// ACE clients derive item level / XP bar from ItemTotalXp + ItemBaseXp using stock ExperienceSystem math when ItemXpCurveMode is AceGeometric.
// Geometric / CharacterTable modes patch ExperienceSystem on the server; the client item panel may not match until the client uses the same curve (default Geometric is tuned for high max level without ulong overflow).
internal static class ItemLevelingStartXp
{
    internal static void ApplyStartingXpForLevel1Display(WorldObject item, Settings s)
    {
        if (item is null || s is null)
            return;

        if (item.ItemXpStyle != ItemXpStyle.ScalesWithLevel)
            return;

        if (item.ItemMaxLevel is null || item.ItemMaxLevel <= 0)
            return;

        if (item.ItemBaseXp is null || item.ItemBaseXp <= 0)
            return;

        int maxLevel = item.ItemMaxLevel.Value;

        switch (s.ItemXpCurveMode)
        {
            case ItemXpCurveMode.AceGeometric:
                // Start with no XP toward the next level so the bar reads 0 / ItemBaseXp (retail pacing).
                item.ItemTotalXp = 0;
                break;

            case ItemXpCurveMode.Geometric:
                // Match retail-style display: 0 / first-segment XP toward item level 1 (not pre-filling cumulative
                // total XP, which made bars look like 50,000/150,000 when the client compared totals to later thresholds).
                ulong t1Geo = ItemXpCurve.TotalXpToReachItemLevelGeometric(
                    1,
                    s.ItemXpGeometricFirstLevelTotal,
                    s.ItemXpGeometricMultiplierPerStep,
                    maxLevel);
                long firstSegGeo = (long)Math.Max(1L, (long)t1Geo);
                item.ItemBaseXp = firstSegGeo;
                item.ItemTotalXp = 0;
                break;

            case ItemXpCurveMode.CharacterTable:
                IReadOnlyList<ulong>? table = DatManager.PortalDat?.XpTable?.CharacterLevelXPList;
                if (table is null || table.Count == 0)
                    return;

                ulong t1Char = ItemXpCurve.TotalXpToReachItemLevel(
                    1,
                    table,
                    s.ItemXpVirtualCharacterLevel,
                    s.ItemXpCharacterCurveMultiplier,
                    maxLevel);
                long firstSegChar = (long)Math.Max(1L, (long)t1Char);
                item.ItemBaseXp = firstSegChar;
                item.ItemTotalXp = 0;
                break;
        }
    }
}
