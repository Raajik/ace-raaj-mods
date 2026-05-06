# BetterLootControl

Improves chest and vendor loot quality and variety.

## Features

### Jewelry Imbue Mechanics
**Weapon imbues now work on jewelry!** Equipping jewelry with offensive imbues grants their bonuses:
- **CriticalStrike** - Increases critical hit chance (works on jewelry, armor, weapons)
- **CripplingBlow** - Increases critical damage multiplier (works on jewelry, armor, weapons)
- **ArmorRending** - Reduces target armor (works on jewelry, armor, weapons)
- **Defense imbues** (Melee/Missile/MagicDefense) - Already worked on all equipment (unchanged)

This allows jewelers to sell powerful jewelry with weapon imbues that actually provide combat bonuses when worn.

### Vendor Loot Rotation

Vendors automatically rotate their equipment inventory on a schedule.

#### Vendor Specializations

##### Jeweler Specialization
Jewelers receive premium treatment with high-quality magical items:

**Item Generation:**
- 15-30 jewelry pieces (rings, bracelets, necklaces) with spells
- 15-30 gems (all types) with spells
- 1 plain Spellsiphon (extraction tool, no spells)
- 1 plain Mana Lattice (reusable gem, no spells)
- 8-20 magical Spellsiphons (pre-loaded with spells, blue glow ✨)
- 8-20 magical Mana Lattices (pre-loaded with spells, blue glow ✨)

**Enhancement Rates (Jewelry/Gems):**
- 70% imbue chance (vs 40% for other vendors)
- 35% awaken chance at tier 6+ (vs 15% for other vendors)
- 60% chance for 1-3 tinkers

**Visual Indicators:**
- Plain items (no spells) = No glow
- Magical items (with spells) = Blue glow ✨
- Imbued items = Color-coded overlays:
  - 🟢 Green = Acid Rending, Armor Rending, Critical Strike, Crippling Blow
  - 🔴 Red = Fire Rending
  - ⚪ White = Cold Rending, Physical Rendings (Pierce/Slash/Bludgeon)
  - 🟣 Purple = Electric Rending, Defense imbues (Melee/Missile/Magic Defense)
- Awakened items = Red outline + "Awakened" prefix
- Tinkered items = "Fine/Superior/Masterwork" prefix (3+/5+/8+ tinkers)

**Premium Pricing:**
Price multipliers stack exponentially:
- Base item: 1,000p
- +Imbue (5x): 5,000p
- +Awakened (8x): 40,000p
- +3 Tinkers (2x per tinker = 8x total): 320,000p

Formula: `Base × Imbue × Awaken × (Tinker^count)`

##### Archmage Specialization
Archmages specialize in magical equipment for casters:

**Item Generation:**
- 15-30 caster weapons (wands, orbs, magical staves) with spells
- 8-20 magical robes (vestments, kaftans) with spells
- High-quality magical items via TreasureItemCategory.MagicItem

**Enhancement Rates (Caster Weapons/Robes):**
- 65% imbue chance (vs 40% for other vendors)
- 30% awaken chance at tier 6+ (vs 15% for other vendors)
- 55% chance for 1-3 tinkers

**Visual Indicators:**
- Same as jeweler items (blue glow for spells, imbue overlays, etc.)
- Robes filtered by name ("robe", "vestment", "kaftan")

**Premium Pricing:**
- Same multiplier formula as jewelers
- Masterwork awakened imbued robes = 6-7 figures!

### Configurable Settings

All values in `Settings.json`:

```json
{
  "VendorLootJewelerImbueChance": 0.70,      // 70% imbue rate
  "VendorLootJewelerAwakenChance": 0.35,     // 35% awaken rate  
  "VendorLootJewelerTinkerChance": 0.60,     // 60% tinker rate
  "VendorLootJewelerMinTinkers": 1,
  "VendorLootJewelerMaxTinkers": 3,
  "VendorLootMageImbueChance": 0.65,         // 65% imbue rate
  "VendorLootMageAwakenChance": 0.30,        // 30% awaken rate
  "VendorLootMageTinkerChance": 0.55,        // 55% tinker rate
  "VendorLootMageMinTinkers": 1,
  "VendorLootMageMaxTinkers": 3,
  "VendorLootTinkerValueMultiplier": 2.0,    // 2x per tinker
  "VendorLootImbueChance": 0.40,             // Other vendors
  "VendorLootAwakenChance": 0.15,            // Other vendors
  "VendorLootRotationMinutes": 20,
  "VendorLootCooldownMinutes": 45
}
```

## Technical Details

### Harmony Patches

**JewelryImbuePatches.cs:**
- `GetWeaponCriticalChance` - Adds jewelry CriticalStrike bonus
- `GetWeaponMagicCritFrequency` - Adds jewelry CriticalStrike for magic
- `GetWeaponCritDamageMod` - Adds jewelry CripplingBlow bonus
- `DamageEvent.DoCalculateDamage` - Temporarily applies ArmorRending from jewelry

**VendorLootRotation.cs:**
- `OnVendorApproachPrefix` - Triggers rotation on vendor approach
- `GenerateJewelryBatch` / `GenerateGemBatch` - Direct jewelry/gem creation for jewelers

### Known Vendor WCIDs

**Jewelers (20 total):**
```
411, 655, 665, 674, 698, 716, 736, 801, 817, 818, 839, 868, 
980, 991, 1042, 1055, 1081, 1151, 1152, 1820
```

**Archmages (31 total):**
```
692, 795, 809, 831, 856, 857, 984, 1048, 1369, 1370, 1371, 1812, 
1824, 2220, 2246, 2247, 2248, 2249, 2250, 2290, 2302, 2303, 2304, 
2305, 2306, 2307, 2314, 2498, 2537, 2540
```
