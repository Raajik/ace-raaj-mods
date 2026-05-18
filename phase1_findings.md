# Codebase Cleanup Findings - Phase 1 Complete

**Scan Date:** 2026-05-18
**Focus:** Living Items → Awakened renaming

## FINDING: Files Needing Filename Renames

### 1. `EmpyreanAlteration/Settings.LivingItem.cs`
**Current Usage:** Referenced by 1+ files as a Settings subclass
**Rename To:** `Settings.AwakenedItem.cs`
**Impact:** High - rename Settings class inside and update all references
**Priority:** 🔴 HIGH - Settings class is public API

### 2. `EmpyreanAlteration/Features/LivingItemAwakener.cs`
**Current Usage:** Static class with methods:
- TryAutoAwaken
- IsCoalescedMana
- TryAwakenOrUpgrade
- GetDefaultProfile
- etc.
**Rename To:** `Features/AwakenedItemAwakener.cs`
**Impact:** Medium - static class, rename callsites
**Priority:** 🟠 MEDIUM - Static utility class

### 3. `EmpyreanAlteration/Features/LivingItemHooks.cs`
**Current Usage:** Harmony prefix/postfix hooks
**Rename To:** `Features/AwakenedItemHooks.cs`
**Impact:** Medium - Harmony targets need updating
**Priority:** 🟠 MEDIUM - Harmony hooks in Features folder

## Verification

**Search Results:**
- "LivingItems" (camelCase string references): **NONE**
- "Living Item" (space-separated): **NONE**  
- "LivingItem" method/class names: **6 occurrences** (above)
- All other files already use "Awakened" naming

## Conclusion

The codebase was recently converted from "Living Items" to "Awakened" but 3 files with old naming remain:
- 1 Settings file
- 2 Features files  

These need to be renamed to maintain naming consistency.

**Note:** Most internal method references already use the new Awakened terminology.
