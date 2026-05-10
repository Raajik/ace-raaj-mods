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

## Current State
- **Working patches (in PatchClass):** `PostSelectAProfile`, `PrefixChestReset`, `PostChestReset`, `PostChestClose`
- **Failing patches (in PatchClass):** Every new `[HarmonyPrefix] + [HarmonyPatch(...)]` method I add
- **Suspected cause:** Some difference between how the ORIGINAL working patches were compiled vs newly added ones. The original patches compile without `// Test:` comment headers... but that shouldn't matter.

## Key Observations
1. `BLC_DEBUG.txt` IS written (file I/O works, mod runs)
2. `BLC_VENDOR.txt` is NEVER written (patches never fire)
3. Both old and new methods are in the SAME **partial class `PatchClass`** with same `[HarmonyPatch]` class attribute
4. Old methods work — new methods don't
5. The existing working patches (`PrefixChestReset` etc.) use:
   - `[HarmonyPatch(typeof(Chest), nameof(Chest.Reset))]`
   - `[HarmonyPrefix]`
   - The order IS `[HarmonyPatch]` BEFORE `[HarmonyPrefix]`
6. My new patches may have had the wrong attribute order (tried both orders). LAST BUILD has `[HarmonyPatch]` before `[HarmonyPrefix]` (matching working patches).

## Things NOT Yet Tried
1. **Reboot** — old process holding port 9010 (PID 15528) may be a zombie from wt.exe
2. **Use `HarmonyPatchCategory`** with explicit `RegisterPatchCategories()` call instead of relying on `PatchAllUncategorized`
3. **Directly modify `OnStartSuccess`** to call rotation via existing `VendorLootRotation.RotateOnApproach()` — bypass Harmony entirely, just call it from the timer or startup
4. **Check if `PatchAllUncategorized` in NuGet ACE.Shared v1.0.9 is filtering differently from source v1.0.8**

## Build Order
To build + deploy:
```bash
cd /mnt/a/ai/projects/ace-raaj-mods
dotnet build BetterLootControl/BetterLootControl.csproj
bash scripts/deploy-void-test.sh
```
Then kill ALL ACE processes (not just ACE.Server.exe):
```powershell
Get-Process ACE.Server,dotnet,windows*terminal* | Stop-Process -Force
```
Or just reboot.