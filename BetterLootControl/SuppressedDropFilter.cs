using System.Collections.Generic;
using ACE.Server.WorldObjects;

namespace BetterLootControl;

/// <summary>
/// Prefix on Container.TryAddToInventory — intercepts items entering any corpse
/// and destroys suppressed WCIDs before they can reach the player.
/// More reliable than a postfix on Creature.GenerateTreasure because it catches
/// every code path that places items into a corpse.
/// </summary>
[HarmonyPatch]
internal static class SuppressedDropFilter
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Container), nameof(Container.TryAddToInventory),
        new[] { typeof(WorldObject), typeof(int), typeof(bool), typeof(bool) })]
    public static bool PreTryAddToInventory(WorldObject worldObject, Container __instance, ref bool __result)
    {
        // Only filter items going into corpses
        if (__instance is not Corpse)
            return true;

        var settings = PatchClass.CurrentSettings;
        if (settings is null || !settings.EnableSuppressedDropFilter)
            return true;

        var suppressed = settings.SuppressedDropWcids;
        if (suppressed is null || suppressed.Count == 0)
            return true;

        if (worldObject is null)
            return true;

        if (suppressed.Contains((int)worldObject.WeenieClassId))
        {
            worldObject.Destroy();
            __result = false;
            return false;
        }

        return true;
    }
}
