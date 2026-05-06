namespace BetterLootControl;

using ACE.Common;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;
using HarmonyLib;

/// <summary>
/// Adds rare global drops (SpellSiphon tool, Mana Lattice, Coalesced Mana) to creature corpses.
/// Rolls once per creature death that has a valid DeathTreasure profile.
/// </summary>
[HarmonyPatch]
internal static class GlobalRareDrops
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GenerateTreasure), new System.Type[] { typeof(ACE.Server.Entity.DamageHistoryInfo), typeof(Corpse) })]
    public static void PostGenerateTreasure(DamageHistoryInfo killer, Corpse corpse, Creature __instance)
    {
        if (PatchClass.Settings == null || !PatchClass.Settings.EnableGlobalRareDrops)
            return;

        // Only creatures with a treasure profile (i.e. anywhere an Encapsulated Spirit could drop)
        if (__instance.DeathTreasure == null)
            return;

        if (corpse == null || corpse.IsDestroyed)
            return;
        
        if (__instance == null)
            return;

        var s = PatchClass.Settings;
        if (s == null)
            return;

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
                ManaLatticeSpellBootstrap.TryRollSpellsOntoLattice(lattice);
                corpse.TryAddToInventory(lattice);
                if (s.EnableDebugLogging)
                    ModManager.Log($"[BetterLootControl] Rare drop: {lattice.Name} on {__instance.Name}", ModManager.LogLevel.Info);
            }
        }

        // Roll for Coalesced Mana (tier-appropriate: T1-2 Aetheric, T3 Aetheric/Greater, T4 all three)
        if (ThreadSafeRandom.Next(0.0f, 1.0f) < s.CoalescedManaDropChance)
        {
            int tier = __instance.DeathTreasure?.Tier ?? 1;
            var wcid = RollCoalescedManaWcid(tier);
            if (wcid > 0)
            {
                var mana = WorldObjectFactory.CreateNewWorldObject(wcid);
                if (mana != null)
                {
                    corpse.TryAddToInventory(mana);
                    if (s.EnableDebugLogging)
                        ModManager.Log($"[BetterLootControl] Coalesced Mana drop: {mana.Name} on {__instance.Name} (T{tier})", ModManager.LogLevel.Info);
                }
            }
        }
    }

    /// <summary>
    /// Rolls the Coalesced Mana tier based on the loot tier, matching vanilla ACE distribution.
    /// T1-T2: Aetheric only. T3: Aetheric 75%, Greater 25%. T4: Aetheric 25%, Greater 50%, Lesser 25%.
    /// T5+: No drop (return 0).
    /// </summary>
    static uint RollCoalescedManaWcid(int tier)
    {
        if (tier <= 0) return 0;
        if (tier <= 2)
            return PatchClass.Settings.AethericCoalescedManaWcid;   // 42518
        if (tier == 3)
        {
            var roll = ThreadSafeRandom.Next(0.0f, 1.0f);
            return roll < 0.75f
                ? PatchClass.Settings.AethericCoalescedManaWcid     // 42518
                : PatchClass.Settings.GreaterCoalescedManaWcid;     // 42517
        }
        if (tier == 4)
        {
            var roll = ThreadSafeRandom.Next(0.0f, 1.0f);
            if (roll < 0.25f)
                return PatchClass.Settings.AethericCoalescedManaWcid;   // 42518
            if (roll < 0.75f)
                return PatchClass.Settings.GreaterCoalescedManaWcid;    // 42517
            return PatchClass.Settings.LesserCoalescedManaWcid;           // 42516
        }
        // T5+: no Coalesced Mana drop (matches vanilla)
        return 0;
    }
}
