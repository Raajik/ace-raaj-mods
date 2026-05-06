# Head WCIDs — Future MMD Vendor NPC

These are the vanilla head items that were removed from global creature `create_list` tables on 2026-05-06. They now drop **exclusively** via the Windblown TrophyLine system (`mob-heads.json`). The original WCIDs are preserved in the database for a **future NPC vendor** that sells them for MMDs or other currency.

## All Head WCIDs

| WCID    | Name              | Sibling     | Notes                           |
|---------|-------------------|-------------|----------------------------------|
| 3680    | Olthoi Head       | 19446       | 19446 → 3680 in trophy line      |
| 3687    | Skeleton's Skull  | —           |                                  |
| 4121    | Lich Skull        | —           |                                  |
| 8144    | Banderling Head   | —           |                                  |
| 8145    | Drudge Head       | —           |                                  |
| 8146    | Mosswart Head     | —           |                                  |
| 8147    | Tusker Head       | —           |                                  |
| 9097    | Ursuin Head       | 12219       | 12219 → 9097 in trophy line      |
| 12215   | Pumpkin Head      | —           |                                  |
| 12216   | Sclavus Head      | —           |                                  |
| 12219   | Ursuin Head (alt) | 9097        | Sibling, both removed            |
| 12225   | Zombie Head       | —           |                                  |
| 19446   | Olthoi Head (alt) | 3680        | Sibling, both removed            |
| 22059   | Eviscerator Head  | —           | Tumerok                          |
| 24846   | Mutilator Head    | —           | Hollow Minion                    |
| 25554   | Knath Head        | —           |                                  |
| 25561   | Moarsman Head     | —           |                                  |
| 28886   | Burun Guruk Head  | 28887       | 28887 → 28886 in trophy line     |
| 28887   | Burun Head (alt)  | 28886       | Sibling, both removed            |
| 28888   | Chittick Head     | —           |                                  |
| 28889   | Mite Head         | —           |                                  |
| 34029   | Shadow Head       | —           |                                  |
| 36359   | Cow Head          | —           |                                  |
| 36362   | Mukkir Head       | —           |                                  |

## DB Cleanup

All `weenie_properties_create_list` entries for the above WCIDs were deleted from `ace_world`. Backup: `WindblownContent/sql-backups/2026-05-06/head-create-list-backup.sql`

**Do NOT restore** unless you want both systems (trophy line + vanilla drops) running simultaneously.

## NPC Vendor Design Notes

- These items still exist as valid weenies in `ace_world` — they just aren't dropped by creatures anymore.
- An NPC could sell them for MMDs (e.g., 1–5 MMD each, or tiered pricing).
- Consider a "Head Hunter" NPC that sells heads matching the trophy system's creature types.
- Sibling WCIDs (12219, 19446, 28887) still exist as weenies but the trophy system maps them to the primary display name. The NPC should probably only stock the primary WCIDs (9097, 3680, 28886) to avoid confusion.
