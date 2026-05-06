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

#### Jeweler Specialization
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

### Configurable Settings

All values in `Settings.json`:

```json
{
  "VendorLootJewelerImbueChance": 0.70,      // 70% imbue rate
  "VendorLootJewelerAwakenChance": 0.35,     // 35% awaken rate  
  "VendorLootJewelerTinkerChance": 0.60,     // 60% tinker rate
  "VendorLootJewelerMinTinkers": 1,          // Min tinkers
  "VendorLootJewelerMaxTinkers": 3,          // Max tinkers
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

### Known Jeweler WCIDs

All town jewelers are classified for premium treatment:
```
411, 655, 665, 674, 698, 716, 736, 801, 817, 818, 839, 868, 
980, 991, 1042, 1055, 1081, 1151, 1152, 1820
```
