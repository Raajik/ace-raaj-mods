# Task Plan — Vendor Pathwarden/Academy cleanup + safe equipment rotation

## Goal
- Remove Academy + Pathwarden `weenie_properties_create_list` rows from all vendors except TN WCIDs 850300-850303 (SQL in repo + one-time DB apply).
- Refactor `QOL/VendorLootRotation` to rotate only `MerchandiseItemTypes` equipment bits the vendor sells, 15-30 items per bit, starter-friendly tier rolls, optional low-stat mode, gated magic/mundane/salvage.
- Re-enable Harmony prefix on `Vendor.ApproachVendor` at First when `EnableVendorLootRotation` is true.

## Phases
1. **SQL** — `WindblownContent/Content/SQL/RemoveAcademyPathwardenFromNonTnVendors.sql` (ace_world + mirror wb_ace_world); restart server.
2. **Repo SQL** — Deprecated `WindblownContent/03-vendor-stock/AcademyWeapons_VendorStock.sql`; TN vendors remain authoritative in `WindblownContent/01-weenies/Vendors/` and `WorldEvents/Content/PathwardenVendors/`.
3. **Code** — `VendorLootRotation.cs`, `Settings.cs`, `Settings.json`, `PatchClass.cs`.
4. **Verify** — `dotnet build` QOL; test vendor approach (LLL + EA ordering smoke).

## References
- Archived gameplay sweep: `task_plan_gameplay_log_sweep.md`, `findings_gameplay_log_sweep.md`, `progress_gameplay_log_sweep.md`.
