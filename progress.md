# Progress — Vendor Pathwarden/Academy + VendorLootRotation

## Completed (2026-05-02)
- [x] SQL denylist file + deprecated academy vendor stock SQL that re-inserted rows.
- [x] `VendorLootRotation` merch-bit rotation, tier curve, low-stat mode, salvage gate, settings defaults.
- [x] `PatchClass` re-enabled `TryApplyVendorLootRotationPatch` (guarded by `EnableVendorLootRotation`).
- [x] `Settings.cs` / `QOL/Settings.json` — per-category counts, landblock tier map for starter towns, cooldown 45m.
- [x] Planning files rotated; gameplay sweep archived to `*_gameplay_log_sweep.md`.
- [x] `WorldEvents/Content/PathwardenVendors/850300-850303*.sql` aligned with `WindblownContent/01-weenies/Vendors/` (40440-40454 armor/trinket layout; Kaelith wield 40439; 301/302 equipped rows match Windblown; 303 no separate wield per Windblown).
- [x] `dotnet build QOL/QOL.csproj` — succeeded (0 warnings).
- [x] `graphify update .` to `A:/obsidian/jeremy/raw/graphify-out`.

## Verify (operator)
- [ ] Apply `RemoveAcademyPathwardenFromNonTnVendors.sql` to test `ace_world`; restart; spot-check create_list on academy smith vs TN 850300.
- [ ] Set `EnableVendorLootRotation`: true on test only; approach smith — only sold equipment tabs rotate; cooldown respected.
