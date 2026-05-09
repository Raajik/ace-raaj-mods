-- ==========================================================================
-- Town Network Vendor Spawns
-- Places Radi (810000) and Kaelith (810001) in the Town Network landblock
-- ==========================================================================

-- NOTE: These GUIDs need to be unique in ace_world.landblock_instance.
-- Using 0x7013XXXX range for Town Network (0x0007).
-- Check for conflicts before applying.

-- Radi (810000) — Town Network, near central area
-- Location derived from original 800039 placement
INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x70130050, 810000, 0x0007014B, 61.9053, -62.4053, 0.005, 1, 0, 0, 0, False, NOW());

-- Kaelith (810001) — Town Network, same position as original 850300
INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x70130051, 810001, 0x0007013F, 69.6171, -21.2532, 0.005, 1, 0, 0, 0, False, NOW());
