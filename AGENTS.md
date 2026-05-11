# AGENTS.md - ace-raaj-mods

## 1. Mandatory Skills
Before any work, load applicable skills:
- **ace-mod** - REQUIRED for all C#, Harmony, weenie, or database work.
- **using-superpowers** - Load before ANY action; if a skill might apply (even 1%), load it.
- **planning-with-files** - REQUIRED for all multi-phase or complex tasks (3+ steps). Before execution, create `task_plan.md`, `findings.md`, and `progress.md` in the project directory and update them after each step.
- **Local skill override** - This repo contains a team-specific skill at `.cursor/skills/ace-mod-team/SKILL.md` that extends the global `ace-mod` skill with project-specific patterns. When the global `ace-mod` skill is invoked, also read the local override.

**Pi skill discovery** — This project has a `.pi/settings.json` that bridges two skill sources:
  - `.cursor/skills/` (project-specific: ace-mod, ace-mod-team, planning-with-files, ace-build, ace-log, mcp2cli, mod-audit, doc)
  - `/mnt/c/Users/jeremy/.cursor/skills/` (Windows cursor skills — 1334 skills including using-superpowers)
  These are discovered by pi at startup. Load skills via `/skill:name` or via `read` in prompts as needed.

## 2. Starting Workflow
**Git (each new chat, before substantive work):** From repo root `A:/ai/projects/ace-raaj-mods`, run `git status -sb`. If dirty, note `M` / `??` paths briefly so unstaged and untracked work is not forgotten. Repeat before handoff when edits were made.

Always check in this order:
0. **🧠 Wiki first, always** — Before ANY investigation or implementation, search `A:\obsidian\jeremy\wiki\index.md` and relevant topic pages. We have already solved problems and researched mechanics that would take hours to re-derive. The wiki is the primary source of retained knowledge — **read it before you start, write to it before you finish.**
1. **`PLAN.md`** - Active work only: bug tracker, immediate reworks, implementation order, greenfield backlog, short `## Progress (recent)` pointers. **Do not** let PLAN grow into a duplicate shipped-history log.
2. **`COMPLETED.md`** - Shipped milestones and retrospectives, **one dated section per ship day** (`## YYYY-MM-DD`). Canonical "what already landed."
3. `README.md` - Mod list, enablement status.
4. Mod-specific `Readme.md` - Per-mod docs and configuration notes.
5. **Load mandatory skills** per §1 before touching code.
6. **Game mechanics / ACE behavior** - Follow §7.2 (wiki → `.references/` → graphify/rg). Do not invent behavior from memory.

## 3. Repo Conventions
- **ValheelContent is PERMANENTLY EXCLUDED from all deployments** — never copy `build/ValheelContent/` to any server (`C:\ACE\`, `C:\ACE-WB\`, `A:\void-test\`) unless the user explicitly asks to deploy it.
- **Mod structure:** Each folder = deployable mod containing `Meta.json`, `Settings.cs`, `Settings.json` (repo template), `*.csproj`.
- **Test ACE `Settings.json`** (`C:\ACE\Mods\<AssemblyName>\Settings.json`) is the **operator source of truth** — do not overwrite on deploy unless explicitly requested. When adding **new** JSON keys: update `Settings.cs` + repo `Settings.json`, and merge keys into the test file. `push test`: deploy DLL/Meta; **preserve** test `Settings.json`.
- **Harmony patches:** Prefer `nameof` targeting. Prefix patch methods with `Pre`/`Post`/`Transpiler`. Use `PatchCategory` for grouped unpatch.
- **Cross-mod properties:** Check shared IDs before inventing new ones (see table below).

| Property | Meaning | Used By |
|----------|---------|---------|
| `FakeFloat 11012` | EnlightenmentPoolBonus | AureatePath / Loremaster / ChallengeModes |
| `FakeInt 40113` | BuddySpawn tag | Swarmed |
| `FakeInt 10029` | CreatureExType | Swarmed |
| `FakeBool 40100` | GrowthItem | EmpyreanAlteration |
| `FakeBool 40130` | IsAwakened | EmpyreanAlteration |
| `FakeInt 40131` | AwakenedTier | EmpyreanAlteration |
| `FakeInt 40132` | PreImbuedCount | EmpyreanAlteration |
| `FakeInt 40133` | Overtinked custom imbue bitmask | Overtinked |
| `FakeInt 40134` | Shatter debuff stack count on creature | Overtinked |
| `FakeInt 40135` | Shatter broken (max stacks) on creature | Overtinked |
| `FakeString 11033` | OriginalName | EmpyreanAlteration |
| `FakeString 11034` | ProfileName | EmpyreanAlteration |
| `FakeBool 12003` | Summoning toggle (TEMP) | PersonalProjectsTesting — DO NOT REUSE |
| `FakeBool 12001` | Event announcement opt-out | WorldEvents |
| `FakeBool 12002` | **Legacy** periodic auto-claim flag (pre-json); migrated to `Mods/WorldEvents/PendingClaimsAuto/<guid>.json` on login/tick - do not reuse for new features | WorldEvents |

**Windblown custom trophies (physical stackables):** When adding tiered quest trophies that should **autoloot to the pack** as real items (not LLL ledger rows):
  - **New tiered trophy template:** `Windblown/docs/Tiered-Trophy-Template.md` — copy-paste JSON templates for weenies, trophy lines, and SQL. Automatically get blue underlay + black number overlays + creature-type-gated drops + turn-in rewards.
  - **AutoLoot:** Update `UpgradedTrophyWeenieClassIds` in AutoLoot `Settings.json`.
  - **Bulk turn-in:** Already handled by `EnableBulkTurnIn: true` in the trophy line JSON.
  - **Extend existing SQL** (`Content/SQL/Items/05_WindblownCollectorTrophies...sql`) or create a new file per trophy line.

## 4. Agent Permissions
- **DO:** Edit repo `Settings.json` for templates/new keys; tune **test** `C:\ACE\Mods\<Mod>\Settings.json` for balance. Fix bugs, refactor for clarity.
- **DO:** Apply SQL you add or change under mod `Content/SQL/` to the target MySQL database yourself, following **`void-test_world` first** → **`ace_world`** (push test) → **`wb_ace_world`** (push live). Verify with `SELECT`.
- **DO:** **Back up before SQL that adds or mutates world/shard data** - `mysqldump` (scoped) into `WindblownContent/sql-backups/YYYY-MM-DD/` before applying. See wiki `operations/SQL Procedures` for full guide.
- **DO:** Commit and push after every bug fix or problem solved. Never accumulate uncommitted fixes.
- **DO NOT:** Change `Meta.json` enablement without explicit user direction.
- **DO NOT:** Create new mods without confirming scope.
- **DO NOT:** Use, reference, modify, or deploy `ValheelContent` for any reason unless specifically asked by the user.
- **DEPLOYMENT WORKFLOW:** **ALWAYS deploy to test server (`C:\ACE\`) first.** Never push directly to live (`C:\ACE-WB\`) unless user explicitly says "push live". Test → Verify → Then request permission.

## 5. Build & Deploy
- Build locally via `dotnet build ModName/ModName.csproj` — output goes to `A:\ai\projects\ace-raaj-mods\build\$(AssemblyName)\` locally (**never** touches any server).
- **MySQL credentials for deploy/sync:** Optional local file **`scripts/.deploy-mysql.env`** (gitignored) — copy from **`scripts/.deploy-mysql.env.example`**, set `ACE_MYSQL_USER` / `ACE_MYSQL_PASSWORD`. **`deploy-void-test.sh`**, **`deploy-wb-test.sh`**, and **`sync-world-void-test-to-wb-test.sh`** source it when present so you do not need to export vars each session.
- **Repo SQL layout:** `ModName/Content/SQL/**/*.sql` applies to the **world** DB (`void-test_world` / `ace_world` by default). `ModName/Content/SQL-shard/**/*.sql` applies to **`WB_TEST_SHARD_DATABASE`** (e.g. `ace_shard`) when set in `scripts/.deploy-mysql.env` or exported — required for biota/player-item patches on split world/shard installs.
- **void-test deploy (`push void` / `deploy void`):** Run `bash scripts/deploy-void-test.sh` from repo root (Git Bash). This:
  1. Builds ALL mods (failing mods are skipped, not a hard stop)
  2. **Wipes** `A:\void-test\Mods\` entirely (no stale DLLs from deleted mods)
  3. Copies **DLL + Meta.json + Settings.json** from each mod's `build/` output
  4. Applies **`ModName/Content/SQL/**/*.sql`** to MySQL **`void-test_world`** via `scripts/Apply-RepoModSqlToMysql.ps1` (sorted path order). Requires **`ACE_MYSQL_USER`** and **`ACE_MYSQL_PASSWORD`** exported before run. Skip SQL: **`VOID_TEST_SKIP_SQL=1`**. Override DB: **`VOID_SQL_DATABASE`**. Optional: **`MYSQL_EXE`**, **`ACE_SQL_INCLUDE_ROLLBACK=1`** (applies `*-rollback.sql` files; otherwise skipped).
  5. Always excludes ValheelContent, Shared (no csproj), build (output dir)
  - After deploy: restart the void-test ACE server to load new DLLs. **Large or risky SQL:** still follow [[operations/SQL Procedures]] (scoped `mysqldump` before mutating world data).
- **wb_test deploy (`push wb test` / `deploy wb test` / `deploy test` full tree):** Run `bash scripts/deploy-wb-test.sh` from repo root. Same as void-test but targets **`C:\ACE\Mods\`**, stops only **`C:\ACE\`**, clears `wb_test_watchdog_*`. **Order:** build → stop ACE → **wipe + copy mods first** (so DLLs always land even if MySQL fails) → **`sync-world-void-test-to-wb-test.sh`** by default (**`void-test_world` → `WB_TEST_SQL_DATABASE`**, default **`ace_world`**) → repo **`Content/SQL`**. **`DEPLOY_WB_TEST_SKIP_WORLD_SYNC=1`** skips world clone only. Requires **`ACE_MYSQL_USER`** / **`ACE_MYSQL_PASSWORD`** for sync+SQL unless both sync is skipped and **`WB_TEST_SKIP_SQL=1`** (optional **`scripts/.deploy-mysql.env`**). SQL target defaults to **`ace_world`** (`WB_TEST_SQL_DATABASE` override). **Wipe overwrites `Settings.json`** under each mod — back up `C:\ACE\Mods` if needed.
- **wb_test ≡ void-test (filesystem + world SQL):** Build/copy steps already match void-test. **World data diverges by default** because void-test applies SQL to **`void-test_world`** and wb_test to **`ace_world`** (different baselines → different `INSERT IGNORE` / static spawns). For **the same SQL target as void-test**, run with **`DEPLOY_TEST_MATCH_VOID_WORLD_DB=1`** (sets `WB_TEST_SQL_DATABASE` to `VOID_SQL_DATABASE`, default **`void-test_world`**). **Also** set the **`C:\ACE`** ACE.Server config world database name to that same database so the running server reads what you just applied. **Warning:** two live ACE instances writing one shared world DB is unsafe — use one writer, or clone DB snapshots instead of sharing.
- **Workflow — void stable first, then wb_test matches (24/7 friendly):**
  1. **Two world DBs:** void-test ACE uses **`void-test_world`**; `C:\ACE` uses **`ace_world`**. Do **not** share one DB with two live writers.
  2. While iterating: `bash scripts/deploy-void-test.sh` (repo SQL → `void-test_world`; mods on void-test).
  3. When void is stable and you want `C:\ACE` to match: run **`bash scripts/deploy-wb-test.sh`** — it **stops `C:\ACE`**, wipes/copies **`C:\ACE\Mods`**, runs **`sync-world-void-test-to-wb-test.sh`** (backups under `sql-backups/world-sync/`), reapplies repo **`Content/SQL`**. Restart **`C:\ACE`**.  
     To clone world **without** a full wb deploy, run **`bash scripts/sync-world-void-test-to-wb-test.sh`** alone (same env vars as embedded step). `SYNC_WORLD_BACKUP_DIR`, `SYNC_WORLD_DRY_RUN=1` optional.  
     **Before world import**, the sync script writes **character/housing safety dumps** when not dry-run: full **`WB_TEST_SHARD_DATABASE`** (or `SYNC_WORLD_SHARD_DATABASE`) if set and **≠** dest world DB, plus a **subset dump** of `biota` / `character` / `house*` tables present **inside** the dest world DB (combined installs). `SYNC_WORLD_SKIP_PLAYER_BACKUP=1` disables those; `SYNC_WORLD_BACKUP_DEST_PLAYER_TABLES=0` skips only the subset file.
  4. **`DEPLOY_TEST_MATCH_VOID_WORLD_DB=1`:** only for **one** ACE instance pointed at that world DB (no second writer). For two servers 24/7, use the **clone** script in step 3 instead.
  5. **GUID hygiene:** `ValheelContent` SQL (not applied by normal deploy) still reuses **`0x7013…`** instance GUIDs in-tree; if that SQL was ever applied to your DB, it can **steal** the same GUIDs as Windblown Town Network and your TN `INSERT IGNORE` rows silently never insert. Prefer never applying Valheel world SQL to the DB you use for mod QA, or renumber one side to a disjoint GUID range.
  6. **Characters / biota (no surprise wipes):** Typical ACE keeps **static world** in **`WorldDatabase`** (often `ace_world`) and **player + biota + housing runtime** in **`ShardDatabase`** (a different schema). **`sync-world-void-test-to-wb-test.sh`** (including the default path inside **`deploy-wb-test.sh`**) only replaces the **world** DB name (`WB_TEST_SQL_DATABASE`, default `ace_world`). A **full** clone **does not delete characters** if world vs shard are **split** — confirm in ACE.Server config. If **world and shard share one DB name**, treat full clone as destructive. Use **`SYNC_WORLD_TABLES`** for a **partial** table sync, or **`DEPLOY_WB_TEST_SKIP_WORLD_SYNC=1`** for **`deploy-wb-test.sh`** without bulk world replace (DLL + repo SQL only).
- **Other servers (`C:\ACE\`, `C:\ACE-WB\`) — ad-hoc:** Manual copy of `build/ModName/` DLLs + `Meta.json` only. Preserve existing `Settings.json` unless explicitly told to refresh (when not using the full wipe scripts above).
- Release zips auto-generated by `.csproj` `ZipOutputPath` target in Release config.
- GitHub Actions workflow handles CI builds and releases.

## 6. Releases & Changelogs
- **Every push** to GitHub must include a clear changelog.
- Update `README.md` feature list when adding/changing significant functionality.
- Hand-written summaries for user-facing changes are strongly preferred.

## 7. External Paths & Game Mechanics

### 7.1 Allowed Paths
- **`A:\`** - Full drive access for research, data mining, configuration, code analysis, deployment.
- **`C:\ACE\`** - Test server installation (port 9000).
- **`C:\ACE-WB\`** - Live Windblown server (port 9002). **Never deploy here without explicit "push live".**
- **`A:\ai\projects\ace-sql`** - External ACE SQL content repository.
- **`A:\obsidian\jeremy\wiki\*`** - **Persistent knowledge wiki; READ FIRST.**
- **`B:\Backup\ac custom stuff`** - Stockpile of raw AC custom content. See `_INDEX.md`.
- **`.references/`** - ACE source/server files and world database dumps. Check this directory when investigating ACE internals.

### 7.2 Game Mechanics: ACE Source Lookup

**Order of evidence:**
1. **Wiki** (`A:\obsidian\jeremy\wiki\game-engine\ACE-Realms-Source-Map.md`) — curated paths and traps.
2. **Pinned snapshots** — `.references/` for stable line citations.
3. **graphify / ripgrep** — For this repo's mods, prefer `graphify query/path/explain`. Read `A:/obsidian/jeremy/raw/graphify-out/GRAPH_REPORT.md` first for architecture.

## 8. Conventions, Warnings & Lessons Learned

### 8.1 Mod Architecture & Cross-Mod Integration

**Single source of truth:**
- **LeyLineLedger** owns ALL bank, vendor **commerce**, and **pricing** systems (buy/sell multipliers, bank debit/deposit, `BuyPrice` / `GetBuyCost` behavior). No other mod may implement competing vendor price multipliers.
- **QOL `VendorLootRotation`** only **regenerates sale stock** (Harmony **First**). It is **not** a pricing mod.
- **BetterLootControl** is the single source of truth for all loot tables.
- **AureatePath** owns the server level cap (`MaxLevel`, `CreditInterval`, `LevelCost`).

**Cross-mod Harmony patches without assembly references:** Use `AccessTools.TypeByName("Namespace.Type")` inside static `TargetMethod()`, with `Prepare()` returning `false` if absent. Manually `PatchCategory`/`UnpatchCategory` in host mod's `RefreshAll()`.

**Vendor approach ordering:** CLEARS inventory → `Priority.First` (QOL). ADDS static items → `Priority.Last` (EA injection).

**Auto-intercept Harmony prefixes can swallow other mods' inventory creates.** `BetterSupportSkills.SalvageAutoDeposit` intercepts `TryCreateInInventoryWithNetworking` for salvage WCIDs 20981-21089. Use `[ThreadStatic] _suppressionDepth` + `EnterSuppression()`/`ExitSuppression()` to bracket competing calls. See `LeyLineLedger/BankSalvage.cs:TryCreateBagBypassingAutoSalvage`.

### 8.2 Harmony & ACE Patching

- **Prefer `nameof(Target.Method)`** — string-based targets silently fail at runtime; `nameof` fails at compile time.
- **Patch base `virtual`, not `override` in partial classes** — `Creature.Heartbeat` is an `override`; patch `WorldObject.Heartbeat` (base virtual). A single bad target prevents the ENTIRE mod from loading.
- **Patch property getters for client+server consistency** — Use `[HarmonyPatch(..., MethodType.Getter)]` if a property affects both UI display and server math.
- **Initialize `Settings` before `base.Start()`** in `BasicPatch<>` subclasses — `base.Start()` applies Harmony patches. If a patch throws, `Start()` aborts before `Settings` is assigned.

**[ThreadStatic] for prefix→postfix state:** Reset at start of prefix. Example: `_wasChaosFailure` in `ChaosTinker.cs`.

**JIT inlining defeats Harmony prefixes on trivial wrappers** — If a prefix fires for some callers but not others, the JIT likely inlined the wrapper. Fix: patch one level deeper (the inner method, e.g. `EmoteManager.Enqueue` instead of `ExecuteEmoteSet`). Case study: `Windblown/TrophyLines/TrophyTurnInPatches.cs:PreEnqueue_Trophy` (2026-05-04).

**Cross-mod reflection: extension methods live in sibling classes** — `LeyLineLedgerBankInterop.Resolve` originally looked on `PatchClass` but `GetBanked`/`IncBanked` are defined in `LeyLineLedger.BankExtensions`. Search `*Extensions` class first; emit a one-time `Resolved <method> on <type>` log.

### 8.3 Threading & Concurrency

**Static `HashSet<T>` is not thread-safe** — Use `ConcurrentDictionary<T, byte>` with `TryAdd(key, 0)` / `TryRemove(key, out _)` / `ContainsKey(key)`.

**`ACE.Common.ThreadSafeRandom.Next(int min, int max)` is inclusive on both bounds** — Internally calls `Random.Next(min, max + 1)`. Using `array.Length` as max causes `IndexOutOfRangeException`; always use `Length - 1`.

### 8.4 Quick Gotchas (see wiki for full details)

| Gotcha | Fix | Wiki |
|--------|-----|------|
| `WorldObject` is abstract | Use `WorldObjectFactory.CreateNewWorldObject` | [[ACE Entity Gotchas]] |
| `Vendor.DefaultItemsForSale` is readonly | Only `.Add()` / `.Remove()` / `.Clear()` | [[ACE Entity Gotchas]] |
| `ItemType.Shield` does NOT exist | Use `ItemType.Armor` | [[ACE Entity Gotchas]] |
| `/god` sets `IsAdmin` but NOT `player.Level` | Add `AdminLevelOverrideProperty` | [[ACE Entity Gotchas]] |
| `Meta.json` not copying to output | Use `PreserveNewest` in `.csproj` | [[ACE Entity Gotchas]] |
| `BasicPatch<T>.Settings` is NOT static | `GetField(..., Instance)` or read from disk | [[ACE Entity Gotchas]] |
| Stackable items need 11 int props | SQL template + Harmony postfixes | [[Stackable Items Checklist]] |
| SQL dumps contain `CREATE DATABASE` | Strip before piping; never `sed` a dump | [[operations/SQL Procedures]] |
| `SpellId.Undef` in blast spells | Filter `Undef` from rolled lists | [[ACE Vanilla Behavior Traps]] |
| `InqYesNo` emote type 75: `message` vs `test_String` | `message` = player-facing text, `test_String` = routing key. Swapped = routing key shown as popup | [[ACE Vanilla Behavior Traps]] |
| Non-sequential ACE IDs | Use hardcoded arrays, never arithmetic | [[ACE Vanilla Behavior Traps]] |

### 8.5 Workflows & Agent Behavior

- **`PLAN.md` vs `COMPLETED.md`** — PLAN is forward-looking; COMPLETED is the archive. Append to COMPLETED after verified commit, then trim PLAN.
- **Commit and push after EVERY bug fix** — Never leave working tree dirty with solved problems.
- **Pushing from WSL:** Use Windows Git binary: `"/mnt/c/Program Files/Git/bin/git.exe" -C "$(wslpath -w /mnt/a/ai/projects/ace-raaj-mods)" push`
- **Run `graphify update .` after any session that touched code:** `graphify update . --out-dir="A:/obsidian/jeremy/raw/graphify-out"`
- **Wiki is the primary investigation source** — Check it before any rabbit hole. Read first, investigate second.
- **Ask clarifying questions first** when investigating user-reported issues.
- **`/autosalvage quiet` (mode 3):** Salvage still banks to LLL but all messaging suppressed.

### 8.6 NEVER GUESS WITH ACE — ALWAYS VERIFY

ACE enums, property IDs, and mechanics are **never what you assume**. `WeenieType.Book` is `8` and **does not stack** — only `WeenieType.Stackable` (`51`) does. Guessing leads to wrong queries and broken mods.

**Always follow the evidence chain:**
1. **Wiki first** — search `A:\obsidian\jeremy\wiki\`.
2. **Emotes** — Read `ACE.Entity.Enum.EmoteCategory.cs` in `.references/`.
3. **WeenieType** — Read `ACE.Entity.Enum.WeenieType.cs`.
4. **PropertyInt** — Check `ACE.Entity.Enum.Properties.PropertyInt.cs`.
5. **In doubt about a DB query?** Check the ACE source for how the table is read/processed.

### 8.7 MONETARY REWARDS MUST GO THROUGH LLL BANK INTEROP

Whenever a Harmony patch grants a monetary/pyreal reward, it **must** use `LeyLineLedgerBankInterop.DepositToBank`. Do **not** give trade notes or physical pyreal items — they clutter inventory and bypass LLL's banking system. Works whether LLL is loaded or not (falls back to PropertyInt64 biota write).

### 8.7a Stack salvage bank (`PropertyInt64`) — LLL is source of truth

Material bank slots for stack salvage WCIDs **20981–21089** are **`SalvageBank.FirstMaterialBankPropertyId + DepositRules row index`** unless the row sets **`BankProperty`** — see `LeyLineLedger.BankSalvage.ResolveMaterialBankProperty`. **Do not** assume **`FirstMaterialBankPropertyId + (WCID − 20981)`** unless every rule row stays strictly WCID-sequential.

**BetterSupportSkills** credits those units via **`Shared/LeyLineLedgerSalvageBankInterop`** + **`LeyLineLedgerBankInterop.IncBanked`** so messaging and `/bank salvage status` stay aligned. **LeyLineLedger** runs **`MaybeMergeLegacyWcidOffsetSalvageBank`** on login and at `/bank salvage` to fold any pre-fix stray legacy-slot balance into the resolved slot.

### 8.8 Wiki Reference Index

| Topic | Wiki Page | What it covers |
|-------|-----------|----------------|
| Server ops, deploy, watchdogs | [[operations/Deploy Procedures]] | Trigger phrases, startup/shutdown, 3-instance management |
| SQL deployment, backups, encoding | [[operations/SQL Procedures]] | void-test→test→live chain, mysqldump, biota cleanup, Windows-1252 |
| Stackable items | [[Stackable Items Checklist]] | SQL templates, wrong-type bugs, Harmony postfixes, biota cleanup |
| ACE entity gotchas | [[ACE Entity Gotchas]] | WorldObject abstract, ItemType.Shield, Meta.json, Settings instance property |
| ACE vanilla traps | [[ACE Vanilla Behavior Traps]] | SpellId.Undef, TargetType enforcement, non-sequential IDs |
| UI/Visuals & client sync | [[game-engine/ACE-Item-Icon-UiEffects-ImbuedEffect-Reference]] | UiEffects values, CalculateObjDesc, client refresh |
| Economy mechanics | [[Economy Mechanics]] | Enlightenment formula, currency patterns, loot rules |
| Patterns & idioms | [[ace-raaj-mods Patterns]] | Verbose results, JSON persistence, bidirectional UX, auto-reaccept |
| Custom weenie strategy | [[game-engine/Custom-Weenie-Organization-2026-05-08]] | WCID ranges, SQL vs JSON, file organization |
| ACE source lookup | [[ACE-Realms-Source-Map]] | Topic pages, start files, grep seeds for all vanilla subsystems |

## 9. External Knowledge Base
- **`A:\obsidian\jeremy\wiki\game-engine\ACE-Realms-Source-Map.md`** — **Primary** mechanics / ACE.Server source routing.
- **`A:\obsidian\jeremy\wiki\index.md`** — **Collective second brain — YOUR FIRST STOP.**
- **`BetterSupportSkills/ClassPerks.md`** — Reference for ALL class-related work.
