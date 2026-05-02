-- DEPRECATED (2026-05): Do not apply this file.
-- Academy weapons were previously INSERTed onto starter-town vendor weenies (712, 713, 2304, 835, 836, 831, 1038, 1039, 2307).
-- Academy and Pathwarden gear now belong only on TN Pathwarden vendors WCIDs 850300-850303 (see WindblownContent/01-weenies/Vendors/).
--
-- One-time cleanup for existing databases:
--   mysql ... ace_world < WindblownContent/Content/SQL/RemoveAcademyPathwardenFromNonTnVendors.sql
-- Mirror to wb_ace_world for live. Restart ACE.Server after apply.

SELECT 'AcademyWeapons_VendorStock.sql is deprecated; use RemoveAcademyPathwardenFromNonTnVendors.sql instead.' AS notice;
