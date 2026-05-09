-- ==========================================================================
-- Town Network Portal Additions
-- Adds extra destination portals to the Town Network landblock (0x0007)
-- ==========================================================================
-- GUID range: 0x70130100–0x701301FF for portal instances
-- ==========================================================================

-- Wai Jhou (destination WCID 4218)
INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x70130100, 4218, 0x00070186, 146.289413, -69.983444, 0.005000, 0.708904, 0, 0, 0.705305, False, NOW());

-- Ayan Baqur (destination WCID 7194)
INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x70130101, 7194, 0x0007010B, 3.710848, -70.001556, 0.005000, -0.706305, 0, 0, 0.707907, False, NOW());

-- Abandoned Mines (destination WCID 1595)
INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x70130102, 1595, 0x0007014F, 69.914314, -176.286926, 0.005000, -0.999994, 0, 0, 0.003327, False, NOW());

-- Asheron's Castle (destination WCID 35293)
INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x70130103, 35293, 0x00070104, 69.913651, -168.371918, -5.995000, 0.999995, 0, 0, -0.003088, False, NOW());