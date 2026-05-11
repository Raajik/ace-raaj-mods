# Findings — BSS / LLL Debug 2026-05-11

## Salvage interop

- User-reported failing salvage WCIDs (`21052`, `21042`, `21050`, `21059`, `21058`, `20982`, `21045`, `21070`) all exist in `LeyLineLedger/Settings.json` `SalvageBank.DepositRules`.
- `A:\void-test\Server\ACE_Log.txt` shows LeyLineLedger fully initialized well before the salvage warnings.
- Shared resolver bug found in `Shared/LeyLineLedgerSalvageBankInterop.cs`:
  - `patchType.GetProperty("Settings", BindingFlags.Public | BindingFlags.Static)` does **not** find inherited static properties.
  - Reflection repro confirms inherited static lookup needs `BindingFlags.FlattenHierarchy`.
- Because the LLL assembly is loaded but `settings` resolves null, the code returns `-1` instead of resolving the bank property. That exactly matches the live `"[BSS->LLL Salvage]"` warnings.

## MagicWithoutMC

- Void-test log shows NREs happen right after ArcaneLore follow-up casts on the player target.
- `MagicWithoutManaConversion.PostHandleCastSpellEcho()` routes replay casts through `BssPlayerPaidSpellCast.TryCastSpellWithRedirects_PlayerMana()`.
- In ACE source, `Player.CalculateManaUsage(...)` unconditionally calls:
  - `Proficiency.OnSuccessUse(this, GetCreatureSkill(Skill.ManaConversion), spell.PowerMod);`
- In ACE source, `Proficiency.OnSuccessUse(Player, CreatureSkill, ...)` dereferences `skill.AdvancementClass` with no null guard.
- Therefore MagicWithoutMC currently reuses a mana/proficiency path that assumes Mana Conversion exists, but the feature specifically targets players who may not have that skill trained.

## Verification targets after fix

- No new `"[BSS->LLL Salvage] Could not resolve bank PropertyInt64..."` lines for stack salvage WCIDs that are present in `DepositRules`
- No new `"[BSS MagicWithoutMC] PostHandleCastSpellEcho error..."` lines during ArcaneLore echo chains

## Drudge charm regression

- Current live drudge charm line is `24835 -> 850300..850303` (`Windblown/Content/TrophyLines/drudge-charm.json`), not the older `3669 -> 850271..850273` setup in the wiki note.
- Custom weenies `850300..850303` correctly set `StackSize = 1` in `Windblown/Content/Weenies/drudge-charms.json`.
- `Windblown/TrophyLines/TrophyDropPatches.cs` does **sibling replacement only**:
  - if vanilla sibling WCID drops on corpse, it removes that item
  - creates the custom base WCID
  - reapplies the **same original stack count**
- `Windblown/ItemsRemovalPatches.cs` blocked only `31352/31354/31355`; it did **not** block vanilla `24835`.
- Therefore any still-active vanilla source for `24835` (likely ACE treasure/create-list path) gets remapped into a custom stack with the same size. That explains the observed stack-40 drudge charms.

## Repo git workflow guidance

- This repo works best with **short-lived task branches off `main`**, not classic long-lived Git Flow (`develop` / `release` / `hotfix`).
- The stable sequence is:
  - update local `main`
  - create one branch per task
  - implement + verify (void-test first for gameplay/server changes)
  - commit on the branch
  - push with upstream
  - open PR into `main`
  - merge
  - return local `main` to latest remote state
- Biggest operator confusion points worth documenting explicitly:
  - **commit** = local snapshot only
  - **push** = send local branch/commits to GitHub
  - **PR** = request to merge branch into `main`
  - **merge** = branch changes actually land on `main`
- For this repo, "commit after every bug fix" should mean **commit on a task branch after verification**, not "keep stacking direct commits on `main`."

## CI source-of-truth audit alignment

- `scripts/validate_sot.sh` still treated `WindblownContent` as an active required mod for `Readme.md` and `Settings.json` coverage.
- The validator also still expected SQL backups under `WindblownContent/sql-backups/`, while the repo root already uses `sql-backups/`.
- `WindblownContent/` still exists in the repo, but it is effectively legacy/empty and should not drive active mod validation.
- `FEATURE_MATRIX.md`, `FEATURE_TRUTH.md`, `AGENTS.md`, and `.github/PULL_REQUEST_TEMPLATE.md` also contained stale `WindblownContent` ownership / backup-path references.
- Correct fix is to align the validator and source-of-truth docs to the current architecture where `Windblown` owns trophies/custom turn-ins. Adding fake `WindblownContent/Settings.json` or `Readme.md` would only preserve bad repo truth.
- `Gemcrafter/` and `Work-In-Progress/` were empty legacy folders with no tracked files. Deleting them is safe and the source-of-truth audit should stop warning about them instead of preserving dead placeholders.

## Swarmed `Conniving` crash

- Fresh world-wipe context makes stale world rows an unlikely primary cause; live runtime mutation was the stronger suspect.
- `Swarmed/Creatures/Puppeteer.cs` directly prepends `Conniving ` during `Initialize()`.
- `Swarmed/Features/CreatureExSpawn.cs` reconstructs CreatureEx mobs from persisted biota when `FakeInt.CreatureExType` is present, including `Puppeteer`.
- That means a stored Puppeteer creature with an already-mutated `Name` can be recreated and prefixed again on every load, producing `Conniving Conniving ...`.
- `C:\\ACE\\Mods\\Swarmed\\Settings.json` still has `WildCreatureEx.Enabled = true`, so Puppeteer variants can appear even with `CreatureFeatures` only listing `Horde`.
- `ValheelContent` is not present in the deployed `C:\\ACE\\Mods` tree, so the direct repro path found in source is Swarmed-owned, not an active Valheel deployment.

## Persistent-state location

- User preference confirmed: persistent mod-owned files should live under `C:\\ACE\\Server\\ModData\\...`, not bare `C:\\ACE\\Server\\Data\\...`, so ownership is obvious and does not look like ACE core state.
- `WorldEvents` had multiple runtime stores under mod folders or older `Data` paths:
  - `PendingClaimsAutoPreferenceStore`
  - `PendingEventClaimsStore`
  - `ParticipationLedger`
  - `HuntPersistence`
  - `SalePersistence`
  - `CullPersistence`
  - `InvasionPersistence`
  - `PoiHuntPersistence`
  - `ScavengerPersistence`
  - `BonusQuestPersistence`
  - `PathwardenVendorManager` purchase log
- Implemented convention: `C:\\ACE\\Server\\ModData\\WorldEvents\\...`
- Legacy compatibility kept:
  - older `C:\\ACE\\Mods\\WorldEvents\\...` files still load
  - older `C:\\ACE\\Mods\\WorldEvents\\Data\\...` files still load where applicable
  - older shared `C:\\ACE\\Mods\\Data\\Sale\\...` and `C:\\ACE\\Mods\\Data\\Cull\\...` files still load where applicable
  - older `C:\\ACE\\Server\\Data\\Invasion\\ActiveInvasion.json` still loads for invasion recovery
- Review pass also fixed append-only history preservation: `BonusQuest` now merges legacy JSONL log content into new `ModData` files before deleting the old files.
- `Loremaster` now also uses `C:\\ACE\\Server\\ModData\\Loremaster\\...` for:
  - `AccountQuestFlags.json`
  - `RepeatQbTracker.json`
  - `AccountAugments/*.json`
  - `MomentumState.json`
- `Loremaster` legacy compatibility kept:
  - older `C:\\ACE\\Mods\\Loremaster\\AccountQuestFlags.json` still loads and is rewritten into `ModData`
  - older `C:\\ACE\\Mods\\Loremaster\\RepeatQbTracker.json` and even the older filename `AccountRepeatQuests.json` still load and migrate forward
  - older `C:\\ACE\\Mods\\Loremaster\\Data\\AccountAugments\\*.json` still load and migrate forward
  - older `C:\\ACE\\Mods\\Loremaster\\Data\\MomentumState.json` still loads and migrates forward
- `AchievementUnlocked` now also uses `C:\\ACE\\Server\\ModData\\AchievementUnlocked\\...` for:
  - `AccountAchievements.json`
  - `AccountPoolBonus.json`
  - `AccountMilestoneBonus.json`
- `AchievementUnlocked` legacy compatibility kept:
  - older `C:\\ACE\\Mods\\AchievementUnlocked\\AccountAchievements.json` still loads and is rewritten into `ModData`
  - older `C:\\ACE\\Mods\\AchievementUnlocked\\AccountPoolBonus.json` still loads and migrates forward
  - older `C:\\ACE\\Mods\\AchievementUnlocked\\AccountMilestoneBonus.json` still loads and migrates forward
- `QOL` now also uses `C:\\ACE\\Server\\ModData\\QOL\\...` for:
  - `PlayerProfiles.json`
  - `xp-tracker\\<guid>.json`
- `QOL` legacy compatibility kept:
  - older `C:\\ACE\\Mods\\QOL\\PlayerProfiles.json` still loads and is rewritten into `ModData`
  - older `C:\\ACE\\Mods\\QOL\\xp-tracker\\*.json` still load and migrate forward
- `QOL/WipeProgress.cs` needed follow-up after these migrations because it was still clearing only the old mod-folder JSON locations for `AchievementUnlocked` / `Loremaster`; it now clears both `Server\\ModData\\...` and legacy paths.
- Original high-risk shortlist from the persistent-state audit is now covered for `WorldEvents`, `Loremaster`, `AchievementUnlocked`, and `QOL`. Remaining work should come from a fresh broader scan rather than the earlier "especially ..." list.

## Repo-wide persistence scan

- Confirmed remaining mod-folder runtime persistence:
  - `AutoLoot`
    - per-player prefs JSON under `LootProfiles\\PlayerData\\<guid>.json`
    - path still rooted by `LootProfilePath`, which defaults into deployed `Mods\\AutoLoot\\LootProfiles`
  - `BetterSupportSkills`
    - `PlayerProfiles.json`
    - `QuestTurnInTracker.json`
  - `LeyLineLedger`
    - `Data\\AccountBanks\\*.json`
    - `LotteryState.json`
    - `ExchangePool.json` / configured public-exchange pool JSON
- Lower-priority special case:
  - `ValheelContent\\ContentImporter.cs` still persists `import-state.json` in the mod folder, but `ValheelContent` remains excluded from normal deploy flow so this is less urgent than the live mods above.
- Confirmed non-runtime / config-path leftovers worth cleanup but not `ModData` migrations:
  - `BetterLootControl\\LootConfigPaths.cs` still defaults to `Mods\\Loremaster\\LootConfig.json`
  - `BetterLootControl` path coupling looks read-only config, not runtime player/account state
- One repo-instruction mismatch remains:
  - `.cursor/skills/ace-mod/SKILL.md` still recommends `ModManager.ModPath` / `Assembly.Location` for writable mod files, which now conflicts with the `C:\\ACE\\Server\\ModData\\<ModName>\\...` convention

## Remaining migrations completed

- `AutoLoot` now stores per-player prefs in `C:\\ACE\\Server\\ModData\\AutoLoot\\PlayerData\\<guid>.json`
- `AutoLoot` keeps `.utl` profile files under `LootProfilePath`; only runtime player prefs moved
- `AutoLoot` legacy compatibility kept:
  - old `LootProfiles\\PlayerData\\<guid>.json` still loads and is rewritten into `ModData`
- `BetterSupportSkills` now stores:
  - `C:\\ACE\\Server\\ModData\\BetterSupportSkills\\PlayerProfiles.json`
  - `C:\\ACE\\Server\\ModData\\BetterSupportSkills\\QuestTurnInTracker.json`
- `BetterSupportSkills` legacy compatibility kept:
  - old mod-folder `PlayerProfiles.json`
  - old mod-folder `QuestTurnInTracker.json`
- `LeyLineLedger` now stores:
  - `C:\\ACE\\Server\\ModData\\LeyLineLedger\\AccountBanks\\*.json`
  - `C:\\ACE\\Server\\ModData\\LeyLineLedger\\LotteryState.json` (or configured relative equivalent under `ModData`)
  - `C:\\ACE\\Server\\ModData\\LeyLineLedger\\ExchangePool.json` (or configured relative equivalent under `ModData`)
- `LeyLineLedger` still honors absolute configured paths for lottery / exchange files; only relative paths were re-rooted from the mod folder into `ModData`
- `LeyLineLedger` legacy compatibility kept:
  - old `Data\\AccountBanks\\*.json`
  - old relative mod-folder `LotteryState.json`
  - old relative mod-folder exchange pool JSON
- `ValheelContent` now stores import state at `C:\\ACE\\Server\\ModData\\ValheelContent\\import-state.json`
- `ValheelContent` legacy compatibility kept:
  - old mod-folder `import-state.json` still loads and is deleted after rewrite
- Final verification also uncovered an unlisted runtime store in `ChallengeModes`
- `ChallengeModes` now stores per-character prefs in `C:\\ACE\\Server\\ModData\\ChallengeModes\\PlayerData\\<guid>.json`
- `ChallengeModes` legacy compatibility kept:
  - old `ChallengeModes\\Data\\PlayerData\\<guid>.json` still loads and is rewritten into `ModData`

## Final persistence verification

- Final live-repo scan found no remaining active runtime persistence rooted in deployed mod folders for the migrated mods
- Remaining old-path hits are expected and acceptable:
  - explicit legacy fallback shims in migrated mods
  - read-only config coupling in `BetterLootControl\\LootConfigPaths.cs`
  - debug log appends in `BetterLootControl`
  - settings writes in `BetterSupportSkills` / `Numbersmith`
- `.cursor/skills/ace-mod/SKILL.md` now matches repo convention by steering writable runtime state to `Server\\ModData\\<ModName>\\...`

## Balance / visuals watch

- BetterSupportSkills cantrip pet-cap bonuses are defined in `BetterSupportSkills/Skills/SummoningClasses.cs` as `{1, 2, 3, 4, 7}`.
- Live test config `C:\\ACE\\Mods\\BetterSupportSkills\\Settings.json` has `CantripBonusPetsLegendarySpellId = 0`, so the effective live ladder is currently only `+1 / +2 / +3 / +4`; the `+7` path is dormant unless a custom legendary spell ID is assigned.
- Current code path for defense imbues intentionally lacks icon underlay assignment:
  - `EmpyreanAlteration/AugmentSystem.cs` explicitly documents that defense imbues have no underlay
  - `EmpyreanAlteration/Mutators/LootGrowthItem.cs` applies `UiEffects` colors for `MagicDefense` / `MeleeDefense` / `MissileDefense`, but only assigns `IconUnderlayId` for rends and secondary weapon imbues
- Conclusion: the Swarmed defense-imbue visual gap is a known asset/mapping limitation, not a fresh regression from today's work.
