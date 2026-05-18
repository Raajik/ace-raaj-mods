using ACE.Server.Network.Structure;

namespace EmpyreanAlteration;

// Quest item XP, max-level rolls, custom XP curves, and spell growth (replaces old, removed module).
internal static class QuestItemGrowthHarmony
{
    internal const string Category = "EmpyreanAlterationQuestItemGrowth";

    // ExperienceSystem + ItemXpCurveContext patches must run whenever awakened / scaled items need correct
    // ItemLevel (not only full loot leveling): cloak loot upgrade, kill/quest item points, or EnableLootItemLeveling.
    // Without this, ACE uses vanilla ItemTotalXp→level math and cloak equipment-set tiers / weave procs stay at 0.
    internal static bool IsItemXpCurveHarmonyEnabled(Settings? s) =>
        s is { Enabled: true }
        && (
            s.EnableLootItemLeveling
            || s.EnableCloakLootUpgrade
        );

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
        if (s == null || !s.Enabled || !s.EnableLootItemLeveling)
            return;

        Player? owner = ContainerRootPlayer.TryGetFromContainer(__instance);
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

        // Awakened items with a LivingEquipment-style profile use the profile-based curve
        // (skipped in AceGeometric mode so client stock ACE math matches)
        if (item != null && s != null && s.ItemXpCurveMode != ItemXpCurveMode.AceGeometric
            && item.GetProperty(LivingEquipmentProperties.IsAwakened) == true)
        {
            AwakenedItemAwakener.TryMigrateCurve(item, s);

            long baseXp = item.GetProperty(PropertyInt64.ItemBaseXp) ?? 15;
            double divisor = item.GetProperty(LivingEquipmentProperties.ProfileDivisor) ?? 8.0;
            double power = item.GetProperty(LivingEquipmentProperties.ProfilePower) ?? 3.2;
            int cap = item.ItemMaxLevel ?? s.ItemLevelingCap;

            __result = AwakenedItemAwakener.ComputeLevelFromTotalXp((long)gainedXP, baseXp, divisor, power, cap);
            return false;
        }

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

        // Awakened items with a LivingEquipment-style profile use the profile-based curve
        // (skipped in AceGeometric mode so client stock ACE math matches)
        if (item != null && s != null && s.ItemXpCurveMode != ItemXpCurveMode.AceGeometric
            && item.GetProperty(LivingEquipmentProperties.IsAwakened) == true)
        {
            AwakenedItemAwakener.TryMigrateCurve(item, s);

            long baseXp = item.GetProperty(PropertyInt64.ItemBaseXp) ?? 15;
            double divisor = item.GetProperty(LivingEquipmentProperties.ProfileDivisor) ?? 8.0;
            double power = item.GetProperty(LivingEquipmentProperties.ProfilePower) ?? 3.2;
            int cap = item.ItemMaxLevel ?? s.ItemLevelingCap;

            __result = AwakenedItemAwakener.ComputeTotalXpForLevel(itemLevel, baseXp, divisor, power, cap);
            return false;
        }

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

// Patching GrantItemXP (Player_Xp.cs) instead of OnItemLevelUp — OnItemLevelUp only handles equipment sets
// and Harmony fails to apply to it silently. GrantItemXP is where level changes are detected.
[HarmonyPatch]
[HarmonyPatchCategory(QuestItemGrowthHarmony.Category)]
internal static class QuestItemGrowthOnItemLevelUpHarmony
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantItemXP), typeof(WorldObject), typeof(long))]
    public static void PreGrantItemXP(WorldObject item, ref int __state)
    {
        __state = item?.ItemLevel ?? 0;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantItemXP), typeof(WorldObject), typeof(long))]
    public static void PostGrantItemXP(WorldObject item, int __state, Player __instance)
    {
        if (item == null)
            return;

        Settings? s = PatchClass.Settings;
        if (s == null || !s.Enabled)
            return;

        int prevItemLevel = __state;
        int currentLevel = item.ItemLevel ?? 0;
        if (currentLevel <= prevItemLevel)
            return;

        bool questGrowthPath = item.GetProperty(QuestItemGrowthProperties.QuestGrowthItemBool) == true;
        bool lootGrowthPath = item.GetProperty(FakeBool.GrowthItem) == true
            && item.GetProperty(QuestItemGrowthProperties.QuestGrowthTreasureTierInt).HasValue
            && item.GetProperty(QuestItemGrowthProperties.QuestGrowthItemBool) != true;
        bool vanillaLevelPath = !questGrowthPath && !lootGrowthPath
            && item.ItemBaseXp is > 0
            && item.ItemXpStyle == ItemXpStyle.ScalesWithLevel
            && ItemLevelingEligibility.IsEquippableGearShape(item);

        if (!questGrowthPath && !lootGrowthPath && !vanillaLevelPath)
            return;

        if ((lootGrowthPath || vanillaLevelPath) && !s.EnableLootItemLeveling)
            return;

        QuestItemGrowthCatchUp.ApplyCatchUpGrowth(item, prevItemLevel, currentLevel, questGrowth: questGrowthPath, __instance, s);
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
