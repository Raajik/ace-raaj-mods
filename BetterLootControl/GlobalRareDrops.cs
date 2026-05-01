namespace BetterLootControl;

using ACE.Common;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;
using HarmonyLib;

/// <summary>
/// Adds rare global drops (SpellSiphon tool, Mana Lattice) to creature corpses.
/// Rolls once per creature death that has a valid DeathTreasure profile.
/// </summary>
[HarmonyPatch]
internal static class GlobalRareDrops
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GenerateTreasure), new System.Type[] { typeof(ACE.Server.Entity.DamageHistoryInfo), typeof(Corpse) })]
    public static void PostGenerateTreasure(DamageHistoryInfo killer, Corpse corpse, Creature __instance)
    {
        if (!PatchClass.Settings.EnableGlobalRareDrops)
            return;

        // Only creatures with a treasure profile (i.e. anywhere an Encapsulated Spirit could drop)
        if (__instance.DeathTreasure == null)
            return;

        if (corpse == null || corpse.IsDestroyed)
            return;

        var s = PatchClass.Settings;

        // Roll for SpellSiphon tool
        if (ThreadSafeRandom.Next(0.0f, 1.0f) < s.RareDropChance)
        {
            var tool = WorldObjectFactory.CreateNewWorldObject(s.SpellsiphonToolWcid);
            if (tool != null)
            {
                corpse.TryAddToInventory(tool);
                if (s.EnableDebugLogging)
                    ModManager.Log($"[BetterLootControl] Rare drop: {tool.Name} on {__instance.Name}", ModManager.LogLevel.Info);
            }
        }

        // Roll for Mana Lattice
        if (ThreadSafeRandom.Next(0.0f, 1.0f) < s.RareDropChance)
        {
            var lattice = WorldObjectFactory.CreateNewWorldObject(s.ManaLatticeWcid);
            if (lattice != null)
            {
                corpse.TryAddToInventory(lattice);
                if (s.EnableDebugLogging)
                    ModManager.Log($"[BetterLootControl] Rare drop: {lattice.Name} on {__instance.Name}", ModManager.LogLevel.Info);
            }
        }
    }
}
