namespace Overtinked;

// Quest / inventory-time item XP initialization (loot-time init is not owned by Overtinked).
internal static class ItemLevelingInit
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
        item.ItemTotalXp ??= 0;
        item.ItemMaxLevel = maxLevel;
        item.ItemBaseXp = baseXp;
    }
}
