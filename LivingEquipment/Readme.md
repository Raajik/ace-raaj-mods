# LivingEquipment

Awaken equipment with Coalesced Mana to unlock item leveling and growth.

## Features

- **Tiered Awakening:** Use Lesser (max 25), Greater (max 50), or Aetheric (max 75) Coalesced Mana on equippable gear.
- **Stacking Upgrades:** Upgrade Lesser → Greater → Aetheric, preserving current XP/level.
- **Named XP Profiles:** Each awakened item receives a random profile (QuickStart, Steady, Brutal, Casual) that controls its XP curve.
- **Living Naming:** Material type is replaced with "Living" (e.g., `Steel Longsword` → `Living Longsword`).
- **Academy Auto-Awaken:** Academy weapons (melee, missile, wand) and Pathwarden armor automatically awaken to Tier 1 (max level 25, Casual profile) the first time they enter a player's inventory.
- **Vendor Sales:** Academy weapons sold at starter-town blacksmiths, bowyers, and archmages. Pathwarden armor sold at clothiers, armorers, and jewelers. All priced with dynamic economy scaling via LeyLineLedger.
- **Visual Effects:** Awakened items glow **yellow/gold** (`BoostHealth|BoostStamina` shader, easy to spot in loot).

> **Loot mutation note:** Pre-awakened drops (~0.2%) and pre-imbued drops (~5%) are handled by **EmpyreanAlteration** (`LootGrowthItem` mutator). LivingEquipment only handles the use-on-target Coalesced Mana interaction and vendor injection. This prevents double-processing conflicts.

## Usage

1. Obtain Coalesced Mana (Lesser: 42516, Greater: 42517, Aetheric: 42518) or an Academy/Pathwarden item.
2. Use Coalesced Mana on any equippable item (or vice versa).
3. Pass the Arcane Lore check (difficulty 1, cosmetic).
4. Item awakens with XP tracking, "Living" name, and a random profile.

### Academy Weapons (Auto-Awakened + Vendor Sales)

The following 26 Academy weapons auto-awaken to Tier 1 when picked up and are sold at T1 town vendors:
- **Melee:** Stick, Sword of Light, Hand Axe, Dagger, Short Sword, Club, Board with Nail, Broad Sword, Battle Axe, Quarter Staff, Spear, Mace, Long Sword, Morning Star, War Hammer, Longbow, Yumi, Tachi, Atlatl, Throwing Dart, Cestus, Knife, Spear (Throwing), Axe, Nekode, Dagger (Multi-Strike).
- **Missile:** Academy Atlatl, Shortbow, Light Crossbow.
- **Magic:** Academy Wand.

Sold at blacksmiths (melee), bowyers (missile), and archmages (wand).

### Pathwarden Armor (Auto-Awakened + Vendor Sales)

The following 16 Pathwarden items auto-awaken to Tier 1 when picked up and are sold at appropriate vendors:
- **Robes (Clothiers):** Pathwarden Robe (4 variants: Aluvian, Gharu'ndim, Sho, Viamontian)
- **Armor (Armorers/Blacksmiths):** Plate Hauberk, Scale Hauberk, Yoroi Hauberk, Diforsa Hauberk, Plate Leggings, Scale Leggings, Yoroi Leggings, Diforsa Leggings, Sollerets, Gauntlets, Helm
- **Trinket (Jewelers):** Pathwarden Trinket

### Dynamic Pricing

All vendor-injected Academy and Pathwarden items use LeyLineLedger's economy-based pricing:
- Base price: 1000 pyreals
- Multiplier formula: `baseMultiplier * (1 + log10(totalBankedPyreals / 100M))`
- Default base multiplier: 5.0x (configurable in LLL Settings.json)
- Clamped: 1x to 50x
- This drains pyreals from the economy as it grows — expensive when rich, affordable when poor.

## Dependencies

- **EmpyreanAlteration** — provides per-level combat-stat bonuses (spells, imbues, stats). LivingEquipment supplies the XP curve, max-level tiers, and naming; EmpyreanAlteration applies the actual bonuses each time the item levels up.
- **LeyLineLedger** (optional) — provides dynamic vendor pricing via economy multiplier. Without LLL, prices fall back to base (1000 pyreals).
- **QOL VendorLootRotation** — Academy/Pathwarden vendors also receive random rotating loot (weapons/armor appropriate to their type). LivingEquipment injects static Academy/Pathwarden items on top after rotation clears the default inventory.

## Configuration

See `Settings.json` for:
- Coalesced Mana WCIDs
- Max levels per tier
- XP profile definitions
- Loot drop chances
- Profile assignment weights
- `EnableVendorSales` — toggle vendor injection
- `AcademyWeaponVendorPrice` — base price (before LLL economy multiplier)
- `LivingItemUiEffects` — visual overlay (default: 20 = BoostHealth|BoostStamina = yellow/gold)
