# Phase 1 — `Windblown` mod scaffold + runtime weenie injection (drudge charms)

**Goal:** Prove the runtime-weenie-injection pattern by replicating the 4 Bloodletter Drudge Charm tier WCIDs (24835, 850271–850273) entirely from the new `Windblown/` mod — **zero SQL** required for these WCIDs going forward.

**Status:** in progress (started 2026-05-04).

## Architecture decision

- **Pattern:** Harmony **prefix on `WorldDatabaseWithEntityCache.GetCachedWeenie(uint)`** that returns an in-memory `ACE.Entity.Models.Weenie` POCO when the requested WCID is in our registry; otherwise falls through to vanilla DB lookup.
- **Authoring model:** JSON files under `Content/Weenies/*.json` describe each custom WCID as a **delta on a base WCID**. At `Start()`, registry deep-clones the cached vanilla weenie and applies overrides. Means JSON only carries the diff (per-tier name / plural / icon / max stack), not the entire weenie.
- **Bootstrap order:** `base.Start()` applies Harmony patches → registry initializes → `IsReady` flag flips on. Until `IsReady`, the prefix skips so `GetCachedWeenie(baseWcid)` returns the vanilla weenie for cloning.

## Phases

| # | Step | Owner |
|---|---|---|
| 1 | Scaffold `Windblown/` (csproj / Meta / Settings / Mod / GlobalUsings / PatchClass) — copy from `BetterSupportSkills` invariants | done in this session |
| 2 | `Weenies/WeenieDefinition.cs` POCO (matches JSON schema: `ClassId`, `ClassName`, `WeenieType`, `BaseWcid`, `PropertiesInt/Bool/Float/String/DID`, deletes) | this session |
| 3 | `Weenies/WeenieRegistry.cs` — load JSON, deep-clone base, apply overrides, expose `TryGet` + `IsReady` | this session |
| 4 | `Weenies/WeenieCachePatches.cs` — `partial PatchClass`, `[HarmonyPrefix]` on `GetCachedWeenie(uint)` and `(string)` | this session |
| 5 | `PatchClass.cs` — `BasicPatch<Settings>`, `Start()` calls `WeenieRegistry.Initialize` + `IsReady = true` | this session |
| 6 | `Content/Weenies/drudge-charms.json` — 4 weenies with `BaseWcid: 24835` + per-tier overrides exactly matching `DrudgeCharm_TierWeenies_World.sql` + `DrudgeCharm_SunstoneUnderlay_2026-05-08.sql` | this session |
| 7 | `dotnet build Windblown` until clean | this session |
| 8 | Document operator verification steps in `Windblown/Readme.md` (drop DLL, restart, kill drudge, verify drops, hot-reload after JSON edit) | this session |
| 9 | **OUT OF SCOPE for Phase 1** — extracting BSS drop rolls + bulk turn-in into `Windblown/TrophyLines/`. Phase 2. | later |
| 10 | **OUT OF SCOPE for Phase 1** — auto-importing `Content/SQL/` for landblock_instance / POI. Phase 3. | later |

## Out of scope this session

- **Touching BSS** — `DrudgeCharmTrophySettings`, `TryRollDrudgeCharmDrops`, `BulkQuestWcids` stay where they are. Once runtime-weenie injection is proven, Phase 2 extracts them.
- **Removing existing SQL** — old DB rows for 24835 / 850271–273 stay in `ace_world`. The runtime prefix overrides them at lookup time, so no DB cleanup is required for Phase 1 to work. (If tested with mod disabled, items still exist via DB — this is the safe fallback.)
- **Non-drudge custom items** — the 8 subfolders under `WindblownContent/01-weenies` etc. are deferred.

## Risks

- **Cache invariant**: ACE has `PopulateWeenieSpecificCaches()` that snapshots `weenieCache.Values` into `weenieCacheByType` for `GetRandomWeeniesOfType`. Drudge charms aren't currently rolled via that path, so this is fine; document for future content where it might matter.
- **Hot-reload of JSON**: Editing `drudge-charms.json` requires re-running `WeenieRegistry.Initialize()`. `BasicPatch<>` `Start()` runs on hot-reload, so this should "just work" — verify in Phase 1 testing.
- **Biota orphaning if mod disabled**: Existing `ace_shard.biota` rows referencing 850271–273 will fail to construct on next login if mod is disabled AND the SQL has also been rolled back. As long as old SQL data stays in `ace_world`, vanilla lookup falls through fine.
