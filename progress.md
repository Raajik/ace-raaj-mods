# Progress — Gameplay Log Fix Sweep

## Completed

1. **Shield thorns spam** ✅
   - Added 30s cooldown with accumulated damage tracking
   - Messages show total + average damage
   - File: `BetterSupportSkills/Skills/ShieldThorns.cs`

2. **Mob scale XP messages** ✅
   - Removed `[Mob Scale] +X bonus XP` chat spam entirely
   - File: `Swarmed/Features/DynamicMobScaling.cs`

3. **AutoLoot scroll learning without skill check** ✅
   - Moved skill check before `TryRemoveFromInventory`
   - Silently skips unreadable scrolls (no broadcast, no destroy)
   - File: `AutoLoot/Autoloot.cs`

4. **"/xp spend auto" failing spam** ✅
   - Root cause: `success && gained > 0` prevented local `available` from
     decrementing when partial XP spend didn't increase rank. caused desync.
   - Fix: always decrement on `success`
   - File: `QOL/XpTracker.cs`

5. **AutoLoot VendorTrash** ✅
   - Completely removed feature (commands, persistence, looting logic)
   - Files: `AutoLoot/Autoloot.cs`, `AutoLoot/PlayerPrefs.cs`

6. **CreatureEx not spawning good loot** ✅
   - Root cause: `SpecialCreatureLoot` used `[HarmonyPatchCategory(nameof(CreatureEx))]`
     but `PatchClass.cs` never registered `"CreatureEx"` category. Patch was silently dead.
   - Fix: added `ModC.Harmony.PatchCategory(nameof(CreatureEx));`
   - File: `Swarmed/PatchClass.cs`

7. **Drudge charms stacking / buggy** ✅
   - Root cause: `LootStackConsolidator` forced `MaxStackSize = 100` on ALL
     duplicate items including quest items like drudge charms.
   - Fix: only consolidate items whose weenie already has `MaxStackSize > 1`
   - File: `AutoLoot/Features/LootStackConsolidator.cs`

## Deployment
- All mods built successfully
- Deployed to live (`C:\ACE-WB\`)
- Server restarted, clean log

## Remaining questions
- Drudge charm "weird description 3669 Drudge Charm" — may be from client debug
  or weenie modification outside our mods. Need user confirmation if still present.
