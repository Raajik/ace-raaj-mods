# Progress — Mod Structure Refactor

## Session 2026-05-09

### Completed
1. Loaded architecture skill (pattern-selection, trade-off analysis)
2. Git status check — clean working tree
3. Enumerated all 25 mod folders
4. Read all README/Readme.md files (extracted key features)
5. Counted C# files per mod (range: 0–109)
6. Reviewed FEATURE_MATRIX.md (80+ features mapped)
7. Read Shared/ interop files (LLL BankInterop, PeaPyrealWcids, SSF context)
8. Listed EA Feature files (36 feature files identified)
9. Reviewed AGENTS.md §8 (conventions, lessons learned)
10. Reviewed COMPLETED.md for pain points (5 incidents mapped to boundary violations)
11. Created task_plan.md, findings.md, progress.md

### Key Metrics
- Total mods: 25 (including support/util dirs)
- Gameplay mods with C#: 20
- Files >40: 5 mods (EA 109, WorldEvents 73, Swarmed 56, BSS 45, QOL 42)
- Empty/ghost mods: 3 (Gemcrafter, Work-In-Progress, Data)
- Cross-mod reflection bridges: 6 active
- Shared / linked files: 4

---

## Option A — Dead mod cleanup (COMPLETE, 2026-05-09)

### Deleted (untracked, zero source files)
- [x] `Gemcrafter/` — only `obj/` build artifacts, zero `.cs`/`.csproj`/`.json` files; not referenced by CI, sln, or any active mod
- [x] `Data/` — empty root folder with `Invasion/` subfolder (also empty); no tracked files

### Updated
- [x] `inventory.sh` — added `Gemcrafter` and `Data` to `SKIP` array so `mod_list.md` stays clean
- [x] Regenerated `mod_list.md` and `mod_overview.md`

### Preserved
- `Work-In-Progress/` kept: contains active `Nemesis` mod (12 C# files, full `csproj`/`Meta.json`/`Settings.cs` setup)
- `graphify-out/` kept: it's in `.gitignore`, generated docs

### Rationale
Per AGENTS.md §3: **ValheelContent is PERMANENTLY EXCLUDED from all deployments.** `Gemcrafter` was in the same category — empty source folder with only build detritus. `Data` was an abandoned staging folder with no active references.

---

## Next: Option C — Bridge Hardening

### Known reflection bridges to harden
1. `AutoLoot ↔ BetterSupportSkills` (`BetterSupportSkillsBridge` in `Autoloot.cs`)
2. `LeyLineLedger ↔ BetterSupportSkills` (`EnterSuppression`/`ExitSuppression` in `BankSalvage.cs`)
3. `Shared ↔ LeyLineLedger` (`LeyLineLedgerBankInterop`, `LeyLineLedgerQuestSalvageInterop`)
4. `BetterSupportSkills ↔ Overtinked` (`OvertinkedImbueInterop` via `Shared/`)

### Approach
- Typed wrapper classes with runtime type-name validation
- One-time "resolved" log emission
- Graceful degradation when target mod is absent
- `[ThreadStatic]` suppression contract documented and centralized
