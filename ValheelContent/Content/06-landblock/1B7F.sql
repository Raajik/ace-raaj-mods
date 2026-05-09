DELETE FROM `landblock_instance` WHERE `landblock` = 0x1B7F;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B7F002,   265, 0x1B7F0000, 78.2002, 50.7235, 80.005, -0.9978, 0, 0, -0.066302,  True, '2021-11-01 00:00:00'); /* Meat */
/* @teleloc 0x1B7F0000 [78.200203 50.723499 80.004997] -0.997800 0.000000 0.000000 -0.066302 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B7F003,   265, 0x1B7F0000, 77.8531, 53.3243, 80.005, -0.9978, 0, 0, -0.066302,  True, '2021-11-01 00:00:00'); /* Meat */
/* @teleloc 0x1B7F0000 [77.853104 53.324299 80.004997] -0.997800 0.000000 0.000000 -0.066302 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B7F004,   265, 0x1B7F0000, 79.7612, 51.8843, 80.005, -0.44587, 0, 0, 0.895098,  True, '2021-11-01 00:00:00'); /* Meat */
/* @teleloc 0x1B7F0000 [79.761200 51.884300 80.004997] -0.445870 0.000000 0.000000 0.895098 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B7F005,   265, 0x1B7F0000, 70.4082, 44.014, 80.005, 0.223451, 0, 0, 0.974715,  True, '2021-11-01 00:00:00'); /* Meat */
/* @teleloc 0x1B7F0000 [70.408203 44.014000 80.004997] 0.223451 0.000000 0.000000 0.974715 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B7F006,   265, 0x1B7F0000, 65.7991, 41.282, 80.005, 0.023269, 0, 0, 0.999729,  True, '2021-11-01 00:00:00'); /* Meat */
/* @teleloc 0x1B7F0000 [65.799103 41.282001 80.004997] 0.023269 0.000000 0.000000 0.999729 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B7F007,   265, 0x1B7F0000, 70.8987, 40.454, 80.005, -0.996727, 0, 0, -0.080845,  True, '2021-11-01 00:00:00'); /* Meat */
/* @teleloc 0x1B7F0000 [70.898697 40.453999 80.004997] -0.996727 0.000000 0.000000 -0.080845 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B7F008,  1542, 0x1B7F0000, 70.5009, 42.8901, 80.005, -0.996727, 0, 0, -0.080845, False, '2021-11-01 00:00:00'); /* Linkable Item Generator */
/* @teleloc 0x1B7F0000 [70.500900 42.890099 80.004997] -0.996727 0.000000 0.000000 -0.080845 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x71B7F008, 0x71B7F002, '2021-11-01 00:00:00') /* Meat (265) */
     , (0x71B7F008, 0x71B7F003, '2021-11-01 00:00:00') /* Meat (265) */
     , (0x71B7F008, 0x71B7F004, '2021-11-01 00:00:00') /* Meat (265) */
     , (0x71B7F008, 0x71B7F005, '2021-11-01 00:00:00') /* Meat (265) */
     , (0x71B7F008, 0x71B7F006, '2021-11-01 00:00:00') /* Meat (265) */
     , (0x71B7F008, 0x71B7F007, '2021-11-01 00:00:00') /* Meat (265) */
     , (0x71B7F008, 0x71B7F01E, '2021-11-01 00:00:00') /* Meat (265) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B7F009,  1154, 0x1B7F0000, 72.7475, 43.2367, 80.005, -0.545285, 0, 0, 0.83825, False, '2021-11-01 00:00:00'); /* Linkable Monster Generator */
/* @teleloc 0x1B7F0000 [72.747498 43.236698 80.004997] -0.545285 0.000000 0.000000 0.838250 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B7F00A,  2492, 0x1B7F0000, 36, 125.5, 80.005, 1, 0, 0, 0, False, '2021-11-01 00:00:00'); /* Door */
/* @teleloc 0x1B7F0000 [36.000000 125.500000 80.004997] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B7F01E,   265, 0x1B7F0000, 17.0093, 89.674, 80.005, -0.966435, 0, 0, -0.256912,  True, '2021-11-01 00:00:00'); /* Meat */
/* @teleloc 0x1B7F0000 [17.009300 89.674004 80.004997] -0.966435 0.000000 0.000000 -0.256912 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B7F038,  3982, 0x1B7F0000, 12.3102, 128.466, 95.205, 0, 0, 0, -1, False, '2021-11-01 00:00:00'); /* Chest */
/* @teleloc 0x1B7F0000 [12.310200 128.466003 95.205002] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B7F041,  3969, 0x1B7F0000, 11.1371, 128.507, 95.205, 0, 0, 0, -1, False, '2021-11-01 00:00:00'); /* Chest */
/* @teleloc 0x1B7F0000 [11.137100 128.507004 95.205002] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B7F6A5,  1154, 0x1B7F0006, 9.53777, 134.996, 95.2, 0.727062, 0, 0, 0.686571, False, '2021-11-01 00:00:00'); /* Linkable Monster Generator */
/* @teleloc 0x1B7F0006 [9.537770 134.996002 95.199997] 0.727062 0.000000 0.000000 0.686571 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x71B7F6A5, 0x71B7F6A6, '2021-11-01 00:00:00') /* Exploration Marker (39753) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B7F6A6, 39753, 0x1B7F0006, 9.53777, 134.996, 95.2, 0.727062, 0, 0, 0.686571,  True, '2021-11-01 00:00:00'); /* Exploration Marker */
/* @teleloc 0x1B7F0006 [9.537770 134.996002 95.199997] 0.727062 0.000000 0.000000 0.686571 */
