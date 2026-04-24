namespace QOL;

[HarmonyPatchCategory(nameof(Features.BypassPortalRestrictions))]
internal static class BypassPortalRestrictions
{
    // ── Portal use requirements ────────────────────────────────────────────
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Portal), nameof(Portal.CheckUseRequirements), new Type[] { typeof(WorldObject) })]
    public static bool PrePortalCheckUseRequirements(WorldObject activator, ref ActivationResult __result)
    {
        if (S.Settings is not { EnableBypassPortalRestrictions: true })
            return true; // run original

        if (!S.Settings.BypassPortalRestrictions.BypassPortalUseRequirements)
            return true; // run original

        // Skip original portal requirement checks; return success.
        // The TownNetworkToll postfix still runs after this and enforces fees.
        __result = new ActivationResult(true);
        return false; // skip original
    }

    // ── Player recall restriction properties ───────────────────────────────
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), "get_RecallsDisabled")]
    public static void PostGetRecallsDisabled(ref bool __result)
    {
        if (S.Settings is not { EnableBypassPortalRestrictions: true })
            return;
        if (S.Settings.BypassPortalRestrictions.BypassDungeonRecall)
            __result = false;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), "get_TooBusyToRecall")]
    public static void PostGetTooBusyToRecall(ref bool __result)
    {
        if (S.Settings is not { EnableBypassPortalRestrictions: true })
            return;
        if (S.Settings.BypassPortalRestrictions.BypassBusyRecall)
            __result = false;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), "get_PKTimerActive")]
    public static void PostGetPKTimerActive(ref bool __result)
    {
        if (S.Settings is not { EnableBypassPortalRestrictions: true })
            return;
        if (S.Settings.BypassPortalRestrictions.BypassPKTimerRecall)
            __result = false;
    }
}
