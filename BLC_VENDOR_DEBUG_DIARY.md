# BLC Vendor Loot Rotation — Debug Diary

## Problem
Vendor loot rotation (BetterLootControl) doesn't work. Vendors show vanilla ACE `create_list` items.

## Successful Builds
- **Old session (11:35 AM, May 9):** BLC loaded, `VendorLootRotation: Cached 275 TreasureDeath profiles`, and `Applied prefix on GameEventApproachVendor constructor` all logged successfully. Rotation was happening but **AFTER** LLL had already written the vendor packet → too late.

## Everything Tried (chronological order)

### 1. ACE.Shared.dll missing (solved)
- **Symptom:** All 21 mods `LoadFailure`, `Missing IHarmonyMod Type X.Mod from X`
- **Root cause:** Deploy script only copied `$name.dll`, not `ACE.Shared.dll` (NuGet dependency)
- **Fix:** Copy ALL `.dll` files from build output to each mod directory

### 2. Race condition in deploy script (solved)
- **Symptom:** Server starts between deploy wiping Mods/ and copying new DLLs → empty Mods dir → all mods LoadFailure
- **Fix:** Kill server before wiping, not after

### 3. Harmony prefix on GameEventApproachVendor constructor — runs AFTER LLL (unsolved)
- **Attempt:** `harmony.Patch(GameEventApproachVendor ctor, prefix=OnVendorApproachEvent)`
- **Result:** **Patch WAS applied and DID fire** (confirmed by old logs) but LLL's prefix on the same constructor runs first (LLL's is auto-discovered during `Start()`, BLC's is manual during `OnStartSuccess()`). LLL returns `false` (skip original) and writes the vendor packet with stale items BEFORE BLC rotates.
- **Status:** Patch works but ordering wrong. Need BLC to rotate BEFORE LLL writes.

### 4. Harmony prefix on Vendor.ApproachVendor — NEVER fires
- **Attempt:** `harmony.Patch(Vendor.ApproachVendor, prefix=OnVendorApproachEvent)` — manual Patch in OnStartSuccess
- **Result:** Patch applied (BLC_DEBUG confirms) but prefix NEVER executes. BLC_VENDOR.txt never written.
- **Why:** Manual `Harmony.Patch()` for Vendor/GameEventApproachVendor targets simply doesn't work.

### 5. Harmony auto-discovered prefix on Vendor.ApproachVendor — NEVER fires
- **Attempt:** Moved prefix method to `[HarmonyPatch]`-annotated `VendorLootRotation` class with `[HarmonyPrefix]` attribute
- **Result:** Prefix executed: never
- **Why:** Auto-discovery in VendorLootRotation class doesn't find it.

### 6. Harmony auto-discovered prefix on GameEventApproachVendor ctor — NEVER fires  
- **Attempt:** Same as #5 but targeting the ctor inside VendorLootRotation
- **Result:** Same — never fires.
- **Iterations tried:**
  - `ModC.Harmony.Patch()` (BLC_Harmony instance)
  - `new Harmony("...").Patch()` (separate Harmony instance)
  - `HarmonyMethod { priority = 0 }` for ordering
  - `ref GameEventApproachVendor __instance` parameter
  - Without `ref __instance`
  - `AccessTools.Constructor(typeof(GameEventApproachVendor), ...)`
  - `typeof(GameEventApproachVendor).GetConstructors()` iteration

### 7. Harmony auto-discovered prefix on Vendor.RotUniques — NEVER fires
- **Attempt:** `[HarmonyPrefix] + [HarmonyPatch(typeof(Vendor), nameof(Vendor.RotUniques))]` in PatchClass
- **Result:** Never fires. BLC_VENDOR.txt empty.
- **Note:** RotUniques is `private` — Publicizer may not make it accessible.

### 8. Harmony auto-discovered prefix on Player.Heartbeat — NEVER fires  
- **Attempt:** `[HarmonyPrefix] + [HarmonyPatch(typeof(Player), nameof(Player.Heartbeat), typeof(double))]` in PatchClass
- **Result:** Never fires. BLC_TEST2.txt not created.
- **Significance:** Player.Heartbeat fires every 5 seconds. If it doesn't fire, **ALL new Harmony patches in PatchClass are silently failing**.

## Fix Applied (May 10, 2025)

### Strategy: Manual `Harmony.Patch()` on GameEventApproachVendor ctor with `Priority.First`

**Root cause of auto-discovery failures:** New `[HarmonyPrefix]` + `[HarmonyPatch]` methods added to `PatchClass` after initial compilation don't get picked up by `Harmony.PatchAllUncategorized()`. The existing working patches (`PostSelectAProfile`, `PrefixChestReset`, etc.) worked because they were present at compile time. New patches added later are silently ignored.

**The fix:** Use manual `Harmony.Patch()` via `ModC.Harmony.Patch(targetCtor, prefix: ...)` in `ApplyVendorApproachPatch()`. This bypasses auto-discovery entirely.

**Priority ordering:**
- BLC's prefix uses `[HarmonyPriority(Priority.First)]` — runs FIRST
- LLL's `PreCtorGameEventApproachVendor` has default priority — runs SECOND
- The original constructor body runs LAST

This ensures BLC rotates vendor stock into `DefaultItemsForSale`/`UniqueItemsForSale` BEFORE LLL writes the approach packet.

### How It Works
1. `OnStartSuccess()` → if `EnableVendorLootRotation` is true → `ApplyVendorApproachPatch()`:
   - Finds `GameEventApproachVendor(Session, Vendor, uint)` constructor via reflection
   - Calls `ModC.Harmony.Patch()` with `PreGameEventApproachVendor` as prefix (Priority.First)
2. When any player approaches any vendor, `PreGameEventApproachVendor` fires FIRST:
   - Writes to BLC_VENDOR.txt for debugging
   - Calls `VendorLootRotation.OnVendorApproachPrefix()` which does the actual rotation
   - Returns `true` so LLL's prefix and original constructor still run

## Build Order
```bash
cd /mnt/a/ai/projects/ace-raaj-mods
dotnet build BetterLootControl/BetterLootControl.csproj
# Kill server, then copy DLLs:
rm -rf /mnt/a/void-test/Mods/BetterLootControl/
mkdir -p /mnt/a/void-test/Mods/BetterLootControl/
cp build/BetterLootControl/*.dll build/BetterLootControl/Meta.json /mnt/a/void-test/Mods/BetterLootControl/
# Restart server (watchdog will auto-start)
```

## Status (May 10, 06:47)
- Build: **Successful**
- Deploy: **Successful**
- Patch: **Confirmed applied** — `[BLC] ApplyVendorApproachPatch: Patched GameEventApproachVendor ctor with Priority.First`
- BLC_DEBUG.txt: Present with confirmation log
- **Needs:** Player to approach a vendor to test actual rotation and verify ROTATION happens BEFORE LLL writes the packet
