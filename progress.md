# Progress Log — 2026-05-11

## Session start

- Loaded required workflow/style skills and repo instructions
- Ran startup `git status -sb`
- Confirmed repo already dirty before new edits:
  - modified: `LeyLineLedger/PatchClass.cs`, `Windblown/Content/TrophyLines/wasp-wing.json`
  - untracked: none at startup

## Investigation

- Read wiki / graph context files and checked relevant repo guidance
- Inspected void-test log around:
  - `"[BSS MagicWithoutMC] PostHandleCastSpellEcho error..."`
  - `"[BSS->LLL Salvage] Could not resolve bank PropertyInt64..."`
- Traced MagicWithoutMC call path into ACE mana calculation
- Traced salvage path through shared LLL interop reflection
- Confirmed two separate root causes:
  1. inherited static `Settings` reflection missing `FlattenHierarchy`
  2. Mana Conversion skill row can be null in `CalculateManaUsage()` flow

## Current step

- Patching minimal fixes in shared LLL interop and BSS paid spell cast path

## Next

- Build affected mods
- Check lints
- Run graphify update
- Hand back exact verification expectations for fresh log test

## Follow-up — Drudge charm stacks

- User reported custom drudge charm stacks of 40 appearing again on void-test
- Read current Windblown drudge charm configs and trophy-line code
- Confirmed current line is based on vanilla `24835`, not older `3669`
- Root cause: vanilla `24835` was not blocked from creation; sibling replacement converted those vanilla drops into custom `850300` while preserving stack count
- Patched `Windblown/ItemsRemovalPatches.cs` to block `24835` creation across loot/gambling/admin spawn paths
- Rebuilt `Windblown` clean
- Re-ran `deploy-void-test.sh`
- Restarted void-test server
- Verified fresh log activity after restart; salvage credit logs now show resolved properties and no startup failure

## Follow-up — Git workflow docs

- User asked for branch / commit / push / PR guidance to be written into repo docs
- Read current `AGENTS.md`, wiki index, and operations docs to find the least confusing insertion points
- Plan: add one dedicated wiki page, link it from the wiki, and tighten `AGENTS.md` so future sessions default to branch-first workflow
- Added `A:\obsidian\jeremy\wiki\operations\Git Workflow.md` with the recommended branch-first model, command sequence, and commit/push/PR/merge mental model
- Linked the new page from `A:\obsidian\jeremy\wiki\index.md` and `A:\obsidian\jeremy\wiki\operations\Deploy Procedures.md`
- Updated `AGENTS.md` startup + workflow sections to require: update `main` → create task branch → implement/verify → commit/push on branch → PR into `main`

## Follow-up — CI validator alignment

- PR CI failed on `scripts/validate_sot.sh`
- Inspected failure log and confirmed it was checking for legacy `WindblownContent/Readme.md`, `WindblownContent/Settings.json`, and `WindblownContent/sql-backups/`
- Confirmed user intent is for trophy/content ownership to live under `Windblown`, not to resurrect `WindblownContent`
- Updated validator and source-of-truth docs/templates to point at current `Windblown` ownership and root `sql-backups/`
- Deleted empty legacy `Gemcrafter/` and `Work-In-Progress/` directories (no tracked files inside either folder)
- Removed stale audit/matrix references to those deleted placeholders
- Re-ran `bash scripts/validate_sot.sh` locally: **48 passed, 0 failed, 0 warnings**

## Follow-up — Swarmed `Conniving` crash

- User clarified the world DB had already been wiped after backup, which shifted suspicion away from stale world data and toward live runtime mutation.
- Searched deployed mods and confirmed no active `ValheelContent` deployment under `C:\ACE\Mods`.
- Traced `Conniving` to `Swarmed/Creatures/Puppeteer.cs`, where Puppeteer mobs prepend `Conniving ` during `Initialize()`.
- Traced reload path through `Swarmed/Features/CreatureExSpawn.cs` + `Swarmed/Helpers/CreatureExHelpers.cs`: persisted CreatureEx biota recreates the concrete class, so a saved Puppeteer can prepend the title again on load.
- Patched `Swarmed/Creatures/CreatureEx.cs` with `ApplyNamePrefixOnce(...)` to collapse duplicate prefixes before reapplying.
- Updated `Swarmed/Creatures/Puppeteer.cs` to use the idempotent helper instead of raw string concatenation.
- Built `Swarmed/Swarmed.csproj` successfully; only pre-existing warnings remain.
- Checked lints for edited files: no new diagnostics.

## Current step

- Preparing `push void` deploy from current branch state because user wants void updated instead of wb_test.

## Follow-up — Persistent state / `ModData`

- User clarified naming preference: use `C:\ACE\Server\ModData\...` instead of ambiguous `Data`
- Added `WorldEvents/WorldEventsDataPaths.cs` to centralize server-owned mod-data roots
- Migrated `WorldEvents` runtime persistence to `C:\ACE\Server\ModData\WorldEvents\...`
- Kept legacy read/fallback support for prior locations so existing event state and pending claims still load
- Review pass corrected two migration edge cases:
  - `Sale` / `Cull` now fall back to both legacy `WorldEvents/Data/...` and older shared `Mods/Data/...` active-event files
  - `BonusQuest` now merges legacy append-only JSONL logs before deleting old files
- Updated stores/logs for:
  - pending claims auto prefs
  - pending event claims
  - participation ledger
  - hunt / sale / cull / invasion / poi hunt / scavenger hunt / bonus quest runtime state
  - Pathwarden vendor purchase log
- Built `WorldEvents/WorldEvents.csproj` clean with 0 warnings / 0 errors
- Ran `graphify update . --out-dir=\"A:/obsidian/jeremy/raw/graphify-out\"`

## Follow-up — Balance / visual watch

- Checked deployed `C:\ACE\Mods\BetterSupportSkills\Settings.json`
- Confirmed summoning cantrip pet bonus remains enabled, but legendary path is effectively off (`CantripBonusPetsLegendarySpellId = 0`)
- Effective live bonus ladder is currently `+1 / +2 / +3 / +4`; dormant code still has `{1,2,3,4,7}` for future legendary support
- Confirmed defense imbue visual gap is expected from current code:
  - defense imbues get `UiEffects`
  - defense imbues do **not** get `IconUnderlayId` mapping in current EA code

## Follow-up — Void deploy request

- User asked to deploy to `void-test` instead of `wb_test`
- Confirmed repo branch/worktree state before deploy:
  - modified: `Swarmed/Creatures/CreatureEx.cs`, `Swarmed/Creatures/Puppeteer.cs`, multiple `WorldEvents/*Persistence.cs`, `findings.md`, `progress.md`, `task_plan.md`
  - untracked: `WorldEvents/WorldEventsDataPaths.cs`
- Read deploy procedure reference and confirmed `push void` maps to `bash scripts/deploy-void-test.sh`
- Checked active terminal metadata first to avoid colliding with another running repo command
- Ran `bash scripts/deploy-void-test.sh` successfully:
  - built all mods clean
  - wiped `A:\void-test\Mods`
  - copied mod outputs
  - applied 41 world SQL files to `void-test_world`
- Script output warned shard SQL was skipped because shard DB env var was not set; this is expected per current script behavior
- Manual log clear failed because `A:\void-test\Server\ACE_Log.txt` was already locked by another process
- Explicit process listing from current shell was inconclusive, but:
  - fresh log activity continued on void-test
  - `Test-NetConnection 127.0.0.1:9010` returned `True`
- Net result: void-test is deployed and currently listening on port `9010`

## Follow-up — Shard env naming cleanup

- User asked to clean up the misleading void-side shard env name
- Updated local `scripts/.deploy-mysql.env` to use `VOID_SHARD_DATABASE=void-test_shard`
- Updated `scripts/.deploy-mysql.env.example` to document both wb and void shard vars
- Updated `scripts/deploy-void-test.sh` to prefer `VOID_SHARD_DATABASE` and only fall back to `WB_TEST_SHARD_DATABASE` for backward compatibility
- Updated `scripts/Apply-RepoModSqlToMysql.ps1` to accept shard DB from:
  - `SHARD_DATABASE`
  - `WB_TEST_SHARD_DATABASE`
  - `VOID_SHARD_DATABASE`
- Also updated its skip warning so it no longer tells void users to set the wb_test variable
- Verification:
  - `bash -n scripts/deploy-void-test.sh scripts/deploy-wb-test.sh` passed
  - PowerShell parse check for `Apply-RepoModSqlToMysql.ps1` returned `OK`

## Follow-up — Loremaster `ModData`

- Continued the persistent-state migration with `Loremaster`
- Added `Loremaster/LoremasterDataPaths.cs` to centralize:
  - server-owned `ModData` root resolution via ACE server assembly path
  - legacy mod-folder/data-folder fallback resolution
- Migrated `Loremaster` runtime storage to `C:\ACE\Server\ModData\Loremaster\...` for:
  - `AccountQuestFlags.json`
  - `RepeatQbTracker.json`
  - `AccountAugments/*.json`
  - `MomentumState.json`
- Preserved legacy migration behavior:
  - old root-level mod JSON still loads for account quest flags and repeat-QB
  - even older `AccountRepeatQuests.json` still migrates into the new repeat-QB store
  - old `Data/AccountAugments/*.json` and `Data/MomentumState.json` still load and rewrite into `ModData`
- Verified with:
  - `dotnet build Loremaster/Loremaster.csproj` succeeded
  - no new lints in touched `Loremaster` files
  - `graphify update . --out-dir="A:/obsidian/jeremy/raw/graphify-out"` succeeded

## Follow-up — AchievementUnlocked `ModData`

- Continued the same migration pattern into `AchievementUnlocked`
- Added `AchievementUnlocked/AchievementUnlockedDataPaths.cs` for server-root `ModData` resolution plus legacy mod-folder fallback
- Migrated active account-wide JSON stores to `C:\ACE\Server\ModData\AchievementUnlocked\...`:
  - `AccountAchievements.json`
  - `AccountPoolBonus.json`
  - `AccountMilestoneBonus.json`
- Kept legacy read-and-rewrite behavior so existing mod-folder JSON migrates forward automatically on load/save
- Verified with:
  - `dotnet build AchievementUnlocked/AchievementUnlocked.csproj` succeeded
  - no new lints in touched `AchievementUnlocked` files
  - `graphify update . --out-dir="A:/obsidian/jeremy/raw/graphify-out"` succeeded

## Follow-up — QOL `ModData`

- Continued with `QOL` runtime persistence after confirming `PlayerProfileStore` and `XpTracker` still wrote into the mod folder
- Added `QOL/QolDataPaths.cs`
- Updated `QOL/PatchClass.cs` so persistent stores initialize from:
  - `C:\ACE\Server\ModData\QOL\PlayerProfiles.json`
  - `C:\ACE\Server\ModData\QOL\xp-tracker\`
- Preserved legacy migration behavior:
  - old `QOL/PlayerProfiles.json` still loads and rewrites into `ModData`
  - old `QOL/xp-tracker/*.json` still load and migrate forward per player
- Fixed follow-on admin wipe drift in `QOL/WipeProgress.cs` so it clears both new `Server\ModData\...` locations and legacy mod-folder locations for migrated `AchievementUnlocked` / `Loremaster` files
- Verified with:
  - `dotnet build QOL/QOL.csproj` succeeded
  - no new lints in touched `QOL` files
  - `graphify update . --out-dir="A:/obsidian/jeremy/raw/graphify-out"` succeeded

## Follow-up — Repo-wide persistence scan

- User asked for a broader repo sweep to see what persistence was still left after the recent `ModData` migrations
- Ran a repo-wide scan for:
  - JSON/file write patterns
  - `Assembly.Location` / `ModManager.ModPath` / `Path.GetDirectoryName(...)` writable storage roots
  - stale config-path assumptions still pointing into deployed `Mods`
- Spot-checked top hits to separate real leftovers from false positives
- Confirmed remaining real migration candidates:
  - `AutoLoot` player prefs under `LootProfiles/PlayerData`
  - `BetterSupportSkills` player profiles + quest turn-in tracker
  - `LeyLineLedger` account banks + lottery + public exchange pool
- Confirmed lower-priority special case:
  - `ValheelContent` import-state file still uses mod-folder storage, but mod is excluded from normal deploys
- Confirmed non-runtime cleanup target:
  - `BetterLootControl/LootConfigPaths.cs` still defaults to `Mods/Loremaster/LootConfig.json`
- Confirmed repo guidance drift:
  - `.cursor/skills/ace-mod/SKILL.md` still describes old writable storage patterns (`ModManager.ModPath`, `Assembly.Location`) instead of the newer `Server/ModData` convention

## Follow-up — Remaining ModData migrations

- Migrated `AutoLoot` player prefs out of `LootProfiles/PlayerData`
- Added `AutoLoot/AutoLootDataPaths.cs`
- Kept `.utl` profile storage under `LootProfilePath`; moved only runtime prefs into `C:\ACE\Server\ModData\AutoLoot\PlayerData`
- Preserved legacy migration behavior from old `LootProfiles/PlayerData/<guid>.json`
- Verified with:
  - `dotnet build AutoLoot/AutoLoot.csproj` succeeded
  - no new lints in touched `AutoLoot` files

- Migrated `BetterSupportSkills` runtime JSON
- Added `BetterSupportSkills/BetterSupportSkillsDataPaths.cs`
- Updated `PlayerProfileStore` + `QuestTurnInTracker` to save into `C:\ACE\Server\ModData\BetterSupportSkills\...` with legacy fallback from the deployed mod folder
- Verified with:
  - `dotnet build BetterSupportSkills/BetterSupportSkills.csproj` succeeded
  - no new lints in touched `BetterSupportSkills` files

- Migrated `LeyLineLedger` runtime JSON
- Added `LeyLineLedger/LeyLineLedgerDataPaths.cs`
- Re-rooted relative account bank / lottery / public exchange paths into `C:\ACE\Server\ModData\LeyLineLedger\...`
- Preserved legacy migration behavior from:
  - `Data/AccountBanks/*.json`
  - old relative mod-folder lottery file
  - old relative mod-folder exchange pool file
- Kept absolute configured lottery / exchange paths unchanged
- Verified with:
  - `dotnet build LeyLineLedger/LeyLineLedger.csproj` succeeded
  - only pre-existing warnings remain in `Debit.cs`
  - no new lints in touched `LeyLineLedger` files

- Migrated `ValheelContent` import-state storage
- Added `ValheelContent/ValheelContentDataPaths.cs`
- Re-rooted `import-state.json` into `C:\ACE\Server\ModData\ValheelContent\import-state.json`
- Updated status/read path handling so legacy mod-folder state still loads once and rewrites into `ModData`
- Verified with:
  - `dotnet build ValheelContent/ValheelContent.csproj` succeeded
  - no new lints in touched `ValheelContent` files

- Updated `.cursor/skills/ace-mod/SKILL.md` so writable runtime state guidance now points at `Server/ModData`

## Follow-up — Final persistence verification

- Ran a filtered live-repo scan excluding `.references`, `.worktrees`, and build artifacts
- Final verification found one extra real runtime store not captured in the earlier shortlist:
  - `ChallengeModes` per-player prefs in `Data/PlayerData/<guid>.json`
- Added `ChallengeModes/ChallengeModesDataPaths.cs`
- Migrated `ChallengeModes` prefs into `C:\ACE\Server\ModData\ChallengeModes\PlayerData\<guid>.json`
- Updated offline challenge checks to resolve both current and legacy JSON
- Preserved legacy migration behavior from the old mod-folder `Data/PlayerData` directory
- Verified with:
  - `dotnet build ChallengeModes/ChallengeModes.csproj` succeeded
  - only pre-existing warning remains in external `ACE.Shared`
  - no new lints in touched `ChallengeModes` files

- Re-ran the filtered live-repo scan after `ChallengeModes`
- Result:
  - no remaining active runtime persistence under deployed mod folders for the migrated mods
  - remaining hits are legacy-fallback shims, comments, read-only config coupling (`BetterLootControl/LootConfigPaths.cs`), debug log appends in `BetterLootControl`, and settings writes in `BetterSupportSkills` / `Numbersmith`
- Ran `graphify update . --out-dir="A:/obsidian/jeremy/raw/graphify-out"` after the final code changes
- Captured final `git status -sb` before handoff; working tree still contains the earlier session fixes plus today's new `*DataPaths.cs` helpers and persistence rewrites
