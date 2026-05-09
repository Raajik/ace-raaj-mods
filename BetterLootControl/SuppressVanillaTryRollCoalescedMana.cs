using System.Reflection;
using ACE.Database.Models.World;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace BetterLootControl;

// Modern ACE corpse loot uses CreateRandomLootObjects_New -> TryRollMundaneAddon -> TryRollCoalescedMana.
// DisableVanillaCoalescedMana patches CreateCoalescedMana; this prefix blocks the whole TryRoll path when BLC owns drops.
[HarmonyPatch]
internal static class SuppressVanillaTryRollCoalescedMana
{
    static MethodBase? TargetMethod()
    {
        return AccessTools.DeclaredMethod(typeof(LootGenerationFactory), "TryRollCoalescedMana", new[] { typeof(TreasureDeath) });
    }

    static bool Prepare()
    {
        if (TargetMethod() == null)
        {
            ModManager.Log(
                "[BetterLootControl] TryRollCoalescedMana not found; vanilla mundane coalesced suppression skipped.",
                ModManager.LogLevel.Warn);
            return false;
        }

        return true;
    }

    [HarmonyPrefix]
    public static bool Prefix(ref WorldObject __result)
    {
        Settings? s = PatchClass.Settings;
        if (s == null || !s.Enabled)
            return true;

        __result = null!;
        return false;
    }
}
