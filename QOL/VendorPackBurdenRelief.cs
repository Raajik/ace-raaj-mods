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

        double bestMult = GetBestPackBurdenMultiplier(player, s);
        if (bestMult >= 1.0 - 1e-9)
            return;

        bestMult = Math.Clamp(bestMult, 0.01, 1.0);
        __result = (int)Math.Round(__result * bestMult);
    }

    // Smallest multiplier = most burden relief when several packs qualify.
    static double GetBestPackBurdenMultiplier(Player player, Settings s)
    {
        double best = 1.0;

        void Consider(uint wcid, double mult)
        {
            mult = Math.Clamp(mult, 0.01, 1.0);
            if (mult < best)
                best = mult;
        }

        if (s.PackBurdenWcidMultipliers is { Count: > 0 } perWcid)
        {
            foreach (WorldObject w in player.EquippedObjects.Values)
            {
                if (perWcid.TryGetValue(w.WeenieClassId, out double m))
                    Consider(w.WeenieClassId, m);
            }

            if (s.PackBurdenIncludeMainInventory && player.Inventory != null)
            {
                foreach (WorldObject w in player.Inventory.Values)
                {
                    if (perWcid.TryGetValue(w.WeenieClassId, out double m))
                        Consider(w.WeenieClassId, m);
                }
            }

            return best;
        }

        double fallback = Math.Clamp(s.VendorPackBurdenMultiplier, 0.01, 1.0);
        foreach (WorldObject w in player.EquippedObjects.Values)
        {
            if (s.VendorPackBurdenWcids.Contains(w.WeenieClassId))
                Consider(w.WeenieClassId, fallback);
        }

        if (s.PackBurdenIncludeMainInventory && player.Inventory != null)
        {
            foreach (WorldObject w in player.Inventory.Values)
            {
                if (s.VendorPackBurdenWcids.Contains(w.WeenieClassId))
                    Consider(w.WeenieClassId, fallback);
            }
        }

        return best;
    }
}
