# Progress — Windblown mod scaffold (Phase 1)

## 2026-05-04 (in progress)

- [x] Loaded `ace-mod` + `ace-mod-team` skills.
- [x] Reviewed `Lockboxes` and `BetterSupportSkills` `.csproj` for invariants.
- [x] Read ACRealms `WorldDatabaseWithEntityCache.cs` and `Weenie.cs` POCO.
- [x] Confirmed canonical drudge charm SQL state in `DrudgeCharm_TierWeenies_World.sql`.
- [x] Wrote `task_plan.md` / `findings.md` / `progress.md`.
- [x] Scaffolded `Windblown/` mod (`Windblown.csproj`, `Meta.json`, `Mod.cs`, `GlobalUsings.cs`, `Settings.cs`, `Settings.json`, `PatchClass.cs`).
- [x] Implemented `Weenies/WeenieDefinition.cs` (JSON schema POCO).
- [x] Implemented `Weenies/WeenieRegistry.cs` (deep-clone base weenie, apply overrides/deletes, expose `TryGet`).
- [x] Implemented `Weenies/WeenieCachePatches.cs` (Harmony prefix on `WorldDatabaseWithEntityCache.GetCachedWeenie(uint)` and `(string)`).
- [x] Authored `Content/Weenies/drudge-charms.json` (4 Bloodletter tier weenies with `BaseWcid: 24835` + sunstone IconUnderlay + 999 MaxStackSize + per-tier names/plurals).
- [x] **Build clean** — Debug + Release. Deployment verified at `C:\ACE\Mods\Windblown\` (DLL + ACE.Shared + Meta + Settings + Content/Weenies/drudge-charms.json; no .deps.json/.pdb after Release cleanup).
- [x] Documented operator verification + bootstrap order + JSON authoring model in `Windblown/Readme.md`.
- [x] **Operator verification (test server)**: confirmed `/ci 24835`, `/ci 850271`, `/ci 850272`, `/ci 850273` all spawn singletons with correct names, sunstone IconUnderlay, and tier-specific glow (white/green/blue/purple). Bulk turn-in to Collector NPCs accepts all 4 tier WCIDs via the emote-mirror layer.

### Bugs fixed during operator verification

1. **Namespace mismatch (Harmony silent miss)**: `Weenies/WeenieCachePatches.cs` originally declared `partial class PatchClass` in namespace `Windblown.Weenies`. The real PatchClass lives in `Windblown`. C# considers these two distinct types, so the `[HarmonyPatch]` attributes on the Weenies-namespaced halves never auto-attached. Symptoms looked like the prefix wasn't firing at all (and indeed it wasn't). Fixed by moving namespace to `Windblown` with an explicit comment in the file. Captured as a durable finding for `ace-mod` skill.
2. **`StackSize` inheritance**: vanilla `Bloodletter Drudge Charm` (24835) carries `PropertyInt.StackSize = 40` as the default-spawn count. Higher tiers cloned from 24835 inherited this, so `/ci 850271` produced a stack of 40 by default. Fixed by adding explicit `"StackSize": 1` override on all four tiers in JSON.
3. **`/ci` is not `/create`**: `/ci` calls `WorldObjectFactory.CreateNewWorldObject(weenie, RealmRuleset)` → reads weenie's `PropertiesInt.StackSize`. Important to test with the actual command operators use, not the `/create` wrapper.
4. **Higher tiers rejected by Collector NPCs**: vanilla NPCs only have `EmoteCategory.Give` rows for the base WCID (24835). Without per-NPC emote table modification, NPCs respond with "X doesn't know what to do with that." Solved with **emote-mirror layer** — Harmony postfix on `WorldObject.HasGiveOrRefuseEmoteForItem` looks up the requesting WCID in `WeenieRegistry._emoteMirror`; on hit, retries `EmoteManager.GetEmoteSet(category, null, null, sourceWcid)` on the same NPC and clones the result with `WeenieClassId = item.WeenieClassId` so downstream patches (BSS `PreExecuteEmoteSet`) see a matching key. JSON schema gained `MirrorEmoteFromWcid` per-WCID. Auto-discovered by NPC: any future custom Collector with a vanilla 24835 Give emote inherits the higher-tier acceptance for free.

### Files added in Phase 1

- `Windblown/Windblown.csproj`, `Meta.json`, `Mod.cs`, `GlobalUsings.cs`, `Settings.cs`, `Settings.json`, `PatchClass.cs`, `Readme.md`
- `Windblown/Weenies/WeenieDefinition.cs` (JSON schema POCO; includes `BaseWcid` + `MirrorEmoteFromWcid`)
- `Windblown/Weenies/WeenieRegistry.cs` (registry-first base resolution, mirror map)
- `Windblown/Weenies/WeenieCachePatches.cs` (Harmony prefix on `GetCachedWeenie(uint)` and `(string)`)
- `Windblown/Weenies/EmoteMirrorPatches.cs` (Harmony postfix on `HasGiveOrRefuseEmoteForItem`)
- `Windblown/Content/Weenies/drudge-charms.json` (4 Bloodletter tier weenies, all properties, mirror config)

## Phase 2 — handoff state (still pending)

- BSS still owns `DrudgeCharmTrophies` settings + `TryRollDrudgeCharmDrops` + `BulkQuestWcids`. Phase 1 just provides the **weenies + Collector NPC acceptance**; the **drop rolls and turn-in mechanics stay in BSS** until Phase 2 extracts them into a generic `Windblown/TrophyLines/` subsystem.
- Old SQL in `WindblownContent/Content/SQL/DrudgeCharm_*.sql` should NOT be reverted yet. Existing biota in `ace_shard.biota` referencing 24835/850271–273 continues to work either way (Windblown returns our weenie, vanilla DB has the legacy rows as harmless fallback). Once Phase 2 is verified stable, those SQL files can be moved to a `deprecated/` folder.
