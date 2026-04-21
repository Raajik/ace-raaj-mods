# BetterChestLoot Mod Plan

## Overview
BetterChestLoot is an ACEmulator mod designed to make chests worth opening in Asheron's Call by adding guaranteed desirable items alongside normal loot generation.

## Design Philosophy
Instead of guaranteeing one of each item type (which would become too common), the mod will guarantee 1-4 items from a pool of desirable items, with chances configured to make multiple bonuses rare but possible.

## Guaranteed Item Pool
The mod will add items from this pool to chest loot:
- Trade Notes (configurable amount)
- Full bags of salvage (tier-appropriate)
- Stamina/mana healing kits (tier-appropriate)
- Occasional rare items (configurable rarity tiers)

## Configuration Options
- `Enabled` (bool): Toggle mod on/off
- `TradeNoteAmount` (int): Base amount of trade notes to potentially add
- `MaxGuaranteedItems` (int): Maximum number of guaranteed items to add (1-4)
- `TradeNoteChance` (float): Chance to add trade notes (0-1)
- `SalvageBagChance` (float): Chance to add salvage bag (0-1)
- `HealingKitChance` (float): Chance to add healing kit (0-1)
- `RareItemChance` (float): Chance for rare item (0-1)
- `MinChestTier` (int): Minimum chest tier to affect (default: 1)
- `MaxChestTier` (int): Maximum chest tier to affect (default: 8)
- `EnableDebugLogging` (bool): For troubleshooting

## Implementation Approach
1. Hook into chest loot generation via Harmony patch
2. For each chest opened, determine number of guaranteed items to add (1-4)
3. Randomly select from the guaranteed item pool based on configured chances
4. Add selected items to the chest loot before player receives it
5. Respect chest tier for appropriate item levels (salvage type, healing kit quality)
6. Allow configuration via Settings.json file

## Integration Points
Primary target: Chest loot generation method (to be located in base game)
Alternative: Patch Chest.Unlock or Chest.Reset methods if needed

## Relationship to Other Mods
Designed to work alongside:
- AutoLoot (for auto-looting the enhanced chest contents)
- EmpyreanAlteration (for additional loot modifications)
- Overtinked/Swarmed/QOL mods (no conflicts expected)

## Development Phases
1. Locate chest loot generation method in base game
2. Create mod folder structure with Settings.cs and PatchClass.cs
3. Implement configuration system
4. Create Harmony postfix for chest loot enhancement
5. Add logic for selecting and adding guaranteed items
6. Test with various chest types and tiers
7. Refine based on testing feedback

## Next Immediate Steps
- Locate the exact chest loot generation method in ACEmulator base code
- Begin implementing the Settings.cs file