# BetterLootControl Consolidation — Findings

## Namespace Strategy
- **SharedLoot files** will keep `namespace SharedLoot;` so dependent mods (CommonGoals, WorldEvents, Loremaster) require **zero C# changes**
- Only `.csproj` references need updating in dependents
- **BetterChestLoot files** will use `namespace BetterLootControl;` since nothing external references them

## Cross-Mod Bridge in LootRoller
- `LootRoller.TryApplyLivingEquipment` currently bridges to `LivingEquipment.LootMutator.ApplyToLootItem`
- PLAN.md says LivingEquipment is being migrated to EmpyreanAlteration
- We should update the bridge to try `EmpyreanAlteration` first, then fall back to `LivingEquipment` if present
- Actually, since EmpyreanAlteration already absorbed pre-awaken/pre-imbue loot logic, and the bridge is only for gear drops, we should update it to point to EA

## LootConfig.json Location
- `LootConfigPaths.DefaultLootConfigPath` returns `ModsRoot/Loremaster/LootConfig.json`
- BetterLootControl should probably reference the same path, or we could move it
- Decision: keep the same path for now to avoid breaking existing deployments

## SharedLoot.csproj Notes
- `SharedLoot.csproj` is minimal: only ACE.Common, ACE.Entity, ACE.Server references
- No ACE.Shared package reference, no Harmony, no Publicizer
- The dependent mods handle those dependencies themselves
- BetterLootControl.csproj needs the **full** reference set (same as BetterChestLoot) because it contains Harmony patches

## GlobalRareDrops Note
- GlobalRareDrops uses `PatchClass.Settings` which is a static property reading from Settings.json
- In the new mod, we need the same Settings pattern
