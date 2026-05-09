DELETE FROM `landblock_instance` WHERE `landblock` = 0x462D;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7462D04E,  1154, 0x462D0032, 148.356, 32.7238, 4.005, 0.229106, 0, 0, 0.973401, False, '2021-11-01 00:00:00'); /* Linkable Monster Generator */
/* @teleloc 0x462D0032 [148.356003 32.723801 4.005000] 0.229106 0.000000 0.000000 0.973401 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7462D04E, 0x7462D04F, '2021-11-01 00:00:00') /* Candrus Steady-Hand (37602) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7462D04F, 37602, 0x462D0032, 148.356, 32.7238, 4.005, 0.229106, 0, 0, 0.973401,  True, '2021-11-01 00:00:00'); /* Candrus Steady-Hand */
/* @teleloc 0x462D0032 [148.356003 32.723801 4.005000] 0.229106 0.000000 0.000000 0.973401 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7462D050, 800001, 0x462D001C, 86.0504, 81.8443, 68.055, 0.640131, 0, 0, -0.768266, False, '2022-05-30 09:51:57'); /* Lich Camp Generator */
/* @teleloc 0x462D001C [86.050400 81.844299 68.055000] 0.640131 0.000000 0.000000 -0.768266 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7462D051, 800001, 0x462D001C, 77.0623, 82.5432, 68.055, 0.711884, 0, 0, -0.702297, False, '2022-05-30 09:52:00'); /* Lich Camp Generator */
/* @teleloc 0x462D001C [77.062302 82.543198 68.055000] 0.711884 0.000000 0.000000 -0.702297 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7462D052, 800001, 0x462D001C, 78.7557, 92.1925, 68.055, 0.988224, 0, 0, -0.153015, False, '2022-05-30 09:52:02'); /* Lich Camp Generator */
/* @teleloc 0x462D001C [78.755699 92.192497 68.055000] 0.988224 0.000000 0.000000 -0.153015 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7462D053, 800001, 0x462D001C, 87.7987, 92.146, 68.055, 0.715686, 0, 0, 0.698423, False, '2022-05-30 09:52:23'); /* Lich Camp Generator */
/* @teleloc 0x462D001C [87.798698 92.146004 68.055000] 0.715686 0.000000 0.000000 0.698423 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7462D054, 800014, 0x462D001C, 82.0377, 86.982, 68, -0.029346, 0, 0, -0.999569, False, '2022-05-30 13:53:06'); /* Strange Pocket Chest */
/* @teleloc 0x462D001C [82.037697 86.982002 68.000000] -0.029346 0.000000 0.000000 -0.999569 */
