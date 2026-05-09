DELETE FROM `landblock_instance` WHERE `landblock` = 0x0D4A;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A000, 29728, 0x0D4A012D, 108, 84, 20.25, 1, 0, 0, 0,  True, '2005-02-09 10:00:00'); /* Portal Device */
/* @teleloc 0x0D4A012D [108.000000 84.000000 20.250000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A001, 29715, 0x0D4A010C, 165.488, 84, 18.5, -0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Eye of the Watcher */
/* @teleloc 0x0D4A010C [165.488007 84.000000 18.500000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A002, 26568, 0x0D4A010C, 164.591, 79, 18.205, -0.92388, 0, 0, -0.382683,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010C [164.591003 79.000000 18.205000] -0.923880 0.000000 0.000000 -0.382683 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A003, 26568, 0x0D4A010C, 164.815, 89, 18.205, -0.461749, 0, 0, -0.887011,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010C [164.815002 89.000000 18.205000] -0.461749 0.000000 0.000000 -0.887011 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A004, 26543, 0x0D4A010C, 160, 90, 18.205, 0, 0, 0, -1,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010C [160.000000 90.000000 18.205000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A005, 26543, 0x0D4A010C, 160, 80, 18.205, 1, 0, 0, 0,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010C [160.000000 80.000000 18.205000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A006, 29716, 0x0D4A010E, 50.512, 84, 18.5, 0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Eye of the Watcher */
/* @teleloc 0x0D4A010E [50.512001 84.000000 18.500000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A007, 29717, 0x0D4A010F, 108, 141.488, 18.5, 0, 0, 0, -1,  True, '2005-02-09 10:00:00'); /* Eye of the Watcher */
/* @teleloc 0x0D4A010F [108.000000 141.488007 18.500000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A008,  7924, 0x0D4A011D, 107.372, 101.956, 18.205, -0.999997, 0, 0, -0.002528, False, '2005-02-09 10:00:00'); /* Linkable Monster Generator ( 5 Min.) */
/* @teleloc 0x0D4A011D [107.372002 101.956001 18.205000] -0.999997 0.000000 0.000000 -0.002528 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x70D4A008, 0x70D4A000, '2005-02-09 10:00:00') /* Portal Device (29728) */
     , (0x70D4A008, 0x70D4A001, '2005-02-09 10:00:00') /* Eye of the Watcher (29715) */
     , (0x70D4A008, 0x70D4A002, '2005-02-09 10:00:00') /* Wailing Statue (26568) */
     , (0x70D4A008, 0x70D4A003, '2005-02-09 10:00:00') /* Wailing Statue (26568) */
     , (0x70D4A008, 0x70D4A004, '2005-02-09 10:00:00') /* Wailing Statue (26543) */
     , (0x70D4A008, 0x70D4A005, '2005-02-09 10:00:00') /* Wailing Statue (26543) */
     , (0x70D4A008, 0x70D4A006, '2005-02-09 10:00:00') /* Eye of the Watcher (29716) */
     , (0x70D4A008, 0x70D4A007, '2005-02-09 10:00:00') /* Eye of the Watcher (29717) */
     , (0x70D4A008, 0x70D4A009, '2005-02-09 10:00:00') /* Wailing Statue (26543) */
     , (0x70D4A008, 0x70D4A00A, '2005-02-09 10:00:00') /* Wailing Statue (26568) */
     , (0x70D4A008, 0x70D4A00B, '2005-02-09 10:00:00') /* Wailing Statue (26568) */
     , (0x70D4A008, 0x70D4A00C, '2005-02-09 10:00:00') /* Wailing Statue (26568) */
     , (0x70D4A008, 0x70D4A00D, '2005-02-09 10:00:00') /* Wailing Statue (26568) */
     , (0x70D4A008, 0x70D4A00E, '2005-02-09 10:00:00') /* Wailing Statue (26568) */
     , (0x70D4A008, 0x70D4A00F, '2005-02-09 10:00:00') /* Wailing Statue (26543) */
     , (0x70D4A008, 0x70D4A010, '2005-02-09 10:00:00') /* Wailing Statue (26543) */
     , (0x70D4A008, 0x70D4A011, '2005-02-09 10:00:00') /* Wailing Statue (26568) */
     , (0x70D4A008, 0x70D4A012, '2005-02-09 10:00:00') /* Wailing Statue (26568) */
     , (0x70D4A008, 0x70D4A013, '2005-02-09 10:00:00') /* Wailing Statue (26543) */
     , (0x70D4A008, 0x70D4A014, '2005-02-09 10:00:00') /* Wailing Statue (26543) */
     , (0x70D4A008, 0x70D4A015, '2005-02-09 10:00:00') /* Eye of the Watcher (29718) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A009, 26543, 0x0D4A010D, 113, 32, 18.205, -0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010D [113.000000 32.000000 18.205000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A00A, 26568, 0x0D4A010D, 104, 27.5, 18.5, 0.953717, 0, 0, -0.300706,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010D [104.000000 27.500000 18.500000] 0.953717 0.000000 0.000000 -0.300706 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A00B, 26568, 0x0D4A010D, 112, 27.551, 18.5, -0.953717, 0, 0, -0.300706,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010D [112.000000 27.551001 18.500000] -0.953717 0.000000 0.000000 -0.300706 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A00C, 26568, 0x0D4A010D, 103, 32, 18.205, 0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010D [103.000000 32.000000 18.205000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A00D, 26568, 0x0D4A010F, 104, 140.569, 18.5, 0.300706, 0, 0, -0.953717,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010F [104.000000 140.569000 18.500000] 0.300706 0.000000 0.000000 -0.953717 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A00E, 26568, 0x0D4A010F, 111, 140.569, 18.5, -0.300706, 0, 0, -0.953717,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010F [111.000000 140.569000 18.500000] -0.300706 0.000000 0.000000 -0.953717 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A00F, 26543, 0x0D4A010F, 112, 135.725, 18.205, -0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010F [112.000000 135.725006 18.205000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A010, 26543, 0x0D4A010F, 103, 135.725, 18.205, 0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010F [103.000000 135.725006 18.205000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A011, 26568, 0x0D4A010E, 51.638, 87, 18.5, 0.382683, 0, 0, -0.92388,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010E [51.638000 87.000000 18.500000] 0.382683 0.000000 0.000000 -0.923880 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A012, 26568, 0x0D4A010E, 51.638, 81, 18.5, 0.887011, 0, 0, -0.461749,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010E [51.638000 81.000000 18.500000] 0.887011 0.000000 0.000000 -0.461749 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A013, 26543, 0x0D4A010E, 56, 79, 18.205, 1, 0, 0, 0,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010E [56.000000 79.000000 18.205000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A014, 26543, 0x0D4A010E, 56, 88, 18.205, 0, 0, 0, -1,  True, '2005-02-09 10:00:00'); /* Wailing Statue */
/* @teleloc 0x0D4A010E [56.000000 88.000000 18.205000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A015, 29718, 0x0D4A010D, 108, 26.504, 18.5, 1, 0, 0, 0,  True, '2005-02-09 10:00:00'); /* Eye of the Watcher */
/* @teleloc 0x0D4A010D [108.000000 26.504000 18.500000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A016, 800001, 0x0D4A003C, 183.725, 83.83, 23.055, -0.712957, 0, 0, 0.701207, False, '2023-09-18 19:24:48'); /* Lich Camp Generator */
/* @teleloc 0x0D4A003C [183.725006 83.830002 23.055000] -0.712957 0.000000 0.000000 0.701207 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A017, 800001, 0x0D4A003C, 179.915, 83.8349, 23.055, -0.694421, 0, 0, 0.719569, False, '2023-09-18 19:28:21'); /* Lich Camp Generator */
/* @teleloc 0x0D4A003C [179.914993 83.834900 23.055000] -0.694421 0.000000 0.000000 0.719569 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A018, 800001, 0x0D4A0034, 163.987, 84.2269, 30.055, 0.715393, 0, 0, -0.698722, False, '2023-09-18 19:28:29'); /* Lich Camp Generator */
/* @teleloc 0x0D4A0034 [163.987000 84.226898 30.055000] 0.715393 0.000000 0.000000 -0.698722 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A019, 800001, 0x0D4A0034, 155.461, 83.6801, 35.1589, -0.70481, 0, 0, 0.709396, False, '2023-09-18 19:28:38'); /* Lich Camp Generator */
/* @teleloc 0x0D4A0034 [155.460999 83.680099 35.158901] -0.704810 0.000000 0.000000 0.709396 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A01A, 800001, 0x0D4A002C, 139.993, 84.1342, 42.055, 0.713954, 0, 0, -0.700193, False, '2023-09-18 19:28:45'); /* Lich Camp Generator */
/* @teleloc 0x0D4A002C [139.992996 84.134201 42.055000] 0.713954 0.000000 0.000000 -0.700193 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A01B, 800001, 0x0D4A0025, 108.097, 108.164, 47.055, 0.999177, 0, 0, 0.040555, False, '2023-09-18 19:28:56'); /* Lich Camp Generator */
/* @teleloc 0x0D4A0025 [108.097000 108.164001 47.055000] 0.999177 0.000000 0.000000 0.040555 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A01C, 800001, 0x0D4A001C, 84.0863, 84.1786, 47.055, 0.697113, 0, 0, 0.716962, False, '2023-09-18 19:29:05'); /* Lich Camp Generator */
/* @teleloc 0x0D4A001C [84.086304 84.178596 47.055000] 0.697113 0.000000 0.000000 0.716962 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A01D, 800001, 0x0D4A0023, 107.89, 60.0742, 47.055, 0.00512839, 0, 0, 0.999987, False, '2023-09-18 19:29:17'); /* Lich Camp Generator */
/* @teleloc 0x0D4A0023 [107.889999 60.074200 47.055000] 0.005128 0.000000 0.000000 0.999987 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A01E, 800001, 0x0D4A0022, 108.011, 36.5712, 35.1783, 0.00212465, 0, 0, 0.999998, False, '2023-09-18 19:29:44'); /* Lich Camp Generator */
/* @teleloc 0x0D4A0022 [108.011002 36.571201 35.178299] 0.002125 0.000000 0.000000 0.999998 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A01F, 800001, 0x0D4A0014, 60.2704, 83.757, 35.055, 0.725906, 0, 0, 0.687793, False, '2023-09-18 19:29:59'); /* Lich Camp Generator */
/* @teleloc 0x0D4A0014 [60.270401 83.757004 35.055000] 0.725906 0.000000 0.000000 0.687793 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A020, 800001, 0x0D4A0026, 107.998, 131.454, 35.1632, 0.999916, 0, 0, -0.0129823, False, '2023-09-18 19:30:09'); /* Lich Camp Generator */
/* @teleloc 0x0D4A0026 [107.998001 131.453995 35.163200] 0.999916 0.000000 0.000000 -0.012982 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A021, 800001, 0x0D4A0027, 107.951, 155.634, 23.0554, 0.99986, 0, 0, -0.0167156, False, '2023-09-18 19:30:29'); /* Lich Camp Generator */
/* @teleloc 0x0D4A0027 [107.950996 155.634003 23.055401] 0.999860 0.000000 0.000000 -0.016716 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A022, 800001, 0x0D4A000C, 36.1673, 83.7834, 23.055, 0.715646, 0, 0, 0.698463, False, '2023-09-18 19:30:43'); /* Lich Camp Generator */
/* @teleloc 0x0D4A000C [36.167301 83.783401 23.055000] 0.715646 0.000000 0.000000 0.698463 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A023, 800001, 0x0D4A0021, 107.966, 12.6979, 23.2574, 0.0224864, 0, 0, 0.999747, False, '2023-09-18 19:30:59'); /* Lich Camp Generator */
/* @teleloc 0x0D4A0021 [107.966003 12.697900 23.257401] 0.022486 0.000000 0.000000 0.999747 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70D4A024, 802928, 0x0D4A002C, 134.8365, 84.01884, 47.055, 0.6990054, 0, 0, -0.7151163, False, '2023-09-18 19:40:40');
/* @teleloc 0x0D4A002C [134.836502 84.018837 47.055000] 0.699005 0.000000 0.000000 -0.715116 */
