DELETE FROM `landblock_instance` WHERE `landblock` = 0xF923;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923000,  7123, 0xF9230000, 108.036, 93.3913, 22.0082, 0.622686, 0, 0, 0.782471,  True, '2005-02-09 10:00:00'); /* Dark Leech */
/* @teleloc 0xF9230000 [108.036003 93.391296 22.008200] 0.622686 0.000000 0.000000 0.782471 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923002,  7123, 0xF9230000, 58.9206, 93.5005, 22.0082, 0.417726, 0, 0, -0.908573,  True, '2005-02-09 10:00:00'); /* Dark Leech */
/* @teleloc 0xF9230000 [58.920601 93.500504 22.008200] 0.417726 0.000000 0.000000 -0.908573 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923003,  7123, 0xF9230000, 62.223, 147.073, 22.0082, -0.744436, 0, 0, -0.667694,  True, '2005-02-09 10:00:00'); /* Dark Leech */
/* @teleloc 0xF9230000 [62.223000 147.072998 22.008200] -0.744436 0.000000 0.000000 -0.667694 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923005,  7123, 0xF9230000, 107.546, 146.203, 22.0082, 0.999134, 0, 0, -0.041602,  True, '2005-02-09 10:00:00'); /* Dark Leech */
/* @teleloc 0xF9230000 [107.545998 146.203003 22.008200] 0.999134 0.000000 0.000000 -0.041602 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923006,  4219, 0xF9230000, 100.642, 164.688, 22.005, -0.99944, 0, 0, 0.033466, False, '2005-02-09 10:00:00'); /* Linkable Monster Generator ( 7 Min.) */
/* @teleloc 0xF9230000 [100.641998 164.688004 22.004999] -0.999440 0.000000 0.000000 0.033466 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7F923006, 0x7F923000, '2005-02-09 10:00:00') /* Dark Leech (7123) */
     , (0x7F923006, 0x7F923002, '2005-02-09 10:00:00') /* Dark Leech (7123) */
     , (0x7F923006, 0x7F923003, '2005-02-09 10:00:00') /* Dark Leech (7123) */
     , (0x7F923006, 0x7F923005, '2005-02-09 10:00:00') /* Dark Leech (7123) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923008, 800287, 0xF9230025, 103.227, 96.932, 22.055, 0.685891, 0, 0, 0.727705, False, '2022-07-03 14:35:21'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230025 [103.226997 96.931999 22.055000] 0.685891 0.000000 0.000000 0.727705 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F92300A, 800287, 0xF923001C, 88.9599, 95.8155, 22.055, 0.720441, 0, 0, 0.693517, False, '2022-07-03 14:35:22'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF923001C [88.959900 95.815498 22.055000] 0.720441 0.000000 0.000000 0.693517 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F92300C, 800287, 0xF9230015, 69.1112, 96.0543, 22.055, 0.784357, 0, 0, 0.62031, False, '2022-07-03 14:35:24'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230015 [69.111198 96.054298 22.055000] 0.784357 0.000000 0.000000 0.620310 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F92300D, 800287, 0xF9230015, 61.102, 102.826, 22.055, 0.999943, 0, 0, -0.0107202, False, '2022-07-03 14:35:25'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230015 [61.102001 102.825996 22.055000] 0.999943 0.000000 0.000000 -0.010720 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F92300F, 800287, 0xF9230016, 65.5004, 120.602, 22.055, 0.98484, 0, 0, 0.173466, False, '2022-07-03 14:35:30'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230016 [65.500397 120.601997 22.055000] 0.984840 0.000000 0.000000 0.173466 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923011, 800287, 0xF9230016, 62.6091, 140.865, 22.055, 0.999173, 0, 0, 0.0406579, False, '2022-07-03 14:35:32'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230016 [62.609100 140.865005 22.055000] 0.999173 0.000000 0.000000 0.040658 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923013, 800287, 0xF923001F, 72.0078, 146.86, 22.055, 0.706886, 0, 0, -0.707328, False, '2022-07-03 14:35:33'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF923001F [72.007797 146.860001 22.055000] 0.706886 0.000000 0.000000 -0.707328 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923014, 800287, 0xF923001F, 84.0991, 146.853, 22.055, 0.706886, 0, 0, -0.707328, False, '2022-07-03 14:35:34'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF923001F [84.099098 146.852997 22.055000] 0.706886 0.000000 0.000000 -0.707328 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923015, 800287, 0xF923001F, 84.0991, 146.853, 22.055, 0.706886, 0, 0, -0.707328, False, '2022-07-03 14:35:34'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF923001F [84.099098 146.852997 22.055000] 0.706886 0.000000 0.000000 -0.707328 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923016, 800287, 0xF9230027, 100.371, 146.045, 22.055, 0.484311, 0, 0, -0.874896, False, '2022-07-03 14:35:35'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230027 [100.371002 146.044998 22.055000] 0.484311 0.000000 0.000000 -0.874896 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923018, 800287, 0xF9230026, 106.735, 134.256, 22.055, -0.0655522, 0, 0, -0.997849, False, '2022-07-03 14:35:36'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230026 [106.735001 134.255997 22.055000] -0.065552 0.000000 0.000000 -0.997849 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F92301A, 800287, 0xF9230025, 105.859, 118.193, 22.055, -0.0655522, 0, 0, -0.997849, False, '2022-07-03 14:35:37'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230025 [105.859001 118.193001 22.055000] -0.065552 0.000000 0.000000 -0.997849 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F92301C, 800287, 0xF9230025, 105.6, 102.272, 22.055, 0.0316166, 0, 0, -0.9995, False, '2022-07-03 14:35:39'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230025 [105.599998 102.272003 22.055000] 0.031617 0.000000 0.000000 -0.999500 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F92301E, 800287, 0xF9230025, 99.6985, 105.595, 22.055, -0.758326, 0, 0, -0.651875, False, '2022-07-03 14:35:42'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230025 [99.698502 105.595001 22.055000] -0.758326 0.000000 0.000000 -0.651875 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F92301F, 800287, 0xF923001D, 90.854, 106.684, 22.055, -0.646324, 0, 0, -0.763063, False, '2022-07-03 14:35:43'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF923001D [90.853996 106.683998 22.055000] -0.646324 0.000000 0.000000 -0.763063 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923021, 800287, 0xF9230015, 71.4172, 106.621, 22.055, -0.818021, 0, 0, -0.575188, False, '2022-07-03 14:35:44'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230015 [71.417198 106.621002 22.055000] -0.818021 0.000000 0.000000 -0.575188 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923022, 800287, 0xF9230015, 71.4172, 106.621, 22.055, -0.818021, 0, 0, -0.575188, False, '2022-07-03 14:35:45'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230015 [71.417198 106.621002 22.055000] -0.818021 0.000000 0.000000 -0.575188 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923023, 800287, 0xF923001D, 72.1772, 114.698, 22.055, -0.652119, 0, 0, 0.758116, False, '2022-07-03 14:35:46'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF923001D [72.177200 114.697998 22.055000] -0.652119 0.000000 0.000000 0.758116 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923025, 800287, 0xF923001D, 81.1363, 115.101, 22.055, -0.696953, 0, 0, 0.717117, False, '2022-07-03 14:35:46'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF923001D [81.136299 115.100998 22.055000] -0.696953 0.000000 0.000000 0.717117 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923026, 800287, 0xF923001D, 81.1363, 115.101, 22.055, -0.696953, 0, 0, 0.717117, False, '2022-07-03 14:35:47'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF923001D [81.136299 115.100998 22.055000] -0.696953 0.000000 0.000000 0.717117 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923028, 800287, 0xF9230025, 96.4152, 114.665, 22.055, -0.696953, 0, 0, 0.717117, False, '2022-07-03 14:35:48'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230025 [96.415199 114.665001 22.055000] -0.696953 0.000000 0.000000 0.717117 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F92302A, 800287, 0xF9230026, 101.325, 122.148, 22.055, -0.859884, 0, 0, -0.51049, False, '2022-07-03 14:35:50'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230026 [101.324997 122.148003 22.055000] -0.859884 0.000000 0.000000 -0.510490 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F92302C, 800287, 0xF923001E, 92.4589, 125.06, 22.055, -0.827297, 0, 0, -0.561765, False, '2022-07-03 14:35:51'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF923001E [92.458900 125.059998 22.055000] -0.827297 0.000000 0.000000 -0.561765 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F92302E, 800287, 0xF923001E, 81.0684, 127.28, 22.055, -0.640207, 0, 0, -0.768202, False, '2022-07-03 14:35:52'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF923001E [81.068398 127.279999 22.055000] -0.640207 0.000000 0.000000 -0.768202 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F92302F, 800287, 0xF923001E, 81.0684, 127.28, 22.055, -0.640207, 0, 0, -0.768202, False, '2022-07-03 14:35:52'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF923001E [81.068398 127.279999 22.055000] -0.640207 0.000000 0.000000 -0.768202 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923031, 800287, 0xF9230016, 68.2842, 126.084, 22.055, -0.736882, 0, 0, -0.676021, False, '2022-07-03 14:35:53'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230016 [68.284203 126.084000 22.055000] -0.736882 0.000000 0.000000 -0.676021 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923032, 800287, 0xF9230016, 67.1159, 133.465, 22.055, -0.990656, 0, 0, 0.136387, False, '2022-07-03 14:35:54'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF9230016 [67.115898 133.464996 22.055000] -0.990656 0.000000 0.000000 0.136387 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923034, 800287, 0xF923001E, 75.8237, 134.28, 22.055, -0.810551, 0, 0, 0.585667, False, '2022-07-03 14:35:55'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF923001E [75.823700 134.279999 22.055000] -0.810551 0.000000 0.000000 0.585667 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923036, 800287, 0xF923001E, 86.6657, 136.672, 22.055, -0.716841, 0, 0, 0.697236, False, '2022-07-03 14:35:56'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF923001E [86.665703 136.671997 22.055000] -0.716841 0.000000 0.000000 0.697236 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F923038, 800287, 0xF923001E, 93.0349, 137.876, 22.055, -0.655008, 0, 0, 0.755622, False, '2022-07-03 14:35:57'); /* Tiercian Sclavus Gen 30 Sec */
/* @teleloc 0xF923001E [93.034897 137.876007 22.055000] -0.655008 0.000000 0.000000 0.755622 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F92303B, 800351, 0xF923001B, 84.0974, 52.7887, 21.4622, 0.999233, 0, 0, -0.039166, False, '2022-07-13 20:32:39'); /* Sclavus Commander Gen 15 Min */
/* @teleloc 0xF923001B [84.097397 52.788700 21.462200] 0.999233 0.000000 0.000000 -0.039166 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F92303C, 802135, 0xF9230020, 87.80324, 186.7894, 18.873434, -0.96598375, 0, 0, -0.2586027, False, '2023-02-28 05:51:16');
/* @teleloc 0xF9230020 [87.803238 186.789398 18.873434] -0.965984 0.000000 0.000000 -0.258603 */
