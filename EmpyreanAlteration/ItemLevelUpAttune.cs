namespace EmpyreanAlteration;

// Ensures any HasItemLevel item becomes Attuned once it reaches item level 1+ (covers paths that skip QuestItemGrowthLevelEngine).
[HarmonyPatch]
[HarmonyPatchCategory(nameof(ItemLevelUpAttune))]
internal static class ItemLevelUpAttune
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.OnItemLevelUp), new Type[] { typeof(WorldObject), typeof(int) })]
    public static void PostOnItemLevelUp(WorldObject item, int prevItemLevel, Player __instance)
    {
        if (item is null || __instance is null)
            return;

        if (PatchClass.Settings is not { Enabled: true, AttuneLeveledItemsWhenReachingLevelOne: true })
            return;

        if (!item.HasItemLevel)
            return;

        int cur = item.ItemLevel ?? 0;
        if (cur < 1)
            return;

        QuestGrowthItemHelpers.EnsureAttunedIfLeveled(item, cur);
    }
}
