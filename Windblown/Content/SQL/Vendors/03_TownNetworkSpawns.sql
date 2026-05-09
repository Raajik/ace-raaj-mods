-- ==========================================================================
-- Town Network Vendor Spawns
-- ==========================================================================

-- NOTE: These GUIDs need to be unique in ace_world.landblock_instance.
-- Using 0x7013XXXX range for Town Network (0x0007).
-- Check for conflicts before applying.

-- Radi (810000) — Town Network
INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x70130050, 810000, 0x00070155, 78.481689, -60.463581, 0.005000, 0.370137, 0, 0, -0.928977, False, NOW());

INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)

-- Swayss (810002) — Undead skill reset NPC
INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x70130052, 810002, 0x00070155, 79.886467, -61.775486, 0.005000, 0.921216, 0, 0, 0.389052, False, NOW());
