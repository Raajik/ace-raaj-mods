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
