# Custom WCID Reference

This file documents the custom WCID (Weenie Class ID) ranges used by ace-raaj-mods.

## Reserved Range
- **Start**: `101189990` (0x0603A096)
- **Note**: This range was chosen to be highly unlikely to conflict with other ACEmulator server implementations

## Usage
- Use this range for custom items spawned by ace-raaj-mods
- Document any new custom WCIDs added below when creating new features

---

## Assigned WCIDs

### CommonGoals (Personal Loot)
| WCID | Name | Notes |
|-----|------|-------|
| | | *(Uses creature's original WCID)* | Personal corpse inherits creature WCID |

### CustomNPC (Future - Quest Vendors)
| WCID | Name | Notes |
|-----|------|-------|
| | | Future lowbie quest vendor (tokens from invasions) |
| | | "Loremaster Zahir" - quest turn-in NPC |

### WorldEvents (Custom Mobs)
| WCID | Name | Notes |
|-----|------|-------|
| | | Hollow minion (heart loot or resurrect) |
| | | Fake olthoi (skin bandits, olthoi mask) |

### QOL / LeyLineLedger (Custom Items)
| WCID | Name | Notes |
|-----|------|-------|
| | | Town-network portal gem |
| | | Backpack (burden %) |

### TODO: Candeth Keep Quest Interface
- BankSalvage.WithdrawBags() → Interface with Candeth Keep salvage quest NPCs for quest completion

---

## Notes
- When adding new custom items, add them to this reference file
- WCID format in ACE: `uint` (e.g., `0x0603A096`)

---

# Custom PropertyInt / PropertyInt64 Space

Properties in the 40100–40199 range are used by ace-raaj-mods mods. These are not in ACE's stock enum; they live in "operator FakeInt space" above the BaseMod FakeProperty block.

## Assigned PropertyInt IDs (on items / characters)

| ID | Mod | Name | Notes |
|----|-----|------|-------|
| 40107 | EmpyreanAlteration | QuestWorkmanshipApplied (Bool) | Fake bool; set when quest grants first-add workmanship |
| 40113 | Swarmed | BuddySpawnTag | Marks buddy-spawned creatures; value = 1 |
| 40114 | Swarmed | BuddyXpBonus | Float; XP bonus multiplier - 1.0 for buddy creatures |
| 40115 | Swarmed | DeferredVariation | Float; variation multiplier stored during 0.5s ActionChain delay |
| 40120 | BetterSupportSkills | ChaosTinkerFailures | Count of chaos/failure tinker applications on item |
| 40130 | LeyLineLedger / BetterLootControl | LockpickDurability (Int64) / IsAwakened (Bool) | Two mods; different item types (lockpicks vs awakened vendor items) |
| 40131 | LeyLineLedger / BetterLootControl | LimitlessLastGrantUnix / AwakenedTier | — |
| 40132 | LeyLineLedger | LimitlessLockpickCount | Regen multiplier |
| 40133 | Overtinked / BetterSupportSkills | OvertinkedImbueFlags / KeyPriorityPref | Bitmask on weapons (Cleaving=2, NetherRending=4, Hemorrhage=8, Shatter=16); also used for lockpick key priority pref — different item types, no conflict |
| 40134 | Overtinked | ShatterStacks | Per-creature stack count for Shatter debuff |
| 40135 | Overtinked | ShatterBroken | Flag: creature is "broken" (at max Shatter stacks) |
| 40136 | Overtinked | BuffedJewelrySourceWcid | Source salvage WCID stamped by TryApplyBuffedImbue; read by BetterSupportSkills to grant matching imbue salvage on auto-salvage |

## Assigned PropertyInt64 IDs (on players / characters)

| ID | Mod | Name | Notes |
|----|-----|------|-------|
| 40201+ | BetterSupportSkills | MaterialBankProperty base | BSS salvage bank stores material units here; index = WCID − 20981, property = base + index |

## Rules
- Claim a new ID here before using it in code.
- Always use different IDs for character properties vs item properties if in doubt.
- IDs 40100–40132 and 40134–40135: claimed (see table).  
- **Next free**: 40137