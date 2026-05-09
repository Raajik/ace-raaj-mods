# Weenie Reorganization Plan

## Phase 0: What we're keeping (your WCIDs)

### Custom WCIDs to reorganize
- **Items (800000-809999):** Coalesced Mana (42516-42518), SpellSiphon (850200), ManaLattice (850201), Letters (850340-850341)
- **Vendors (810000-819999):** Radi (800039), pick 1 Pathwarden vendor + consolidate Academy weapons stock
- **Chests (vanilla 33609-33612):** stay as vanilla WCIDs, just additive updates

### JSON-only (stay as-is)
- Trophy tiers (850271-850285) — runtime only, no DB WCID
- Vanilla trophy overrides (UiEffects, IconUnderlay on 24835, 8144-8147, etc.)

### Vanilla mutations to revert → JSON overrides
These are existing vanilla WCIDs we modified with `ON DUPLICATE KEY UPDATE`. Restore them to defaults, then let JSON handle the overrides:
- Trophy burden/value=1 (24835, 4133, 7603, 8144-8147, etc.)
- Lucky Gold/Scarlet Red stackable (45875, 45876) — these should be custom WCIDs only
- Olthoi pincer revamp (glows on vanilla WCIDs)
- Defense salvage descriptions (vanilla salvage strings)

### Vanilla mutations to keep (additive only — these add functionality)
- Brood Matron Queen parts guarantee (adds create_list rows)
- Bronze statue salvage guarantee (sets shade=0 on create_list)
- Pathwarden chest adds (adds items to chests)
- Lockboxes (WIP — new system)
- Pathwarden gear pricing
- RemoveAcademy from non-TN vendors

## Phase 1: Build organized SQL
### Item range allocation
| New WCID | Old WCID | Name |
|----------|----------|------|
| 800000 | 42516 | Lesser Coalesced Mana |
| 800001 | 42517 | Greater Coalesced Mana |
| 800002 | 42518 | Aetheric Coalesced Mana |
| 800003 | 850200 | SpellSiphon |
| 800004 | 850201 | ManaLattice |
| 800005 | 850340 | Lucky Gold Letter |
| 800006 | 850341 | Scarlet Red Letter |

### Vendor range allocation
| New WCID | Old WCID | Name |
|----------|----------|------|
| 810000 | 800039 | Radi (stays, very important) |
| 810001 | ??? | One Pathwarden vendor (pick survivor) |

### Vanilla revert → JSON overrides
- Revert `2026-05-07_trophies_burden_value_1.sql` changes
- Revert Lucky Gold/Scarlet Red stackable mutations on 45875/45876
- JSON handles all visual/mechanical tweaks

## Phase 2: Apply to void-test_world
1. Backup affected data
2. Copy weenies from old WCIDs to new WCIDs (INSERT SELECT)
3. Remove pre-awakened Pathwarden gear from vendors
4. Consolidate vendors (1 survivor + Radi)
5. Add 10 lesser coalesced mana to Pathwarden chests
6. Update landblock references
7. Restart void-test and verify

## Phase 3: After verification
1. Apply same to ace_world
2. Update SQL files in repo to match new WCIDs
3. Update C# code references
