# Vendor Loot Rotation Enhancement Plan

## Overview
Major work on QOL VendorLootRotation to add magical spells by default, significantly more imbued/awakened items, high vendor prices for premium items, and spellsiphon spawning with pre-loaded spells.

## Phase 1: Vendor Type Enforcement (Strict)
- [ ] Make jewelers only sell Jewelry and Gems (no armor/weapons)
- [ ] Make armorers only sell Armor and Weapons (no jewelry/gems)
- [ ] Make mages/scriveners sell Casters, Jewelry, and spell components
- [ ] Remove cross-category contamination in rotated stock

## Phase 2: Add Spells to All Vendor Loot
- [ ] Add spell loading to all generated equipment (weapons, armor, jewelry, casters)
- [ ] Use SpellSiphon logic for spell rolling on equipment
- [ ] Default to 1-2 spells per item based on tier
- [ ] Higher tiers = more spells possible

## Phase 3: Increase Imbue/Awakened Rate
- [ ] Increase VendorLootUniqueItemChance from 0.15 to 0.40+ (40%+)
- [ ] Add awakening system for high-tier items (tier 6+)
- [ ] Awakened items get: IsAwakened, higher value multiplier, unique visuals

## Phase 4: Premium Pricing
- [ ] Increase VendorLootImbueValueMultiplier from 3.0 to 5.0+
- [ ] Add new AwakenedValueMultiplier (e.g., 8.0x base value)
- [ ] Stack multipliers: Imbue (5x) + Awakened (8x) = 40x base value

## Phase 5: Spellsiphon Spawning
- [ ] Add spellsiphon WCID (850200) to vendor loot at high rate (20%+ on appropriate vendors)
- [ ] Restrict to jewelers/mages only (not armorers)
- [ ] Add spellsiphon spawning to monster loot (LootEconomyControl or new patch)
- [ ] Pre-load spells on spawned spellsiphons (1-3 spells each)

## Implementation Notes
- Phase 1-4: QOL/VendorLootRotation.cs + QOL/Settings.cs
- Phase 5: Also requires SpellSiphon integration (check SpellSiphon.Settings for spell rolling)
- Testing: Deploy to test server and verify vendor types, spell loading, imbue rates