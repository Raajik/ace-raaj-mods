namespace BetterLootControl;

using ACE.Common;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;
using HarmonyLib;

/// <summary>
/// Adds rare global drops (Glyph of Extraction, Mana Lattice with spells) to creature corpses.
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

        int tier = __instance.DeathTreasure?.Tier ?? 1;

        // Roll for Glyph of Extraction (tier-matched)
        if (ThreadSafeRandom.Next(0.0f, 1.0f) < s.RareDropChance)
        {
            var glyph = TryGenerateGlyphForTier(tier, s);
            if (glyph != null)
            {
                corpse.TryAddToInventory(glyph);
                if (s.EnableDebugLogging)
                    ModManager.Log($"[BetterLootControl] Glyph drop: {glyph.Name} on {__instance.Name} (T{tier})", ModManager.LogLevel.Info);
            }
        }

        // Roll for Mana Lattice (with pre-rolled spells)
        if (ThreadSafeRandom.Next(0.0f, 1.0f) < s.RareDropChance)
        {
            var lattice = WorldObjectFactory.CreateNewWorldObject(s.ManaLatticeWcid);
            if (lattice != null)
            {
                ManaLatticeSpellBootstrap.TryRollSpellsOntoLattice(lattice);
                corpse.TryAddToInventory(lattice);
                if (s.EnableDebugLogging)
                    ModManager.Log($"[BetterLootControl] Mana Lattice drop: {lattice.Name} on {__instance.Name}", ModManager.LogLevel.Info);
            }
        }

        // Roll for Coalesced Mana (universal drop, tier distribution: Lesser common, Greater uncommon, Aetheric rare)
        if (ThreadSafeRandom.Next(0.0f, 1.0f) < s.CoalescedManaDropChance)
        {
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
    /// Generates a Glyph of Extraction with 1-3 tier-appropriate spells for the given loot tier.
    /// Tier 0 glyph drops in ALL tiers (as a universal cantrip glyph).
    /// Tier N glyph drops only in tier N (spells of level N).
    /// </summary>
    static WorldObject? TryGenerateGlyphForTier(int lootTier, Settings s)
    {
        try
        {
            uint baseWcid = s.GlyphExtractionBaseWcid;
            if (baseWcid == 0)
                return null;

            // Tier 0 glyph (cantrips) can drop in any tier
            // Tier N glyph only drops in tier N
            int glyphTier;
            if (ThreadSafeRandom.Next(0.0f, 1.0f) < 0.25f)
            {
                // 25% chance for a tier 0 cantrip glyph in any tier
                glyphTier = 0;
            }
            else
            {
                // Otherwise, tier-matched to loot tier (capped at 8)
                glyphTier = Math.Clamp(lootTier, 1, 8);
            }

            uint glyphWcid = baseWcid + (uint)glyphTier;
            var glyph = WorldObjectFactory.CreateNewWorldObject(glyphWcid);
            if (glyph == null)
                return null;

            // Roll 1-3 tier-appropriate spells
            int spellCount = ThreadSafeRandom.Next(1, 4); // 1 to 3 inclusive
            var spellIds = PickTierAppropriateSpells(glyphTier, spellCount);
            if (spellIds.Count > 0)
            {
                glyph.Biota.PropertiesSpellBook ??= new Dictionary<int, float>();
                foreach (int id in spellIds)
                {
                    if (!glyph.Biota.PropertiesSpellBook.ContainsKey(id))
                        glyph.Biota.PropertiesSpellBook[id] = 1.0f;
                }
                glyph.UiEffects |= UiEffects.Magical;
            }

            try
            {
                glyph.CalculateObjDesc();
            }
            catch { }

            return glyph;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLootControl] Glyph generation failed: {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    static List<int> PickTierAppropriateSpells(int glyphTier, int count)
    {
        var result = new List<int>();
        try
        {
            var spells = ACE.DatLoader.DatManager.PortalDat?.SpellTable?.Spells;
            if (spells == null || spells.Count == 0)
                return result;

            // Build candidate pool from PlayerSpellTable
            var candidates = new List<int>();
            foreach (uint id in Player.PlayerSpellTable)
            {
                if (!spells.TryGetValue(id, out var sb) || sb == null)
                    continue;

                string name = sb.Name ?? string.Empty;
                if (string.IsNullOrWhiteSpace(name))
                    continue;

                // Skip portal/recall/summon
                if (name.Contains("Portal", StringComparison.OrdinalIgnoreCase)
                    || name.Contains("Recall", StringComparison.OrdinalIgnoreCase)
                    || name.Contains("Summon", StringComparison.OrdinalIgnoreCase))
                    continue;

                bool isCantrip = name.StartsWith("Minor ", StringComparison.OrdinalIgnoreCase)
                    || name.StartsWith("Moderate ", StringComparison.OrdinalIgnoreCase)
                    || name.StartsWith("Major ", StringComparison.OrdinalIgnoreCase)
                    || name.StartsWith("Epic ", StringComparison.OrdinalIgnoreCase)
                    || name.StartsWith("Legendary ", StringComparison.OrdinalIgnoreCase);

                if (glyphTier == 0)
                {
                    // Tier 0 = cantrips only
                    if (isCantrip)
                        candidates.Add((int)id);
                }
                else
                {
                    // Tier N = spell level == N (using ACE Spell.Level which is derived from Power)
                    var spell = new ACE.Server.Entity.Spell(id);
                    if (spell != null && spell.Level == glyphTier)
                    {
                        // Exclude cantrips from non-zero tiers
                        if (!isCantrip)
                            candidates.Add((int)id);
                    }
                }
            }

            if (candidates.Count == 0)
                return result;

            // Pick random unique spells
            var picked = new HashSet<int>();
            for (int i = 0; i < 100 && picked.Count < count; i++)
            {
                int idx = ThreadSafeRandom.Next(0, candidates.Count);
                picked.Add(candidates[idx]);
            }

            return picked.ToList();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLootControl] Spell pick failed: {ex.Message}", ModManager.LogLevel.Warn);
            return result;
        }
    }

    /// <summary>
    /// Rolls the Coalesced Mana tier. Universal drop across all monster tiers:
    /// Lesser = ~60% (most common), Greater = ~30%, Aetheric = ~10% (rarest).
    /// This matches the tier trophy system philosophy (T1 most common, T3 rarest).
    /// </summary>
    static uint RollCoalescedManaWcid(int tier)
    {
        var roll = ThreadSafeRandom.Next(0.0f, 1.0f);
        Settings s = PatchClass.Settings;
        if (s == null) return 0;

        // Universal tier distribution regardless of monster tier
        if (roll < 0.60f)
            return s.LesserCoalescedManaWcid;   // 800000 — 60%
        if (roll < 0.90f)
            return s.GreaterCoalescedManaWcid;    // 800001 — 30%
        return s.AethericCoalescedManaWcid;         // 800002 — 10%
    }
}
