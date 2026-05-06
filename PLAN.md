# PLAN — Active Work

> This file tracks **current active work** and **backlog** only. Shipped features belong in `COMPLETED.md`.

## Active

- **Immutable Source of Truth Initiative** — Phase 5 ongoing (audit script ready, run monthly)

## Backlog / Upcoming

### Bug backlog
- **Swarmed** — monitor CreatureEx loot for remaining items without icon underlays (secondary/defense-only items)

### Feature backlog
- **BetterSupportSkills** — monitor summoner class cantrip bonus pets for balance; adjust `CantripBonusByTier` values if needed
- **AutoLoot** — extend `TryBankAnyLllItem` with per-player toggle (full opt-in/out) when LLL items list grows large
- **Gemcrafter / Work-In-Progress** — evaluate and clean up empty mods
- **CI** — add `scripts/validate_sot.sh` to GitHub Actions workflow

### Docs backlog
- `README.md`: AutoLoot still claims `.utl` profiles as primary story (now partially C#)
- `AutoLoot/Readme.md`: still lists `Currency.utl` + `Trophies.utl` as shipped
- `BetterLootControl/Readme.md` + `COMPLETED.md`: contain outdated imbue compatibility statement

## Progress (recent)
- 2026-05-06 — Immutable Source of Truth: Phase 2-4 complete. FEATURE_MATRIX, 7 new READMEs, Docs template, PR template, audit script. See `COMPLETED.md`.
- 2026-05-06 — Multi-mod fixes: imbue spells, Living→Awakened, cantrip bonus pets, key unlock-only, LLL auto-banking. See `COMPLETED.md`.
