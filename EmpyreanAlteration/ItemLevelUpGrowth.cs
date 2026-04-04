namespace EmpyreanAlteration;

[HarmonyPatchCategory(nameof(ItemLevelUpGrowth))]
public static class ItemLevelUpGrowth
{
    internal static Settings ItemGrowthSettings { get; set; } = new();

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.OnItemLevelUp), new Type[] { typeof(WorldObject), typeof(int) })]
    public static void PreOnItemLevelUp(WorldObject item, int prevItemLevel, ref Player __instance)
    {
        if (item.GetProperty(FakeBool.GrowthItem) is null)
            return;

        if (item.GetProperty(FakeInt.OriginalItemType) is null)
            return;

        for (int level = prevItemLevel + 1; level <= item.ItemLevel; level++)
        {
            if (!item.TryGrowItem(level, __instance) && __instance.Session != null)
                __instance.SendMessage($"Failed to apply Augment to {item.Name} for level {level}");
        }
    }

    private static bool TryGrowItem(this WorldObject item, int level, Player player)
    {
        Augment augment = 0;
        var cfg = ItemGrowthSettings;
        if (!cfg.GrowthFixedLevelAugments.TryGetValue(item.WeenieType, out var levelAugments) || !levelAugments.TryGetValue(level, out augment))
        {
            if (!cfg.GrowthAugments.TryGetValue(item.WeenieType, out var augmentGroup))
                return false;

            if (!cfg.AugmentGroups.TryGetValue(augmentGroup, out var augmentPool))
                return false;

            if (!augmentPool.TryGetRandom(out augment))
                return false;
        }

        if (!item.TryAugmentWith(augment))
            return false;

        if (player.Session != null)
            player.SendMessage($"Growing {item.Name} with {augment} for level {level}/{item.ItemMaxLevel}");
        return true;
    }
}
