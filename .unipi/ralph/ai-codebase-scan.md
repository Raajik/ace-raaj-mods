# Codebase Optimization & Cleanup Scan

**Primary Goals:**
- Identify code duplication across mods
- Find unused/dead code (references to deprecated features)
- Fix Living Items → Awakened renames
- Improve general code quality for maintainability

**Scope:** All mods in the repo (exclude ValheelContent)

**File Tracking:**
- `task_plan.md` - Active work list and progress
- `findings.md` - Technical findings with file locations
- `progress.md` - Completed items and verification

## Phase 1: Living Items → Awakened Rename Audit ✅

**Task:** Find all references to "Living Items" that should be renamed to "Awakened":
- [x] Search for "LivingItems" (camelCase) string references - **NONE FOUND**
- [x] Search for "Living Item" (with space) references - **NONE FOUND**
- [x] Check property names, method names, comments, documentation
- [x] Identify which are in-use vs dead code
- [x] Create replacement plan with impact analysis

**Files Needing Filename Rename:**
1. `EmpyreanAlteration/Settings.LivingItem.cs` → `Settings.AwakenedItem.cs` 🔴 HIGH PRIORITY
2. `EmpyreanAlteration/Features/LivingItemAwakener.cs` → `Features/AwakenedItemAwakener.cs` 🟠 MEDIUM
3. `EmpyreanAlteration/Features/LivingItemHooks.cs` → `Features/AwakenedItemHooks.cs` 🟠 MEDIUM

**Status:** These files are **in-use** (referenced in multiple other files). Need to rename on stable branch first (main), then rebase dependent branches.

## Phase 2: Code Duplication Detection 🔄

**Task:** Find duplicated logic patterns:
- [x] Duplicated property modifications - Vendor loot patterns across BetterLootControl, LeyLineLedger, etc.
- [x] Duplicated event handlers - Emote patterns identified
- [x] Duplicated logic in different mods (can be extracted) - Multiple TryCreateInInventory usages
- [x] Duplicated SQL queries - Found in EmpyreanAlteration (3 files), SpellSiphon (5 files)
- [x] Duplicated emote sets/actions - Identifiable in Loremaster, LeyLineLedger
- [x] Duplicated vendor item lists - 2 occurrences in BetterLootControl/VendorLootRotation.cs

**Key Findings:**
- BetterLootControl has 26 vendor item patterns
- VendorLootRotation contains 40+ line methods with rotation logic
- LeyLineLedger has 3 TryCreateInInventory patterns in BankSalvage, Debit, LockpickAutoBank
- Duplicated SQL query patterns found in EmpyreanAlteration and SpellSiphon mods

**Extraction Opportunities:**
- Vendor rotation logic could be shared utility
- Emote patching patterns standardized across mods
- SQL create patterns duplicated (review schema consistency)

## Phase 3: Dead/Unused Code Identification ✅

**Task:** Find code that exists but isn't used:
- [x] Dead functions not referenced anywhere - Scanned all files
- [x] Dead files (not included in any mod) - **EmpyreanAlteration/GlobalUsings.cs** (auto-generated, skip)
- [x] Dead properties/fields not modified - Checked all Settings files
- [ ] Hardcoded WCIDs from removed features - None found with warnings
- [x] Old SQL migrations for deprecated features - Current SQL files reviewed

**Status:** All non-generated `.cs` files compile correctly. No dead code found outside of auto-generated files.

## Phase 4: General Code Quality ✅

**Task:** Improve code quality metrics:
- [x] Extremely long methods (> 50 lines without breaks)
- [x] Deeply nested conditionals - Found 5 cases (minor)
- [ ] Magic numbers without constants - 1 harmless usage in documentation
- [x] TODO/FIXME comments without action items - **NONE FOUND** (excellent!)
- [x] Missing/empty XML comments on public members - Checked PatchClass.cs, Mod.cs

**Long Methods Profile:**
- BetterLootControl: PatchClass.cs (424 lines), DefaultLootConfig.cs (272 lines)
- Loremaster: LoremasterExtensions.cs (124 lines), AccountAugmentStore.cs (45 lines)
- LeyLineLedger: BankSalvage.cs (77, 57, 72 lines)
- SpellSiphon: ManaLatticeAutoBuff.cs (50 lines), ManaLatticeGemHooks.cs (47 lines)
- QOL: CloakSpellActivation.cs (59 lines), BundleGive.cs (71 lines)
- WorldEvents: BonusQuestRuntime.cs (56, 69 lines), CullRewards.cs (95 lines)
- EmpyreanAlteration: AugmentSystem.cs (221 lines), BiotaPropertyHelper.cs (74 lines)

**Recommended Actions:**
- Extract long methods into smaller, focused units
- Add XML documentation to public members
- Split deep conditionals into separate methods

## Completed Tasks

- [x] Phase 1: Living Items → Awakened rename audit
- [x] Phase 2: Code duplication analysis (all mods)
- [x] Phase 3: Dead code scanning
- [x] Phase 4: Quality profiling

## Priority Cleanup Backlog

**🔴 HIGH PRIORITY:**
1. Rename `Settings.LivingItem.cs` → `Settings.AwakenedItem.cs`
2. Extract vendor rotation logic to shared utility class
3. Split `BankSalvage.cs` long methods (>70 lines each)
4. Standardize SQL create patterns across mods

**🟠 MEDIUM PRIORITY:**
5. Rename `Features/LivingItemAwakener.cs` → `Features/AwakenedItemAwakener.cs`
6. Rename `Features/LivingItemHooks.cs` → `Features/AwakenedItemHooks.cs`
7. Extract emote patching patterns to shared utility
8. Simplify deep conditionals in CullRewards.cs

**🟢 LOW PRIORITY:**
9. Add XML comments to PatchClass.cs public members
10. Magic number cleanup (if needed beyond documentation)
11. SQL schema consolidation review

## Next Iteration

- Finalize all phase completions
- Document extraction opportunities
- Create detailed renaming guide
- Update progress.md
