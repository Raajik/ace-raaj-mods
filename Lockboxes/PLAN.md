# Lockboxes Mod Plan

## Overview
Create a new mod that adds lockbox items to the game, generating random loot when unlocked.

## Current Status
**Working**: `/lockbox open <tier>` command generates loot directly  
**Not Working**: Using/double-clicking lockbox in inventory does nothing

## Weenie Type Attempts (All Failed for activation)
| Type | WeenieType | Result |
|------|-------------|--------|
| Gem | 38 | "You can't lock or unlock that!" - doesn't trigger LockHelper.Unlock |
| Container | 22 | Equips to shirt slot |
| Chest | 2 | Appears in inventory but double-click does nothing |

## Patches Attempted (All applied but not triggered)
1. **LockHelper.Unlock postfix** - Works for chests/doors, but lockboxes aren't triggering it
2. **Chest.Open prefix** - Applied successfully, but not being called
3. **Key.HandleActionUseOnTarget prefix** - Applied successfully, but not being called  
4. **WorldObject.OnUse prefix** - Not found
5. **Player.Activate prefix** - Applied, but not being called

## Debug Findings
- Lockboxes spawn correctly as Chest type (WeenieType=2)
- Chest.Open method exists and patch applies
- Player.Activate method exists and patch applies
- NO activation events are being fired when double-clicking lockbox in inventory

## Hypotheses
1. Chest items in inventory might use different activation path than world chests
2. Might need to use different weenie type or ItemUseable flags
3. The ItemUseable=8 (Contained) might need different activation triggers
4. Could be using a completely different system (like ItemUse or similar)

## Working Path
- `/lockbox open 1` command creates lockbox and directly calls HandleLockboxUnlock
- This proves loot generation works fine

## Next Attempts to Try
- Try ItemUseable=4 (Player) instead of 8 (Contained)
- Try ItemType different than 128 (Misc) - maybe 16 (Container)
- Check if there's a different "activate" flow for contained items
- Try using a different weenie type entirely (maybe SpellComponent type for "use" items)

## Assets
- Icon: Using 100669720 (chest icon)

## Completed Features
- Loot generation (1-3 random items from LootConfig.json)
- Admin commands: /lockbox, /lockbox open, /lockbox key
- Auto-copy SQL to C:\ACE\Server\Content on build