# PLAN — Active Work

> This file tracks **current active work** and **backlog** only. Shipped features belong in `COMPLETED.md`.

## Infrastructure

- **void-test isolated spot-check server** — `A:\void-test\` (port 9010, DBs `void-test_*`). Use `"push void"` to deploy. Auto-restart via `void-test-Watchdog` scheduled task (see AGENTS.md §8.1).
- **wb_test** (port 9000) — auto-restart via `wb_test-Watchdog` scheduled task.
- **live** (port 9002) — auto-restart via `ACE-WB-Watchdog` scheduled task.
- **All watchdogs** use `RunLevel Limited` in the task principal so ACE opens in the user's normal Windows Terminal, not admin windows.

## Active

*No active issues.*

## Backlog / Upcoming

### Feature backlog
- **BetterSupportSkills** — monitor summoner class cantrip bonus pets for balance. **Status:** current CantripBonusByTier values = {1,2,3,4,7}. Requires player feedback before adjusting.

## Progress (recent)
- 2026-05-18 — **Branch consolidation** — 6 dev branches merged to main, 12 stale branches cleaned. Overtinked Nether/cleave, WorldEvents scheduler, EA refactor (Gear* props, CharacterTable, ModData), Spellsiphon Glyphs, BSS crash fix, lockpick banking. See COMPLETED.md.
- 2026-05-11 — **Bug fix batch** (Spellsiphon crystal destruction, EA cloak rating persistence, QOL PetEx guard, Mnemosyne fix, Overtinked delta).
