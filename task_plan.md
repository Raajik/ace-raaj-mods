# Task Plan: Quest Salvage Auto-Deposit for LeyLineLedger

## Goal
Identify all "quest" salvage items (Clutch of Kings / Pathwarden reward bags) by WCID, verify their properties, and add auto-deposit support in **LeyLineLedger** so these items are banked automatically when acquired (via quest turn-in, NPC reward, or loot).

## Context
- User found **21039 Salvaged Black Garnet** and **21040 Salvaged Black Opal** as examples.
- These items have: pyreal value = 10, burden = 100, workmanship = 10.00, unique bag icons.
- User provided a list from the wiki of known quest salvage types:
  - Salvaged Aquamarine (Quest) — Clutch of Kings: Keerik
  - Salvaged Black Garnet (Quest) — Clutch of Kings: Kiree
  - Salvaged Black Opal (Quest) — Clutch of Kings: Kiree
  - Salvaged Emerald (Quest) — Clutch of Kings: Keerik
  - Salvaged Fire Opal (Quest) — Clutch of Kings: Reeshan
  - Salvaged Granite (Pathwarden) — Training Academy Quest
  - Salvaged Granite (Quest) — Clutch of Kings: Broodu
  - Salvaged Imperial Topaz (Quest) — Clutch of Kings: Reeshan
  - Salvaged Jet (Quest) — Clutch of Kings: Rehir
  - Salvaged Mahogany (Quest) — Clutch of Kings: Kiree
  - Salvaged Red Garnet (Quest) — Clutch of Kings: Rehir
  - Salvaged Steel (Pathwarden) — Training Academy Quest
  - Salvaged Steel (Quest) — Clutch of Kings: Reeshan
  - Salvaged Sunstone (Quest) — Clutch of Kings: Broodu
  - Salvaged White Sapphire (Quest) — Clutch of Kings: Broodu
- Pathwarden Steel and Granite may already have LLL entries.
- LLL should auto-deposit these to the bank under their default (current) WCID based on material type.

## Phases

| Phase | Description | Status |
|-------|-------------|--------|
| 1 | Database research — query `ace_world` for all quest/pathwarden salvage WCIDs matching pattern (value=10, burden=100, workmanship=10, name LIKE '%Salvaged%(%') | `not_started` |
| 2 | Cross-reference with user's wiki list; identify any missing/gap items; verify icon/image properties | `not_started` |
| 3 | Review existing LLL auto-deposit code (salvage bag handling, material-type mapping, bank property assignment) | `not_started` |
| 4 | Design the integration — how/where to hook (quest stamp postfix? NPC emote? inventory add?) | `complete` |
| 5 | Write implementation plan & ask user clarifying questions before coding | `complete` |
| 6 | Implement + test + deploy | `complete` |

## Notes
- Container.TryAddToInventory with `out Container` parameter cannot be Harmony-patched in this ACE version (causes "Patching exception" that kills the entire mod). Only emote prefix is used. Non-emote sources deferred.


## Questions to Answer
1. Which WCIDs are the actual quest/pathwarden salvage items in our DB?
2. Do any of these already exist in LLL's auto-deposit or salvage mapping?
3. What is the current LLL hook point for auto-depositing items (quest reward postfix? inventory add?)
4. Should these be deposited to LeyLineLedger bank properties (e.g. `BankedSalvageMaterialId`) or to generic `BankCashProperty`?
5. Should auto-deposit be gated by a new settings toggle, or piggyback on existing auto-deposit?

## Errors Encountered
| Error | Attempt | Resolution |
|-------|---------|------------|
| — | — | — |
