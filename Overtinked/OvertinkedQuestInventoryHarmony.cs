using System.Reflection;

namespace Overtinked;

// Optional: postfixes Container.TryAddToInventory when EnableQuestItemInventoryInit is true (see PatchClass.Start). Default off.
[HarmonyPatch]
[HarmonyPatchCategory(Settings.OvertinkedQuestInventoryCategory)]
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
