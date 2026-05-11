# Task Plan

## Goal
Move shared loot config ownership to `BetterLootControl`, then rebalance Gem of Knowledge WCIDs so stronger versions are less common while `36509` stays relatively common.

## Phases
- [completed] Locate active loot config source and current gem placements.
- [completed] Move shared runtime loot config path and file ownership to `BetterLootControl`.
- [pending] Choose sensible rarity distribution for listed gem WCIDs.
- [pending] Edit loot pool entries.
- [pending] Verify with lint/status/graph update.

## Notes
- Use `BetterLootControl/` local planning files to avoid reviving deleted repo-root planning files.
