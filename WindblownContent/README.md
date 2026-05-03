# WindblownContent

SQL and reference copies for **Windblown** server work. This folder predates the Facility Hub mirror; layout mixes numbered buckets (`01-weenies`, `07-containers`, …) and a Valheel-style mirror under `Content/` for hub tracking.

## Facility Hub mirror (Valheel source)

| Path | Purpose |
|------|---------|
| `Content/06-landblock/0130.sql` | Copy of Valheel landblock `0x0130` (Facility Hub surface). |
| `Content/03-weenie/Facility Hub/**` | Copy of Valheel Facility Hub weenie SQL (148 files). |
| `baseline/ace-sql/Landblock/0130.sql` | ACE Production baseline from `ace-sql` for side-by-side diff. |
| `artifacts/0130-ace-vs-valheel.diff` | `git diff --no-index` ACE vs Valheel `0130.sql`. |
| `artifacts/robocopy-facility-hub.log` | Optional robocopy log (script requests `/LOG`; may be absent if robocopy skips logging when nothing changes). |

Re-sync from repo root:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/windblown-facility-hub-sync.ps1
```

**Source of truth for deploy:** [ValheelContent](../ValheelContent) remains authoritative; this tree is for **tracking and diffs**, not a second deploy pack unless you wire it up.

See [docs/FACILITY_HUB.md](docs/FACILITY_HUB.md) for inventory and CONFLICTS notes.
