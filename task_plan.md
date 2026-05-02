# Coalesced Mana & Awakened Item Rework — Task Plan

## Goal
Rework EmpyreanAlteration's awakened item / Coalesced Mana system:
- Lesser: +5 cap, Greater: +10 cap, Aetheric: +15 cap (all stack up to 100)
- All can awaken OR upgrade any awakened item
- QuickStart becomes the server-configurable default profile (items keep same profile forever)
- Remove "attune on leveled" entirely
- Add per-item curve versioning so future curve tweaks auto-migrate existing items
- Loot drops use default profile and random initial cap (+5/+10/+15)
- **Item leveling decoupled from player XP — uses monster kill / quest completion counters instead**
- Curve tuned for discrete kill/quest counts (weeks to cap, dramatic ramp after L20)

## Phases

### Phase 1 — Settings & Properties
- [ ] `Settings.LivingItem.cs`: Add `DefaultXpProfileName`, `ItemXpCurveVersion`; expand `PreAwakenXpProfile` with `Divisor`/`Power`
- [ ] `Settings.QuestItemGrowth.cs`: Remove `AttuneLeveledItemsWhenReachingLevelOne`
- [ ] `LivingEquipmentProperties.cs`: Add `CurveVersion` (FakeInt 40133), `ProfileDivisor` (FakeFloat 11035), `ProfilePower` (FakeFloat 11036)

### Phase 2 — Core Awakener Rewrite
- [ ] `LivingItemAwakener.cs`: 
  - `GetCapIncreaseFromTier()`: +5/+10/+15
  - `DoAwaken()`: use default profile, store Divisor/Power/CurveVersion, cap = tier bonus
  - `DoUpgrade()`: add cap incrementally, clamp 100, allow same-tier repeat
  - `ComputeLevelFromTotalXp()` / `ComputeTotalXpForLevel()`: use `BaseXp * (1 + L/Divisor)^Power`
  - Add `TryMigrateCurve()` for version mismatch

### Phase 3 — Harmony & Engine Patching
- [ ] `QuestItemGrowthHarmony.cs`: Update `PrefixItemTotalXPToLevel` / `PrefixItemLevelToTotalXP` to use item-stored Divisor/Power, call migration
- [ ] `LootGrowthItem.cs`: Use default profile (not random), roll random initial cap bonus (+5/10/15)
- [ ] `QuestItemGrowthLevelEngine.cs`: Remove `EnsureAttunedIfLeveled` call

### Phase 4 — Attune Removal
- [ ] Delete `ItemLevelUpAttune.cs`
- [ ] `QuestGrowthItemHelpers.cs`: Remove `EnsureAttunedIfLeveled`
- [ ] `PatchClass.cs`: Remove all Attune patch/unpatch logic

### Phase 5 — Config & JSON
- [ ] `Settings.json`: Update to match new defaults, remove Attune setting

### Phase 6 — Build & Deploy
- [ ] `dotnet build`
- [ ] Copy to test server
- [ ] Restart, verify

## Key Design Decisions
- Formula: `cost(L) = BaseXp * (1 + L / Divisor)^Power`
- QuickStart default: Base=2M, Div=10, Pow=5 → ~400M for L1-20, ~16B for L21-50, ~600B for L51-100
- CurveVersion mismatch → compute level under old params, rewrite XP to match same level under new params
- Loot drops: random tier roll (equal weights) for initial cap bonus
