namespace QOL;

// ACE: Portal.NoRecall is (PortalRestrictions & PortalBitmask.NoRecall); PortalRestrictions maps to PropertyInt.PortalBitmask.
[HarmonyPatchCategory(nameof(Features.PortalsStripNoRecall))]
internal static class PortalStripNoRecall
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Portal), nameof(Portal.EnterWorld))]
    public static void PostPortalEnterWorld(bool __result, Portal __instance)
    {
        if (!__result || S.Settings is not { EnablePortalsStripNoRecall: true } || __instance == null)
            return;

        if (S.Settings.PortalsStripNoRecallBlockedPortalWcids is { Count: > 0 } blocked
            && blocked.Contains(__instance.WeenieClassId))
            return;

        var mask = __instance.PortalRestrictions;
        if (!mask.HasFlag(PortalBitmask.NoRecall))
            return;

        __instance.PortalRestrictions = mask & ~PortalBitmask.NoRecall;
    }
}
