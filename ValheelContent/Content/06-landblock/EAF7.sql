DELETE FROM `landblock_instance` WHERE `landblock` = 0xEAF7;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7EAF7000, 300179, 0xEAF70008, 20.135, 170.743, 2.055, -0.995401, 0, 0, -0.095792, False, '2023-06-19 05:34:01'); /* test building 2 */
/* @teleloc 0xEAF70008 [20.135000 170.742996 2.055000] -0.995401 0.000000 0.000000 -0.095792 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7EAF7001, 802630, 0xEAF70008, 20.13419, 170.15369, 0.07409875, 0.6739522, 0, 0, 0.73877496, False, '2023-06-19 05:40:21');
/* @teleloc 0xEAF70008 [20.134190 170.153687 0.074099] 0.673952 0.000000 0.000000 0.738775 */
