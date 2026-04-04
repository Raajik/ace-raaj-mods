using System.Reflection;

namespace Overtinked;

// Gated by Settings.EnableItemLevelingHooks via PatchCategory(ItemLevelingHarmonyCategory).
// Postfixes Container.TryAddToInventory (not Player only) so nested packs and the same code path as loot pickup get quest init + perk chat.
[HarmonyPatch]
[HarmonyPatchCategory(Settings.ItemLevelingHarmonyCategory)]
internal static class OvertinkedPostContainerTryAddToInventory
{
    static bool Prepare()
    {
        return TargetMethod() != null;
    }

    static MethodBase TargetMethod()
    {
        return AccessTools.Method(
            typeof(Container),
            nameof(Container.TryAddToInventory),
            new[]
            {
                typeof(WorldObject),
                typeof(Container).MakeByRefType(),
                typeof(int),
                typeof(bool),
                typeof(bool),
            });
    }

    [HarmonyPostfix]
    public static void Postfix(
        WorldObject worldObject,
        ref Container container,
        int placementPosition,
        bool limitToMainPackOnly,
        bool burdenCheck,
        ref bool __result,
        Container __instance)
    {
        if (!__result || worldObject == null)
            return;

        Player? owner = ContainerRootPlayer.TryGetFromContainer(__instance);
        if (owner == null)
            return;

        PatchClass.RunItemInitAfterInventorySuccess(worldObject, owner);
    }
}

[HarmonyPatch]
[HarmonyPatchCategory(Settings.ItemLevelingHarmonyCategory)]
internal static class OvertinkedItemXpCurveHarmony
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.AddItemXP), typeof(long))]
    public static void PreAddItemXP(WorldObject __instance)
    {
        ItemXpCurveContext.Enter(__instance);
    }

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.AddItemXP), typeof(long))]
    public static void FinalAddItemXP()
    {
        ItemXpCurveContext.Leave();
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.ItemLevel), MethodType.Getter)]
    public static void PreItemLevelGetter(WorldObject __instance)
    {
        ItemXpCurveContext.Enter(__instance);
    }

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.ItemLevel), MethodType.Getter)]
    public static void FinalItemLevelGetter()
    {
        ItemXpCurveContext.Leave();
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(ExperienceSystem), nameof(ExperienceSystem.ItemTotalXPToLevel))]
    public static bool PrefixItemTotalXPToLevel(ulong gainedXP, ulong baseXP, int maxLevel, ItemXpStyle xpScheme, ref int __result)
    {
        WorldObject? item = ItemXpCurveContext.Current;
        Settings? s = PatchClass.CurrentSettings;
        if (item == null || s == null || xpScheme != ItemXpStyle.ScalesWithLevel)
            return true;

        if (ItemXpCurve.ShouldUseGeometric(item, s))
        {
            __result = ItemXpCurve.ItemLevelFromTotalXpGeometric((long)gainedXP, s.ItemXpGeometricFirstLevelTotal, s.ItemXpGeometricMultiplierPerStep, maxLevel);
            return false;
        }

        if (!ItemXpCurve.ShouldUseCharacterTable(item, s))
            return true;

        IReadOnlyList<ulong>? table = DatManager.PortalDat?.XpTable?.CharacterLevelXPList;
        if (table == null || table.Count == 0)
            return true;

        __result = ItemXpCurve.ItemLevelFromTotalXp((long)gainedXP, table, s.ItemXpVirtualCharacterLevel, s.ItemXpCharacterCurveMultiplier, maxLevel);
        return false;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(ExperienceSystem), nameof(ExperienceSystem.ItemLevelToTotalXP))]
    public static bool PrefixItemLevelToTotalXP(int itemLevel, ulong baseXP, int maxLevel, ItemXpStyle xpScheme, ref ulong __result)
    {
        WorldObject? item = ItemXpCurveContext.Current;
        Settings? s = PatchClass.CurrentSettings;
        if (item == null || s == null || xpScheme != ItemXpStyle.ScalesWithLevel)
            return true;

        if (ItemXpCurve.ShouldUseGeometric(item, s))
        {
            __result = ItemXpCurve.TotalXpToReachItemLevelGeometric(itemLevel, s.ItemXpGeometricFirstLevelTotal, s.ItemXpGeometricMultiplierPerStep, maxLevel);
            return false;
        }

        if (!ItemXpCurve.ShouldUseCharacterTable(item, s))
            return true;

        IReadOnlyList<ulong>? table = DatManager.PortalDat?.XpTable?.CharacterLevelXPList;
        if (table == null || table.Count == 0)
            return true;

        __result = ItemXpCurve.TotalXpToReachItemLevel(itemLevel, table, s.ItemXpVirtualCharacterLevel, s.ItemXpCharacterCurveMultiplier, maxLevel);
        return false;
    }
}

[HarmonyPatch]
[HarmonyPatchCategory(Settings.ItemLevelingHarmonyCategory)]
internal static class OvertinkedOnItemLevelUpHarmony
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.OnItemLevelUp), new Type[] { typeof(WorldObject), typeof(int) })]
    public static void PreOnItemLevelUpQuestItems(WorldObject item, int prevItemLevel, Player __instance)
    {
        if (item == null)
            return;

        Settings? s = PatchClass.CurrentSettings;
        if (s == null || !s.EnableQuestItemLeveling)
            return;

        bool questGrowth = item.GetProperty(PatchClass.QuestGrowthItemBool) == true;

        int currentLevel = item.ItemLevel ?? 0;
        if (currentLevel <= prevItemLevel)
            return;

        PatchClass.ApplyCatchUpGrowth(item, prevItemLevel, currentLevel, questGrowth, __instance, s);
    }
}
