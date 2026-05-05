using System;
using System.Collections.Generic;

namespace BetterLootControl;

// Settings for BetterLootControl (consolidated chest drops + global rare drops + vendor loot rotation).
// Tier chances and WCID pools live in Loremaster/LootConfig.json by default.

public class Settings
{
    public bool Enabled { get; init; } = true;

    // -- Vendor Loot Rotation --
    // Rotates equipment stock on vendor approach from MerchandiseItemTypes.
    // Protected TN Pathwarden vendors 850300-850303 and 800039 are skipped.
    public bool EnableVendorLootRotation { get; init; } = true;
    public int VendorLootRotationMinutes { get; init; } = 20;
    public int VendorLootCooldownMinutes { get; init; } = 45;
    public string VendorLootMode { get; init; } = "Blacklist"; // Whitelist or Blacklist
    public List<int> VendorLootWcids { get; init; } = new(); // WCIDs for whitelist/blacklist mode

    // Item generation
    public int VendorLootItemsPerCategoryMin { get; init; } = 15;
    public int VendorLootItemsPerCategoryMax { get; init; } = 30;
    public int VendorLootMinValue { get; init; } = 100;
    public int VendorLootMaxValue { get; init; } = 10000;
    public double VendorLootLuxuryTaxPercent { get; init; } = 10.0;

    // Strict vendor type enforcement (Jewelers = jewelry/gems, Armorers = armor/weapons, Mages = casters/jewelry)
    public bool VendorLootStrictTypeEnforcement { get; init; } = true;

    // Spell loading on equipment
    public bool VendorLootAddSpellsToAllEquipment { get; init; } = true;
    public int VendorLootMinSpellsPerItem { get; init; } = 1;
    public int VendorLootMaxSpellsPerItem { get; init; } = 2;

    // Imbue and awakening
    public double VendorLootImbueChance { get; init; } = 0.40; // 40% chance for imbue
    public double VendorLootImbueValueMultiplier { get; init; } = 5.0;
    public double VendorLootHighWorkmanshipValueMultiplier { get; init; } = 2.0;
    public double VendorLootAwakenChance { get; init; } = 0.15; // 15% chance for tier 6+
    public double VendorLootAwakenValueMultiplier { get; init; } = 8.0;

    // Spellsiphon spawning
    public double VendorLootSpellsiphonSpawnChance { get; init; } = 0.25; // 25% on Jewelers/Mages
    public bool VendorLootSpellsiphonPreloadSpells { get; init; } = true;
    public int VendorLootSpellsiphonMinSpells { get; init; } = 1;
    public int VendorLootSpellsiphonMaxSpells { get; init; } = 3;

    // Jeweler-specific enhancements
    public double VendorLootJewelerImbueChance { get; init; } = 0.70; // 70% imbue chance for jeweler items
    public double VendorLootJewelerAwakenChance { get; init; } = 0.35; // 35% awaken chance for tier 6+ jeweler items
    public double VendorLootJewelerTinkerChance { get; init; } = 0.60; // 60% chance to add tinkers
    public int VendorLootJewelerMinTinkers { get; init; } = 1;
    public int VendorLootJewelerMaxTinkers { get; init; } = 3;
    public double VendorLootTinkerValueMultiplier { get; init; } = 2.0; // 2x value per tinker

    // Legacy/low-stat mode
    public bool VendorLootLowStatMode { get; init; } = false;
    public bool VendorLootSalvageOnRotation { get; init; } = false;

    // Vendor tier overrides
    public Dictionary<int, int> VendorTierWcidMap { get; init; } = new();
    public Dictionary<int, int> VendorTierLandblockMap { get; init; } = new();
    public int DefaultVendorTier { get; init; } = 2;

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
