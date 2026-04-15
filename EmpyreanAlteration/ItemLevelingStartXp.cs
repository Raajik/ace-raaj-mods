namespace EmpyreanAlteration;

// ACE clients derive item level / XP bar from ItemTotalXp + ItemBaseXp using the stock doubling formula (see WorldObject_Set.ItemLevel).
// Starting at ItemTotalXp = 0 makes retail math show level 0 and bogus "0/1" style progress when ItemBaseXp is a dummy (custom curves).
// Align starting totals so appraisal matches server-side ItemLevel for level 1, while EmpyreanAlteration's ExperienceSystem prefixes keep real progression.
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
                item.ItemTotalXp = item.ItemBaseXp.Value;
                break;

            case ItemXpCurveMode.Geometric:
                ulong t1Geo = ItemXpCurve.TotalXpToReachItemLevelGeometric(
                    1,
                    s.ItemXpGeometricFirstLevelTotal,
                    s.ItemXpGeometricMultiplierPerStep,
                    maxLevel);
                long baseGeo = (long)Math.Max(1L, (long)t1Geo);
                item.ItemBaseXp = baseGeo;
                item.ItemTotalXp = baseGeo;
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
                long baseChar = (long)Math.Max(1L, (long)t1Char);
                item.ItemBaseXp = baseChar;
                item.ItemTotalXp = baseChar;
                break;
        }
    }
}
