# Task Plan: BSS MagicWithoutMC + LLL Salvage Debug

**Status**: in_progress

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

## Root Cause Hypotheses

1. **Salvage resolver bug**: `Shared/LeyLineLedgerSalvageBankInterop.cs` reflects `PatchClass.Settings` with `BindingFlags.Public | BindingFlags.Static`, but `Settings` is inherited from `BasicPatch<Settings>`. Source test confirms inherited static property lookup needs `BindingFlags.FlattenHierarchy`, otherwise every salvage WCID fails while LLL is loaded.
2. **MagicWithoutMC bug**: `BssPlayerPaidSpellCast.TryCastWithPlayerMana()` calls ACE `CalculateManaUsage()`, which unconditionally calls `Proficiency.OnSuccessUse(this, GetCreatureSkill(Skill.ManaConversion), ...)`. For the exact users targeted by MagicWithoutMC, Mana Conversion can be null/untrained, causing the NRE.

## Errors Encountered

| Error | Attempt | Resolution |
|---|---|---|
| `rg` / `Glob` tooling path failures (`c:\\ACE-REALMS`) | 1 | Switched to direct `ReadFile` + PowerShell `Select-String` |
| `rg` command unavailable in PowerShell shell | 1 | Switched shell searches to `Select-String` |