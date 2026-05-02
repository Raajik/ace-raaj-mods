# Findings — Vendor Pathwarden/Academy + VendorLootRotation

## SQL denylist
- `weenie_properties_create_list.object_Id` joins `weenie.id`; filter vendors with `weenie.class_Id NOT IN (850300,850301,850302,850303)`.
- Denylist unions TN + legacy Pathwarden WCIDs (Academy 12750-12760, 41514, 45531-45556; Pathwarden 33597-33607, 40439-40456, 41513) so stray academy/path rows are removed from non-TN vendors. Authoritative TN shop rows use 40440-40454 robes/armor/trinket in `WindblownContent/01-weenies/Vendors/` and matching `WorldEvents/Content/PathwardenVendors/`.

## Rotation (QOL)
- `VendorProfile.General` removed; strip/regenerate uses `MerchandiseItemTypes & equipmentMask` per bit.
- `RollVendorItemTier`: vendor tier <=2 uses 70/25/5% to tier, tier+1, min(tier+2,3); high tiers keep wider spread.
- `VendorLootLowStatMode`: light workmanship, skips `ScaleStatsTowardMax` and vendor imbue/value inflation path.
- Magic batch runs only when Caster bit is sold; Mundane when Food/Misc/TinkeringMaterial (single-bit filter or null if multiple).
- `VendorLootSalvageOnRotation` default false; salvage only when enabled and vendor has Misc or Containers.

## Patch order
- `VendorLootRotation.OnVendorApproachPrefix` remains Harmony **First**; LLL `Debit` path still calls `ApproachVendor`; EmpyreanAlteration vendor injection remains **Last** per AGENTS.md.
