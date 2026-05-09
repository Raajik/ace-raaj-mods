# Windblown

Windblown server custom-content mod. Inject custom weenies into ACE's runtime weenie cache from JSON files — **no SQL deployment, no server restart, no DB backup/rollback dance**. Edit the JSON, hot-reload the mod, see the change.

## Status

| Phase | Scope | State |
|---|---|---|
| 1 | Runtime weenie injection (`WeenieRegistry` + Harmony prefix). Custom WCIDs 850271–850285 for trophy tiers. | **Shipped** |
| 2 | Generic trophy-line system (drop rolls + bulk turn-in). | **Shipped** — `Content/TrophyLines/*.json` |
| 3 | SQL bootstrap for DB-needed content (vendors, landblock_instance, items that need world persistence). Organized under `Content/SQL/` by category: Items (800000-809999), Vendors (810000-819999), Pathwarden, VanillaTweaks. | **Shipped (2026-05-08)** |

### WCID ranges (SQL content)

See `AGENTS.md §8.16` for the full allocation.

## Architecture: runtime weenie injection

`WorldDatabaseWithEntityCache.GetCachedWeenie(uint)` is the engine's only path from WCID → `Weenie` POCO → `WorldObject`. We Harmony-prefix it: when the requested WCID is in the `WeenieRegistry`, we return our in-memory weenie and skip the DB lookup entirely. For everything else, we fall through to vanilla.

The result: custom items behave identically to native ACE weenies for **drops, vendors, examine, treasure rolls, factory creation** — but the source of truth is `Content/Weenies/*.json` in this mod, not MySQL.

### JSON authoring model

Each entry inherits from a `BaseWcid` (typically the closest vanilla weenie). The mod deep-clones the cached vanilla weenie and layers your overrides on top, so JSON only carries the **delta**:

```json
{
  "ClassId": 850271,
  "ClassName": "drudgecharm_quality",
  "WeenieType": "Stackable",
  "BaseWcid": 24835,
  "PropertiesString": {
    "Name": "Bloodletter Drudge Charm (Quality)",
    "PluralName": "Bloodletter Drudge Charms (Quality)"
  },
  "PropertiesInt": { "MaxStackSize": 999 },
  "PropertiesDID": { "IconUnderlay": 100676438 },
  "Delete": {
    "PropertiesString": ["Use", "ShortDesc"],
    "PropertiesInt":    ["UiEffects", "ImbuedEffect"]
  }
}
```

Property keys use the **enum name** (e.g. `Name`, `MaxStackSize`, `IconUnderlay`) rather than numeric type ids, so you don't need a SQL schema reference. Unknown names log a warn and skip.

### Bootstrap order

1. `PatchClass.Start()` runs.
2. `base.Start()` applies Harmony patches — but `WeenieRegistry.IsReady = false`, so the prefix is a no-op.
3. `ResolveModDirectory()` + `ReloadSettingsFromDisk()` — picks up live `Settings.json`.
4. `WeenieRegistry.Initialize()` — for each JSON entry, calls `DatabaseManager.World.GetCachedWeenie(BaseWcid)` (returns vanilla because `IsReady=false`), shallow-clones, applies overrides/deletes, registers under `ClassId`.
5. `IsReady = true`. From here on, the prefix returns our weenies.

## Settings (`Settings.json`)

| Key | Default | Notes |
|---|---|---|
| `EnableCustomWeenies` | `true` | Master toggle. When `false`, registry is not loaded; all WCIDs fall through to vanilla DB lookup. |
| `LogWeenieRegistrySummary` | `true` | One-line summary at `Start()` listing registered WCIDs. |
| `LogWeenieRegistryVerbose` | `false` | Per-WCID + per-property logging. Debugging only. |

## Operator workflow

### First install
1. `dotnet build Windblown/Windblown.csproj` — DLL + `Meta.json` + `Settings.json` + `Content/` deploy to `C:\ACE\Mods\Windblown\`.
2. Restart the server (or `/mod l Windblown` if Meta.json `HotReload=true` and the framework supports it on add).
3. Watch log: `[Windblown] Registered N custom weenie(s): <wcids>` confirms load.
4. Verify in-game: spawn or kill a Drudge → should drop a Bloodletter Drudge Charm with sunstone underlay icon.

### Iterating on weenie definitions
1. Edit any file under `Content/Weenies/`.
2. Reload the mod: `/mod f Windblown` (or however the framework hot-reloads).
3. `Start()` re-runs → registry rebuilds from new JSON → existing items in inventory pick up new properties on next examine/render.

### Disabling
- Flip `Settings.json` → `"EnableCustomWeenies": false` → `/mod f Windblown`. Custom WCIDs revert to whatever the vanilla DB has (which still includes the legacy SQL-applied rows; safe fallback).
- OR set `Meta.json` → `"Enabled": false` → reload. Mod doesn't load at all.

## Known limitations

- **Weenie eviction**: Admin commands like `/weenie reload` or any code path that calls `ClearCachedWeenie(uint)` will evict cache entries. Our prefix re-serves on the next `GetCachedWeenie` call, so this is transparent — but if you observe a custom item de-spawning or examining oddly after such a command, hot-reload the mod to re-confirm registration.
- **`PopulateWeenieSpecificCaches`**: ACE snapshots `weenieCache.Values` into a per-`WeenieType` bucket used by `GetRandomWeeniesOfType` (treasure rolls). Our weenies aren't auto-included in that bucket. Phase 2 will add a one-shot inject if/when we ship custom weenies that need to participate in random treasure rolls.
- **Biota persistence**: If you disable the mod *and* the legacy SQL rows in `ace_world` have also been deleted, existing items in player inventories (biota referencing custom WCIDs) cannot reconstruct. Recommended: keep the SQL rows or run a player-side cleanup before turning anything off permanently.

## Files

| File | Purpose |
|---|---|
| `Windblown.csproj` | Mirrors `BetterSupportSkills` invariants (net10.0, Publicizer, Lib.Harmony, ACE refs). |
| `Meta.json` | Mod manifest. `HotReload=true`. |
| `Settings.cs` / `Settings.json` | Two-band JSON settings (docs band + values band). |
| `Mod.cs` | `BasicMod` entry. `Setup(nameof(Windblown), new PatchClass(this))`. |
| `PatchClass.cs` | `BasicPatch<Settings>`. `Start()` resolves mod dir, reloads settings, initializes registry. |
| `Weenies/WeenieDefinition.cs` | JSON schema POCO. |
| `Weenies/WeenieRegistry.cs` | Loads JSON, deep-clones base, applies overrides/deletes, exposes `TryGet`. |
| `Weenies/WeenieCachePatches.cs` | Harmony prefix on `GetCachedWeenie(uint)` and `(string)`. Partial `PatchClass`. |
| `Content/Weenies/drudge-charms.json` | Phase 1 deliverable: 4 Bloodletter tier weenies. |
