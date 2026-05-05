# Findings — Windblown mod scaffold (Phase 1)

## ACE WeenieCache internals (from `.references/ACRealms.WorldServer-2.1.4/.../WorldDatabaseWithEntityCache.cs`)

- `weenieCache` is a `ConcurrentDictionary<uint, ACE.Entity.Models.Weenie>` private field on `WorldDatabaseWithEntityCache` — accessible from mods because every mod uses `Krafs.Publicizer` with `PublicizeAll=true`.
- `GetCachedWeenie(uint)` checks cache first, then falls through to DB via `GetWeenie(uint)`.
- `GetCachedWeenie(string className)` looks up a parallel `weenieClassNameToClassIdCache`, then calls the uint overload.
- `ClearCachedWeenie(uint)` exists; `ClearWeenieCache()` flushes everything (admin reload path).
- `PopulateWeenieSpecificCaches()` snapshots into `weenieCacheByType` — only relevant for `GetRandomWeeniesOfType` (treasure rolling).

## ACE.Entity.Models.Weenie shape

- POCO with `IDictionary<PropertyInt,int> PropertiesInt`, `IDictionary<PropertyBool,bool> PropertiesBool`, `IDictionary<PropertyFloat,double> PropertiesFloat`, `IDictionary<PropertyString,string> PropertiesString`, `IDictionary<PropertyDataId,uint> PropertiesDID` etc.
- `WeenieClassId`, `ClassName`, `WeenieType` are scalar properties.
- Comment: *"Only populated collections and dictionaries are initialized. We do this to conserve memory in ACE.Server. Be sure to check for null first."* — meaning the cached vanilla weenie may have null collections that we must materialize before adding entries.

## Mod scaffolding invariants (from `BetterSupportSkills.csproj`)

- `<TargetFramework>net10.0</TargetFramework>`
- `<OutputPath>C:\ACE\Mods\$(AssemblyName)</OutputPath>` (cleaner than hardcoding the name)
- `Krafs.Publicizer` 2.2.1 with `PublicizeAll=true` → all ACE internals accessible
- `Lib.Harmony` 2.3.3 with `ExcludeAssets="runtime"` (server provides Harmony)
- `ACEmulator.ACE.Shared` 1.* (no `ExcludeAssets="runtime"` — each mod bundles `ACE.Shared.dll`)
- Conditional `$(Realms)` block included for ACRealms users (mirrors Lockboxes pattern)
- ACE server DLLs: `Reference` + `Private=False` + `ExcludeAssets="all"`
- `CleanupFilesRelease` post-build target removes `*.deps.json`, `*.runtimeconfig.json`, `*.pdb`, `runtimes\` (else **Missing IHarmonyMod Type** at load)
- `ZipOutputPath` post-build target zips for distribution in Release
- `Meta.json` and `Settings.json` `CopyToOutputDirectory=PreserveNewest`

## Drudge charm canonical state (from `DrudgeCharm_TierWeenies_World.sql` + `DrudgeCharm_SunstoneUnderlay_2026-05-08.sql`)

All four WCIDs share base properties from vanilla 24835 (Bloodletter Drudge Charm), with the following deltas:

| Field | 24835 | 850271 (Quality) | 850272 (Pristine) | 850273 (Perfect) |
|---|---|---|---|---|
| `ClassName` (weenie row) | `bloodletter_drudge_charm` (vanilla) | `drudgecharm_quality` | `drudgecharm_pristine` | `drudgecharm_perfect` |
| `WeenieType` | (vanilla — Stackable=51) | 51 | 51 | 51 |
| `PropertyString.Name` (1) | `Bloodletter Drudge Charm` | `Bloodletter Drudge Charm (Quality)` | `Bloodletter Drudge Charm (Pristine)` | `Bloodletter Drudge Charm (Perfect)` |
| `PropertyString.PluralName` (20) | `Bloodletter Drudge Charms` | `Bloodletter Drudge Charms (Quality)` | `Bloodletter Drudge Charms (Pristine)` | `Bloodletter Drudge Charms (Perfect)` |
| `PropertyString.LongDesc` (16) | `Collectors and Trophy Collectors will reward a great deal of experience and pyreals for turning in these charms.` | (same) | (same) | (same) |
| `PropertyString.Use` (14) | **deleted** | **deleted** | **deleted** | **deleted** |
| `PropertyString.ShortDesc` (15) | **deleted** | **deleted** | **deleted** | **deleted** |
| `PropertyDataId.IconUnderlay` (52) | **100676438** (sunstone) | 100676438 | 100676438 | 100676438 |
| `PropertyInt.MaxStackSize` (11) | **999** | 999 | 999 | 999 |
| `PropertyInt.UiEffects` (18) | **deleted** | **deleted** | **deleted** | **deleted** |
| `PropertyInt.ImbuedEffect` (179) | **deleted** | **deleted** | **deleted** | **deleted** |

`weenie_properties_create_list` for 24835 is also scrubbed (mod owns drops). That's a DB-level change to vanilla rows, not a custom-weenie thing — handled separately if/when we move the drop logic into Windblown (Phase 2).
