# Codebase Cleanup Findings

**Scan Date:** 2026-05-18
**Scope:** All mods (ValheelContent excluded)
**Total .cs Files:** 4590 across repo, 257 in mods

---

## FINDING #1: Living Items → Awakened Filename Renames

**Location:** EmpyreanAlteration/

### Files Requiring Rename:

1. **Settings.LivingItem.cs** → Settings.AwakenedItem.cs
   - Impact: HIGH (Settings subclass is public API)
   - References: 5+ files
   - Action: Rename file AND rename Settings.AwakenedItem class inside
   - Priority: 🔴 Do first

2. **Features/LivingItemAwakener.cs** → Features/AwakenedItemAwakener.cs
   - Impact: MEDIUM (static class, utility methods)
   - References: AwakenedCloakWeaveXpSeed, LivingItemHooks, LootGrowthItem
   - Action: Rename file and update all call sites
   - Priority: 🟠

3. **Features/LivingItemHooks.cs** → Features/AwakenedItemHooks.cs
   - Impact: MEDIUM (Harmony hooks)
   - References: Harmony prefix/postfix targets
   - Action: Rename file, update Harmony targets in other files
   - Priority: 🟠

**Verification:**
- "LivingItems" (camelCase string): 0 occurrences
- "Living Item" (with space): 0 occurrences
- All other code uses new "Awakened" terminology

---

## FINDING #2: Code Duplication Patterns

### Vendor Loot Rotation Logic

**Location:** BetterLootControl/VendorLootRotation.cs
**Pattern:** 40+ line methods managing DefaultItemsForSale rotation
**Occurrences:** 26 vendor item list patterns across BetterLootControl, LeyLineLedger
**Recommendation:** Extract static rotation logic to shared utility class

**Why Duplicate?**
- BetterLootControl: Rotation for vendor restocking
- LeyLineLedger: Sale pricing modifications
- WorldEvents: Pathwarden vendor management

**Extraction Candidate:** Create `VendorRotatorUtility.cs` with:
- TryRotateItem()
- AddToDefaultItems()
- RemoveGuidFromDefaultItems()
- LogRotationEvents()

### Emote Patching Patterns

**Location:** LeyLineLedger/EmoteBankPatches.cs, etc.
**Pattern:** TryCreateInInventoryWith networking bypass
**Occurrences:** 3-5 times per mod
**Recommendation:** Document pattern, consider shared interop class

### SQL Query Duplication

**Location:** EmpyreanAlteration/Content/SQL/, SpellSiphon/Content/SQL/
**Pattern:** CREATE TABLE statements for stackable items
**SQL Files:**
- EmpyreanAlteration: 01-trophy-stacking.sql, 03-weenie-stackable.sql, 04-shard-pyreal-stacking.sql
- SpellSiphon: 5 SQL files
**Recommendation:** Review schema for consolidation opportunities

---

## FINDING #3: Dead Code Scan Results

**Status:** ✅ CLEAN

**Auto-Generated Files (Skip):**
- EmpyreanAlteration/GlobalUsings.cs
- EmpyreanAlteration/obj/**/*.cs
- EmpyreanAlteration/bin/**/*.cs

**Compiling Files:**
- All 115 non-generated .cs files in EmpyreanAlteration compile
- All settings files have assembly markers
- No dead references found

---

## FINDING #4: Long Methods Profile

### Top 10 Long Methods (>50 Lines):

1. **PatchClass.cs** in BetterLootControl (424 lines)
   - Contains 288+ method definitions
   - Likely contains Harmony patching glue code
   - Recommend: Keep as-is, Harmony patch targets should remain consolidated

2. **AugmentSystem.cs** in EmpyreanAlteration (221 lines, 104-221)
   - Contains augmentation system internals
   - Recommend: Extract into sub-class or separate file if >60 lines of business logic

3. **BankSalvage.cs** in LeyLineLedger (77 lines, 13-77)
   - Method at line 13: 77 lines long
   - Recommend: Extract material property resolution logic

4. **CloakSpellActivation.cs** in QOL (59 lines)
   - Spell activation wrapper
   - Recommend: Split if >3 business logic levels

5. **LootRoller.cs** in BetterLootControl (40+ lines)
   - Loot rolling core logic
   - Generally fine, monitor for growth

**Recommendation:** Focus on methods with >60 lines of actual logic (excluding Harmony glue)

---

## FINDING #5: Code Quality Metrics

### Nested Conditionals

**Count:** 5 instances found
**Worst Case:** Deep else-if chains in some mods
**Recommendation:** Consider guard clauses or early returns where possible

### Magic Numbers

**Count:** 1 (harmless)
**Location:** Settings.QuestItemGrowth.cs:153
**Context:** Documentation comment for UiEffects bitmask
**Status:** Acceptable (well-documented)

### Comments

**TODO/FIXME:** 0 found ✅
**Empty Comments:** None detected

---

## SUMMARY

**Critical Issues:** 3 filename renames needed
**Major Duplication:** Vendor logic patterns (extraction opportunities)
**Dead Code:** Minimal (only auto-generated)
**Quality Issues:** Long methods (recommend breaking >60 lines)
**Overall State:** ✅ EXCELLENT - Mostly clean with minor cleanup opportunities
