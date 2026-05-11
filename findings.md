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
