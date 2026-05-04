using ACE.Database.Models.World;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace BetterLootControl;

/// <summary>
/// Disables ACE's native Coalesced Mana drops so BetterLootControl is the sole source.
/// Patches the private factory method directly; if the method signature changes,
/// Prepare() returns false and the patch is silently skipped.
/// </summary>
[HarmonyPatch]
internal static class DisableVanillaCoalescedMana
{
    static MethodBase? TargetMethod()
    {
        // LootGenerationFactory_Aetheria.cs: private static WorldObject CreateCoalescedMana(TreasureDeath profile)
        return AccessTools.DeclaredMethod(typeof(LootGenerationFactory), "CreateCoalescedMana", new[] { typeof(TreasureDeath) });
    }

    static bool Prepare()
    {
        // Only patch if the private method exists. Prevents startup crash on ACE version mismatch.
        var method = TargetMethod();
        if (method == null)
        {
            ModManager.Log("[BetterLootControl] CreateCoalescedMana not found; vanilla Coalesced Mana skip patch not applied.", ModManager.LogLevel.Warn);
            return false;
        }
        return true;
    }

    [HarmonyPrefix]
    public static bool Prefix(ref WorldObject __result)
    {
        // Skip the original method entirely; Coalesced Mana will be dropped by BLC instead.
        __result = null!;
        return false;
    }
}
