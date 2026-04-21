using ACE.Server.Network.Structure;

namespace EmpyreanAlteration;

// Quest item XP init, custom item XP curves, and level-up growth (separate from mutator loot GrowthItem).
internal static class QuestItemGrowthHarmony
{
    internal const string Category = "EmpyreanAlterationQuestItemGrowth";

    // ExperienceSystem + ItemXpCurveContext patches must run for loot GrowthItem appraisal when EnableLootItemLeveling
    // is true even if EnableQuestItemLeveling is false; otherwise the client XP bar / level math is wrong or hidden.
    internal static bool IsItemXpCurveHarmonyEnabled(Settings? s) =>
        s is { Enabled: true } && (s.EnableQuestItemLeveling || s.EnableLootItemLeveling);

    static bool PrepareContainerPostfix()
    {
        return TargetMethodContainerTryAddToInventory() != null;
    }

    internal static MethodBase? TargetMethodContainerTryAddToInventory()
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
}

[HarmonyPatch]
[HarmonyPatchCategory(QuestItemGrowthHarmony.Category)]
internal static class QuestItemGrowthPostContainerTryAddToInventory
{
    static bool Prepare()
    {
        return QuestItemGrowthHarmony.TargetMethodContainerTryAddToInventory() != null;
    }

    static MethodBase TargetMethod()
    {
        return QuestItemGrowthHarmony.TargetMethodContainerTryAddToInventory()!;
    }

    [HarmonyPostfix]
    [HarmonyPriority(Priority.Last)]
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

        Settings? s = PatchClass.Settings;
        if (s == null || !s.Enabled || !s.EnableQuestItemLeveling)
            return;

        Player? owner = ContainerRootPlayer.TryGetFromContainer(__instance);
        // Player chain: normal pack/corpse loot into inventory. Without a player, only init when the weenie is tied to a
        // quest (e.g. reward sitting on a corpse) so appraisal shows XP as soon as the item exists, not only after pickup.
        if (owner == null && string.IsNullOrWhiteSpace(worldObject.Quest))
            return;

        QuestItemLevelingConfiguration.TryInitializeQuestItemXpAfterInventory(worldObject, owner, s);
    }
}

[HarmonyPatch]
[HarmonyPatchCategory(QuestItemGrowthHarmony.Category)]
internal static class QuestItemGrowthItemXpCurveHarmony
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
        if (xpScheme != ItemXpStyle.ScalesWithLevel)
            return true;

        WorldObject? item = ItemXpCurveContext.Current;
        Settings? s = PatchClass.Settings;

        if (item != null && s != null && ItemXpCurve.ShouldUseGeometric(item, s))
        {
            __result = ItemXpCurve.ItemLevelFromTotalXpGeometric((long)gainedXP, s.ItemXpGeometricFirstLevelTotal, s.ItemXpGeometricMultiplierPerStep, maxLevel);
            return false;
        }

        if (item != null && s != null && ItemXpCurve.ShouldUseCharacterTable(item, s))
        {
            IReadOnlyList<ulong>? table = DatManager.PortalDat?.XpTable?.CharacterLevelXPList;
            if (table == null || table.Count == 0)
                return true;

            __result = ItemXpCurve.ItemLevelFromTotalXp((long)gainedXP, table, s.ItemXpVirtualCharacterLevel, s.ItemXpCharacterCurveMultiplier, maxLevel);
            return false;
        }

        int safeMax = ExperienceSystemItemXpSafe.ClampItemMaxLevelForDoublingBase(Math.Max(1ul, baseXP), maxLevel);
        __result = ExperienceSystemItemXpSafe.ItemTotalXpToLevelScalesWithLevelAce(gainedXP, baseXP, safeMax);
        return false;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(ExperienceSystem), nameof(ExperienceSystem.ItemLevelToTotalXP))]
    public static bool PrefixItemLevelToTotalXP(int itemLevel, ulong baseXP, int maxLevel, ItemXpStyle xpScheme, ref ulong __result)
    {
        if (xpScheme != ItemXpStyle.ScalesWithLevel)
            return true;

        WorldObject? item = ItemXpCurveContext.Current;
        Settings? s = PatchClass.Settings;

        if (item != null && s != null && ItemXpCurve.ShouldUseGeometric(item, s))
        {
            __result = ItemXpCurve.TotalXpToReachItemLevelGeometric(itemLevel, s.ItemXpGeometricFirstLevelTotal, s.ItemXpGeometricMultiplierPerStep, maxLevel);
            return false;
        }

        if (item != null && s != null && ItemXpCurve.ShouldUseCharacterTable(item, s))
        {
            IReadOnlyList<ulong>? table = DatManager.PortalDat?.XpTable?.CharacterLevelXPList;
            if (table == null || table.Count == 0)
                return true;

            __result = ItemXpCurve.TotalXpToReachItemLevel(itemLevel, table, s.ItemXpVirtualCharacterLevel, s.ItemXpCharacterCurveMultiplier, maxLevel);
            return false;
        }

        int safeMax = ExperienceSystemItemXpSafe.ClampItemMaxLevelForDoublingBase(Math.Max(1ul, baseXP), maxLevel);
        __result = ExperienceSystemItemXpSafe.ItemLevelToTotalXpScalesWithLevelAce(itemLevel, baseXP, safeMax);
        return false;
    }
}

[HarmonyPatch]
[HarmonyPatchCategory(QuestItemGrowthHarmony.Category)]
internal static class QuestItemGrowthOnItemLevelUpHarmony
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.OnItemLevelUp), new Type[] { typeof(WorldObject), typeof(int) })]
    public static void PreOnItemLevelUpQuestItems(WorldObject item, int prevItemLevel, Player __instance)
    {
        if (item == null)
            return;

        Settings? s = PatchClass.Settings;
        if (s == null || !s.Enabled)
            return;

        // Quest rewards: QuestGrowthItemBool. LootGrowthItem: GrowthItem + QuestGrowthTreasureTierInt (container GrowthItem
        // mutator sets FakeInt.GrowthTier but does not set 40151, so it does not enter this path).
        bool questGrowthPath = item.GetProperty(QuestItemGrowthProperties.QuestGrowthItemBool) == true;
        bool lootGrowthPath = item.GetProperty(FakeBool.GrowthItem) == true
            && item.GetProperty(QuestItemGrowthProperties.QuestGrowthTreasureTierInt).HasValue
            && item.GetProperty(QuestItemGrowthProperties.QuestGrowthItemBool) != true;
        if (!questGrowthPath && !lootGrowthPath)
            return;

        if (questGrowthPath && !s.EnableQuestItemLeveling)
            return;

        if (lootGrowthPath && !s.EnableLootItemLeveling)
            return;

        bool questGrowth = questGrowthPath;

        int currentLevel = item.ItemLevel ?? 0;
        if (currentLevel <= prevItemLevel)
            return;

        QuestItemGrowthCatchUp.ApplyCatchUpGrowth(item, prevItemLevel, currentLevel, questGrowth, __instance, s);
    }
}

// Appraisal and direct ItemTotalXp/ItemBaseXp reads can call ExperienceSystem without going through ItemLevel first.
// Without context, stock ACE math uses dummy ItemBaseXp and hides the XP bar or shows the wrong level.
[HarmonyPatch]
[HarmonyPatchCategory(QuestItemGrowthHarmony.Category)]
internal static class ItemXpCurveContextWorldObjectPatches
{
    static bool Prepare()
    {
        return AccessTools.PropertyGetter(typeof(WorldObject), nameof(WorldObject.ItemTotalXp)) != null
            && AccessTools.PropertyGetter(typeof(WorldObject), nameof(WorldObject.ItemBaseXp)) != null;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.ItemTotalXp), MethodType.Getter)]
    public static void PreItemTotalXpGetter(WorldObject __instance)
    {
        if (!QuestItemGrowthHarmony.IsItemXpCurveHarmonyEnabled(PatchClass.Settings))
            return;

        ItemXpCurveContext.Enter(__instance);
    }

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.ItemTotalXp), MethodType.Getter)]
    public static void FinalItemTotalXpGetter()
    {
        if (!QuestItemGrowthHarmony.IsItemXpCurveHarmonyEnabled(PatchClass.Settings))
            return;

        ItemXpCurveContext.Leave();
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.ItemBaseXp), MethodType.Getter)]
    public static void PreItemBaseXpGetter(WorldObject __instance)
    {
        if (!QuestItemGrowthHarmony.IsItemXpCurveHarmonyEnabled(PatchClass.Settings))
            return;

        ItemXpCurveContext.Enter(__instance);
    }

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.ItemBaseXp), MethodType.Getter)]
    public static void FinalItemBaseXpGetter()
    {
        if (!QuestItemGrowthHarmony.IsItemXpCurveHarmonyEnabled(PatchClass.Settings))
            return;

        ItemXpCurveContext.Leave();
    }
}

[HarmonyPatch]
[HarmonyPatchCategory(QuestItemGrowthHarmony.Category)]
internal static class AppraiseItemXpCurveContextPatches
{
    [ThreadStatic]
    static int _appraiseBuildProfileDepth;

    static bool Prepare()
    {
        return AccessTools.Method(
            typeof(AppraiseInfo),
            "BuildProfile",
            new[] { typeof(WorldObject), typeof(Player), typeof(bool) }) != null;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(AppraiseInfo), "BuildProfile", new[] { typeof(WorldObject), typeof(Player), typeof(bool) })]
    static void PrefixAppraiseBuildProfile(WorldObject wo, Player examiner, bool success)
    {
        if (!QuestItemGrowthHarmony.IsItemXpCurveHarmonyEnabled(PatchClass.Settings) || wo is null)
            return;

        ItemXpCurveContext.Enter(wo);
        _appraiseBuildProfileDepth++;
    }

    [HarmonyFinalizer]
    [HarmonyPatch(typeof(AppraiseInfo), "BuildProfile", new[] { typeof(WorldObject), typeof(Player), typeof(bool) })]
    static void FinalizerAppraiseBuildProfile()
    {
        if (_appraiseBuildProfileDepth <= 0)
            return;

        ItemXpCurveContext.Leave();
        _appraiseBuildProfileDepth--;
    }
}
