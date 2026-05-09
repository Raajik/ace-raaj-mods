namespace BetterLootControl;

using System.Linq;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;
using HarmonyLib;

// After corpse treasure is generated, removes scrolls the killing player cannot learn (Player.CanReadScroll).
// HarmonyPriority -100 runs before GlobalRareDrops (default 0) so rare drops are not affected by scroll removal.
[HarmonyPatch]
internal static class UnusableScrollLootFilter
{
    [HarmonyPostfix]
    [HarmonyPriority(-100)]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GenerateTreasure), new[] { typeof(DamageHistoryInfo), typeof(Corpse) })]
    public static void PostGenerateTreasureFilterScrolls(DamageHistoryInfo killer, Corpse corpse, Creature __instance)
    {
        if (PatchClass.Settings == null || !PatchClass.Settings.Enabled || !PatchClass.Settings.FilterUnusableScrollDropsForKiller)
            return;

        if (corpse == null || corpse.IsDestroyed)
            return;

        if (__instance == null)
            return;

        if (killer == null)
            return;

        WorldObject attacker = killer.TryGetAttacker();
        if (attacker == null || attacker is not Player player)
            return;

        foreach (WorldObject wo in corpse.Inventory.Values.ToList())
        {
            if (wo is not Scroll scroll)
                continue;

            if (scroll.Spell == null)
                continue;

            if (player.CanReadScroll(scroll))
                continue;

            scroll.Destroy();
            if (PatchClass.Settings.EnableDebugLogging)
                ModManager.Log($"[BetterLootControl] Removed unusable scroll {scroll.Name} from {__instance.Name} corpse for {player.Name}.", ModManager.LogLevel.Info);
        }
    }
}
