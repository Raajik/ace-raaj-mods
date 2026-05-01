-- Town Network Native Portal Patch (v2)
-- Town Network is dungeon landblock 0x0007, NOT 0xA9B4
-- Places native ACE portals at exact /loc coordinates provided by user
-- Safe to run on both original ACE and Valheel-modified databases
-- Run against ace_world, then restart ACE server for changes to take effect

-- Remove wrong approximate placements from landblock 0xA9B4 (if they exist)
DELETE FROM `landblock_instance` WHERE `landblock` = 0xA9B4 AND `guid` BETWEEN 0x7A9B4700 AND 0x7A9B4703;

-- Remove any existing custom platform instances from landblock 0xA9B4 (if they exist)
DELETE FROM `landblock_instance` WHERE `landblock` = 0xA9B4 AND `weenie_Class_Id` = 1000005;

-- Ayan Baqur Portal (west wing, main floor)
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700070B0, 7194, 0x0007010B, 3.361688, -69.929802, 0.005000, -0.712098, 0, 0, 0.702080, False, '2025-06-08 12:00:00');
/* @teleloc 0x0007010B [3.361688 -69.929802 0.005000] -0.712098 0.000000 0.000000 0.702080 */

-- Wai Jhou Portal (east wing, main floor)
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700070B1, 4218, 0x00070186, 146.575012, -69.981812, 0.005000, -0.694651, 0, 0, -0.719347, False, '2025-06-08 12:00:00');
/* @teleloc 0x00070186 [146.575012 -69.981812 0.005000] -0.694651 0.000000 0.000000 -0.719347 */

-- Abandoned Mines Portal (south annex, main floor)
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700070B2, 1595, 0x0007014F, 69.970108, -176.207275, 0.005000, 1.000000, 0, 0, 0.000961, False, '2025-06-08 12:00:00');
/* @teleloc 0x0007014F [69.970108 -176.207275 0.005000] 1.000000 0.000000 0.000000 0.000961 */

-- Asheron's Castle Portal (lower level)
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700070B3, 35293, 0x00070104, 70.002647, -170.701004, -5.995000, -0.999995, 0, 0, 0.003132, False, '2025-06-08 12:00:00');
/* @teleloc 0x00070104 [70.002647 -170.701004 -5.995000] -0.999995 0.000000 0.000000 0.003132 */
