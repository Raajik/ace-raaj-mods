-- ============================================================
-- ONE-TIME FIX: deduplicate weenie_properties_create_list for
-- TN vendors Jochi (810000) and Timewalker Kaleb (810001).
--
-- Root cause: weenie_properties_create_list has no unique key on
-- (object_Id, destination_Type, weenie_Class_Id). The PK is an
-- auto-increment id, so INSERT IGNORE never prevents duplicate
-- rows — it only skips PK conflicts, which never happen on
-- auto-increment. Every re-run of the vendor SQL added fresh rows,
-- and ACE's LoadInventory creates one WorldObject per row, so
-- N runs = N copies of each item in the vendor's shop.
--
-- This script wipes the shop (type=4) rows for both vendors.
-- After running it, re-apply:
--   Vendors/01_Jochi_810000.sql
--   VanillaTweaks/08_TimewalkerKalebSharpTuskerTusk.sql  (cleanup only)
--   VanillaTweaks/11_KalebVanillaHeadsAndIchor.sql
-- Those files now use DELETE+INSERT so they are idempotent going forward.
-- ============================================================

-- destination_Type=4 (Shop): removes duplicated vendor shop inventory rows
DELETE FROM weenie_properties_create_list
WHERE object_Id IN (810000, 810001)
  AND destination_Type = 4;

-- destination_Type=2 (Wield): removes duplicated vendor appearance/clothing rows
DELETE FROM weenie_properties_create_list
WHERE object_Id IN (810000, 810001)
  AND destination_Type = 2;

-- destination_Type=1 (Contain): removes wrong row inserted by old 08_... file
DELETE FROM weenie_properties_create_list
WHERE object_Id = 810001
  AND destination_Type = 1
  AND weenie_Class_Id = 19478;
