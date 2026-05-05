# Task Plan: Multi-Issue Bugfixes & Features

## Completed Fixes (Deployed to Test)

1. ✓ **/claim reward salvage quantity** - WorldEvents/EventLootDelivery.cs - Fixed stack size check
2. ✓ **Artificer wisp scaling** - BetterSupportSkills/Skills/SummoningClasses.cs - Now uses ItemEnchantment skill, capped at tier 8
3. ✓ **Artificer wisp procs** - Removed Drain, kept Imperil only
4. ✓ **CreatureEx loot UiEffects** - Swarmed/Features/SpecialCreatureLoot.cs - Added visual overlay for all imbue types
5. ✓ **CreatureEx salvage bags** - Fixed MaxStackSize/StackSize to 100
6. ✓ **Imbue salvage on auto-salvage** - BetterSupportSkills/Skills/SalvageAutoDeposit.cs - Grants 50 units per ImbuedEffect
7. ✓ **VendorLootRotation major enhancements** - MOVED TO BetterLootControl:
   - Strict vendor type enforcement (Jewelers = jewelry/gems, Armorers = armor/weapons, Mages = casters/jewelry)
   - All equipment items get random spells (1-2 per item, more on higher tiers)
   - 40% imbue chance (up from 15%)
   - Awakening system for tier 6+ items (15% chance, 8x value multiplier)
   - Premium pricing (5x for imbued, 8x for awakened, stacks)
   - 25% chance for Spellsiphon (WCID 850200) on Jewelers/Mages
   - Pre-loaded spells on Spellsiphons (1-3 spells)
   - UiEffects: Magical (blue), Acid (green glow), BoostHealth|BoostStamina (red outline)

## Completed 2026-05-05 - VendorLootRotation

✅ **CRITICAL FIX**: BetterLootControl was using old IHarmonyMod pattern instead of BasicMod
   - `Start()` and `OnStartSuccess()` were never called
   - Settings were always null
   - VendorLootRotation never initialized
   - Fixed: Convert to BasicMod pattern (like Lockboxes, QOL, etc.)
   - Added CurrentSettings static field for Harmony patches

✅ **VendorLootRotation completely removed from QOL**
   - Deleted QOL/VendorLootRotation.cs
   - Removed all VendorLoot* settings from QOL/Settings.cs
   - BetterLootControl is now single source of truth for all vendor loot

✅ **Visual polish: UiEffects on Spellsiphons/Mana Lattices**
   - Plain Mana Lattice (no spells) - No blue glow
   - Magical Spellsiphon (with spells) - Blue glow ✨
   - Magical Mana Lattice (with spells) - Blue glow ✨
   - Skip magical items if loot generation produced zero spells

✅ **Working Features**
   - WCID 1042 (Tariqana) classified as Jeweler
   - 8-20 magical Spellsiphons with pre-loaded spells
   - 8-20 magical Mana Lattices with pre-loaded spells
   - Items generated exactly like monster loot (respects town tier)
   - Proper SoldTimestamp on UniqueItemsForSale items
   - SpellSiphon vendor integration disabled (no conflicts)

## Backlog (High Priority)

1. **Salvage disappearing in chest** - When loot generates in a chest and player closes without looting, items disappear instead of being auto-salvaged. Need to find where container close happens in ACE and add auto-salvage logic. Should NOT apply to house storage.

2. **Unenchantable on cloaks** - Cloaks show "Properties: Unenchantable" in client. Need to find what property causes this and add ability to globally add/remove it. (中等 - medium priority but user asked to track)

## Build Status
- ✓ BetterSupportSkills - Build succeeded
- ✓ Swarmed - Build succeeded  
- ✓ WorldEvents - Build succeeded
- All deployed to test server (C:\ACE\Mods\)