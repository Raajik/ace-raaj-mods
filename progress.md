# Progress — AutoLoot + Skeleton Key Overhaul

## 2026-05-03 Session
- Created task_plan.md, findings.md, progress.md
- Read AutoLoot source files: Autoloot.cs, PatchClass.Harmony.cs, PatchClass.cs, Settings.cs
- Confirmed current architecture has redundant corpse open-phase and divergent chest close logic

### Changes Made

**AutoLoot:**
- Removed `IsKeysUnlocked` gate from `TryBankKey` — special skeleton keys now auto-bank unconditionally
- Removed `IsKeysUnlocked` gate from `PreConsumeUnlockerForKeys` — banked key consumption unconditional
- Restructured `PreContainerClose`:
  - Chests (non-house): `ProcessContainerLootImmediate` → `ProcessContainerLoot` → `RunSalvageDestroyPass` (full corpse parity)
  - Corpses: `RunSalvageDestroyPass` only (full loot already ran at creation)
  - House storage chests excluded entirely
- `OnPostGenerateTreasure`: added `ProcessContainerLootImmediate` before `ProcessContainerLoot` for corpses
- Removed corpse handling from `OnContainerOpened` (redundant)
- Removed dead `OnContainerOpened` method
- Updated `KeysUnlockThresholdDoc` to clarify achievement/notification-only

**BLC:**
- Removed SIK (6876), SSK (24477) from `common`, MFK (38456) from `uncommon`, LEG (48746) from `rare`
- Created `GlobalKeyDrops.cs` — 1% per kill global roll:
  - SIK/SSK on all tiers (50/50 split)
  - MFK/LEG on tier 7-8 only (50/50 split)
  - Drops in stacks of 1-10
- Added `EnableGlobalKeyDrops`, `KeyDropChance`, `SturdyIronKeyWcid`, `SturdySteelKeyWcid`, `ManaForgeKeyWcid`, `LegendaryKeyWcid` to Settings.cs

**Database (ace_world):**
- Updated `weenie_properties_string` for all 4 keys (types 14, 15, 16):
  - SIK: "Opens locked doors with difficulty up to 1000. Looted copies are automatically banked."
  - SSK: "Opens locked chests with difficulty up to 1000. Looted copies are automatically banked."
  - MFK: "Opens Mana Forge doors with difficulty up to 5000. Looted copies are automatically banked."
  - LEG: "Opens Legendary chests with difficulty up to 5000. Looted copies are automatically banked."
- Inserted missing `type=15` (ShortDesc) for SSK, MFK, LEG
- Backup saved to `WindblownContent/sql-backups/2026-05-03/pre-key-descriptions-weenie_properties_string.sql`

**Build & Deploy:**
- AutoLoot: built and deployed to C:/ACE/Mods/AutoLoot/
- BLC: built and deployed to C:/ACE/Mods/BetterLootControl/

### Still To Do
- Verify in-game: kill a mob, confirm corpse auto-loot at creation; open/close a chest, confirm full parity
- Restart test ACE server if needed
