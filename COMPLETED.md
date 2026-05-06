# Completed Features & Fixes

## 2026-05-05

### NPC Spawn Safety Margins (Swarmed)

**Problem:**
NPCs failing to spawn because coordinates were slightly off - spawning below the floor/ground plane where ACE rejects the position.

**Solution:**
Added +1.0 unit vertical safety margin to all Swarmed spawn systems:
- **DungeonPopulationManager.cs**: Increased from `terrainZ + 0.05f` to `terrainZ + 1.0f` (both primary and fallback positions)
- **BuddySpawns.cs**: Added `spawnPos.PositionZ += 1.0f` (previously no safety margin)
- **CallForHelp**: Added `creature.Location.PositionZ += 1.0f` for reinforcement spawns

**Implementation:**
Creatures now spawn 1.0 units higher than template position, allowing ACE's physics system to drop them to the proper ground surface. This is a defensive measure that works with ACE's existing physics rather than trying to perfectly calculate ground height.

**Result:**
NPCs that would fail to spawn due to being 0.1-0.5 units too low will now spawn slightly higher and fall to the correct surface, preventing spawn failures and "missing" creatures.

**Commits:**
- `221b1ea` - Increase spawn safety margin in Swarmed from 0.05f to 1.0f
- `6453966` - Fix fallback spawn position safety margin too (0.05f → 1.0f)
- `0170f0c` - Add spawn safety margin to BuddySpawns (+1.0f Z)
- `ec8fe20` - Add spawn safety margin to CallForHelp reinforcements (+1.0f Z)

---

### Auto-Salvage Imbue Bonus Fix (BetterSupportSkills)

**Problem:**
When auto-salvaging items on pickup, players weren't receiving bonus imbue salvage (e.g., tourmaline for bludgeon rending items). The material salvage was banked correctly but imbue bonuses were missing.

**Root Cause:**
`TryAutoSalvageItem()` (which handles items with MaterialType being auto-salvaged on pickup) was banking material salvage but never calling `TryGrantImbueSalvage()`.

**Solution:**
Added `TryGrantImbueSalvage(player, item)` call in `TryAutoSalvageItem()` after banking material salvage, before returning true.

**All Three Salvage Paths Now Work:**
1. **Auto-salvage (pickup)**: `TryAutoSalvageItem` → Bank material → `TryGrantImbueSalvage` ✓
2. **Manual salvage (kit)**: `DoSalvaging` → `PostDoSalvaging` → `TryGrantImbueSalvage` ✓  
3. **Salvage bag pickup**: `PreTryCreateInInventory` → `TryGrantImbueSalvage` ✓

**Example Results:**
- **Bludgeon Rending Sword (auto-salvaged)**: 50-150 steel (banked) + 50x Tourmaline (imbue bonus)
- **Fire Rending + Crit Strike Ring (auto-salvaged)**: 30-80 gold + 50x Red Garnet + 50x Black Opal (100 total imbue salvage)

**Commit:**
- `a14971e` - Fix auto-salvage imbue bonus (for real this time!)

---

## 2026-05-04

### Multi-Imbue System for Vendor Items (BetterLootControl)

**Feature:**
Vendor items can now spawn with multiple compatible imbues (ultra-rare), creating extremely powerful and valuable equipment.

**Rates:**
- 8% chance for 2nd compatible imbue
- 2% chance for 3rd compatible imbue

**Compatibility Rules:**
- Only one elemental rending (fire/cold/electric/acid)
- Only one physical rending (slash/pierce/bludgeon)
- All offensive and defense imbues can stack freely

**Pricing:**
Multi-imbue pricing is **exponential**: Each imbue = 5x multiplier, so:
- 2 imbues = 25x (5²)
- 3 imbues = 125x (5³)

Combined with awakening (8x) and tinkers (2^count), ultra-rare triple-imbued awakened 8-tinker items can reach **billions of pyreals**.

**Settings:**
- `VendorLootMultiImbue2Chance`: 0.08 (8%)
- `VendorLootMultiImbue3Chance`: 0.02 (2%)

**Commit:**
- `dfed17b` - Add multi-imbue system for vendor items

---

### Economy Integration & Pricing Overhaul (BetterLootControl)

**Changes:**
- **MinValue**: 500p (was 100p)
- **MaxValue**: 25,000p (was 10,000p)
- **LuxuryTax**: 25% (was 10%)

**Economy Integration:**
Added `GetLeyLineLedgerEconomyMultiplier()` that reflects into LeyLineLedger's `EconomyBalancer.GetVendorBuyPriceMultiplier()`.

**Formula:**
```
Base × Imbue(5^count) × Awaken(8x) × Tinker(2^count) × LuxuryTax(1.25x) × EconomyMult
```

**Settings:**
- `UseLeyLineLedgerEconomyBalancer`: true
- Toggle to enable/disable economy scaling

**Result:**
Vendor prices now scale dynamically with server wealth state, creating appropriate pyreal sinks when the economy is flush.

**Commits:**
- `5a5f0b4` - Increase vendor pricing and integrate with LeyLineLedger economy balancer
- `1f9dce9` - docs: Add pricing system documentation to BetterLootControl readme
- `a9df080` - docs: Add economy pricing details to vendor rotation section

---

### Complete Vendor Specialization System (BetterLootControl)

**Overview:**
Implemented specialized vendor loot with progressive enhancement rates across 6 vendor types and 340+ vendors.

**Vendor Types & Rates:**

| Type | Vendors | Imbue | Awaken | Tinker |
|------|---------|-------|--------|--------|
| **Jewelers** | 20 | 70% | 35% | 60% |
| **Archmages** | 31 | 65% | 30% | 55% |
| **Bowyers** | 53 | 65% | 30% | 55% |
| **Armorers/Blacksmiths** | 100+ | 60% | 25% | 50% |
| **Tailors** | 28 | 55% | 20% | 45% |
| **Shopkeepers/Grocers** | 115+ | 50% | 18% | 40% |

**Features:**
- Visual polish with color-coded UiEffects
- IconUnderlayId background textures for imbues
- Weapon imbues work on all equipped items (jewelry included)
- Overtinked custom imbue support (25% chance for Hemorrhage/Cleaving/NetherRending/Shatter)
- Manual salvage imbue bonus fix (50 units per imbue type)

**Commits:**
Multiple commits implementing each vendor type specialization, visual system, Overtinked integration, etc. (see git log for full history)

---

## Earlier Features

(Previous completion records would go here...)
