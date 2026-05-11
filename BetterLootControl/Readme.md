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

### Imbue-Spell Coupling
Imbued items are **always magical** — if a gear item receives an imbue (Overtinked custom or standard) but has no spells, 1-3 random loot spells are auto-added. This ensures no non-magical imbued items exist in loot.

### Imbue Tier Rules (Windblown)
When an item rolls multiple imbues, compatibility is enforced by tier (at most **one pick per tier**):
- **Tier 1 (Rending)**: **one** from the unified rending tier (all elemental rends, all physical rends, and Nether rending)
- **Tier 2 (Proc)**: **one** from `ArmorRending` / `CriticalStrike` / `CripplingBlow`
- **Tier 3 (Custom)**: **one** from custom imbues like Hemorrhage / Shatter / Cleave (as defined by Overtinked)

### Vendor Loot Rotation

Only **explicitly categorized equipment vendors** are rotated: jewelers, armorers/blacksmiths, archmages, bowyers, and tailors. General shopkeepers, grocers, barkeeps, peddlers, and skill-puzzle vendors are excluded from rotation.

Vendors automatically rotate their equipment inventory on a schedule.

#### Dynamic Economy-Linked Pricing

**Base Pricing (Increased from Vanilla):**
- MinValue: **500 pyreals** (was 100)
- MaxValue: **25,000 pyreals** (was 10,000)
- Luxury Tax: **25% base markup** (was 10%)

**Economy Integration:**
When `UseLeyLineLedgerEconomyBalancer: true` (default), vendor prices scale dynamically:
- Integrates with **LeyLineLedger's EconomyBalancer** system
- Prices increase as server wealth grows (automatic inflation protection)
- Based on total banked currency across all players
- Uses reflection to call `EconomyBalancer.GetVendorBuyPriceMultiplier()`
- Gracefully falls back to 1.0x if LeyLineLedger not loaded

**Final Price Formula:**
```
Base × Imbue(5x) × Awaken(8x) × Tinker(2^count) × LuxuryTax(1.25x) × EconomyMult
```

**Example (Awakened Imbued Sword, 3 Tinkers, 1.5x Economy):**
1. Base value: 10,000p
2. × Imbue: 50,000p
3. × Awaken: 400,000p
4. × 3 Tinkers (8x): 3,200,000p
5. × Luxury Tax: 4,000,000p
6. × Economy: **6,000,000 pyreals!**

Prices now properly reflect item power AND server economic health!

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

##### Bowyer/Fletcher Specialization
Bowyers specialize in ranged combat equipment:

**Item Generation:**
- 15-30 missile weapons (bows, crossbows, thrown weapons) with spells
- 8-20 ammunition stacks (arrows, bolts, atlatl darts)
- High-quality magical items via TreasureItemCategory.MagicItem for weapons
- Mundane ammunition with 100-250 per stack

**Enhancement Rates (Missile Weapons):**
- 65% imbue chance (vs 40% for other vendors)
- 30% awaken chance at tier 6+ (vs 15% for other vendors)
- 55% chance for 1-3 tinkers

**Visual Indicators:**
- Same as other specialized vendors (blue glow for spells, imbue overlays, etc.)
- Ammunition filtered for stackable missile weapons

**Premium Pricing:**
- Same multiplier formula as jewelers and archmages
- Masterwork awakened imbued bows = 6-7 figures!

##### Armorer/Blacksmith/Weaponsmith Specialization
Armorers specialize in melee combat equipment:

**Item Generation:**
- 15-30 melee weapons (swords, axes, maces, daggers, etc.) with spells
- 15-30 armor pieces (all slots) with spells
- High-quality magical items via TreasureItemCategory.MagicItem

**Enhancement Rates (Melee Weapons/Armor):**
- 60% imbue chance (vs 40% for other vendors)
- 25% awaken chance at tier 6+ (vs 15% for other vendors)
- 50% chance for 1-3 tinkers

**Visual Indicators:**
- Same as other specialized vendors (blue glow for spells, imbue overlays, etc.)
- Overtinked custom imbues can roll on weapons

**Premium Pricing:**
- Same multiplier formula as other vendors
- Masterwork awakened imbued plate = 6-7 figures!

##### Tailor Specialization
Tailors specialize in clothing and robes:

**Item Generation:**
- 15-30 clothing items (shirts, pants, boots, gloves, etc.) with spells
- 8-20 robes/vestments/kaftans with spells
- High-quality magical items via TreasureItemCategory.MagicItem
- Robes properly detected (ItemType.Armor filter, not Clothing)

**Enhancement Rates (Clothing/Robes):**
- 55% imbue chance (vs 40% for other vendors)
- 20% awaken chance at tier 6+ (vs 15% for other vendors)
- 45% chance for 1-3 tinkers

**Visual Indicators:**
- Same as other specialized vendors (blue glow for spells, imbue overlays, etc.)
- Defense imbues common on armor-slot robes

**Premium Pricing:**
- Same multiplier formula as other vendors
- Masterwork awakened imbued robes = 6-7 figures!

### Configurable Settings

Loot pool ownership:
- `DefaultLootConfig.cs` = compiled baseline / immutable fallback
- `LootConfig.json` = runtime override at `Mods/BetterLootControl/LootConfig.json`
- Loremaster repeat loot reads the same shared `LootConfig.json`

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
  "VendorLootBowyerImbueChance": 0.65,       // 65% imbue rate
  "VendorLootBowyerAwakenChance": 0.30,      // 30% awaken rate
  "VendorLootBowyerTinkerChance": 0.55,      // 55% tinker rate
  "VendorLootBowyerMinTinkers": 1,
  "VendorLootBowyerMaxTinkers": 3,
  "VendorLootArmorerImbueChance": 0.60,      // 60% imbue rate
  "VendorLootArmorerAwakenChance": 0.25,     // 25% awaken rate
  "VendorLootArmorerTinkerChance": 0.50,     // 50% tinker rate
  "VendorLootArmorerMinTinkers": 1,
  "VendorLootArmorerMaxTinkers": 3,
  "VendorLootTailorImbueChance": 0.55,       // 55% imbue rate
  "VendorLootTailorAwakenChance": 0.20,      // 20% awaken rate
  "VendorLootTailorTinkerChance": 0.45,      // 45% tinker rate
  "VendorLootTailorMinTinkers": 1,
  "VendorLootTailorMaxTinkers": 3,
  "VendorLootTinkerValueMultiplier": 2.0,    // 2x per tinker
  "VendorLootImbueChance": 0.40,             // Other vendors
  "VendorLootAwakenChance": 0.15,            // Other vendors
  "VendorLootRotationMinutes": 20,
  "VendorLootCooldownMinutes": 45
}
```

## Technical Details

### Harmony Patches

**PatchClass.cs (auto-discovered via `[HarmonyPatch]` class attribute):**
- `PostSelectAProfile` — Adds guaranteed loot items to chests after loot generation
- `PrefixChestReset` — Clears "already filled" tracking on chest reset
- `PostChestReset` — Sets random reset interval on chests
- `PostChestClose` — Sets random reset interval when player closes chest

**PatchClass.cs (manual `Harmony.Patch()` in `OnStartSuccess`):**
- `PreGameEventApproachVendor` — Triggers vendor loot rotation on player approach
  - Targets: `GameEventApproachVendor(Session, Vendor, uint)` constructor
  - Priority: `[HarmonyPriority(Priority.First)]` — runs BEFORE LLL's prefix
  - Calls `VendorLootRotation.OnVendorApproachPrefix()` to rotate stock
  - Returns `true` so LLL and original constructor still run

**Why manual instead of auto-discovered:** New `[HarmonyPrefix]` + `[HarmonyPatch]` methods added after the class was originally compiled are silently ignored by `Harmony.PatchAllUncategorized()`. Manual `Harmony.Patch()` bypasses this cache/bug.

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

**Bowyers/Fletchers (53 total):**
```
403, 651, 662, 671, 713, 733, 798, 814, 836, 864, 977, 988, 1039,
1052, 1378, 1379, 1380, 1817, 1828, 2227, 2254, 2295, 2316, 2533,
4439, 4542, 4550, 4563, 4680, 4691, 4697, 5423, 5649, 6857, 8227,
8435, 8494, 9023, 9207, 9416, 9677, 11378, 11403, 20924, 22723,
24218, 24591, 27247, 30031, 30066, 40949, 40961, 40973, 40984
```

**Armorers/Blacksmiths/Weaponsmiths (100+ total):**
```
12720, 1078, 31956, 32055, 11376, 4679, 4690, 28533, 1372, 1373, 1374, 695, 400,
6855, 9205, 9212, 6862, 2251, 2261, 5833, 401, 402, 1375, 1376, 1377, 9020,
11383, 11382, 24589, 24597, 678, 677, 2499, 9679, 2226, 649, 650, 30048, 2315,
8496, 730, 739, 5426, 5428, 11389, 858, 862, 863, 871, 712, 27246, 4695, 4704,
8433, 8440, 4540, 9415, 4546, 4437, 4438, 1146, 802, 4549, 5648, 22722, 1049,
1059, 11394, 661, 668, 975, 976, 30040, 2293, 2294, 835, 30065, 1354, 11401,
5436, 4562, 1815, 1816, 967, 972, 1825, 1835, 30052, 2541, 24220, 1393, 1394,
1395, 8226, 812, 813, 5641, 1038, 987
```

**Tailors (28 total):**
```
4686, 703, 2260, 2233, 658, 1080, 738, 870, 719, 4703, 4445, 1145, 4556,
2502, 1058, 11399, 667, 983, 30034, 2301, 843, 30069, 1823, 1834, 821,
822, 1047, 994
```
