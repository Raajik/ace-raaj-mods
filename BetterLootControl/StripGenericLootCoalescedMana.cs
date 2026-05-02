using ACE.Database.Models.World;
using ACE.Server.Factories;
using HarmonyLib;

namespace BetterLootControl;

// ACE also embeds coalesced mana WCIDs in LootTables.GenericLootMatrix; CreateGenericObjects rolls those
// without calling CreateCoalescedMana. Strip those drops so BLC GlobalRareDrops is the only source.
[HarmonyPatch]
internal static class StripGenericLootCoalescedMana
{
    static MethodBase? TargetMethod()
    {
        return AccessTools.Method(typeof(LootGenerationFactory), "CreateGenericObjects", new[] { typeof(TreasureDeath) });
    }

    static bool Prepare()
    {
        if (TargetMethod() == null)
        {
            ModManager.Log(
                "[BetterLootControl] CreateGenericObjects not found; GenericLootMatrix coalesced strip not applied.",
                ModManager.LogLevel.Warn);
            return false;
        }

        return true;
    }

    [HarmonyPostfix]
    public static void Postfix(ref WorldObject? __result)
    {
        if (__result == null)
            return;

        Settings? s = PatchClass.Settings;
        if (s == null || !s.Enabled)
            return;

        uint id = __result.WeenieClassId;
        if (id != s.LesserCoalescedManaWcid && id != s.GreaterCoalescedManaWcid && id != s.AethericCoalescedManaWcid)
            return;

        try
        {
            __result.Destroy(false);
        }
        catch
        {
            // Loot-time object may not be fully entered; still drop reference so nothing adds it.
        }

        __result = null;
    }
}
