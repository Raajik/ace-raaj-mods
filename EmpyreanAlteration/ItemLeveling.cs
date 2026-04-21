namespace EmpyreanAlteration;

public static class ItemLeveling
{
    public static bool ApplyItemLevelProfile(WorldObject item, int tier, ItemLevelProfile profile, Settings? capRollSettings = null)
    {
        if (item is null)
            return false;

        // Same equippable shape as quest inventory leveling (weapons, clothing, or any non-zero ValidLocations).
        if (!ItemLevelingEligibility.IsEquippableGearShape(item))
            return false;

        if (item.HasItemLevel)
            return false;

        long baseXp = profile.BaseXp;
        if (baseXp <= 0)
            baseXp = 10_000;

        double scale = profile.ScaleByTier;
        if (scale <= 0)
            scale = 1.0;

        long xpCost = (long)(baseXp * Math.Pow(scale, tier - 1));

        int minLevel = profile.MinLevel;
        int maxLevel = profile.MaxLevel;
        if (minLevel > maxLevel)
            (minLevel, maxLevel) = (maxLevel, minLevel);

        int maxItemLevel;
        if (capRollSettings != null && minLevel < maxLevel)
            maxItemLevel = ItemLevelingRolls.RollLootItemMaxLevel(tier, minLevel, maxLevel, capRollSettings);
        else
            maxItemLevel = minLevel == maxLevel ? minLevel : Random.Shared.Next(minLevel, maxLevel + 1);
        if (maxItemLevel <= 0)
            return false;

        ulong baseXpU = (ulong)Math.Max(1L, xpCost);
        if (capRollSettings != null)
        {
            switch (capRollSettings.ItemXpCurveMode)
            {
                case ItemXpCurveMode.Geometric:
                    maxItemLevel = ItemXpCurve.ClampItemMaxLevelForGeometric(
                        capRollSettings.ItemXpGeometricFirstLevelTotal,
                        capRollSettings.ItemXpGeometricMultiplierPerStep,
                        maxItemLevel);
                    break;
                case ItemXpCurveMode.CharacterTable:
                {
                    int tableCount = DatManager.PortalDat?.XpTable?.CharacterLevelXPList?.Count ?? 0;
                    maxItemLevel = ItemXpCurve.ClampItemMaxLevelForCharacterTable(
                        capRollSettings.ItemXpVirtualCharacterLevel,
                        tableCount,
                        maxItemLevel);
                    break;
                }
                default:
                    maxItemLevel = ExperienceSystemItemXpSafe.ClampItemMaxLevelForDoublingBase(baseXpU, maxItemLevel);
                    break;
            }
        }
        else
        {
            maxItemLevel = ExperienceSystemItemXpSafe.ClampItemMaxLevelForDoublingBase(baseXpU, maxItemLevel);
        }

        item.ItemXpStyle = ItemXpStyle.ScalesWithLevel;
        item.ItemTotalXp = 0;
        item.ItemMaxLevel = maxItemLevel;
        item.ItemBaseXp = xpCost;

        if (capRollSettings is not null)
            ItemLevelingStartXp.ApplyStartingXpForLevel1Display(item, capRollSettings);

        ItemLevelingPresentation.ApplyMaxLevelIconOverlayForXpItem(item);

        return true;
    }
}
