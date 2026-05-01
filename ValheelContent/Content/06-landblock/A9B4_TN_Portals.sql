-- Town Network Native Portal Patch
-- Places native ACE portals in A9B4 (Town Network) wings/annex
-- Safe to run on both original ACE and Valheel-modified A9B4 landblocks
-- Run against ace_world, then restart ACE server for changes to take effect

-- Remove any existing custom platform instances (if present)
DELETE FROM `landblock_instance` WHERE `landblock` = 0xA9B4 AND `weenie_Class_Id` = 1000005;

-- Fort Tethana Portal (north wing, main floor)
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7A9B4700, 4040, 0xA9B40000, 30.0, 162.0, 66.0, 1, 0, 0, 0, False, '2025-06-08 12:00:00');
/* @teleloc 0xA9B40000 [30.000000 162.000000 66.000000] 1.000000 0.000000 0.000000 0.000000 */

-- Wai Jhou Portal (east wing, main floor)
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7A9B4701, 4218, 0xA9B40000, 160.0, 132.0, 66.0, 0.707107, 0, 0, -0.707107, False, '2025-06-08 12:00:00');
/* @teleloc 0xA9B40000 [160.000000 132.000000 66.000000] 0.707107 0.000000 0.000000 -0.707107 */

-- Ayan Baqur Portal (west wing, main floor)
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7A9B4702, 7194, 0xA9B40000, 50.0, 132.0, 66.0, 0.707107, 0, 0, 0.707107, False, '2025-06-08 12:00:00');
/* @teleloc 0xA9B40000 [50.000000 132.000000 66.000000] 0.707107 0.000000 0.000000 0.707107 */

-- Eastern Subway Portal -> Abandoned Mines (south annex, lower level)
INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7A9B4703, 4969, 0xA9B40000, 107.0, 30.0, 94.0, 0, 0, 0, -1, False, '2025-06-08 12:00:00');
/* @teleloc 0xA9B40000 [107.000000 30.000000 94.000000] 0.000000 0.000000 0.000000 -1.000000 */
