# Task Plan: BSS MagicWithoutMC + LLL Salvage Debug

**Status**: active

## Goal

Stop two live log issues on void-test:

1. `"[BSS MagicWithoutMC] PostHandleCastSpellEcho error: Object reference not set..."`
2. `"[BSS->LLL Salvage] Could not resolve bank PropertyInt64 for salvage WCID ..."`

## Phases

### Phase 1 — Evidence and root cause
- [x] Read wiki + repo conventions + relevant skills
- [x] Inspect void-test `ACE_Log.txt` around failing timestamps
- [x] Inspect `MagicWithoutManaConversion`, `BssPlayerPaidSpellCast`, `LeyLineLedgerSalvageInterop`, and shared LLL salvage resolver
- [x] Confirm likely root causes from source

### Phase 2 — Minimal fixes
- [ ] Patch shared LLL salvage reflection to see inherited static `Settings`
- [ ] Patch BSS paid-cast path so MagicWithoutMC works for players without Mana Conversion trained

### Phase 3 — Verify
- [x] Build affected mods
- [x] Check lints on edited files
- [x] Run `graphify update . --out-dir=\"A:/obsidian/jeremy/raw/graphify-out\"`
- [x] Summarize expected log changes and any remaining risk

### Phase 4 — Drudge charm regression
- [x] Reproduce likely source path from current code/config
- [x] Block vanilla WCID 24835 creation so stack-40 vanilla drops cannot remap into custom stacks
- [x] Build + deploy Windblown fix to void-test
- [x] Verify startup + document root cause

### Phase 5 — Document repo git workflow
- [x] Read current AGENTS.md + wiki operations docs
- [x] Add dedicated wiki page for recommended branch / commit / PR flow
- [x] Update `AGENTS.md` to require branch-first workflow for edit sessions
- [x] Link the new workflow from the wiki index and related operations docs

### Phase 6 — Align CI source-of-truth checks
- [x] Inspect `validate_sot.sh` failure and determine whether `WindblownContent` is still intended as a live mod
- [x] Update validator to treat `Windblown` as the active owner for trophy/content work
- [x] Update source-of-truth docs/templates that still point to `WindblownContent`
- [x] Run validator locally and confirm fail/warn set matches current architecture

## Root Cause Hypotheses

1. **Salvage resolver bug**: `Shared/LeyLineLedgerSalvageBankInterop.cs` reflects `PatchClass.Settings` with `BindingFlags.Public | BindingFlags.Static`, but `Settings` is inherited from `BasicPatch<Settings>`. Source test confirms inherited static property lookup needs `BindingFlags.FlattenHierarchy`, otherwise every salvage WCID fails while LLL is loaded.
2. **MagicWithoutMC bug**: `BssPlayerPaidSpellCast.TryCastWithPlayerMana()` calls ACE `CalculateManaUsage()`, which unconditionally calls `Proficiency.OnSuccessUse(this, GetCreatureSkill(Skill.ManaConversion), ...)`. For the exact users targeted by MagicWithoutMC, Mana Conversion can be null/untrained, causing the NRE.

## Phase 7 — Today plate follow-up
- [x] Root-cause repeated `Conniving` name corruption causing Yanshi/Xarabydun client crash
- [x] Design safer persistent-state location outside wiped mod folders
- [x] Monitor summoner cantrip pet balance and Swarmed visual gaps

## Phase 8 — Void deploy from current branch
- [x] Run `push void` / `bash scripts/deploy-void-test.sh` from current dirty branch state
- [x] Review build/copy/SQL output for failures
- [x] Hand back exact deploy result and any restart/follow-up needed

## Phase 9 — Shard env naming cleanup
- [x] Replace misleading void-side shard env usage with `VOID_SHARD_DATABASE`
- [x] Keep backward compatibility for existing `WB_TEST_SHARD_DATABASE` setups
- [x] Verify touched bash/PowerShell scripts still parse cleanly

## Phase 10 — Loremaster ModData migration
- [x] Migrate `Loremaster` runtime JSON stores to `C:\ACE\Server\ModData\Loremaster\...`
- [x] Keep legacy fallback/migration for prior mod-folder storage
- [x] Build `Loremaster`, check lints, and refresh graphify

## Phase 11 — AchievementUnlocked ModData migration
- [x] Migrate `AchievementUnlocked` runtime JSON stores to `C:\ACE\Server\ModData\AchievementUnlocked\...`
- [x] Keep legacy fallback/migration for prior mod-folder storage
- [x] Build `AchievementUnlocked`, check lints, and refresh graphify

## Phase 12 — QOL ModData migration
- [x] Migrate `QOL` runtime JSON stores to `C:\ACE\Server\ModData\QOL\...`
- [x] Keep legacy fallback/migration for prior mod-folder storage
- [x] Update wipe-path handling for moved `AchievementUnlocked` / `Loremaster` state
- [x] Build `QOL`, check lints, and refresh graphify

## Phase 13 — Repo-wide persistence scan
- [x] Sweep repo for remaining file-backed runtime persistence outside `C:\ACE\Server\ModData`
- [x] Separate real leftovers from config paths / legacy migration shims
- [x] Record next migration candidates

## Phase 14 — Remaining ModData migrations
- [x] Migrate `AutoLoot` player prefs to `C:\ACE\Server\ModData\AutoLoot\...`
- [x] Migrate `BetterSupportSkills` runtime JSON to `C:\ACE\Server\ModData\BetterSupportSkills\...`
- [x] Migrate `LeyLineLedger` account bank / lottery / exchange JSON to `C:\ACE\Server\ModData\LeyLineLedger\...`
- [x] Migrate `ValheelContent` import-state JSON to `C:\ACE\Server\ModData\ValheelContent\...`
- [x] Catch and migrate extra `ChallengeModes` player prefs discovered during final verification
- [x] Refresh repo guidance that still taught writable mod-folder persistence

## Phase 15 — Final persistence verification
- [x] Re-scan live repo code after migrations
- [x] Separate intentional legacy-fallback refs from active runtime writes
- [x] Refresh graphify after final code changes

## Current focus

- `Swarmed/Creatures/Puppeteer.cs` was confirmed as the `Conniving` source.
- Repeated prefix growth came from `CreatureEx` reconstruction from biota, where a persisted Puppeteer name could be re-prefixed on every load.
- Persistent runtime state now standardizes on `C:\ACE\Server\ModData\<ModName>\...` for `WorldEvents`, with legacy fallback reads from older mod-folder / `Data` paths.
- `Loremaster` runtime state now also standardizes on `C:\ACE\Server\ModData\Loremaster\...` for account flags, repeat-QB cooldowns, account augments, and momentum state.
- `AchievementUnlocked` runtime state now standardizes on `C:\ACE\Server\ModData\AchievementUnlocked\...` for account achievements, pool bonus, and milestone bonus.
- `QOL` runtime state now standardizes on `C:\ACE\Server\ModData\QOL\...` for player profiles and XP tracker lifetime snapshots.
- Runtime-state migrations now also cover `AutoLoot`, `BetterSupportSkills`, `LeyLineLedger`, `ValheelContent`, and `ChallengeModes`.
- Final live-repo scan shows active runtime stores rooted in `ModData`; remaining old-path hits are intentional legacy-fallback shims or comments.
- `BetterLootControl/LootConfigPaths.cs` still defaults to `Mods/Loremaster/LootConfig.json`; looks like stale config-path coupling, not runtime state.
- BetterSupportSkills summoning cantrip bonus remains effectively `+1/+2/+3/+4` on live config because legendary bonus is disabled (`CantripBonusPetsLegendarySpellId = 0`).
- Swarmed/EmpyreanAlteration defense imbues still color `UiEffects`, but no defense underlay asset mapping exists in current code, so icon underlay gaps remain expected.
- User requested `push void` instead of wb_test because void already contains fixes missing on test.
- `push void` finished successfully; `9010` is listening afterward, so void-test is currently up.
- Void shard SQL config now prefers `VOID_SHARD_DATABASE`; SQL applier still accepts older shard env names for compatibility.
- `QOL/WipeProgress.cs` now knows both `ModData` and legacy mod-folder locations for moved `AchievementUnlocked` / `Loremaster` wipe targets.
- Non-runtime leftovers still visible in scan:
  - `BetterLootControl` debug log appends (`BLC_VENDOR.txt`, `BLC_DEBUG.txt`)
  - `BetterSupportSkills` / `Numbersmith` settings writes
  - `BetterLootControl/LootConfigPaths.cs` read-only config coupling to `Loremaster/LootConfig.json`

## Errors Encountered

| Error | Attempt | Resolution |
|---|---|---|
| `rg` / `Glob` tooling path failures (`c:\\ACE-REALMS`) | 1 | Switched to direct `ReadFile` + PowerShell `Select-String` |
| `rg` command unavailable in PowerShell shell | 1 | Switched shell searches to `Select-String` |