# Task Plan: EA Quest Reward Fix + Coalesced Mana Trophies + Drudge Charms + SpellSiphon Verify

## Bug 1: Quest Reward Items (Pathwarden/Awakened Seasoned Explorer)
**Status**: Rating persistence fix implemented. Level display is expected behavior (point-based curve).
- **Root cause**: `ArmorJewelryRatingGrowth` and `QuestItemGrowthLevelEngine.TryScaleExistingRatings` used `SetBiotaPropertyInt` which writes biota but does NOT update ACE's ephemeral property cache. Ratings appeared in messages but were invisible on re-examine/relog.
- **Fix applied**:
  - Added `BiotaPropertyHelper.SetPersistentPropertyInt` helper that writes BOTH biota AND calls `item.SetProperty` for immediate cache update.
  - Updated ALL six rating setters in `ArmorJewelryRatingGrowth.cs` to use `SetPersistentPropertyInt`.
  - Updated `TryScaleExistingRatings` in `QuestItemGrowthLevelEngine.cs` to use `SetPersistentPropertyInt`.
- **Files changed**: `EmpyreanAlteration/BiotaPropertyHelper.cs`, `EmpyreanAlteration/ArmorJewelryRatingGrowth.cs`, `EmpyreanAlteration/QuestItemGrowthLevelEngine.cs`

## Bug 2: Drudge Charms (regular, not Bloodletter)
**Status**: Fixed
- **Root cause**: Vanilla WCID 3669 (low-level drudge charm) was NOT in `ReplaceSiblingWcids` or `BlockedCreationWcids`, so it dropped alongside (or instead of) custom trophies.
- **Fix applied**:
  - Added 3669 to `ReplaceSiblingWcids` in `Windblown/Content/TrophyLines/drudge-charm.json`
  - Added 3669 to `BlockedCreationWcids` in `Windblown/ItemsRemovalPatches.cs`
  - **Preserved** WCID 24835 (bloodletter drudge charm) — user confirmed these should still drop for equipment turn-ins. Removed 24835 from the block/replace lists.
- **Files changed**: `Windblown/Content/TrophyLines/drudge-charm.json`, `Windblown/ItemsRemovalPatches.cs`

## Feature: Coalesced Mana as Tiered Trophies
**Status**: Implemented
- **Design**: 3 tiers (Lesser/Greater/Aetheric), WCIDs 850366-850368, universal drop from all creatures via new `CreatureTypeGate: "Universal"` support.
- **Files created**:
  - `Windblown/Content/TrophyLines/coalesced-mana.json` — drop chances 0.005 each, XP/bank rewards
  - `Windblown/Content/Weenies/coalesced-mana.json` — blue underlay + overlays 1/2/3
- **Files changed**:
  - `Windblown/TrophyLines/TrophyLineRegistry.cs` — added `Universal` creature type gate support (registers line to ALL creature types)
  - `AutoLoot/Settings.cs` — added 850366-850368 to `WindblownCollectorTrophyPass1WeenieClassIds`

## SpellSiphon: Verify Glyph Deduplication
**Status**: Verified working — no code changes needed
- `TryMergeSpell` in `UseOnTargetHooks.cs:312` already implements line-based dedup: if target already has a higher-tier spell in the same line, the lower-tier spell from the glyph is rejected.
