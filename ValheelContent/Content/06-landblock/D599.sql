DELETE FROM `landblock_instance` WHERE `landblock` = 0xD599;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D599000,   412, 0xD599003E, 176.64, 140.776, 374.082, 0, 0, 0, -1, False, '2021-11-01 00:00:00'); /* Door */
/* @teleloc 0xD599003E [176.639999 140.776001 374.082001] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D599001,   412, 0xD5990037, 164.776, 159.36, 374.082, -0.707107, 0, 0, -0.707107, False, '2021-11-01 00:00:00'); /* Door */
/* @teleloc 0xD5990037 [164.776001 159.360001 374.082001] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D599003, 42818, 0xD5990117, 155.179, 130.693, 373.937, 0.92388, 0, 0, -0.382683, False, '2021-11-01 00:00:00'); /* Portal to Cragstone */
/* @teleloc 0xD5990117 [155.179001 130.692993 373.937012] 0.923880 0.000000 0.000000 -0.382683 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D599005,  5629, 0xD5990120, 174.892, 173.984, 384, -0.707107, 0, 0, -0.707107, False, '2021-11-01 00:00:00'); /* Door */
/* @teleloc 0xD5990120 [174.891998 173.983994 384.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D599006, 24516, 0xD599014C, 154.045, 174.304, 374, 0.059005, 0, 0, 0.998258, False, '2021-11-01 00:00:00'); /* Asheron's Sanctum */
/* @teleloc 0xD599014C [154.044998 174.304001 374.000000] 0.059005 0.000000 0.000000 0.998258 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D599039,  4453, 0xD5990040, 176.984, 190.118, 374, 0, 0, 0, -1, False, '2021-11-01 00:00:00'); /* Door */
/* @teleloc 0xD5990040 [176.983994 190.117996 374.000000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D59905B,  1154, 0xD599003F, 185.32, 166.015, 374.005, 0.188336, 0, 0, 0.982105, False, '2021-11-01 00:00:00'); /* Linkable Monster Generator */
/* @teleloc 0xD599003F [185.320007 166.014999 374.005005] 0.188336 0.000000 0.000000 0.982105 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7D59905B, 0x7D59905C, '2021-11-01 00:00:00') /* Emissary of Asheron (45770) */
     , (0x7D59905B, 0x7D59905D, '2021-11-01 00:00:00') /* Asheron (43183) */
     , (0x7D59905B, 0x7D59905E, '2021-11-01 00:00:00') /* Fianhe (43941) */
     , (0x7D59905B, 0x7D59905F, '2021-11-01 00:00:00') /* Ayaname Kina (37074) */
     , (0x7D59905B, 0x7D599060, '2021-11-01 00:00:00') /* Emissary of Asheron (37065) */
     , (0x7D59905B, 0x7D599061, '2021-11-01 00:00:00') /* Asheron's Servant (33546) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D59905C, 45770, 0xD599003F, 185.32, 166.015, 374.005, 0.188336, 0, 0, 0.982105,  True, '2021-11-01 00:00:00'); /* Emissary of Asheron */
/* @teleloc 0xD599003F [185.320007 166.014999 374.005005] 0.188336 0.000000 0.000000 0.982105 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D59905D, 43183, 0xD599003F, 187.968, 163.346, 373.985, -0.322083, 0, 0, -0.946711,  True, '2021-11-01 00:00:00'); /* Asheron */
/* @teleloc 0xD599003F [187.968002 163.345993 373.984985] -0.322083 0.000000 0.000000 -0.946711 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D59905E, 43941, 0xD599003F, 169.015, 146.73, 374.006, -0.020676, 0, 0, 0.999786,  True, '2021-11-01 00:00:00'); /* Fianhe */
/* @teleloc 0xD599003F [169.014999 146.729996 374.006012] -0.020676 0.000000 0.000000 0.999786 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D59905F, 37074, 0xD5990140, 161.001, 153.319, 382.364, 1, 0, 0, 0,  True, '2021-11-01 00:00:00'); /* Ayaname Kina */
/* @teleloc 0xD5990140 [161.001007 153.319000 382.364014] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D599060, 37065, 0xD599014C, 151, 185, 374.005, 0.382683, 0, 0, -0.92388,  True, '2021-11-01 00:00:00'); /* Emissary of Asheron */
/* @teleloc 0xD599014C [151.000000 185.000000 374.005005] 0.382683 0.000000 0.000000 -0.923880 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D599061, 33546, 0xD599014D, 149.281, 183.532, 383.807, -0.482454, 0, 0, 0.875921,  True, '2021-11-01 00:00:00'); /* Asheron's Servant */
/* @teleloc 0xD599014D [149.281006 183.531998 383.807007] -0.482454 0.000000 0.000000 0.875921 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D599063, 15759, 0xD5990148, 161.21, 174.295, 385.35, 0.201905, 0, 0, 0.979405, False, '2021-11-01 00:00:00'); /* Linkable Item Generator */
/* @teleloc 0xD5990148 [161.210007 174.294998 385.350006] 0.201905 0.000000 0.000000 0.979405 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7D599063, 0x7D599064, '2021-11-01 00:00:00') /* Mote and Crystals needed for the Golem Construction (35294) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D599064, 35294, 0xD5990148, 161.21, 174.295, 385.35, 0.201905, 0, 0, 0.979405,  True, '2021-11-01 00:00:00'); /* Mote and Crystals needed for the Golem Construction */
/* @teleloc 0xD5990148 [161.210007 174.294998 385.350006] 0.201905 0.000000 0.000000 0.979405 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D599065, 87026, 0xD5990040, 182.555, 190.844, 374.055, -0.738333, 0, 0, -0.674437, False, '2021-11-01 00:00:00'); /* ElysaThorsten Gen */
/* @teleloc 0xD5990040 [182.554993 190.843994 374.054993] -0.738333 0.000000 0.000000 -0.674437 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D599066, 87025, 0xD5990040, 186.956, 187.657, 374.005, -0.959899, 0, 0, -0.280346, False, '2021-11-01 00:00:00'); /* StrangeDeviceThree Watcher */
/* @teleloc 0xD5990040 [186.955994 187.656998 374.005005] -0.959899 0.000000 0.000000 -0.280346 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D5996A5,  1154, 0xD599011F, 177.159, 185.883, 384, 0.999986, 0, 0, -0.005295, False, '2021-11-01 00:00:00'); /* Linkable Monster Generator */
/* @teleloc 0xD599011F [177.158997 185.882996 384.000000] 0.999986 0.000000 0.000000 -0.005295 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7D5996A5, 0x7D5996A6, '2021-11-01 00:00:00') /* Exploration Marker (39801) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D5996A6, 39801, 0xD599011F, 177.159, 185.883, 384, 0.999986, 0, 0, -0.005295,  True, '2021-11-01 00:00:00'); /* Exploration Marker */
/* @teleloc 0xD599011F [177.158997 185.882996 384.000000] 0.999986 0.000000 0.000000 -0.005295 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D5996A7, 800187, 0xD599003F, 189.7, 162.259, 374.005, 0.453566, 0, 0, 0.891223, False, '2022-06-22 21:36:48'); /* Asheron's Weaponsmith */
/* @teleloc 0xD599003F [189.699997 162.259003 374.005005] 0.453566 0.000000 0.000000 0.891223 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D5996A8, 800494, 0xD599003F, 186.167, 164.549, 374.005, -0.212031, 0, 0, -0.977263, False, '2022-09-10 07:50:55'); /* Asheron's Royal Messenger */
/* @teleloc 0xD599003F [186.167007 164.548996 374.005005] -0.212031 0.000000 0.000000 -0.977263 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D5996A9, 804040, 0xD599003F, 179.9319, 153.5815, 374.015, 0.9969658, 0, 0, 0.07784066, False, '2025-12-28 12:29:56');
/* @teleloc 0xD599003F [179.931900 153.581497 374.015015] 0.996966 0.000000 0.000000 0.077841 */
