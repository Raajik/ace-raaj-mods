# Task Plan: Empower - Healing Kit System Cleanup, Build, and Deploy

## Goal
Complete the Empower - Healing mod: commit cleanup changes from the grill session, build, apply SQL, deploy to void-test, verify in-game.

## Current Phase
Phase 1: Finalize code changes

## Phases

### Phase 1: Finalize code changes
- [x] Remove dead Healer method patches (grill Q1)
- [x] Set DropChance to 50% (grill Q2)
- [x] Sync Reactive Barrier 20s in docs (grill Q3)
- [x] Switch IsAnointedKit to WCID check (grill Q4)
- [x] Cleanup loot creation patch path (grill Q5)
- [x] HoT tracks kit BoosterEnum (grill Q6)
- [x] Add logout guard to HoT (grill Q7)
- [x] Fix SQL header comments (grill Q8)
- [x] Wiki lesson on Harmony postfix + non-void returns
- [x] Build and fix any compilation errors
- **Status:** complete

### Phase 2: Apply SQL & Deploy to void-test
- [ ] Run `deploy-void-test.sh` to build + copy mods + apply SQL
- [ ] Verify SQL applied correctly (SELECT from weenie)
- [ ] Restart void-test ACE server
- **Status:** in_progress

### Phase 3: In-game verification
- [x] Spawn an Anointed kit in-game
- [x] Verify: double-click auto-self heals, animation plays, skill check works
- [x] Verify: perk effects fire (Efficiency, Critical Surge, Omni-Heal, Regen, Cleanse, Barrier, Boon)
- [x] Verify: multiple kits roll different stats/perks
- [x] Verify: unlimited use (no charge consumption)
- **Status:** complete

### Phase 4: Commit & push
- [x] Commit changes on task branch
- [x] Push to origin
- **Status:** complete

## Key Questions
1. Does the build cleanly? (check Phase 1)
2. Does the SQL apply correctly via deploy script? (check Phase 2)

## Decisions Made
| Decision | Rationale |
|----------|-----------|
| Food-type (18) for auto-self | Bypasses targeting reticle, double-click heals directly |
| DropChance 50% | Permanent items should feel exciting, not guaranteed |
| Reactive Barrier 20s | Generous duration, doesn't demand rotation |
| No vanilla kit fallback | Anointed kits are the only loot kit source |
| WCID-based IsAnointedKit | O(1) check, no per-property iteration every heal |
| HoT tracks BoosterEnum | Stamina/Mana kits heal the correct vital over time |

## Errors Encountered
| Error | Attempt | Resolution |
|-------|---------|------------|
| | 1 | |

## Notes
- All grill-session changes have been applied to code and docs
- Wiki entry added at `ace-raaj-mods Patterns.md`
