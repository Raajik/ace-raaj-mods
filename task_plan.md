# BetterLootControl Consolidation — Task Plan

## Goal
Merge `SharedLoot` (loot models, roller, config store) and `BetterChestLoot` (chest injection, global rare drops) into a single mod: **`BetterLootControl`**. Update all dependent mods to reference the new consolidated mod.

## Phases

### Phase 1 — Scaffold BetterLootControl
- [ ] Create `BetterLootControl/` folder
- [ ] Create `.csproj` with proper references (ACE.Shared, ACE.Server, Lib.Harmony, Krafs.Publicizer)
- [ ] Create `Meta.json` (Enabled: true, HotReload: true)
- [ ] Create `Settings.cs` — merged settings from BetterChestLoot
- [ ] Create `Settings.json` — copy from BetterChestLoot
- [ ] Create `GlobalUsings.cs` — copy from BetterChestLoot
- [ ] Create `Mod.cs` — entry point

### Phase 2 — Migrate SharedLoot Files
- [ ] Copy `LootRoller.cs` → `BetterLootControl/` (preserve `namespace SharedLoot`)
- [ ] Copy `DefaultLootConfig.cs` → `BetterLootControl/` (preserve `namespace SharedLoot`)
- [ ] Copy `LootModels.cs` → `BetterLootControl/` (preserve `namespace SharedLoot`)
- [ ] Copy `LootConfigStore.cs` → `BetterLootControl/` (preserve `namespace SharedLoot`)
- [ ] Copy `LootConfigPaths.cs` → `BetterLootControl/` (preserve `namespace SharedLoot`)
- [ ] Copy `LootConfigJson.cs` → `BetterLootControl/` (preserve `namespace SharedLoot`)
- [ ] Copy `SalvageBagShaper.cs` → `BetterLootControl/` (preserve `namespace SharedLoot`)
- [ ] Update `LootRoller.TryApplyLivingEquipment` comment → point to `EmpyreanAlteration`

### Phase 3 — Migrate BetterChestLoot Logic
- [ ] Create `PatchClass.cs` — absorb BetterChestLoot patches (chest SelectAProfile, Reset, Close)
- [ ] Create `GlobalRareDrops.cs` — absorb rare drop patches (Creature.GenerateTreasure)
- [ ] Update `PatchClass` namespace to `BetterLootControl`
- [ ] Update `GlobalRareDrops` namespace to `BetterLootControl`
- [ ] Update all internal log prefixes from `[BetterChestLoot]` to `[BetterLootControl]`
- [ ] Fix `Mod.ModPath` reference in PatchClass to use `BetterLootControl` assembly name

### Phase 4 — Update Dependent Mods
- [ ] `CommonGoals.csproj` — change `SharedLoot` reference → `BetterLootControl`
- [ ] `WorldEvents.csproj` — change `SharedLoot` reference → `BetterLootControl`
- [ ] `Loremaster.csproj` — change `SharedLoot` reference → `BetterLootControl`
- [ ] Verify no `using BetterChestLoot;` references exist in dependent mods (none expected)

### Phase 5 — Deprecate Old Mods
- [ ] `SharedLoot/Meta.json` — set `Enabled: false`
- [ ] `BetterChestLoot/Meta.json` — set `Enabled: false`
- [ ] Add deprecation comments in old `Meta.json` files

### Phase 6 — Build & Verify
- [ ] `dotnet build BetterLootControl/BetterLootControl.csproj`
- [ ] `dotnet build CommonGoals/CommonGoals.csproj`
- [ ] `dotnet build WorldEvents/WorldEvents.csproj`
- [ ] `dotnet build Loremaster/Loremaster.csproj`
- [ ] Fix any compile errors

### Phase 7 — Deploy to Test
- [ ] Copy new `BetterLootControl` build to `C:\ACE\Mods\BetterLootControl\`
- [ ] Copy updated dependent DLLs to test server
- [ ] Copy `Settings.json` and `Meta.json` for BetterLootControl
- [ ] Verify old mods are disabled in test server `Meta.json`
- [ ] Restart test server, monitor logs for mod load errors

### Phase 8 — Cleanup (after live migration period)
- [ ] Delete `SharedLoot/` folder
- [ ] Delete `BetterChestLoot/` folder
- [ ] Remove old entries from `.sln` file
- [ ] Update `PLAN.md` and `README.md`

## Files Created / Modified
| File | Action |
|------|--------|
| `BetterLootControl/BetterLootControl.csproj` | Create |
| `BetterLootControl/Meta.json` | Create |
| `BetterLootControl/Settings.cs` | Create |
| `BetterLootControl/Settings.json` | Create |
| `BetterLootControl/GlobalUsings.cs` | Create |
| `BetterLootControl/Mod.cs` | Create |
| `BetterLootControl/PatchClass.cs` | Create |
| `BetterLootControl/GlobalRareDrops.cs` | Create |
| `BetterLootControl/LootRoller.cs` | Create (from SharedLoot) |
| `BetterLootControl/DefaultLootConfig.cs` | Create (from SharedLoot) |
| `BetterLootControl/LootModels.cs` | Create (from SharedLoot) |
| `BetterLootControl/LootConfigStore.cs` | Create (from SharedLoot) |
| `BetterLootControl/LootConfigPaths.cs` | Create (from SharedLoot) |
| `BetterLootControl/LootConfigJson.cs` | Create (from SharedLoot) |
| `BetterLootControl/SalvageBagShaper.cs` | Create (from SharedLoot) |
| `CommonGoals/CommonGoals.csproj` | Edit reference |
| `WorldEvents/WorldEvents.csproj` | Edit reference |
| `Loremaster/Loremaster.csproj` | Edit reference |
| `SharedLoot/Meta.json` | Disable |
| `BetterChestLoot/Meta.json` | Disable |
