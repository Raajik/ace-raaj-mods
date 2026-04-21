using ACE.Server.WorldObjects;

namespace QOL;

internal static class VendorPackBurdenRelief
{
    static bool _encumbrancePostfixApplied;

    internal static void TryApplyHarmony(Harmony harmony)
    {
        try
        {
            Settings? s = PatchClass.Settings;
            if (s is null || !s.EnableVendorPackBurdenRelief)
                return;

            if (_encumbrancePostfixApplied)
                return;

            MethodInfo? getEnc = AccessTools.Method(typeof(Creature), "GetEncumbrance");
            if (getEnc == null)
            {
                ModManager.Log("QOL: Creature.GetEncumbrance not found; vendor pack burden relief skipped.", ModManager.LogLevel.Warn);
                return;
            }

            harmony.Patch(getEnc, postfix: new HarmonyMethod(typeof(VendorPackBurdenRelief), nameof(PostGetEncumbrance)));
            _encumbrancePostfixApplied = true;
        }
        catch (Exception ex)
        {
            ModManager.Log($"QOL: VendorPackBurdenRelief patch failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void PostGetEncumbrance(Creature __instance, ref int __result)
    {
        if (__instance is not Player player)
            return;

        Settings? s = PatchClass.Settings;
        if (s is null || !s.EnableVendorPackBurdenRelief)
            return;

        if (s.VendorPackBurdenWcids is not { Count: > 0 })
            return;

        bool worn = false;
        foreach (WorldObject w in player.EquippedObjects.Values)
        {
            if (s.VendorPackBurdenWcids.Contains(w.WeenieClassId))
            {
                worn = true;
                break;
            }
        }

        if (!worn)
            return;

        double mult = Math.Clamp(s.VendorPackBurdenMultiplier, 0.01, 1.0);
        __result = (int)Math.Round(__result * mult);
    }
}
