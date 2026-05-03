# Task Plan: AutoLoot + Skeleton Key Overhaul

## Goal
Refactor AutoLoot so corpse rules apply at creation (not open), chest rules apply on close with full corpse parity; make skeleton keys auto-bank unconditionally for currency auto-looters; update key in-game descriptions; replace vanilla key drops in BLC with tiered custom drop rates.

## Current Phase
Phase 5: Build & Deploy (complete)

## Phases

### Phase 1: Discovery & Requirements
- [x] Read AutoLoot current architecture (Autoloot.cs, PatchClass.Harmony.cs)
- [x] Read BLC loot tables to locate key drop entries
- [x] Read ACE database for key weenie properties (SIK 6876, SSK 24477, MFK 38456, Legendary 48746)
- [x] Document findings
- **Status:** complete

### Phase 2: AutoLoot Architecture Refactor
- [x] Remove corpse processing from `OnContainerOpened`
- [x] Unify chest close to use `ProcessContainerLoot` (full corpse parity) + salvage sweep
- [x] Exclude house storage chests from chest close processing
- [x] Update `EnableChestAutoLoot` semantics to control chest close
- **Status:** complete

### Phase 3: Key Auto-Banking Unconditional
- [x] Tie key banking to `DepositLootedCurrencyToBank` instead of achievement unlock
- [x] Keep key unlock threshold for messaging/notification purposes only
- [x] Update `PreConsumeUnlockerForKeys` to also be unconditional
- **Status:** complete

### Phase 4: Key Descriptions & SQL
- [x] Update `weenie_properties_string` (Name, Use, ShortDesc, LongDesc) for all 4 keys
- [x] Reflect actual behavior: banked key consumption, difficulty ranges
- **Status:** complete

### Phase 5: BLC Drop Rate Changes
- [x] Remove vanilla key drops from BLC tables (removed from DefaultLootConfig common/uncommon/rare)
- [x] Add SIK/SSK as 1% drops across all tiers via GlobalKeyDrops
- [x] Add MFK/Legendary as 1% drops on tier 7-8 via GlobalKeyDrops
- [x] Apply SQL to `ace_world`
- **Status:** complete

### Phase 6: Build & Deploy
- [x] Build AutoLoot
- [x] Build BLC
- [x] Deploy to test
- [ ] Verify in game
- **Status:** in_progress

## Key Questions
1. ✅ What are the exact door difficulty ranges for each key type? SIK doors ≤1000, SSK chests ≤1000, MFK doors ≤5000, LEG chests ≤5000
2. ✅ Where in BLC are vanilla key drop entries defined? DefaultLootConfig.cs common/uncommon/rare
3. ✅ Do house chests currently get processed by AutoLoot immediate phase? Yes — fixed by adding HouseOwner exclusion
4. ✅ Should `EnableChestAutoLoot` rename or just change where it gates? Kept same name, gated in `PreContainerClose`

## Decisions Made
| Decision | Rationale |
|----------|-----------|
| Use `ProcessContainerLoot` for chest close | Gives exact parity with corpse creation rules |
| House chests excluded entirely | Player storage should never be auto-looted |
| Key banking unconditional for currency auto-looters | User intent: "anyone that autoloots currency" |
| GlobalKeyDrops separate from DefaultLootConfig | User asked for global per-kill roll like Coalesced Mana |
| 1% drop rate for all key tiers | User said "we'll see if they're too common or rare after a few days" |

## Errors Encountered
| Error | Attempt | Resolution |
|-------|---------|------------|
| mysql not in PATH | 1 | Used full path `C:/Program Files/MySQL/MySQL Server 8.0/bin/mysql.exe` |
| edit failed on large block removal | 1 | Split into smaller edit; left dead code for later cleanup |
| type=15 missing for 3 keys | 1 | INSERT missing rows after UPDATE |
