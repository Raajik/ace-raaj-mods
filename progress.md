# Progress — Immutable Source of Truth

## Phase 2-5 Complete ✓ (2026-05-06)

### Phase 2: Feature Mapping ✓
- **FEATURE_MATRIX.md** created with 80+ feature rows across 14 categories
- Each feature has: Owner, README status, Settings.json status, Health status, Notes
- Gaps identified: defense imbue hang (HIGH), empty mods (MEDIUM), missing READMEs (now filled)

### Phase 3: Documentation Standards ✓
- **Docs/FeatureTemplate.md** created — 8-section template (intent, formulas, behavior, cross-mod, config, DB, testing, changelog)
- **7 new READMEs created** for previously undocumented mods:
  - EmpyreanAlteration — comprehensive (32 features, 16 mutators documented)
  - Swarmed — all 29 champion types + 4 systems documented
  - WorldEvents — all 7 event types + scheduler documented
  - BetterKeys — unlock-only behavior, bank integration, key WCID mapping
  - CommonGoals — personal loot, no-split XP
  - AchievementUnlocked — achievement system overview
  - Lockboxes — tiered lockbox system
  - CustomSpells — spell creation, equipment set bonuses
- **WindblownContent/Settings.json** created (was missing)

### Phase 4: Process & Governance ✓
- **`.github/PULL_REQUEST_TEMPLATE.md`** created with full SoT checklist (feature ownership, docs, config, DB, build, git hygiene)
- **`scripts/validate_sot.sh`** created — automated audit checking:
  - README coverage (22 mods checked)
  - Settings.json coverage (23 mods checked)
  - SoT docs existence (FEATURE_MATRIX, FEATURE_TRUTH, PR template, feature template)
  - Stale mod detection (Gemcrafter, Work-In-Progress)
  - SQL backup directory
- Audit result: **50 pass, 0 fail, 2 warnings**

### Phase 5: Ongoing ✓ (initial setup)
- Audit script works and can be run via CI or cron
- Weekly SoT sync noted in PLAN.md backlog
