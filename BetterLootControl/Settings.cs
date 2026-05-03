using System;
using System.Collections.Generic;

namespace BetterLootControl;

// Settings for BetterLootControl (consolidated chest drops + global rare drops).
// Tier chances and WCID pools live in Loremaster/LootConfig.json by default.

public class Settings
{
    public bool Enabled { get; init; } = true;

    // Only these chest WCIDs receive guaranteed loot; empty = all chests that pass other checks.
    public List<int> AllowedChestWCIDs { get; init; } = new();

    // Chance that a second item is added after the guaranteed first.
    public double SecondItemChance { get; init; } = 0.1;
    // Chance for a third item to be added (independent roll after second).
    public double ThirdItemChance { get; init; } = 0.01;

    // When true, scrolls on monster corpses that the killing player cannot read (Player.CanReadScroll) are destroyed after treasure gen.
    public bool FilterUnusableScrollDropsForKiller { get; init; } = true;

    // -- Global Rare Drops (SpellSiphon / Mana Lattice / Coalesced Mana) --
    public bool EnableGlobalRareDrops { get; init; } = true;
    public double RareDropChance { get; init; } = 0.005; // 0.5%
    public uint SpellsiphonToolWcid { get; init; } = 850200;
    public uint ManaLatticeWcid { get; init; } = 850201;

    // Pre-rolled spells on Mana Lattice drops (SpellSiphon gem pool when that mod is loaded).
    public int ManaLatticeSpellCountMin { get; init; } = 3;
    public int ManaLatticeSpellCountMax { get; init; } = 7;

    // -- Coalesced Mana Drops (replaces ACE vanilla TryRollMundaneAddon) --
    public double CoalescedManaDropChance { get; init; } = 0.015; // 1.5% per corpse with DeathTreasure
    public uint LesserCoalescedManaWcid { get; init; } = 42516;
    public uint GreaterCoalescedManaWcid { get; init; } = 42517;
    public uint AethericCoalescedManaWcid { get; init; } = 42518;

    // -- Global Key Drops (skeleton keys, separate from DefaultLootConfig) --
    public bool EnableGlobalKeyDrops { get; init; } = true;
    public double KeyDropChance { get; init; } = 0.01; // 1%
    public uint SturdyIronKeyWcid { get; init; } = 6876;
    public uint SturdySteelKeyWcid { get; init; } = 24477;
    public uint ManaForgeKeyWcid { get; init; } = 38456;
    public uint LegendaryKeyWcid { get; init; } = 48746;

    // Optional override for LootConfig.json. Empty = Mods/Loremaster/LootConfig.json.
    public string LootConfigPath { get; init; } = "";

    public int MinChestTier { get; init; } = 1;
    public int MaxChestTier { get; init; } = 8;

    public bool EnableDebugLogging { get; init; } = false;

    public int MinResetIntervalSeconds { get; init; } = 600;
    public int MaxResetIntervalSeconds { get; init; } = 1200;

    // -- Loot Ratings (all tiers) --
    public bool EnableLootRatings { get; init; } = true;
    // Relative weights for synthetic gear tier assignment (index 0 = tier 1). Used when rolling a tier for gear items.
    public List<double> GearTierWeights { get; init; } = new() { 1.0, 2.0, 3.0, 4.0, 4.0, 3.0, 2.0, 1.0 };
    // Chance (0-1) for gear of each tier to roll ratings. Index 0 = tier 1.
    public List<double> RatingChancePerTier { get; init; } = new() { 0.05, 0.10, 0.15, 0.25, 0.40, 0.60, 0.75, 0.90 };
    // How many distinct rating properties to roll per item.
    public int RatingRollCountMin { get; init; } = 1;
    public int RatingRollCountMax { get; init; } = 3;
    // Rating value ranges per tier. Index 0 = tier 1.
    public List<int> RatingValueMinPerTier { get; init; } = new() { 1, 1, 2, 2, 3, 4, 5, 6 };
    public List<int> RatingValueMaxPerTier { get; init; } = new() { 2, 3, 4, 5, 7, 9, 12, 15 };
    // Which ACE PropertyInt ratings can roll. Uses the C# property/field names from WorldObject.
    public List<string> RatingTypes { get; init; } = new()
    {
        "DamageRating", "CritDamageRating", "DamageResistRating",
        "CritDamageResistRating", "CritRating", "HealingBoostRating", "GearMaxHealth"
    };

    // -- Loot Equipment Sets (all tiers) --
    public bool EnableLootEquipmentSets { get; init; } = true;
    // Chance (0-1) for gear of each tier to roll an equipment set. Index 0 = tier 1.
    public List<double> EquipmentSetChancePerTier { get; init; } = new() { 0.02, 0.03, 0.05, 0.08, 0.12, 0.18, 0.25, 0.35 };
    // Which EquipmentSet IDs can roll. Excludes 0 (Invalid), cloaks, and ultra-specific sets by default.
    public List<int> EquipmentSetIds { get; init; } = new()
    {
        4, 5, 6, 7, 8, 9, 10, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
        26, 27, 28, 29, 30, 35, 36, 37, 38, 39, 40, 41
    };
}
