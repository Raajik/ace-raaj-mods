# Windblown

Windblown server custom-content mod. Inject custom weenies into ACE's runtime weenie cache from JSON files — **no SQL deployment, no server restart, no DB backup/rollback dance**. Edit the JSON, hot-reload the mod, see the change.

## Status

| Phase | Scope | State |
|---|---|---|
| 1 | Runtime weenie injection (`WeenieRegistry` + Harmony prefix). Windblown collector trophy band **850300–850336** (drudge/rat/wasp/scalp/mob heads; retired **850271–850285**). | **Shipped** |
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
  "ClassId": 850301,
  "ClassName": "drudgecharm_quality_wb",
  "WeenieType": "Stackable",
  "BaseWcid": 24835,
  "MirrorEmoteFromWcid": 24835,
  "PropertiesString": {
    "Name": "Drudge Charm (Quality)",
    "PluralName": "Drudge Charms (Quality)"
  },
  "PropertiesInt": {
    "MaxStackSize": 999,
    "StackSize": 1,
    "Value": 1,
    "EncumbranceVal": 1,
    "UiEffects": 256
  },
  "PropertiesDID": { "IconUnderlay": 100676438 },
  "Delete": {
    "PropertiesString": ["Use", "ShortDesc"],
    "PropertiesInt": ["ImbuedEffect"]
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

## Trophy System

Windblown includes a generic trophy-line system for custom collector items.

**Drudge Charms**: Vanilla WCID **3669** (low-level drudge charm) is replaced by custom tiered trophies via `ReplaceSiblingWcids` and `BlockedCreationWcids`. WCID **24835** (bloodletter drudge charm) is preserved for equipment turn-ins.

**Coalesced Mana**: 3-tier trophies (Lesser WCID 850366, Greater 850367, Aetheric 850368) drop from all creatures at 0.5% per tier via the `"Universal"` creature-type gate. Features blue underlay + numbered overlays, autoloots to pack, and bulk turn-in to collector NPCs.

- Registry: `TrophyLines/TrophyLineRegistry.cs`
- Drop patches: `TrophyLines/TrophyDropPatches.cs`
- Turn-in patches: `TrophyLines/TrophyTurnInPatches.cs`
- Letter patches: `TrophyLines/LetterTurnInPatches.cs`

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
| `Content/Weenies/coalesced-mana.json` | 3-tier Coalesced Mana trophies (Lesser/Greater/Aetheric) with blue underlay + overlays. |
| `Content/TrophyLines/drudge-charm.json` | Trophy drop/turn-in config for drudge charms. |
| `Content/TrophyLines/coalesced-mana.json` | Trophy drop config for Coalesced Mana (0.5% each tier, universal creature gate). |
