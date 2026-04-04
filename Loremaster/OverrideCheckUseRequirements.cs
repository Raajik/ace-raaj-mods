namespace Loremaster;

[HarmonyPatchCategory(nameof(OverrideCheckUseRequirements))]
internal static class OverrideCheckUseRequirements
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.CheckUseRequirements), new Type[] { typeof(WorldObject) })]
    public static bool PreCheckUseRequirements(WorldObject activator, ref WorldObject __instance, ref ActivationResult __result)
    {
        if (activator is null)
        {
            __result = new ActivationResult(false);
            return false;
        }

        // Vanilla checks whether the activator may use this object (__instance), not activator-on-self.
        __result = __instance.CheckUseRequirements(activator);
        return false;
    }
}
