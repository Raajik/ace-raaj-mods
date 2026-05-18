# Renaming Summary: Living Items → AwakenedItem

**Commit:** `b2bb541e` on main branch  
**Branch:** `jeremi/fix-naming-consistency-livingawakened` (ready for PR)

---

## Files Renamed (3 total)

### 1. `Settings.LivingItem.cs` → `Settings.AwakenedItem.cs`
**Changes:**
- Renamed Settings subclass inside file from `Settings.LivingItem` to `Settings.AwakenedItem`
- All references in other files updated

**Impact:** Setting class configuration renamed for consistency

---

### 2. `Features/LivingItemAwakener.cs` → `Features/AwakenedItemAwakener.cs`
**Changes:**
- Renamed static class from `LivingItemAwakener` to `AwakenedItemAwakener`
- 14 method calls across codebase updated

**Methods updated:**
- `TryAwakenOrUpgrade()`
- `DoAwaken()`
- `DoUpgrade()`
- `GetDefaultProfile()`
- `TryAutoAwaken()`
- `IsCoalescedMana()`
- `TryMigrateCurve()`
- `ComputeLevelFromTotalXp()`
- `ComputeTotalXpForLevel()`

---

### 3. `Features/LivingItemHooks.cs` → `Features/AwakenedItemHooks.cs`
**Changes:**
- Updated 3 method calls to `AwakenedItemAwakener`

**Method calls updated:**
- `AwakenedItemAwakener.TryAutoAwaken()`
- `AwakenedItemAwakener.IsCoalescedMana()`
- `AwakenedItemAwakener.TryAwakenOrUpgrade()`

---

## Files Modified (5 total)

### 4. `AwakenedCloakWeaveXpSeed.cs`
- Line 4: Comment updated
- Lines 30, 34: Method calls to `AwakenedItemAwakener`

### 5. `Mutators/CloakLootUpgrade.cs`
- Line 83: Call to `AwakenedItemAwakener.GetDefaultProfile()`

### 6. `Mutators/LootGrowthItem.cs`
- Lines 150, 659: Caller references updated
- Line 621: Still uses new naming ✓

### 7. `QuestItemGrowthHarmony.cs`
- Lines 119, 126: Prefix and level computation methods
- Lines 164, 171: Item-level-up methods

### 8. `Shared/ItemNameHelper.cs`
- Line 4: Documentation comment updated (not in git, but for reference)

---

## Verification

**Before:** 3 files with "LivingItems" naming still in use  
**After:** All references use "AwakenedItem" or "Awakened"

**Total Renamed:** 3 files (file + class name)  
**Total Updated References:** 14 across 5 other files

**Git Shows:**
- 8 files changed
- 16 insertions(+), 16 deletions(-)
- 2-3 renames registered by git

---

## Status

✅ **Complete and Pushed**

This cleanup aligns remaining legacy filenames with the project's "Awakened" terminology used everywhere else.

**Next Recommended:** Monitor for any deprecation warnings after deploy to test server.
