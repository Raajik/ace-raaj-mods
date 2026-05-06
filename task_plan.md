# Task Plan – Immutable Source of Truth Initiative

## Phase 0 – Prep (Complete)
- [x] Create tracking files: `task_plan.md`, `findings.md`, `progress.md`
- [x] Create high-level roadmap: `PLAN.md`
- [x] Create central registry: `FEATURE_TRUTH.md`

## Phase 1 – Inventory All Mods (Complete)
- [x] Run inventory script to generate: `mod_list.md`, `mod_overview.md`
- [x] Record findings in `findings.md`

## Phase 2 – Feature Mapping (Complete)
- [x] Create feature-to-mod matrix: `FEATURE_MATRIX.md`
- [x] For each mod, list known features and designate owning mod
- [x] Identify duplicate ownership and gaps
- [x] Update `FEATURE_TRUTH.md` with matrix cross-reference
- [x] Log gaps in `findings.md`

## Phase 3 – Define Immutable Source-of-Truth Standards (Complete)
- [x] Create documentation template: `Docs/FeatureTemplate.md`
- [x] Ensure all mods have `Settings.json` template (filled WindblownContent gap)
- [x] Create READMEs for HIGH-priority mods missing docs:
  - EmpyreanAlteration (32 features, 16 mutators)
  - Swarmed (29 champion types, 4 systems)
  - WorldEvents (7 event types, scheduler, claim system)
- [x] Create READMEs for MEDIUM-priority mods:
  - BetterKeys, CommonGoals, AchievementUnlocked, Lockboxes, CustomSpells

## Phase 4 – Process & Governance (Complete)
- [x] Create PR template with SoT checklist: `.github/PULL_REQUEST_TEMPLATE.md`
- [x] Create audit script: `scripts/validate_sot.sh`
- [x] Verified: audit passes 50/50 (0 failures, 2 expected warnings)

## Phase 5 – Ongoing Auditing (Next)
- [ ] Run audit script monthly (or on significant changes)
- [ ] Add audit script to CI pipeline (if applicable)
- [ ] Clean up or formalize stale mods (Gemcrafter, Work-In-Progress)

## Ongoing Maintenance
- [x] Run `graphify update .` after code changes
- [ ] Keep `FEATURE_MATRIX.md` in sync with new features
- [ ] Keep `FEATURE_TRUTH.md` in sync
- [ ] Update `COMPLETED.md` after each ship
- [ ] Trim `PLAN.md` regularly
