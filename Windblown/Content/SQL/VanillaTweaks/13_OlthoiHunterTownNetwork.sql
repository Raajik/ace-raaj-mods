-- ============================================================
-- Olthoi Hunter (3930) — Town Network copy
-- Extra landblock instance at the specified position.
-- Original 3930 still spawns in the wild; this adds a 2nd
-- instance in the Town Network for convenient pincer turn-ins.
-- ============================================================

INSERT IGNORE INTO landblock_instance (guid, weenie_Class_Id, obj_Cell_Id, origin_X, origin_Y, origin_Z, angles_W, angles_X, angles_Y, angles_Z, is_Link_Child, last_Modified)
VALUES (0x70130055, 3930, 0x00070143, 65.600296, -56.225960, 0.005000, 0.175151, 0, 0, -0.984542, False, NOW());

SELECT 'OK' as status;