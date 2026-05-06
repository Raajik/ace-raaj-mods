# Completed Features & Fixes

## 2026-05-05 (Evening Session)

### Wisp Spell Components + Cooking Regen Fixes

**Issue 1: Wisps Checking for Spell Components**
- Wisps calling `TryCastSpellWithFallback` → checks `HasComponentsForSpell` on owner
- Pets shouldn't need reagents in owner's inventory

**Fix:**
- Made `BssAutoCaster.CastSpellDirect()` public (was private)
- Wisps now call `CastSpellDirect` directly → bypasses component/mana checks
- Comment clarifies this is for pet auto-casts that don't need reagents

**Issue 2: Cooking Regen Nerfed (1%/2% instead of 5%/10%)**
- Default values were `0.01`/`0.02` but doc strings claimed `5%`/`10%`
- User reported regen "seems to have gotten nerfed"
- Logs showed: `+2 Health`, `+3 Stamina`, `+3 Mana` per tick (1% of max)

**Fix:**
- `CookingRegenPercentPerTickTrained`: `0.01` → `0.05` (5% per tick)
- `CookingRegenPercentPerTickSpecialized`: `0.02` → `0.10` (10% per tick)
- Updated doc strings to clarify tick scaling with heartbeat interval
- Updated test `Settings.json` to match new defaults

**Result:**
- **Trained:** 5% per 5sec when healthy (1%/sec), 5% per 1sec when low (5%/sec)
- **Specialized:** 10% per 5sec when healthy (2%/sec), 10% per 1sec when low (10%/sec)
- At your max vitals (~250 Health): **+12 Health/tick** when healthy, **+12 Health/sec** when low

**Commit:** `b3870ff`

---

### Artificer Wisp Combat Overhaul

**Problem:**
- Wisps doing **negative damage** (healing enemies instead of hurting them)
- Combat log: "Your Muckphage's Wisp has hit Tumerok Gladiator for -22 Fire damage"
- Weenie templates 49185-49211 incomplete (no spell books, missing combat floats)

**Root Cause:**
- Custom wisp weenies are empty shells — vanilla wisps have 30+ combat properties, customs have only 2
- Old Imperil/drain melee proc tried to use broken combat math

**Solution:**
- **Replaced entire combat system:** Wisps now cast **elemental War Magic arcs** at all enemies within 10 yards
- Tier = `ItemEnchantment / 50` (same formula as Battlemage)
- Random elemental type per proc (Acid/Fire/Cold/Lightning arcs) for visual variety
- Uses owner's mana with **0% cost** (free casting)
- Removed recursion guard, cleave damage, Imperil spell cache (no longer needed)

**Bonus Fix — HybridClasses Arc Spell IDs:**

All arc spell IDs were **completely wrong** (verified against database). Fixed:

| Damage Type | OLD (Wrong) | NEW (Correct) | Spells |
|-------------|-------------|---------------|--------|
| Acid | 2720-2726 | **2711-2717, 4421** | Acid Arc I-VII, Incantation |
| Fire | 2748-2754 | **2739-2745, 4423** | Flame Arc I-VII, Incantation |
| Cold | 2734-2740 | **2725-2731, 4425** | Frost Arc I-VII, Incantation |
| Electric | 2741-2747 | **2732-2738, 4426** | Lightning Arc I-VII, Incantation |
| Bludgeon | 2755-2761 | **2746-2752, 4427** | Shock Arc I-VII, Incantation |
| Slash | 2762-2768 | **2753-2759, 4422** | Blade Arc I-VII, Incantation |
| Pierce | 2727-2733 | **2718-2724, 4424** | Force Arc I-VII, Incantation |

**Result:**
- Artificer wisps now functional combat pets (cast real damage spells)
- **Battlemage** and **Death Knight** arc casts also fixed (were using wrong spell IDs)
- Simpler implementation (no weenie SQL needed, just spell casting)

**Commit:** `7cc1dfc`

---

### Loremaster Quest Completion XP Message Fix

**Problem:**
- Quest completion bonus messages showed 10x too much XP
- Example: "Completion bonus: +445,531 XP" but player only received 44,553 XP
- User expected "good 10% to next level xp bonus" but got 1%
- Two separate messages spammed chat:
  - `[Loremaster] +8 QP from fachubbellig`
  - `[Loremaster] Completion bonus: +55,012 XP.`

**Root Cause:**
- `GrantCompletionBonuses` calculated full completion bonus (e.g., 10% of next level = 445k)
- `GrantQuestXpWithBaseRetention` then applied `BonusXpBaseRetentionPercent` (default **10%**) → 44k actual grant
- But message displayed the **pre-retention** amount (445k) instead of **post-retention** (44k)
- QP and XP messages sent separately

**Solution:**
- Calculate `retained = amount * baseRetention` before displaying message
- Pass `retained` to `EstimateCharacterXpAfterAchievementChain` instead of `amount`
- Change `GrantCompletionBonuses` to return XP amount instead of sending message
- Combine QP and XP into single message: `+8 QP from fachubbellig (bonus: +55,012 XP)`

**Result:**
- Quest completion messages now accurate: shows actual granted XP
- Single message instead of two (reduces spam)
- `BonusXpBaseRetentionPercent` = 10 means 10% of calculated reward (not 100%)
- Setting doc already correct: "100 = full reward amount"

**Commits:** `e001efc`, `f3941c9`

---

### Artificer Wisp Scaling & Spell Fixes

**Problem:**
- Artificer wisps spawning at random levels (50-200) instead of scaling with ItemEnchantment skill
- Casting completely wrong spells: Foon-Ki's Glacial Floe, Os' Wall, Hammering Crawler, Curse of Black Fire, Evaporate All Magic instead of Imperil Other

**Root Cause:**
- Wisp WCIDs organized by element (fire/cold/electric/acid), not tier → random levels within same tier
- Imperil spell cache had wrong IDs for tiers 1-6 (pointing to other spell lines)
- Drain Health spell IDs also incorrect

**Solution:**
- Created `ArtificerWispsByLevel` array organized by consistent levels per tier
- Fixed Imperil spell IDs: 25, 1323-1327, 2210-2211 (was using 1843-1848 which are unrelated spells)
- Fixed Drain Health spell IDs: 1237-1242

**Result:**
- Wisps spawn at consistent level per tier (tier = ItemEnchantment/50)
- Only cast Imperil Other I-VIII as intended
- Scaling matches Druid/Necro/etc pattern

**Commits:** `4bb4a83`, `efbad2c`

---

### Death Knight Nether Spell Fixes

**Problem:**
- Death Knights casting wrong tier 6+ spells regardless of Void Magic skill level
- Casting Festering Curse (completely wrong spell line), wrong Arc tiers, Nether Bolts

**Root Cause:**
- Nether Streak array: had Arc/Bolt spells instead of Streak spells
- Nether Arc array: had Festering Curse spells instead of Arc spells
- Only 1 correct ID out of 16 total!

**Solution:**
- Fixed Nether Streak I-VIII: 5357-5360, 5345-5348
- Fixed Nether Arc I-VIII: 5369, 5362-5368

**Result:**
- Proper Nether Streak/Arc progression scaling with Void Magic skill
- Tier = VoidMagic Base / 150, capped at MaxVoidSpellTier (default 2)

**Commit:** `8ef6331`

---

### NPC Spawn Safety Margins

**Problem:**
- NPCs failing to spawn because template coordinates slightly below floor
- "Missing" creatures in dungeons

**Solution:**
- Added +1.0 unit vertical safety margin to all Swarmed spawn systems:
  - DungeonPopulationManager (primary + fallback positions)
  - BuddySpawns
  - CallForHelp reinforcements
- Increased from 0.05f → 1.0f (20x larger safety margin)

**Result:**
- Creatures spawn higher and fall to solid ground via ACE physics
- Prevents spawn failures from coordinate precision issues

**Commits:** `221b1ea`, `6453966`, `0170f0c`, `ec8fe20`

---

### Auto-Salvage Imbue Bonus Fix

**Problem:**
- Auto-salvaging imbued items on pickup didn't grant bonus imbue salvage
- Expected tourmaline from bludgeon rending items but received nothing

**Root Cause:**
- `TryAutoSalvageItem()` banked material salvage but never called `TryGrantImbueSalvage()`

**Solution:**
- Added `TryGrantImbueSalvage(player, item)` call after banking material salvage

**Result:**
- All three salvage paths now grant imbue bonuses:
  - Auto-salvage (pickup) ✓
  - Manual salvage (kit) ✓
  - Salvage bag pickup ✓

**Commit:** `a14971e`

---

### Overtinked Custom Imbues in Monster Loot

**Problem:**
- Overtinked custom imbues (Hemorrhage, Cleaving, NetherRending, Shatter) only in vendor loot
- Monster drops had standard imbues only

**Solution:**
- Added `TryApplyOvertinkedImbue()` to `LootRoller.ApplyGearEnhancements()`
- 25% chance on weapons and jewelry
- Reflection bridge to `Overtinked.OvertinkedImbueStore.Add()`

**Result:**
- Both vendor AND monster loot now have 25% chance for custom imbues

**Commit:** `70433e1`

---

### GlobalKeyDrops Null Crash Fix

**Problem:**
- Server crashed with NullReferenceException during corpse loot generation

**Root Cause:**
- `GlobalKeyDrops.PostGenerateTreasure` accessed `PatchClass.Settings` without null check

**Solution:**
- Added null check before accessing Settings

**Commit:** `c8f85bc`

---

### AutoLoot Currency Profile Updates

**Problem:**
- Skeleton keys (SIK, SSK, MFK, LEG) and custom Coalesced Mana not auto-looting
- Items configured in Settings but not in Currency.utl profile

**Solution:**
- Added two new sections to Currency.utl:
  - Skeleton Keys: 6876, 24477, 38456, 48746
  - Coalesced Mana: 42516, 42517, 42518

**Result:**
- All skeleton keys and custom Coalesced Mana auto-loot with default Currency profile

**Commit:** `8f5c7e5`

---

### Lockpick Auto-Banking from Corpses

**Problem:**
- Players with Lockpick Master achievement (10+ unlocks) not getting lockpicks banked from corpses
- Only worked from chests, not corpse loot

**Root Cause:**
- Lockpick banking only in Pass 1 (profile-based loot)
- Skeleton keys have dedicated Pass 5 for unconditional banking
- Lockpicks needed equivalent pass

**Solution:**
- Added Pass 6: Lockpick banking after Pass 5
- Mirrors skeleton key banking logic
- Banks 10% of lockpick structure to PropertyInt64 40130
- Destroys lockpick after banking

**Processing Order:**
1. Pass 1: .utl profile matches
2. Pass 2: (removed)
3. Pass 3: Unknown scrolls
4. Pass 4: Level 8 components
5. Pass 5: Skeleton keys
6. Pass 6: Lockpicks (NEW)

**Result:**
- Lockpick Master achievement holders auto-bank lockpicks from all corpse loot

**Commit:** `131d229`

---

## 2026-05-05 (Morning Session)

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
