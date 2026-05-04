# Facility Hub audit (Windblown tracking)

Generated as part of the Valheel Facility Hub plan. Valheel originals live under [ValheelContent/Content](../../ValheelContent/Content); this document describes the **mirror** under `WindblownContent/Content/` and how it relates to `ace-sql`.

## Landblock `0x0130`

| Artifact | Path |
|----------|------|
| Valheel (tracked copy) | `WindblownContent/Content/06-landblock/0130.sql` |
| ACE baseline | `WindblownContent/baseline/ace-sql/Landblock/0130.sql` |
| Unified diff | `WindblownContent/artifacts/0130-ace-vs-valheel.diff` |

[CONFLICTS.md](../../docs/sql-comparison/CONFLICTS.md) lists **WCID 130** as the overlap key for this landblock:

- Valheel: `Content\06-landblock\0130.sql`
- ace-sql: `AC Production\01 Beyond-AC-Working\Landblock\0130.sql`

The diff shows the ACE file as a **minimal** patch (single generator row style) replaced by Valheel’s **full** `DELETE` + large `INSERT` set for the hub, including custom signage (e.g. WCIDs **803656–803658**), **1000076** Festival Lights (`2024-06-06` timestamps), and the broader Town Network-style population.

## Weenie tree `03-weenie/Facility Hub`

**148** `.sql` files, grouped as copied from Valheel:

| Area | Notes |
|------|--------|
| Root | NPCs: **801888** Merril, **801890** Derril, **803006** Facility Hub Contract Agent |
| `Contracts/` | Floor contracts (802970–802974), tier folders `P10 - 25` through `P151 - 200`, Kou-an / Gorth / Ashen valley, etc. |
| `Generators/` | 36 generator weenies (Austere / Rynthid / Mordant / Aerlite / UV, etc.) |
| `Guards/` | `P10-24` (12), `P25-49` (10); empty `Guards/` root |
| `Mobs/` | `P11-25` (15), `P26-50` (12); empty `Mobs/` root |
| `Portals/` | **802954** Tower of Trials; `P10-24` and `P25-49` portal weenies |

## CONFLICTS.md cross-reference

The conflict report is **WCID-keyed**, not folder-keyed: a text search for `Facility Hub` does not appear in [CONFLICTS.md](../../docs/sql-comparison/CONFLICTS.md). To see whether a specific hub weenie overlaps ACE SQL, look up its **WCID** (from the leading digits in each filename) in that table’s pipe rows.

Landblock **130** is the primary indexed pair for the hub **layout**; many hub weenie WCIDs may be **Valheel-only** (no ace-sql row in CONFLICTS) if they were introduced only in this pack.

## Related mods (not SQL)

- [QOL/FacilityHubPortal.cs](../../QOL/FacilityHubPortal.cs) — `/fac`, gem **49563**, portal behavior.
- [QOL/Settings.json](../../QOL/Settings.json) — `FacilityHub` block. **Fallback** (when portal `Destination` is not readable as `Position` on stock ACE) defaults to cell **0x8A020212** on landblock **0x8A02** (Windblown facility hub spawn), not legacy Val Heel **0x0130**.
- [AchievementUnlocked/Settings.json](../../AchievementUnlocked/Settings.json) — Facility Hub achievements.
