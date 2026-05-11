-- ==========================================================================
-- Town Network Vendor Spawns
-- ==========================================================================

-- NOTE: These GUIDs need to be unique in ace_world.landblock_instance.
-- Using 0x7013XXXX range for Town Network (0x0007).
-- Check for conflicts before applying.

-- Jochi (810000) — Town Network gem vendor
INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x70130050, 810000, 0x00070155, 78.481689, -60.463581, 0.005000, 0.370137, 0, 0, -0.928977, False, NOW());

-- Swayss (810002) — Undead skill reset NPC
INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x70130052, 810002, 0x00070155, 79.886467, -61.775486, 0.005000, 0.921216, 0, 0, 0.389052, False, NOW());

-- Timewalker Kaleb (810001) — Trophy & failsafe vendor (MMD sink)
INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x70130051, 810001, 0x00070155, 78.179092, -61.993259, 0.005000, 0.913444, 0, 0, -0.406963, False, NOW());

-- Collector Vaetha (810003) — Trophy turn-in NPC (all custom trophy items)
INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x70130053, 810003, 0x00070155, 75.885468, -57.349678, 0.005000, -0.385885, 0, 0, -0.922547, False, NOW());

-- Olthoi Hunter (3930) — Pincer quests (original + town network copy)
INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x70130055, 3930, 0x00070143, 65.600296, -56.225960, 0.005000, 0.175151, 0, 0, -0.984542, False, NOW());
