namespace EmpyreanAlteration;

// Quest / inventory-time item XP initialization (optional workmanship roll here; Overtinked skips duplicate workmanship when EAQuestItemWorkmanshipInitBool is set).
internal static class QuestItemLevelingConfiguration
{
    internal static void ConfigureItemXp(WorldObject item, Settings s, int tierForMaxLevelRoll)
    {
        int maxLevel = ItemLevelingRolls.RollQuestItemMaxLevel(tierForMaxLevelRoll, s);

        long baseXp;
        if (s.ItemXpCurveMode == ItemXpCurveMode.CharacterTable || s.ItemXpCurveMode == ItemXpCurveMode.Geometric)
        {
            long dummy = s.ItemXpDummyBaseXp;
            baseXp = dummy > 0 ? dummy : 1;
        }
        else
        {
            baseXp = s.QuestItemXpBase > 0 ? s.QuestItemXpBase : 10_000;
            double k = s.GlobalItemXpPlayerScale > 0 ? s.GlobalItemXpPlayerScale : 2.0;
            baseXp = (long)(baseXp * k);
            double tierScale = s.QuestItemXpScale > 0 ? s.QuestItemXpScale : 1.2;
            if (tierForMaxLevelRoll > 1)
                baseXp = (long)(baseXp * Math.Pow(tierScale, tierForMaxLevelRoll - 1));
        }

        item.ItemXpStyle = ItemXpStyle.ScalesWithLevel;
        item.ItemMaxLevel = maxLevel;
        item.ItemBaseXp = baseXp;

        ItemLevelingStartXp.ApplyStartingXpForLevel1Display(item, s);

        ItemLevelingPresentation.ApplyMaxLevelIconOverlayForXpItem(item);
    }

    internal static bool TryInitializeQuestItemXpAfterInventory(WorldObject item, Player? player, Settings s)
    {
        if (item == null || s == null || !s.EnableQuestItemLeveling)
            return false;

        if (item.GetProperty(QuestItemGrowthProperties.EAQuestItemLevelingInitBool) == true)
            return false;

        if (!IsQuestGrowthCandidate(item))
            return false;

        if (item.HasItemLevel)
            return false;

        bool? isGrowthItem = item.GetProperty(FakeBool.GrowthItem);
        if (isGrowthItem == true)
            return false;

        int tierForCap = s.QuestItemMaxLevelTier > 0 ? s.QuestItemMaxLevelTier : 1;
        ConfigureItemXp(item, s, tierForCap);

        item.SetProperty(QuestItemGrowthProperties.QuestGrowthItemBool, true);
        item.SetProperty(QuestItemGrowthProperties.QuestItemCategoryInt, (int)item.WeenieType);
        item.SetProperty(QuestItemGrowthProperties.QuestGrowthTreasureTierInt, tierForCap);
        item.SetProperty(QuestItemGrowthProperties.EAQuestItemLevelingInitBool, true);

        QuestItemWorkmanship.TryRollOnceOnQuestXpInit(item, s);
        return true;
    }

    private static bool IsQuestGrowthCandidate(WorldObject item)
    {
        if (item == null)
            return false;

        if (item.HasItemLevel)
            return false;

        bool? growth = item.GetProperty(FakeBool.GrowthItem);
        if (growth == true)
            return false;

        return ItemLevelingEligibility.IsEquippableGearShape(item);
    }
}
