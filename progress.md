# Coalesced Mana & Awakened Item Rework — Progress

## 2025-05-01 Session

### Completed
- [x] Updated `LivingEquipmentProperties.cs` — added `CurveVersion`, `ProfileDivisor`, `ProfilePower`
- [x] Updated `Settings.LivingItem.cs` — added `DefaultXpProfileName`, `ItemXpCurveVersion`, `ItemLevelingKillPoints`, `ItemLevelingQuestCompletionPoints`, `ItemLevelingBossKillMultiplier`, `ItemLevelingCap`
- [x] Updated `Settings.QuestItemGrowth.cs` — deprecated `AttuneLeveledItemsWhenReachingLevelOne`, added `Divisor`/`Power` to `PreAwakenXpProfile`
- [x] Rewrote `LivingItemAwakener.cs` — incremental cap system (+5/+10/+15), default profile, curve migration
- [x] Updated `QuestItemGrowthHarmony.cs` — uses per-item stored Divisor/Power, auto-migration on read
- [x] Updated `LootGrowthItem.cs` — random initial cap bonus (+5/10/15), default QuickStart profile
- [x] Deleted `ItemLevelUpAttune.cs` — attune-on-level fully removed
- [x] Updated `QuestGrowthItemHelpers.cs` — removed `EnsureAttunedIfLeveled`
- [x] Updated `QuestItemGrowthLevelEngine.cs` — removed attune call
- [x] Updated `PatchClass.cs` — removed attune patch logic, added `QuestCompletionItemLeveling` registration
- [x] Created `LoremasterBridge.cs` — reflection bridge for QB eligibility check
- [x] Created `ItemLevelingPoints.cs` — kill/quest point award system
- [x] Created `QuestCompletionItemLeveling.cs` — Harmony patch for quest completions
- [x] Updated `FakeKillTask.cs` — awards item leveling points on all kills
- [x] Updated `Settings.json` — new defaults for reworked system, added `Features` list with `FakeKillTask`
- [x] Build & deploy to test server — SUCCESS

### Fixes During Test
- [x] `QuestCompletionItemLeveling` wasn't being patched (missing `PatchCategory` registration in `PatchClass.RefreshAll`)
- [x] `FakeKillTask` wasn't enabled (missing from `Features` in `Settings.json`)
- [x] Server restarted, mod loads cleanly

### Key Design Decisions Finalized
- Formula: cumulative points = sum_{i=1}^{L} BaseXp * (1 + i / Divisor)^Power
- QuickStart default: Base=15, Div=8, Pow=3.2 → ~300k total points to cap
- Kill = 1 point to ALL equipped awakened items
- Quest (QB-eligible via Loremaster bridge) = 100 points
- Curve version mismatch → compute level under old params, rewrite XP to match same level under new params

### Fixes During Test (cont.)
- [x] **Hourglass on coalesced mana use** — Switched from `PublicUpdate` → `PrivateUpdate` messages for inventory items; removed manual `GameMessageDeleteObject`; removed duplicate `SendUseDoneEvent`
- [x] **Coalesced Mana attuned** — Added `DisableAttunedGlobally` QOL setting (Settings.json = true) + SQL to set Attuned=0 on weenies + biota cleanup for existing items
- [x] **Cow Head / Phyntos Wasp Wings not stacking** — Applied SQL to set `MaxStackSize = 100` on weenies and existing biotas:
  - Cow Head (36359), Blue Wasp Wing (3699), Gold (3700), Green (3701), Red (3703), White (7603), Jungle (8426)
- [x] **CreatureDeathItemLeveling** — Created new Harmony postfix on `Creature.OnDeath(DamageHistoryInfo, DamageType, bool)` to award kill points for ALL creatures (not just kill-task ones)
- [x] Removed kill point logic from `FakeKillTask.cs` to prevent double-dipping
- [x] **Weapon name update on damage type change** — Added `UpdateWeaponNameForDamageType` in `LootGrowthItem.cs` called from `RefreshImbueUiEffects`
- [x] Build & deploy to test server — SUCCESS (no ambiguous patch errors, mod loads cleanly)

### SQL Files Added
- `EmpyreanAlteration/Content/SQL/01-trophy-stacking.sql` — Weenie updates for MaxStackSize + Attuned
- `EmpyreanAlteration/Content/SQL/02-biota-cleanup.sql` — Biota patch for existing items

### Next Step
- User testing: awaken item with mana (no hourglass), kill non-kill-task creature (gain +1 point), verify stacking, verify coalesced mana is tradeable
