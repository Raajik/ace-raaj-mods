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

## Bug 3: Salvage Auto-Deposit Fractional Messages
**Status**: Fixed
- **Root cause**: `AccumulateForMessage` was receiving `depositUnits` (raw fractional, e.g., 0.5 for trained salvaging) instead of `depositInt` (the actual integer units banked via `Math.Max(1, (int)depositUnits)`). Messages showed roughly half the actual deposit for trained players.
- **Fix applied**: Changed both `AccumulateForMessage` calls in `SalvageAutoDeposit.cs` to pass `depositInt`.
- **Files changed**: `BetterSupportSkills/Skills/SalvageAutoDeposit.cs`

## Bug 4: Cloak Minor Banes / Minor Impenetrability
**Status**: Fixed
- **Root cause**: `ApplyRandomCantrips` in `CloakLootUpgrade.cs` used `ArmorCantrips.Roll()` which includes `CANTRIPIMPENETRABILITY1` and all `CANTRIP*BANE1` cantrips. These became Minor Impenetrability / Minor Bane spells on cloaks.
- **Fix applied**: Added `BannedCloakCantrips` HashSet containing all 8 bane/impenetrability base cantrips. `ApplyRandomCantrips` now skips any roll that matches the banned set.
- **Files changed**: `EmpyreanAlteration/Mutators/CloakLootUpgrade.cs`

## Feature/Balance: DynamicMobScaling Rebalance + Loot Tier Matching
**Status**: Implemented
- **Problem**: Mobs scaled too aggressively in health; level variance was too narrow; loot tier did not match scaled monster level.
- **Fix applied**:
  - `SoloScalePercent` / `GroupScalePercent` → 110 (center scaling at 110% of player level)
  - `LevelVariancePercent` → 20 (±20% of target level, replacing old hardcoded ±25% cap)
  - `HealthScaleExponent` → 0.4 (gentler than sqrt(0.5); e.g., 4× level ratio → ~1.74× health instead of 2×)
  - `HealthScaleMaxMultiplier` → 2.0 (hard cap on health scaling)
  - **Loot tier matching**: `PreGenerateTreasure` prefix on `Creature.GenerateTreasure` reads `ScaledLootTierPropertyId` (computed from target level via `LevelToTier`). If scaled tier > original `DeathTreasure.Tier`, it temporarily swaps `DeathTreasureType` to a `TreasureDeath` profile of the correct tier before ACE generates loot. `PostGenerateTreasure` restores the original `DeathTreasureType` and skips numerical scaling for tier-bumped mobs.
- **Files changed**:
  - `Swarmed/Features/DynamicMobScaling.cs`
  - `Swarmed/Settings.cs`
  - `Swarmed/Settings.json`
