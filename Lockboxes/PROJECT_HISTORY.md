# Lockboxes Mod - Project History

## Goal
Create a mod that adds lockbox items to ACE. When opened (unlocked with key or directly used), they generate 1-3 random loot items from a configurable loot list.

## Current State
- **BROKEN**: Lockboxes are not working properly
- Server crashes on login due to invalid biota instances with old WCIDs (101189990-995)
- Current lockboxes (WCIDs 101189993-995) show as type "Clothing" and have no ActOnUse handler

## What Works
- `/lockbox open <tier>` command successfully generates loot - proves loot generation logic works
- Admin commands: `/lockbox`, `/lockbox key` work for spawning
- Loot generation via code (`HandleLockboxUnlock`) works correctly

## Weenie Types Tried

### Type 31 (Key) - Attempt 1
- Created as WCIDs 101189990, 101189991, 101189992
- **Result**: "You can't lock or unlock that!" message when double-clicked
- **Issue**: Key type doesn't trigger HandleActionUseOnTarget when used on itself

### Type 2 (Chest) - Attempt 2
- Created as WCIDs 101189993, 101189994, 101189995
- **Result**: "undefined for wcid 101189993 type Clothing"
- **Issue**: Missing SetupDID (property 44) - needs valid setup model to function as Chest
- ACE Server is creating them as Clothing instead of Chest due to missing/weaponized Setup

### Type 38 (Gem) - Attempt 3 (not implemented)
- Would likely get same "You can't lock or unlock that!" message

### Type 22 (Container/Clothing) - Attempt 4 (not implemented)
- Creates as Clothing in shirt slot

## Patches Applied (all apply but don't fire)

1. **LockHelper.Unlock postfix** - Should fire when key unlocks something
2. **Chest.Open prefix** - Should fire when chest opens (but lockboxes aren't Chest type)
3. **Key.HandleActionUseOnTarget prefix** - Should fire when key used on target
4. **Player.Activate prefix** - Should fire when player activates object
5. **WorldObject.OnUse prefix** - Should fire when object is used

## Major Issues

### 1. Database/Biota Crash
Old lockbox instances with invalid Setup data (SetupModel instead of GfxObj) in player inventory crash the server on login.

**Fix applied**: SQL now cleans up all WCIDs 101189990-995 before inserting new ones.
**Still needed**: Delete existing biota instances from database.

### 2. Weenie Type Creation Problem
When creating weenies with Type 2 (Chest) but without valid SetupDID (property 44), ACE Server creates them as Clothing instead of Chest. This causes "ActOnUse - undefined" errors.

**Required fix**: Add valid SetupDID (property 44) to SQL definitions. Need to find a valid chest SetupDID from existing chests in database.

### 3. Activation Events Not Firing
Even when patches apply successfully, none of them trigger when player double-clicks lockbox. This suggests the client isn't sending an activation event, or it's being handled before our patches can intercept.

## SQL Files

### InsertLockboxes.sql (Current)
```sql
-- Type 2 (Chest) - v6 - BROKEN: missing SetupDID
DELETE FROM weenie WHERE class_Id IN (101189990-995);
INSERT INTO weenie (class_Id, class_Name, type) VALUES 
  (101189993, 'LockboxesTier1_v6', 2),
  (101189994, 'LockboxesTier2_v6', 2),
  (101189995, 'LockboxesTier3_v6', 2);
-- Missing: weenie_properties_d_i_d for SetupDID (type 44)
```

## Code Files

- `PatchClass.cs` - Main mod logic with Harmony patches
- `LockboxesCommands.cs` - Admin commands (`/lockbox`, `/lockbox open`, `/lockbox key`)
- `InsertLockboxes.sql` - Weenie definitions (currently type 2, missing SetupDID)
- `LootConfig.json` - Loot item definitions
- `Settings.json` - Mod settings
- `PLAN.md` - Previous attempt documentation

## Next Steps (If Resumed)

1. **Add SetupDID to SQL**: Find a valid chest SetupDID and add to weenie_properties_d_i_d (type 44)
   ```sql
   -- Find valid chest SetupDID
   SELECT w.class_Id, dp.value AS setup_did 
   FROM weenie w JOIN weenie_properties_d_i_d dp ON w.class_Id = dp.object_Id 
   WHERE w.type = 2 AND dp.type = 44 LIMIT 5;
   ```

2. **Clean biota table**: Delete old lockbox instances from player inventory
   ```sql
   DELETE FROM biota WHERE weenie_Class_Id IN (101189990, 101189991, 101189992, 101189993, 101189994, 101189995);
   ```

3. **Test with valid Chest type**: Once SetupDID is added, test if Chest.Open patch fires

4. **Alternative approach**: If Chest doesn't work, try intercepting at a lower level - perhaps the client sends a different message when double-clicking items

## Commands

- `/lockbox` - Spawns one of each tier (1-3)
- `/lockbox <tier>` - Spawns tier (1-3)
- `/lockbox <tier> <count>` - Spawns multiple
- `/lockbox open <tier>` - Opens directly (works!)
- `/lockbox key [tier]` - Spawns skeleton key for testing