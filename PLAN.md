# PLAN — Active Work

> This file tracks **current active work** and **backlog** only. Shipped features belong in `COMPLETED.md`.

## Active

- (none — all current backlog items are stale/monitor-only)

## Backlog / Upcoming

### Bug backlog
- **Swarmed** — monitor CreatureEx loot for remaining items without icon underlays. **Status:** defense imbues (Melee/Missile/MagicDefense) have no known client icon underlay DIDs — blocked unless assets are found.

### Feature backlog
- **BetterSupportSkills** — monitor summoner class cantrip bonus pets for balance. **Status:** current CantripBonusByTier values = {1,2,3,4,7}. Requires player feedback before adjusting.

## Progress (recent)
- 2026-05-06 — Hotfix: BSS salvage writes through LLL property system (57 material property mismatches fixed), removed Cooking heartbeat DEBUG spam, invasion spawn improvements (indoor cell filter, 120f radius, auto-cell from XY, 50 retries). See `COMPLETED.md`.
- 2026-05-06 — AutoLoot: per-player toggle for LLL auto-banking (`/autoloot bank`). See `COMPLETED.md`.
- 2026-05-06 — CI: Added validate-sot.yml workflow.
- 2026-05-06 — Trophy toggle + DB cleanup, head WCID vendor doc. See `COMPLETED.md`.
