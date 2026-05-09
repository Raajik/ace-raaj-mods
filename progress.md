# Progress — Mod Structure Refactor

## Session 2026-05-09 (Part 1)

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

## Option A — Dead mod cleanup (COMPLETE, 2026-05-09, commit `b2d5da34`)

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

## Option C — Bridge Hardening (COMPLETE, 2026-05-09, commit `68df3298`)

### The `_resolved = true` Bug
Every reflection bridge in the codebase had a silent failure mode: `Resolve()` set `_resolved = true` **before** confirming the target method existed. If the target assembly hadn't loaded yet (race condition mod startup), `Resolve()` would run once, fail to find the method, mark itself "done," and never try again. This meant the bridge would silently no-op forever.

### Hardened Bridges
| Bridge | File | Fixed Pattern | Risk Level |
|--------|------|--------------|------------|
| **AutoLoot → BSS** | `AutoLoot/Autoloot.cs` | Single-scan, one-time log, typed exceptions, `_fullyResolved` guard | **CRITICAL** |
| **BSS → AutoLoot** | `BetterSupportSkills/PatchClass.cs` | Same; was preventing `/autosalvage` from syncing toggle state | **CRITICAL** |
| **Shared → LLL (bank)** | `Shared/LeyLineLedgerBankInterop.cs` | Cached resolve, `_fullyResolved`, `_assemblyLogged`, `_targetLogged`; TIE inner-exposed | **CRITICAL** |
| **Shared → LLL (quest salvage)** | `Shared/LeyLineLedgerQuestSalvageInterop.cs` | Same pattern; affects AutoLoot + Windblown quest chests | **CRITICAL** |

### Bridge Hardening Contract (now enforced)
- **Lazy resolve**: First call triggers `Resolve()`, `_fullyResolved` prevents stale-state
- **One-time diagnostics**: `_assemblyLogged` / `_targetLogged` — error logs fire once only
- **Typed exception logging**: `TargetInvocationException.InnerException` always surfaced in logs (not swallowed silently)
- **Graceful degradation**: When target mod absent, function falls back to default behavior; no exceptions thrown
- **Consistent log prefix**: `[Caller→Target]` format for greppability

### Remaining Bridges with `_resolved = true` Bug (deferred)
These have the same pattern but are used by less critical paths. They should be hardened in a future pass:

| Bridge | File | Impact | Priority |
|--------|------|--------|----------|
| LeyLineLedger ↔ Loremaster | `LeyLineLedger/LoremasterBridge.cs` | Quest XP display | Medium |
| LeyLineLedger ↔ WorldEvents | `LeyLineLedger/WorldEventsBridge.cs` | WorldEvents sale pricing | Medium |
| LeyLineLedger ↔ WorldEvents (sale) | `LeyLineLedger/WorldEventsSalePricing.cs` | Vendor price hooks | Medium |
| Loremaster ↔ WorldEvents | `Loremaster/QuestXpAwardDisplay.cs` | XP award display | Low |
| Loremaster ↔ WorldEvents | `Loremaster/WorldEventsBonusQuestBridge.cs` | Bonus quest bridge | Low |
| Loremaster ↔ WorldEvents | `Loremaster/WorldEventsHuntBridge.cs` | Hunt bridge | Low |
| QOL ↔ Loremaster | `QOL/LoremasterQuestXpInterop.cs` | Quest XP interop | Low |
| WorldEvents ↔ LeyLineLedger | `WorldEvents/LeyLineLedgerBridge.cs` | Bank rewards | Medium |
| WorldEvents ↔ Loremaster | `WorldEvents/LoremasterBridge.cs` | Milestone bridge | Low |
| WorldEvents (Hunt) | `WorldEvents/Hunt/HuntBankInterop.cs` | Hunt bank rewards | Low |
| WorldEvents (Hunt) | `WorldEvents/Hunt/HuntQuestXpDisplay.cs` | Hunt XP display | Low |
| WorldEvents (Hunt) | `WorldEvents/Hunt/HuntXpInterop.cs` | Hunt XP interop | Low |
| Work-In-Progress (Nemesis) | `Work-In-Progress/Nemesis/NemesisMonsterType.cs` | Monster type resolution | Low |

### Not Changed (intentionally)
- `LeyLineLedger/BankSalvage.cs` `EnsureBssSuppressionInterop()` — already uses correct `_bssSuppressionInteropTried` pattern (no `_resolved = true` bug) + `Delegate.CreateDelegate`
- `BetterSupportSkills/Skills/OvertinkedImbueInterop.cs` — `Delegate.CreateDelegate` pattern, already safe
- `BetterSupportSkills/Skills/LeyLineLedgerSalvageInterop.cs` — same, already safe

---

## Decisions Taken
1. **AutoSalvage extraction REVOKED** — 3-mod reflection entanglement makes extraction worse, not better. Existing bridges are the cleanest possible pattern given constraints.
2. **HealingOverTime extraction REVOKED** — Belongs in BSS as skill bonus payoff; extracting fractures the model.
3. **Bridge hardening is the correct mitigation** — Fixes the property-mismatch bug class (2026-05-06) by ensuring late-loaded assemblies are found on first use, rather than silently dropped.
4. **Dead mods deleted** — `Gemcrafter/` and `Data/` removed; `Work-In-Progress/` kept (active Nemesis mod).

## Build Verification
All directly affected mods build clean:
- `AutoLoot/AutoLoot.csproj` ✅ 0 errors, 0 warnings
- `BetterSupportSkills/BetterSupportSkills.csproj` ✅ 0 errors, 0 warnings
- `LeyLineLedger/LeyLineLedger.csproj` ✅ 0 errors, 2 pre-existing warnings (unrelated)
- `QOL/QOL.csproj` ✅ 0 errors, 0 warnings
- `Windblown/Windblown.csproj` ✅ 0 errors, 0 warnings

## Next Steps
User to select from remaining options:
1. **Harden remaining 13 bridges** (medium effort, low runtime risk, good hygiene)
2. **VendorTweaks extraction** (genuine boundary violation, moderate complexity)
3. **EA sub-domain extraction** (Awakened/FakeProperties/ItemProcs — good boundaries, high file count)
4. **Deploy current changes to void-test** (verify bridge hardening in practice)
5. **Push and close session** (all current work committed)
