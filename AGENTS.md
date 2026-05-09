# AGENTS.md - ace-raaj-mods

## 1. Mandatory Skills
Before any work, load applicable skills:
- **ace-mod** - REQUIRED for all C#, Harmony, weenie, or database work.
- **using-superpowers** - Load before ANY action; if a skill might apply (even 1%), load it.
- **planning-with-files** - REQUIRED for all multi-phase or complex tasks (3+ steps). Before execution, create `task_plan.md`, `findings.md`, and `progress.md` in the project directory and update them after each phase.
- **Local skill override** - This repo contains a team-specific skill at `.cursor/skills/ace-mod-team/SKILL.md` that extends the global `ace-mod` skill with project-specific patterns. When the global `ace-mod` skill is invoked, also read the local override.

## 2. Starting Workflow
**Git (each new chat, before substantive work):** From repo root `A:/ai/projects/ace-raaj-mods`, run `git status -sb`. If dirty, note `M` / `??` paths briefly so unstaged and untracked work is not forgotten. Repeat before handoff when edits were made.

Always check in this order:
1. **`PLAN.md`** - **Active** work only: bug tracker, immediate reworks, suggested implementation order, greenfield backlog, short `## Progress (recent)` pointers. **Do not** let PLAN grow into a duplicate shipped-history log.
2. **`COMPLETED.md`** - **Shipped** milestones and retrospectives, **one dated section per ship day** (`## YYYY-MM-DD`). Canonical "what already landed." For history or changelog detail, read here-not a bloated PLAN.
3. **Ship workflow:** When work is verified and committed, **append `COMPLETED.md`** (dated subsection with enough detail for future you), then **trim `PLAN.md`** (remove matching "Done" bullets from Progress, collapse long shipped sections, keep PLAN scannable).
4. `README.md` - Mod list, enablement status.
5. Mod-specific `Readme.md` - Per-mod docs and configuration notes.
6. **Skills** - Load domain-specific skills before touching code.
7. **Game mechanics / vanilla ACE behavior** - Follow **§7.0** (wiki first, then live tree, then `.references/`, then graphify/rg). Do not invent behavior from memory.

## 3. Repo Conventions
- **ValheelContent is PERMANENTLY EXCLUDED from all deployments** — never copy `build/ValheelContent/` to any server (`C:\ACE\`, `C:\ACE-WB\`, `A:\void-test\`) unless the user explicitly asks to deploy it. This applies to ALL servers.
- **Mod structure:** Each folder = deployable mod containing:
  - `Meta.json` - Enable/disable, hot-reload, version. **Do not change `Enabled` without user direction.**
  - `Settings.cs` - C# defaults. Use `JsonPropertyName("// ...")` doc band + values band pattern.
  - `Settings.json` (in repo) - **Template / shared defaults** for new installs, CI, and docs. Safe to edit for **new keys** and documented example values-not assumed to match what Windblown test is tuned to.
  - `*.csproj` - Builds to `A:\ai\projects\ace-raaj-mods\build\$(AssemblyName)\` locally (**never** touches any server at build time).

**Test ACE `Settings.json` (operator source of truth - `C:\ACE\Mods\<AssemblyName>\Settings.json`):** The **installed** file on **`C:\ACE\`** is the **canonical balance and preference** snapshot for test. Agents and humans should treat it as **immutable** in the sense: **do not overwrite it** with the repo copy on deploy unless the operator explicitly wants a reset. When adding a feature with **new** JSON keys: update **`Settings.cs`** + repo **`Settings.json`** (defaults + doc band), **and** merge those keys into the test file (or edit test directly while iterating)-then backfill repo defaults from agreed-on values if you want shipped defaults to match post-balance. **`push test`** (§8.1): deploy DLL/Meta; **preserve** test `Settings.json` by default.
- **Harmony patches:** Prefer `nameof` targeting. Prefix patch methods with `Pre`/`Post`/`Transpiler`. Use `PatchCategory` for grouped unpatch.
- **Cross-mod properties:** Check shared IDs before inventing new ones:

| Property | Meaning | Used By |
|----------|---------|---------|
| `FakeFloat 11012` | EnlightenmentPoolBonus | AureatePath / Loremaster / ChallengeModes |
| `FakeInt 40113` | BuddySpawn tag | Swarmed |
| `FakeInt 10029` | CreatureExType | Swarmed |
| `FakeBool 40100` | GrowthItem | EmpyreanAlteration |
| `FakeBool 40130` | IsAwakened | EmpyreanAlteration |
| `FakeInt 40131` | AwakenedTier | EmpyreanAlteration |
| `FakeInt 40132` | PreImbuedCount | EmpyreanAlteration |
| `FakeInt 40133` | Overtinked custom imbue bitmask (Hemorrhage/Cleaving/Nether/Shatter on item) | Overtinked |
| `FakeInt 40134` | Shatter debuff stack count on creature | Overtinked |
| `FakeInt 40135` | Shatter broken (max stacks) on creature | Overtinked |
| `FakeString 11033` | OriginalName | EmpyreanAlteration |
| `FakeString 11034` | ProfileName | EmpyreanAlteration |
| `FakeBool 12001` | Event announcement opt-out | WorldEvents |
| `FakeBool 12002` | **Legacy** periodic auto-claim flag (pre-json); migrated to `Mods/WorldEvents/PendingClaimsAuto/<guid>.json` on login/tick - do not reuse for new features | WorldEvents |

**Windblown custom trophies (physical stackables):** When adding tiered quest trophies that should **autoloot to the pack** as real items (not LLL ledger rows), follow **`WindblownContent/docs/Windblown-Custom-Trophy-Settings.md`** - WCID checklist, AutoLoot Pass 1 (`UpgradedTrophyWeenieClassIds`), QOL bulk turn-in, BSS drops/turn-in, SQL template. Extend that doc with each new line.

## 4. Agent Permissions
- **DO:** Edit repo `Settings.json` for templates/new keys; tune **test** `C:\ACE\Mods\<Mod>\Settings.json` for balance (that file is operator truth-see §3). Fix bugs, refactor for clarity.
- **DO:** Apply SQL you add or change under mod `Content/SQL/` (or equivalent) to the target MySQL database yourself-**test `ace_world`** by default-using the repo's MySQL credentials, then verify with `SELECT`. Do not leave "run this manually" as the only step unless the user forbids DB writes.
- **DO:** **Back up before SQL that adds or mutates world/shard data** - `mysqldump` (scoped to the rows/tables you will touch) into `WindblownContent/sql-backups/YYYY-MM-DD/` before `mysql ... <` applies the change. Same for live `wb_*` when the user authorizes it. See §8.7.
- **DO:** Commit and push after every bug fix or problem solved. Never accumulate uncommitted fixes.
- **DO NOT:** Change `Meta.json` enablement without explicit user direction.
- **DO NOT:** Create new mods without confirming scope.
- **DO NOT:** Use, reference, modify, or deploy `ValheelContent` for any reason unless specifically asked by the user.
- **DEPLOYMENT WORKFLOW:** **ALWAYS deploy to test server (`C:\ACE\`) first.** Never push directly to live (`C:\ACE-WB\`) unless user explicitly says "push live". Test → Verify → Then request permission.

## 5. Build & Deploy
- Build locally via `dotnet build` in each mod folder (outputs to `C:\ACE\Mods\`).
- Release zips auto-generated by `.csproj` `ZipOutputPath` target in Release config.
- GitHub Actions workflow handles CI builds and releases.

## 6. Releases & Changelogs
- **Every push** to GitHub must include a clear changelog.
- Update `README.md` feature list when adding/changing significant functionality.
- Hand-written summaries for user-facing changes are strongly preferred.

## 7. External Paths (Always Allowed)

### 7.0 Game mechanics: ACE source lookup

**Primary source of truth for "how does the game work?" questions:** the wiki hub **`A:\obsidian\jeremy\wiki\game-engine\ACE-Realms-Source-Map.md`** (Obsidian: `[[ACE-Realms-Source-Map]]`). It links topic pages (WorldObject, Player commerce/use, Creature combat, RecipeManager, Vendor/Emotes/Quests, loot, spells) with start files and grep seeds.

**Order of evidence:**

1. **Wiki** - curated paths and traps; extend topic pages when you discover new behavior.
2. **Pinned snapshots** - `ace-raaj-mods/.references/` for **stable line citations** from the ACE source tree.
3. **graphify / ripgrep** - §10 graphify for **this repo's mods**; use targeted `rg` on `ACE.Server` for symbols/strings.

- **`A:\`** - Full drive access for research, data mining, configuration, code analysis, deployment.
- **`C:\ACE\`** - Test server installation (port 9000). Keep **`$(ACEPath)`** on mod projects pointed at the **`ACE.Server.dll`** you actually run here.
- **`C:\ACE-WB\`** - Live Windblown server (port 9002). **Never deploy here without explicit "push live".** When a mod ships **`Content/SQL/`** weenie or recipe changes, apply the **same scripts to `wb_ace_world`** (and `wb_ace_shard` if biota cleanup is documented) after copying DLLs - otherwise live can show wrong **ItemUseable** / examine text while test `ace_world` looks correct.
- **`A:\ai\projects\ace-sql`** - External ACE SQL content repository.
- **`A:\obsidian\jeremy\wiki\*`** - Persistent knowledge wiki; read and edit freely.
- **`B:\Backup\ac custom stuff`** - Stockpile of raw AC custom content (weenies, landblocks, dungeons, spells). See `_INDEX.md`.
- **`B:\Backup\ac custom stuff\_DB_BACKUPS\`** - ValHeel server MySQL dumps.
- **`B:\Backup\ac custom stuff\reference\`** - Mod frameworks preserved for reference.
- **`.references/`** - ACE source/server files and world database dumps. Check this directory when investigating ACE internals.




## 8. Conventions, Warnings & Lessons Learned

### 8.1 Deploy & Server Ops

**Trigger phrases:**
- `"update docs"` - Full sweep: update `PLAN.md` (active only), `COMPLETED.md` if you shipped since last sweep, `AGENTS.md`, wiki, mod Readmes.
- `"check logs"` — Check `C:\ACE\Server\ACE_Log.txt` (wb_test, port 9000), `C:\ACE-WB\Server\ACE_Log.txt` (live, port 9002), `A:\void-test\Server\ACE_Log.txt` (void-test, port 9010).
- `"push test"` - Deploy to wb_test server (`C:\ACE\`, port 9000):
  1. `dotnet build ModName/ModName.csproj` (output goes to `A:\ai\projects\ace-raaj-mods\build\ModName\` — **never** touches any server at build time).
  2. Copy DLLs (and `Meta.json` if changed) from `A:\ai\projects\ace-raaj-mods\build\ModName\` to `C:\ACE\Mods\ModName\`.
  3. **`Settings.json`:** **Do not** replace wb_test `C:\ACE\Mods\ModName\Settings.json` with the repo file by default — that path is the **operator balance source of truth** (§3). Only merge **new keys** from repo, or full-copy when operator explicitly requests a reset.
  4. Start in visible window (see reliable method below).
- `"push live"` - Deploy to live (`C:\ACE-WB\`, port 9002). Same steps as push test but:
  - Copy from `A:\ai\projects\ace-raaj-mods\build\ModName\` to `C:\ACE-WB\Mods\ModName\`.
  - Restart live ACE.Server. Apply SQL to `wb_ace_world`/`wb_ace_shard`.
- `"push void"` - Deploy to void-test spot-check server (`A:\void-test\`, port 9010). **This is the isolated spot-check instance — never deploy to wb_test or live from this workflow. Currently the only instance safe to restart freely for rapid iteration.**
  1. `dotnet build ModName/ModName.csproj` (output goes to `A:\ai\projects\ace-raaj-mods\build\ModName\`).
  2. Copy DLLs (and `Meta.json` if changed) from `A:\ai\projects\ace-raaj-mods\build\ModName\` to `A:\void-test\Mods\ModName\`.
  3. **`Settings.json`:** Copy repo `Settings.json` to `A:\void-test\Mods\ModName\Settings.json` (void-test is spot-check, so defaults are fine; can still merge new keys if the file has test-specific values).
  4. **SQL:** Apply any new/changed SQL to `void-test_world` (**NOT** `ace_world` or `wb_ace_world`). Use `mysql -u jeremy -pandersine11 void-test_world < path/file.sql`.
  5. **Do NOT touch** `C:\ACE\Mods\*` settings files (belongs to wb_test). **Do NOT touch** `C:\ACE-WB\*` (live server).
  6. Stop old void-test instance, clear log, start new instance (see startup/stop methods below, substituting `A:\void-test`).

**Server startup (reliable method):**
```powershell
powershell -Command "Start-Process -FilePath 'C:\ACE-WB\Server\ACE.Server.exe' -WorkingDirectory 'C:\ACE-WB\Server' -WindowStyle Normal"
```
Substitute `C:\ACE\` for test, `A:\void-test\` for void-test.

**Identifying which ACE.Server instance is which:** All instances share the image name `ACE.Server.exe` — use `MainModule.FileName` in PowerShell:
```powershell
Get-Process ACE.Server -ErrorAction SilentlyContinue | Select-Object Id, @{N='Instance';E={
    switch -Wildcard ($_.MainModule.FileName) {
        '*void-test*'  { 'void-test (port 9010)' }
        '*ACE-WB*'     { 'live (port 9002)' }
        '*ACE\Server*' { 'wb_test (port 9000)' }
        default        { 'UNKNOWN' }
    }
}}
```

**ACE.Server zombie processes on restart:** `taskkill /F /IM ACE.Server.exe` is dangerous with multiple instances — it kills EVERYTHING named ACE.Server. Instead, use path-scoped stop:
```powershell
# Stop a specific instance by path (pick one):
Get-Process ACE.Server -ErrorAction SilentlyContinue | Where-Object { $_.MainModule.FileName -like '*ACE\\Server*' } | Stop-Process -Force   # wb_test
Get-Process ACE.Server -ErrorAction SilentlyContinue | Where-Object { $_.MainModule.FileName -like '*ACE-WB*' }     | Stop-Process -Force   # live
Get-Process ACE.Server -ErrorAction SilentlyContinue | Where-Object { $_.MainModule.FileName -like '*void-test*' }  | Stop-Process -Force   # void-test
Start-Sleep -Seconds 3
```
Confirm with the identification command above.

**Clear logs before every restart:** Old log output buries the current session's errors and misleads debugging. Always truncate before starting:
```powershell
$ > "C:\ACE-WB\Server\ACE_Log.txt"      # live (port 9002)
$ > "C:\ACE\Server\ACE_Log.txt"         # wb_test (port 9000)
$ > "A:\void-test\Server\ACE_Log.txt"    # void-test (port 9010)
```

**Port collision:** ACE binds `Port` and `Port+1`. Test on 9000, live on 9002 (not 9001). Always separate by ≥2 ports.

**Auto-restart (all three servers, crash-only — never start on top of running instance):**

Each server has a watchdog script in its own `Server/` directory. All use the same pattern: path-scoped `Win32_Process` polling (never confuses instances), customizable restart delay/cap, storm detection with a `BLOCKED.txt` cut-out, and logging.

| Server | Watchdog Script | Path Filter | Task Name | State/Block Files |
|--------|----------------|-------------|-----------|-------------------|
| wb_test (9000) | `C:\ACE\Server\WbTestWatchdog.ps1` | `*C:\ACE\Server*` | `wb_test-Watchdog` | `wb_test_watchdog_*` |
| live (9002) | `C:\ACE-WB\Server\AceWbWatchdog.ps1` | `*ACE-WB*` | `ACE-WB-Watchdog` | `ace_wb_watchdog_*` |
| void-test (9010) | `A:\void-test\Server\VoidTestWatchdog.ps1` | `*void-test*` | `void-test-Watchdog` | `void-test_watchdog_*` |

**Register (elevated, one-time):**
```powershell
scripts\Register-WbTestWatchdogTask.ps1      # wb_test
scripts\Register-AceWbWatchdogTask.ps1       # live
scripts\Register-VoidTestWatchdogTask.ps1    # void-test
```
Each registers a scheduled task **at logon as the interactive user** (not SYSTEM) so ACE.Server.exe opens in a visible foreground console. The watchdog PowerShell host stays hidden.

**Important:** All watchdog tasks must use `RunLevel Limited` (not `RunLevel Highest`) in the scheduled task principal so that ACE.Server.exe opens in the user's normal Windows Terminal (not an admin window). If a watchdog keeps opening admin terminal tabs, unregister and re-register:
```powershell
Unregister-ScheduledTask -TaskName 'wb_test-Watchdog' -Confirm:$false
# Then run the Register script WITHOUT -Verb RunAs elevation on the task itself
```
The `Register-*` scripts themselves must run elevated (to create the task), but the task's `-Principal -RunLevel Limited` ensures ACE opens at user level.

**Disable for debugging:**
```powershell
scripts\Unregister-WbTestWatchdogTask.ps1    # wb_test
scripts\Unregister-AceWbWatchdogTask.ps1     # live
scripts\Unregister-VoidTestWatchdogTask.ps1  # void-test
```
Or create the per-server `*_BLOCKED.txt` file in its `Server/` dir to pause without unregistering. Delete the file to resume.

**Polls:** Every 30s. **Restart delay:** 10s (wb_test/void-test) / 20s (live). **Storm cap:** 10 restarts/hr (wb_test/void-test) / 5 (live). When capped, creates a `*_BLOCKED.txt` file.

**Logs:**
- `C:\ACE\Server\wb_test_watchdog.log`
- `C:\ACE-WB\Server\ace_wb_watchdog.log`
- `A:\void-test\Server\void-test_watchdog.log`

**Live ACE-WB only — NSSM (alternative):** `scripts\Setup-NssmAceWb.ps1` installs service `ACE-WB`. Do **not** run NSSM and the scheduled watchdog for the same live instance (double-start risk).

**Verify deployed DLL timestamps before restarting:** After `dotnet build`, output goes to `A:\ai\projects\ace-raaj-mods\build\ModName\`. If you run multiple servers, copying DLLs to the wrong directory or forgetting to copy causes the old build to run. Always `ls -la` the deployed DLL and confirm mtime matches repo build timestamp.

**MySQL Database Access:**
- Path (WSL from repo root): `"/mnt/c/Program Files/MySQL/MySQL Server 8.4/bin/mysql.exe"` (the 8.4 install folder is where `mysql.exe` lives; the client binary reports 8.0.x internally — that's backward compat, use the 8.4 path).
- Path (PowerShell from Windows): `C:\Program Files\MySQL\MySQL Server 8.4\bin\mysql.exe`
- Host: 127.0.0.1, Port: 3306, Username: `jeremy`, Password: `andersine11`
- Test (wb_test): `ace_world` (weenies), `ace_shard` (biotas)
- Live: `wb_ace_world`, `wb_ace_shard`
- Void-test (spot-check): `void-test_world`, `void-test_shard`, `void-test_auth` (port 9010)
- Examples:
  - Query (WSL): `"/mnt/c/Program Files/MySQL/MySQL Server 8.4/bin/mysql.exe" -u jeremy -pandersine11 ace_world -e "SELECT * FROM weenie WHERE class_Id = 850200;"`
  - Apply SQL (WSL): `"/mnt/c/Program Files/MySQL/MySQL Server 8.4/bin/mysql.exe" -u jeremy -pandersine11 ace_world < path/to/file.sql`
  - Export dump (WSL): `"/mnt/c/Program Files/MySQL/MySQL Server 8.4/bin/mysqldump.exe" -u jeremy -pandersine11 ace_world weenie --where="class_Id = 850200" > output.sql`
- **`INSERT INTO ... ON DUPLICATE KEY UPDATE`** - `weenie_properties_int` has `UNIQUE KEY` on `(object_Id, type)`. `UPDATE ... WHERE` silently does nothing if row absent. Always use `INSERT INTO ... ON DUPLICATE KEY UPDATE value = Z;`.
- **Verify DB state after applying SQL** - `SELECT type, value FROM weenie_properties_int WHERE object_Id = X AND type = Y;`
- **MySQL 8.0 multi-row INSERT ON DUPLICATE KEY UPDATE:** Do NOT use `INSERT INTO t (c) VALUES (v1),(v2) ON DUPLICATE KEY UPDATE c=VALUES(c)` — MySQL 8.0 rejects the multi-row VALUES syntax when combined with `ON DUPLICATE KEY UPDATE`. Write one INSERT per row instead:
  ```sql
  INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (X, 1, 16) ON DUPLICATE KEY UPDATE value = VALUES(value);
  INSERT INTO weenie_properties_int (object_Id, type, value) VALUES (X, 2, 31) ON DUPLICATE KEY UPDATE value = VALUES(value);
  ```
- **MySQL 8.0 database names with hyphens:** Use backticks: `` `void-test_world` ``. The `-D` flag can't quote the name, use `mysql ... -D "void-test_world"` instead.
- **ACE world SQL dump format:** The reference files `.references/ACE-World-16PY-db-v0.8.8.sql` and `.references/ACE-World-Database-v0.9.293.sql` contain `CREATE DATABASE ace_world; USE ace_world;` at the top. When piping into a differently-named DB, use `sed 's/ace_world/void-test_world/g'` to rewrite before import.

### 8.2 Mod Architecture & Cross-Mod Integration

**Single source of truth:**
- **LeyLineLedger** owns ALL bank, vendor **commerce**, and **pricing** systems (buy/sell multipliers, bank debit/deposit, `BuyPrice` / `GetBuyCost` behavior, vendor-related packet rules in LLL). No other mod may implement competing vendor price multipliers or banked-currency handling. Other mods expose public APIs; LLL calls via reflection bridge.
- **QOL `VendorLootRotation`** (optional) only **regenerates sale stock** (`DefaultItemsForSale` / `UniqueItemsForSale` from treasure profiles on `Vendor.ApproachVendor`, Harmony **First**). It is **not** a second pricing mod; keep luxury tax / item values separate from LLL's sell-rate patches. See `QOL/Readme.md` § Vendor loot rotation for refresh interval (`min` of rotation vs cooldown minutes).
- **BetterLootControl** is the single source of truth for all loot tables. Any mod needing bonus loot pools references BLC, not individual mods.
- **AureatePath** owns the server level cap (`MaxLevel`, `CreditInterval`, `LevelCost`). ChallengeModes reads `DatManager.PortalDat.XpTable.CharacterLevelXPList.Count` at runtime.

**Cross-mod feature ownership:** One mod owns the logic, the other calls via reflection bridge. Example: AutoSalvage lives entirely in `BetterSupportSkills`; `AutoLoot` delegates via `BetterSupportSkillsBridge.TryAutoSalvage(player, item)`.

**Cross-mod Harmony patches without assembly references:** Use `AccessTools.TypeByName("Namespace.Type")` inside static `TargetMethod()`, with `Prepare()` returning `false` if absent. Manually `PatchCategory`/`UnpatchCategory` in host mod's `RefreshAll()`.

**Vendor approach ordering (Harmony priority):**
- CLEARS inventory → `Priority.First` (e.g., QOL VendorLootRotation)
- ADDS static items → `Priority.Last` (e.g., EmpyreanAlteration vendor injection)

**Vendor inventory injection:** Detect by `WeenieClassId` or `MerchandiseItemTypes` bitmask, NOT by scanning `DefaultItemsForSale` (fails when empty). Re-inject by checking `vendor.DefaultItemsForSale.Values.Any(item => item.WeenieClassId == wcid)` each approach.

**Reflection over `IEnumerable` / `IList` for unknown types:** Use non-generic interfaces: `itemsProp.GetValue(settings) as IEnumerable` and `variantProp?.GetValue(item) as IList`. Casting to `IEnumerable<T>` causes `CS0305`.

**Auto-intercept Harmony prefixes can swallow other mods' inventory creates** - `BetterSupportSkills.SalvageAutoDeposit.PreTryCreateInInventory` (Harmony Prefix on `Player.TryCreateInInventoryWithNetworking`) destroys any salvage WCID 20981-21089 entering inventory and credits its own bank prop. This silently breaks `LeyLineLedger /bank salvage redeem|withdraw|create` and the vanilla admin `/cisalvage` command - bag is destroyed, credit goes to the wrong prop scheme (BSS uses `40201 + (wcid - 20981)`, LLL uses `40201 + ruleIndex`), so `/bank salvage status` shows nothing while the player's pack stays empty. **Pattern for fix:** add a `[ThreadStatic] int _suppressionDepth` + `EnterSuppression()` / `ExitSuppression()` on the intercepting class, honor it in the prefix (`if (_suppressionDepth > 0) return true;`), and have the bag-creating mod bracket `TryCreateInInventoryWithNetworking` calls via reflection (no assembly reference). Wrap admin commands with a Prefix+`[HarmonyFinalizer]` (Postfix doesn't run on exceptions; finalizer always does). See `LeyLineLedger/BankSalvage.cs:TryCreateBagBypassingAutoSalvage` and the `HandleCISalvage` patches in `BetterSupportSkills/Skills/SalvageAutoDeposit.cs`.

### 8.3 Harmony & ACE Patching

**Patch target rules:**
- **Prefer `nameof(Target.Method)`** - string-based targets silently fail at runtime; `nameof` fails at compile time.
- **Patch base `virtual`, not `override` in partial classes** - `Creature.Heartbeat` is an `override`; patch `WorldObject.Heartbeat` (base virtual) and filter with `is` cast. A single bad target prevents the ENTIRE mod from loading.
- **Patch `CreatureAttribute.GetCurrent(bool)`, not `.Current` property** - property getters are compiler-generated wrappers; postfixes may not fire reliably. Same for `CreatureSkill.Current`.
- **Patch property getters for client+server consistency** - If a property affects both client display and server math, patch the getter (e.g., `Vendor.get_BuyPrice`) with `[HarmonyPatch(..., MethodType.Getter)]`.
- **Initialize `Settings` before `base.Start()` in `BasicPatch<>` subclasses** - `base.Start()` applies Harmony patches. If a patch throws, `Start()` aborts before `Settings` is assigned. Assign `Settings = SettingsContainer.Settings ?? new Settings()` BEFORE `base.Start()`.

**`[ThreadStatic]` for prefix→postfix state communication:** Reset at start of prefix. Example: `ChaosTinker.cs` uses `_wasChaosFailure` to track forced failures.

**JIT inlining silently defeats Harmony prefixes on trivial wrappers** - When a Harmony prefix on a small/trivial method (e.g. a 4-line wrapper that just delegates to another method) **only fires for some call paths and not others**, the CLR JIT has likely inlined the wrapper at certain call sites. Harmony patches the `MethodInfo` (rewriting the method's prologue), but inlined call sites have already had the wrapper's body copied into the caller's IL - those bypass the patched method entirely and the prefix never runs there. Symptom: prefix fires for ambient/looping callers (e.g. NPC Heartbeat going through a separate code path) but never for hot direct callers (e.g. `Player_Inventory.GiveObjectToNPC` calling `EmoteManager.ExecuteEmoteSet` directly). **Fix:** patch one level deeper - the inner method that the wrapper calls (e.g. `EmoteManager.Enqueue` instead of `ExecuteEmoteSet`) - because non-trivial methods don't get inlined. If you patch `Enqueue` to short-circuit, manually mirror any state bookkeeping the wrapper did before calling Enqueue (e.g. `Nested--` + `IsBusy = false` via `Traverse`). Diagnostic trick: log the prefix entry unconditionally with the args, then trigger both call paths and see which one is missing. Case study: `Windblown/TrophyLines/TrophyTurnInPatches.cs:PreEnqueue_Trophy` (commit history late 2026-05-04).

**Cross-mod reflection MUST target the right type - extension methods often live in a sibling class** - `LeyLineLedgerBankInterop.Resolve` originally looked for `GetBanked`/`IncBanked` on `LeyLineLedger.PatchClass` but those are extension methods defined in `LeyLineLedger.BankExtensions` (same namespace, separate class). Reflection silently returned null and the interop fell back to writing biota `PropertyInt64` directly - which `AccountBankStore` then mirrored over on the next call, eating the credit. **Fix:** when the cross-mod target uses extension methods, search the `*Extensions` (or whatever the actual containing class is) class first; fall back to `PatchClass` for backward compat. Always emit a one-time `Resolved <method> on <type>` log so operators can confirm wiring without a debugger. Affected callers were silent (no exception), so detection required diff between chat-reported credit and actual bank file. Pattern: cache delegates via `Delegate.CreateDelegate`, log the resolution result, fall back to direct biota write only as a last resort.

**Accessing private `creature` field:** `CreatureSkill`, `CreatureAttribute`, `CreatureVital` store a private `creature` field. In Harmony postfixes: `Traverse.Create(__instance).Field<Creature>("creature").Value`.

**Harmony patching `override` methods in partial classes fails** - Already covered above; worth repeating. Always patch the base virtual.

### 8.4 ACE Entity & Property Gotchas

**`WorldObject` is abstract** - Use `WorldObjectFactory.CreateNewWorldObject(weenie)`. Direct `new WorldObject(weenie, guid)` causes `CS0144`.

**`Vendor.DefaultItemsForSale` is a readonly field** - Do not use `??=` or direct assignment. Only call `.Add()`, `.Remove()`, `.Clear()`, or read from it.

**`target.GetProperty(PropertyInt.NumTimesTinkered) ?? 0`** - `NumTimesTinkered` is a `PropertyInt` accessed via `GetProperty()`; it is NOT a nullable auto-property. Using `??` on `int` causes `CS0019`.

**`PropertiesEmoteAction.Type` is a `uint`, not `EmoteType`** - Always cast: `(EmoteType)emote.Type`.

**`ItemType.Shield` does NOT exist** - Shields are `ItemType.Armor`. `ItemType.Shield` causes `CS0117`.

**`ACE.ItemLevel` is read-only computed** - Derives from `ItemTotalXp`, `ItemBaseXp`, `ItemMaxLevel`, `ItemXpStyle`. Do not assign to `item.ItemLevel`; compute target XP with `ExperienceSystem.ItemLevelToTotalXP` and set `item.ItemTotalXp`. EmpyreanAlteration patches this method; wrap calls in `ItemXpCurveContext.Enter(item)` / `.Leave()`.

**`ServerMaxLevel` must read at call time** - Caching `DatManager.PortalDat.XpTable.CharacterLevelXPList.Count` in a static field at class init captures vanilla 275 before AureatePath's `OnWorldOpen` runs. Always read inside the scaling method.

**`/god` sets `IsAdmin`/`IsInvulnerable` but NOT `player.Level`** - Mob scaling via `player.Level ?? 1` reads real level (e.g., 275). Add an `AdminLevelOverrideProperty` (custom `PropertyInt`) read with priority when `player.IsAdmin` is true.

**`CreatureVital.MaxValue = Ranks + StartingValue + attr_bonus`** - Setting `creature.Health.Ranks = desiredMax` does NOT make creature full health. After scaling `Ranks`, always call `creature.SetMaxVitals()`.

**`Meta.json` must copy to output directory** - In `.csproj`, ensure `<CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>` for `Meta.json`. `Never` silently prevents mod loading.

**Gracefully deprecating `Features` enum values:** (1) Add new enum value, (2) Keep OLD value for JSON backward compatibility, (3) Add DEPRECATED doc comment, (4) In `RegisterEnabledPatchCategories()`, check BOTH toggles. Remove old enum only after migration period.

**`BasicPatch<T>.Settings` is an instance property NOT static** — It's declared on `BasicPatch<T>` (base class) and inherited by `PatchClass`. It's NOT a static field or property. `GetField("Settings", BindingFlags.Static | BindingFlags.FlattenHierarchy)` returns null. Cross-mod reflection that needs LLL's settings should either:
  - Read the formula: `40201 + (wcid - 20981)` for salvage property IDs
  - Or fully qualify: use `pt.GetField("Settings", BindingFlags.Public | BindingFlags.Instance)` on a concrete instance (but there's no static instance accessor)
  - Best: read LLL's `Settings.json` from disk (sibling mod dir) for DTO-style deserialization
  
**`/autosalvage quiet` (mode 3):** Salvage still banks to LLL but all messaging is suppressed (no periodic summary, no bag-fill alerts). Uses `SalvageMessagingMuted` ConcurrentDictionary on `SalvageAutoDeposit`.

**`SettingsContainer.Settings` may fail to deserialize `List<string>`** - ACE.Shared's `SettingsContainer` can return empty lists even when `Settings.json` contains valid arrays. Verify deserialized collections before using; if empty, manually deserialize with `JsonSerializer.Deserialize<Settings>(File.ReadAllText(path))`.

### 8.5 Threading & Concurrency

**Static `HashSet<T>` is not thread-safe** - Use `ConcurrentDictionary<T, byte>` with `TryAdd(key, 0)`, `TryRemove(key, out _)`, `ContainsKey(key)`. Pattern from `SummoningClasses.cs` (`TrackedPetGuids`).

**`ACE.Common.ThreadSafeRandom.Next(int min, int max)` is inclusive on both bounds** - Internally calls `Random.Next(min, max + 1)`. Using `array.Length` as max causes `IndexOutOfRangeException`; always use `Length - 1`.

### 8.6 UI, Visuals & Client-Server Sync

**Item property changes need `CalculateObjDesc()` + `GameMessageUpdateObject`** for client refresh. Setting `Name`, `UiEffects`, `ItemMaxLevel` etc. updates server state but client won't refresh examine/3D until you call both.

**Client examine panels read from `AppraiseInfo` packets, not live properties** - To hide "Attuned" visually, patch `AppraiseInfo.BuildProperties` to override `PropertiesInt[PropertyInt.Attuned]` before packet serialization.

**`UiEffects` values:**
| Value | Effect |
|-------|--------|
| `Magical=1` | Blue glow |
| `Poisoned=2` | Green |
| `BoostHealth=4` | Yellow |
| `BoostStamina=16` | Yellow |
| `Fire=32` | Red |
| `Lightning=64` | Purple |
| `Frost=128` | White |
| `Acid=256` | Green |
| `Nether=4096` | Dark purple |
| `BoostHealth \| BoostStamina = 20` | Red outline in client |

Set via `PropertyInt.UiEffects`, then broadcast `GameMessagePublicUpdatePropertyInt`.

**`RadarColor.Cyan` (0x09)** = teal/admin dots. `WorldObject.RadarColor` is `RadarColor?`. Assign directly: `RadarColor = RadarColor.Cyan;`. No broadcast needed if set before creation packet.

### 8.7 SQL, Weenies & Biota

**SQL content files do NOT auto-deploy** - `.csproj` only copies DLL + JSON. SQL in `Content/SQL/` is not applied at build time.

**Agents always apply world SQL** - When you create or edit SQL meant for weenie/treasure/world data, **run it against `ace_world` in the same working session** (`mysql ... ace_world < path/to/file.sql`), then verify critical rows with `SELECT`. Use **`wb_ace_world`** only when the user says **push live** or explicitly targets live. If the user forbids database writes, say so and skip. Restart the test ACE server after weenie-defining changes (ACE caches weenies at startup; no hot-reload).

**Backup before SQL apply (revert path)** - Any session that **applies** additive or mutating SQL must **dump first** with `mysqldump` (same install dir as `mysql.exe`, e.g. `C:/Program Files/MySQL/MySQL Server 8.0/bin/mysqldump.exe`). Scope each dump to what your script changes: one table per `--where=` when MySQL allows it (e.g. `landblock_instance` plus `--where="landblock=304"` for `0x0130` if stored as decimal); for weenies, dump the `weenie` row and each `weenie_properties_*` slice for that `object_Id` (resolve `object_Id` from `class_Id` first). Store files under **`WindblownContent/sql-backups/YYYY-MM-DD/`** with obvious names (`pre-0130-landblock_instance.sql`, `pre-wcid-850200-weenie.sql`). Keep the forward migration `.sql` in git or beside the dump. Revert path is **`mysql ... < pre-....sql`** (stop ACE first if restoring hot-loaded templates). **Never** apply world-changing SQL without a restorable artifact on disk.

**Biota cleanup required for existing items** - ACE copies weenie properties to `ace_shard` biota at creation. Updating `ace_world` only affects future drops. After applying world template SQL, run matching biota cleanup against `ace_shard`.

**AC client uses Windows-1252 encoding** - Applies to ALL player-facing strings (`player.SendMessage()`, `weenie_properties_string`, examine text, etc.). The AC client only renders characters in the Windows-1252 code page. Any Unicode character outside Windows-1252 displays as `?` in chat, examine panels, and item names.

**Characters that WILL show as `?` (NOT in Windows-1252):**
- Unicode arrows: `→` `←` `⇒` `⇔` — use `->` `<-` `=>` `<=>`
- Em dashes / en dashes: `—` `–` — use `--` `-`
- Box-drawing: `─` `┌` `┐` `└` `┘` — use ASCII `-` `+` `|`
- Emoji: `🎉` `✨` `💰` `📜` — just omit or use `[text]` labels
- Smart quotes: `""` `''` — use straight `""` `''`
- Minus sign: `−` (U+2212) — use ASCII `-`

**Safe characters (in Windows-1252):** `×` (multiplication, 0xD7), `°` (degree, 0xB0), `±` (plus-minus, 0xB1), `¢` `£` `¥` `©` `®` — these render correctly.

**Town Network is dungeon landblock 0x0007** - Interior cells like `0x0007010B`. `0xA9B4` is the surface drop cell.

**Valid `treasure_death` selection chance ranges:** `item_Treasure_Type_Selection_Chances` must be 1-11. `mundane_Item_Type_Selection_Chances` must be 1-8. Out-of-range causes `RollWcid` to return `Undef`.

**MySQL `weenie_properties_int` type numbers are not self-documenting** - `type=11` = `MaxStackSize`, `type=16` = `ItemUseable`. Using `16` for stack size silently does nothing. Verify with `ACE.Entity.Enum.Properties.PropertyInt` enum before writing SQL.

### 8.8 Loot, Currency & Economy

**Enlightenment pool expansion formula:** `GetEnlightenmentMultiplierFactor` returns `1 + pool + augmentBonus + achievementBonus + equipmentBonus`.
- `pool` = `FakeFloat 11012`
- `augmentBonus` = `player.AugmentationBonusXp * 0.05f`
- `equipmentBonus` = `player.EnchantmentManager.GetXPBonus()`

**Donated-offset pattern for tracked currency spending:** Use a `Donated*Offset` property. Subtract at display time. Example: `DonatedQuestPoints` offset reduces effective QB without removing actual quest solves.

**Lottery prize grants must bypass contribution tracking:** When re-granting a currency that feeds itself (e.g., QB prizes funded by QB donations), write directly to the underlying property. Bypass `AddExtraQuestPoints` to prevent recursive 10% contribution. Example: `GrantLotteryQbPrize` directly sets `QuestPointsExtra`.

**Dual-pool prize design:** Maintain separate pyreal and QB pools. Split both by same winner fractions. Avoids conversion-rate ambiguity.

**Foolproof imbue salvage items must NOT stack** - Setting `MaxStackSize` on foolproof items causes breakage. In `LootRoller.CreateItemFromCategory`, exclude items where `Name.Contains("Foolproof")` from `MaxStackSize` assignment.

**Runtime JSON configs override compiled defaults** - `DefaultLootConfig.cs` is fallback only. Active config is `Loremaster/LootConfig.json`. Mirror changes to both.

**BetterLootControl Coalesced Mana** - Custom Coalesced Mana WCIDs (42516, 42517, 42518) replace vanilla ACE drops. Vanilla source blocked via `DisableVanillaCoalescedMana` Harmony prefix. BLC controls corpse drops (`GlobalRareDrops.cs`) and chest loot (`DefaultLootConfig.cs`).

### 8.9 ACE Vanilla Behavior Traps

**ACE `SpellLevelProgression` blast spells contain `SpellId.Undef` at indices 0-1** - AcidBlast, ShockBlast, FrostBlast, LightningBlast have `Undef` for levels 1-2. When `SpellLevelChance.Roll(tier)` returns 1 or 2, `RollSpellLevels` adds `SpellId.Undef` (0), causing `Spell.Init(0)` DEBUG spam. Always filter `Undef` from rolled spell lists. `EmpyreanAlteration/Features/MutatorHooks.cs:PostRollSpellLevels` provides the Harmony postfix fix.

**ACE `Player_Use.cs` enforces `TargetType` compatibility before `HandleActionUseOnTarget`** - Line 139 checks `((sourceItem.TargetType ?? ItemType.None) & target.ItemType) == ItemType.None` and blocks with `SendTransientError`. If a modded item-on-item workflow silently fails, verify the tool's `TargetType` bitmask includes the target's `ItemType`.

**Never assume AC enum or ID values are sequential** - `SpellId`, `PropertyInt`, `WCID`, and other ID spaces have arbitrary gaps. `(uint)(SpellId.HealSelf1 + 3)` silently produces wrong spell or crashes `Spell.Init()`. Always use hardcoded arrays of known-valid IDs or query the database.

**Evidence for vanilla behavior** — Follow **§7.0** (wiki hub first, then `.references/` for pinned line cites). Frequent entry files: `WorldObject_Properties.cs`, `WorldObjectFactory.cs`, `WeenieConverter.cs`, `Vendor.cs`, `Player_Commerce.cs` (paths under `ACE.Server/` or `ACE.Entity/` per topic pages).

### 8.10 Workflows & Agent Behavior

**`PLAN.md` vs `COMPLETED.md`** - `PLAN.md` is the **forward-looking** index; `COMPLETED.md` is the **archive** of finished work. After a feature or fix ships: record it under a new or existing **date heading** in `COMPLETED.md`, then **delete or one-line** the old "Done" entry in `PLAN.md` so Progress and mod sections stay small. Never duplicate long "shipped" write-ups in both files.

**Write PLAN.md before starting any multi-phase feature work** - Before touching code for complex tasks (3+ phases or files), write the **intent and next steps** to `PLAN.md` (or keep them in `task_plan.md` during execution). If interrupted, the plan preserves intent. When using `planning-with-files`, write into `task_plan.md` first, reference `PLAN.md` for backlog, mirror findings into `findings.md`. **When the phase ships**, move the narrative to `COMPLETED.md` and leave PLAN with backlog + pointers only.

**Commit and push after EVERY bug fix** - After verifying (build + deploy + confirm), immediately `git commit` with descriptive message and `git push`. Never leave working tree dirty with solved problems.

**Auto-update docs after EVERY code push** - After `git push`, perform full "update docs" sweep: trim `PLAN.md`, append `COMPLETED.md` if something shipped, update `AGENTS.md` when conventions change, refresh stale mod Readmes, and write findings to wiki (`A:\obsidian\jeremy\wiki\`) with `[[Page Name]]` links.

**Run `graphify update .` after any session that touched code** - The graphify knowledge graph (`.cursor/rules/graphify.mdc`) tracks cross-module relationships. Stale graphs mislead future agents. After modifying code, run from repo root:
```bash
graphify update . --out-dir="A:/obsidian/jeremy/raw/graphify-out"
```
AST-only, no API cost. Graph output moved out of repo to keep working tree clean.

**When investigating user-reported issues, ALWAYS ASK CLARIFYING QUESTIONS FIRST** - Ask: What commands did you run? What output did you see? What item types are affected? Is it all corpses or specific ones? Prevents wasted time and wrong assumptions.

**Folder organization** - Use subfolders for tidy content (e.g., `SpellSiphon/Content/SQL/`, `WorldEvents/Content/`). Default to nested over flat.

**Trained/Specialized Equivalence** - `>= SkillAdvancementClass.Trained` satisfies both trained and specialized requirements.

**New mod scaffolding** - Copy existing mod: `.csproj` (change AssemblyName/RootNamespace), `Meta.json`, `Settings.cs`, `Settings.json`, `GlobalUsings.cs`, `PatchClass.cs` inheriting `BasicPatch<Settings>`. Build with `dotnet build`.

### 8.11 NEVER GUESS WITH ACE — ALWAYS VERIFY

ACE enums, categories, property IDs, and mechanics are **never what you assume**. The naming convention for `EmoteCategory.Give` is `6` (not `7`, which is `Use`). `WeenieType.Book` is `8` and its items are **not stackable** — only `WeenieType.Stackable` (`51`) items can stack. Guessing these numbers or relationships leads to wrong queries, broken mods, and wasted time.

**Always follow the evidence chain:**

1. **Emotes** — Read `ACE.Entity.Enum.EmoteCategory.cs` and `EmoteType.cs` in `.references/` for the numeric value of each category/type. Do not guess what `7` means — it might be `Use`, not `Give`.
2. **WeenieType** — Read `ACE.Entity.Enum.WeenieType.cs`. `Book` (`8`) and `Generic` (`1`) do **not** support stack properties. Only `Stackable` (`51`) does.
3. **PropertyInt** — Check `ACE.Entity.Enum.Properties.PropertyInt.cs` for the numeric `type` values.
4. **Stack mechanics** — ACE only stacks items whose base weenie has `WeenieType.Stackable` (`51`). Changing `PropertiesInt` alone does not make a Book item stackable. The `type` column on the `weenie` table must be changed to `51`.
5. **Quest caps** — The `max_Solves` column on the `quest` table defines how many times a quest can be completed. Timer-based limits use `min_Delta` (seconds between completions).
6. **Collector NPC rewards** — Defined in `weenie_properties_emote (category=6 = Give)` with `weenie_Class_Id` = the item being given. The emote chain can include `TakeItems` (type 74), `AwardNoShareXP` (type 62), and `Give` (type 3) actions.
7. **Document findings** — Use the wiki and/or `findings.md` for the current session, so future agents don't repeat the same lookups.
8. **When in doubt about a DB query result** — Check the ACE source for how the table is read/processed at runtime.

### 8.12 MONETARY REWARDS MUST GO THROUGH LLL BANK INTEROP

Whenever a Harmony patch grants a monetary/pyreal reward (trade notes, pyreals, bank credit), it **must** use  to deposit directly into the player's LeyLineLedger bank account. Do **not** give trade notes or physical pyreal items — those clutter inventory and bypass LLL's banking system.



This shows the bank delta popup in the client and works whether LLL is loaded or not (falls back to PropertyInt64 biota write). Add  using and reference the  project or ensure the interop class is compile-time available.

### 8.13 Stackable Items — Complete Checklist (Don't Guess)

Making items stackable in ACE requires changing BOTH the `weenie` table type AND specific `weenie_properties_int` type values. There is no single "Stackable" flag — you need the right combination of type property IDs.

#### 8.13.1 SQL Approach (fast, clean — use for permanent items)

Change weenie type and add ALL required int properties:

```sql
UPDATE weenie SET type = 51 WHERE class_Id IN (45875, 45876);
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(45875,  5, 1),     -- EncumbranceVal
(45875,  8, 1),     -- Mass
(45875, 11, 100),   -- MaxStackSize  TYPE 11, NOT 111!
(45875, 12, 1),     -- StackSize
(45875, 13, 1),     -- StackUnitEncumbrance
(45875, 14, 1),     -- StackUnitMass
(45875, 15, 1),     -- StackUnitValue
(45875, 16, 1),     -- ItemUseable = Use
(45875, 19, 1),     -- Value
(45875, 33, 1),     -- Bonded = Normal
(45875, 93, 1044)   -- PhysicsState
ON DUPLICATE KEY UPDATE value = VALUES(value);
```

Common wrong-type bugs:

| Intended | WRONG type | Symptom |
|---|---|---|
| MaxStackSize | `111` (PortalBitmask) | "cannot use as PK Lite" |
| StackSize | `33` (Bonded) | Items never stack |
| StackUnitEncumbrance | `12` (StackSize) | Burden from stack count, not unit weight |
| StackUnitValue | `14` (StackUnitMass) | Value from mass, not value per unit |

Always check `ACE.Entity.Enum.Properties.PropertyInt.cs` for correct type IDs.

#### 8.13.2 Runtime Forcing (Harmony postfixes)

If the weenie cache keeps serving stale/wrong values, force-correct via Harmony postfixes on both the constructor AND SetStackSize paths:

```csharp
[HarmonyPostfix]
[HarmonyPatch(typeof(Stackable), "SetEphemeralValues")]
public static void PostfixSetEphemeral(Stackable __instance) {
    if (!IsCustom(__instance.WeenieClassId)) return;
    __instance.StackUnitEncumbrance = 1; __instance.StackUnitValue = 1;
    __instance.MaxStackSize = 100;
}

[HarmonyPostfix]
[HarmonyPatch(typeof(WorldObject), "SetStackSize")]
public static void PostfixSetStackSize(WorldObject __instance) {
    if (!IsCustom(__instance.WeenieClassId)) return;
    __instance.StackUnitEncumbrance = 1; __instance.StackUnitValue = 1;
    __instance.EncumbranceVal = (__instance.StackSize ?? 1);
    __instance.Value = (__instance.StackSize ?? 1);
}
```

#### 8.13.3 Shard Biota Cleanup

Existing items with wrong StackUnit values won't self-heal:

```sql
UPDATE biota_properties_int SET value = 1 WHERE object_Id IN (
  SELECT id FROM biota WHERE weenie_Class_Id IN (850340, 850341)
) AND type IN (13, 15);
UPDATE biota_properties_int bp
JOIN biota_properties_int bp2 ON bp2.object_Id = bp.object_Id AND bp2.type = 12
SET bp.value = bp2.value
WHERE bp.object_Id IN (SELECT id FROM biota WHERE weenie_Class_Id IN (850340, 850341))
AND bp.type IN (5, 19);
```

#### 8.13.4 Checklist for Making Other Items Stackable

When told "olthoi heads / mob heads are doing the same thing":

1. Check if `WeenieType` is `Generic (1)` or `Book (8)` — these don't stack
2. Use SQL to change to `WeenieType.Stackable (51)` + set all 11 required int props
3. Add the double Harmony postfix (8.13.2) if wrong values persist
4. Clean stale biota from shard (8.13.3)

### 8.14 Patterns & Idioms

**Verbose result tracking** - When a method spends/allocates/consumes resources across multiple targets, return a `record` with per-target details. Example: `SpendResult(string Name, int RanksGained, long XpSpent)`.

**Account-wide JSON persistence** - Static class with `Dictionary<uint, ...>`, `Load()` on startup, `Save()` on change, file path from `Assembly.Location`. Matches `AccountQuestFlags.cs` and `AccountRepeatQuestTracker.cs`.

**`TimeSpan.GetFriendlyString()`** - ACE.Common.Extensions provides this for player-facing cooldowns (e.g., "2h 15m 30s").

**repeatQB system** - Create unique ACE quest registry entries with suffix (`{baseName}#repeatQB{n}`). Integrates with existing QP counting. Use `GetBaseQuestName()` to strip suffix.

**Kill task auto-reaccept** - Patch `QuestManager.HandleKillTask` prefix to detect max-solved + cooldown-expired, call `SetQuestCompletions(name, 0)` to reset, store timestamp in JSON `PropertyString`. Grants +2 repeatQB per full cycle.

**Questgiver blacklist** - Patch `EmoteManager.ExecuteEmote` prefix for `StampQuest`/`StampMyQuest` to capture giver WCID in `[ThreadStatic]`, then read in `QuestManager.Update` postfix. Store on player as `PropertyInt`.

**Daily fixed-time event scheduling** - Use `TimeZoneInfo.FindSystemTimeZoneById("Central Standard Time")` to convert local target time to UTC, compare `DateTime.UtcNow`. Full clear + repopulate on rotation.

**Bidirectional use-on-target UX** - Support both `Tool → Target` and `Target → Tool` directions. In SpellSiphon, both directions trigger charging. Requires compatible `TargetType` masks on both items.

**Consolidated deposit feedback** - `/bank deposit all` subsystems each return `bool`. Handler aggregates and sends exactly ONE message. Prevents 5-message spam.

**MaterialType-based dynamic renaming** - Read `item.MaterialType`, call `.ToString()`, replace that word in `item.Name`. Store original in `PropertyString` (e.g., `(PropertyString)11033`). Fallback to prepending prefix.

### Overtinked Imbue Hang Investigation (2026-05-03)

**Symptom:** Using Peridot (21066), Yellow Topaz (21088), or Zircon (21089) salvage on armor causes server hang - client shows hourglass, request never completes, connection eventually resets.

**What works:** Other imbues (Hemorrhage, Cleaving, Nether Rending) and tinker salvages work fine. Defense imbues on weapons likely work too - the hang is specific to **armor targets**.

**Key ACE Source Findings (`.references/ACE-1.76.4751/`):**

1. **ImbuedEffectType enum** (`ACE.Entity/Enum/ImbuedEffectType.cs`): Defense and rending imbues use distinct bit patterns with no overlap:
   - Defense: `MeleeDefense=0x0400`, `MissileDefense=0x0800`, `MagicDefense=0x1000`
   - Rending: `ArmorRending=0x0004`, `CriticalStrike=0x0001`, etc.
   - Using `|=` (bitwise OR) is correct for combining these.

2. **RecipeManager.TryMutateNative** (`Managers/RecipeManager.cs`): Vanilla ACE uses direct assignment (`=`) for defense imbues:
   ```csharp
   case 0x38000038: // Peridot
       target.ImbuedEffect = ImbuedEffectType.MeleeDefense;
   ```
   Overtinked uses `|=` - both approaches work correctly since defense bits don't overlap with existing rending bits.

3. **GetDefenseImbues** (`WorldObjects/Creature_Combat.cs`): Simple count of equipped items with the imbue flag:
   ```csharp
   public int GetDefenseImbues(ImbuedEffectType imbuedEffectType)
   {
       return EquippedObjects.Values.Count(i => i.ImbuedEffect.HasFlag(imbuedEffectType));
   }
   ```
   No complexity that would cause a hang.

4. **ImbuedEffect property** (`WorldObjects/WorldObject_Properties.cs`): Standard getter/setter for PropertyInt - no recursion or loops.

**Hang Location Hypothesis:**

The log message `Status: unconfirmed` indicates the code reaches `RecipeManagerEx.PreUseObjectOnTarget` with `confirmed=false`. After this:

1. `GetRecipeChance()` is called
2. `StartCraftAnimation()` builds an action chain
3. If `showDialog && !confirmed` → `RecipeManager.ShowDialog()` sends confirmation to client and waits for response
4. If `!showDialog || confirmed` → `RecipeManager.HandleRecipe()` is called directly

The hang likely occurs in **ShowDialog** (waiting for client confirmation response) or in the **mutation step** specific to defense imbues on armor. ShowDialog would affect all tinkering recipes, so the issue may be specific to how defense imbue recipes differ from others.

**Database Findings:**
- All defense imbue salvages (21066, 21088, 21089) have identical weenie properties: `ItemType=1073741824` (Salvage), `ItemUseable=524296`
- This matches working attack imbues (21079, 21049, 21040) - no difference in base weenie

**Next Investigation Steps:**
1. Check server logs for confirmationManager related errors or timeouts
2. Compare recipe requirements between defense imbue recipes and working imbue recipes in database
3. Try disabling Overtinked entirely to confirm issue is in the mod (not base ACE)
4. Add debug logging to RecipeManagerEx to trace exactly where hang occurs
5. Check if the issue is specifically in the target item (armor) having certain properties that cause problems

**Reference Files:**
- Overtinked/PatchClass.cs - PreTryMutate handles standard imbue path (#4)
- Overtinked/RecipeManagerEx.cs - PreUseObjectOnTarget replaces vanilla flow
- Overtinked/LesserImbueUpgrade.cs - Handles rending imbues, no defense handling needed

---

### 8.15 Custom Weenie Strategy — SQL Database vs JSON Runtime

Windblown provides two systems for adding custom weenies. Choosing the right one depends on how the weenie is used.

#### SQL Database (INSERT only — never DELETE+INSERT)

**Use when:**
- The weenie must exist **even if the Windblown mod is disabled** (world integrity)
- The weenie is referenced by `landblock_instance`, `landblock_instance_link`, `weenie_properties_create_list`, generators, or other DB foreign keys
- The weenie is an **NPC, Vendor, Creature, Portal, Generator, or Contract** — these need to be in the DB for ACE's spawn/quest systems to find them
- The weenie has position data (`weenie_properties_position`) — positioning is DB-only
- Examples: SpellSiphon, ManaLattice, LuckyGold/ScarletRed letters, all Facility Hub NPCs/mobs/guards/contracts/generators/portals

**Rules:**
1. **Always use `INSERT ... ON DUPLICATE KEY UPDATE`** — never `DELETE FROM weenie WHERE ...` + `INSERT`. Additions only, never removals.
2. Each custom weenie gets its own `.sql` file under the matching category subfolder (see §8.16 for ranges).
3. Apply to `void-test_world` first for testing, then `ace_world` when verified.
4. Keep a backup of affected rows under `WindblownContent/sql-backups/<date>/` before each apply.

#### JSON Runtime (`Windblown/Content/Weenies/*.json`)

**Use when:**
- You want to **override properties** of an existing vanilla weenie without touching the DB
- You're creating a **tiered variant** that clones a base weenie and overrides a few properties
- The weenie is purely additive (a player will never find the WCID in the DB, only through mod code at runtime)
- You need the **`MirrorEmoteFromWcid`** feature — lets a custom WCID piggyback on an existing NPC's `EmoteCategory.Give` chain without modifying the NPC
- Iteration speed matters — edit JSON, restart, test. No DB script to write.
- Examples: Trophy tier upgrades (850271+), vanilla trophy property overrides (UiEffects, IconUnderlay, MaxStackSize)

**Rules:**
1. Only use for **items** (Stackable, Generic, etc.) — not NPCs, creatures, portals, generators, or contracts.
2. Use `BaseWcid` to clone from a cached vanilla weenie rather than duplicating all properties.
3. `MirrorEmoteFromWcid` is the cleanest way to make an item redeemable at existing NPCs without modifying NPC data.
4. The JSON system fires at Windblown startup — if Windblown is disabled, these weenies don't exist at runtime. This is fine for additive content.

#### Comparison table

| Aspect | SQL DB | JSON Runtime |
|--------|--------|-------------|
| Persists without mod | ✅ Yes | ❌ No |
| Supports NPCs/Creatures | ✅ Yes | ❌ No |
| Supports Emote Mirror | ❌ No | ✅ Yes |
| Referenceable by landblock/generators | ✅ Yes | ❌ No |
| Iteration speed | Slow (SQL→DB→restart) | Fast (edit→restart) |
| Cross-DB sync needed | ✅ Yes (each DB separately) | ❌ No (runtime only) |
| Vanilla weenie mutation risk | ❌ High (if using DELETE) | ✅ None (clone + overlay) |

### 8.16 WCID Range Allocation

All custom Windblown weenies (new WCIDs) must be assigned within these ranges.
SQL weenies live in `Windblown/Content/SQL/<Category>/`. JSON runtime weenies live in `Windblown/Content/Weenies/`.

| Range | Category | Currently allocated |
|-------|----------|--------------------|
| `800000–809999` | **Items** | 800000=Lesser Coalesced Mana, 800001=Greater, 800002=Aetheric, 800003=SpellSiphon, 800004=ManaLattice, 800005=Lucky Gold Letter, 800006=Scarlet Red Letter |
| `810000–819999` | **Vendors / NPCs** | 810000=Radi, 810001=Kaelith (surviving Pathwarden vendor) |
| `820000–829999` | **Creatures / Mobs** | (available) |
| `830000–839999` | **Generators** | (available) |
| `840000–849999` | **Portals** | (available) |
| `850000–859999` | **Contracts / Quests** | (available) |
| `860000–869999` | **Landblocks** | (available) |

**Rules:**
- Each category has 10,000 IDs — enough for significant growth without hitting other categories.
- **Trophy-tier items** (drudge charm upgrades, rat tail upgrades, wasp wing upgrades) live in JSON only — they do NOT get DB WCIDs. See `Windblown/Content/Weenies/*.json`.
- **Vanilla property overrides** (UiEffects, IconUnderlay, MaxStackSize on existing vanilla WCIDs) live in JSON only — never modify vanilla DB rows.
- The old WCID ranges (42516-42518, 800039, 850200-850341) were migrated from and should not be used for new things. They are kept in ace_world legacy data but code defaults now point to the new organized ranges.

### 8.17 SQL File Organization

All curated SQL files live under `Windblown/Content/SQL/` organized by category:

```
Windblown/Content/SQL/
├── 00_RevertVanillaMutations.sql        # Undo past vanilla DB edits
├── Items/                                # Range 800000-809999
│   ├── 01_CoalescedMana_800000-800002.sql
│   ├── 02_SpellSiphon_800003.sql
│   ├── 03_ManaLattice_800004.sql
│   └── 04_CustomLetters_800005-800006.sql
├── Vendors/                              # Range 810000-819999
│   ├── 01_Radi_810000.sql
│   ├── 02_Kaelith_810001.sql
│   └── 03_TownNetworkSpawns.sql
├── Pathwarden/
│   ├── 01_ChestAddLesserMana.sql         # Add 10x Lesser Coalesced Mana
│   └── 02_BasePrices.sql
├── VanillaTweaks/                        # Additive vanilla changes
│   ├── 01_BroodMatronQueen.sql
│   ├── 02_StatueReplicaBronze.sql
│   ├── 03_OlthoiPincerRevamp.sql
│   ├── 04_DefenseSalvageDescription.sql
│   └── 05_RemoveAcademyFromNonTnVendors.sql
```
INSERT INTO weenie_properties_int (object_Id, type, value)
SELECT {new_id}, type, value
FROM weenie_properties_int WHERE object_Id = {old_id};

INSERT INTO weenie_properties_string (object_Id, type, value)
SELECT {new_id}, type, value
FROM weenie_properties_string WHERE object_Id = {old_id};

-- ... repeat for bool, float, DID, IID, int64, position, create_list, emote, emote_action,
--     book, book_page_data, event_filter, anim_part, palette, texture_map, attribute,
--     attribute_2nd, body_part, skill, spell_book, generator

-- 4. Update foreign references (landblock_instance, create_list, generators that point to old_id)
UPDATE landblock_instance SET weenie_Class_Id = {new_id} WHERE weenie_Class_Id = {old_id};
UPDATE weenie_properties_create_list SET destination_Type = {new_id} WHERE destination_Type = {old_id};
UPDATE weenie_properties_create_list SET weenie_Class_Id = {new_id} WHERE weenie_Class_Id = {old_id};
UPDATE weenie_properties_generator SET weenie_Class_Id = {new_id} WHERE weenie_Class_Id = {old_id};
UPDATE weenie_properties_emote SET weenie_Class_Id = {new_id} WHERE weenie_Class_Id = {old_id};
UPDATE weenie_properties_emote_action SET weenie_Class_Id = {new_id} WHERE weenie_Class_Id = {old_id};

-- 5. Only delete old WCID after everything is verified working
-- DELETE FROM weenie WHERE class_Id = {old_id};  -- DANGER: cascades to property tables
```

## 9. External Knowledge Base
- **`A:\obsidian\jeremy\AGENT.md`** — LLM Wiki Agent rulebook. Consult at end of every task for knowledge persistence instructions.
- **`A:\obsidian\jeremy\wiki\game-engine\ACE-Realms-Source-Map.md`** — **Primary** mechanics / ACE.Server **source routing** (which files answer "how does X work?"). Obsidian wikilink: `[[ACE-Realms-Source-Map]]`. Read before deep-diving `.references/`.
- **`A:\obsidian\jeremy\wiki\index.md`** - Collective second brain. Reference for retained knowledge; write new info with `[[Page Name]]` links.
- **`BetterSupportSkills/ClassPerks.md`** - **Reference for ALL BetterSupportSkills class-related work.** Contains prerequisites, perks, and formulas for every combat/hybrid/summoning class. Consult before changing class logic or answering class-related questions.

## 10. graphify
Before answering **ace-raaj-mods** architecture questions, read `A:/obsidian/jeremy/raw/graphify-out/GRAPH_REPORT.md` (from `graphify update . --out-dir="A:/obsidian/jeremy/raw/graphify-out"` on this repo). For cross-module questions, prefer `graphify query`, `graphify path`, `graphify explain` over grep. After modifying code in this repo, run that same update.


