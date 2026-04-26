DELETE FROM `landblock_instance` WHERE `landblock` = 0x2B11;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11007,  1969, 0x2B110000, 122.498, 40.0265, 22.5783, -0.995546, 0, 0, 0.094276, False, '2005-02-09 10:00:00'); /* High Direlands Desert Undead Generator */
/* @teleloc 0x2B110000 [122.498001 40.026501 22.578300] -0.995546 0.000000 0.000000 0.094276 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1100E,  3953, 0x2B110000, 94.6229, 188.383, 48.005, -0.618458, 0, 0, 0.785818, False, '2005-02-09 10:00:00'); /* Linkable Monster Gen (30 min.) */
/* @teleloc 0x2B110000 [94.622902 188.382996 48.005001] -0.618458 0.000000 0.000000 0.785818 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x72B1100E, 0x72B11023, '2005-02-09 10:00:00') /* Sentry (24578) */
     , (0x72B1100E, 0x72B11024, '2005-02-09 10:00:00') /* Sentry (24578) */
     , (0x72B1100E, 0x72B11025, '2005-02-09 10:00:00') /* Ulna bint-Fasha the Ivory Crafter (24575) */
     , (0x72B1100E, 0x72B11027, '2005-02-09 10:00:00') /* Yukara Miko the Collector (24573) */
     , (0x72B1100E, 0x72B1102C, '2005-02-09 10:00:00') /* Sentry (24874) */
     , (0x72B1100E, 0x72B1102D, '2005-02-09 10:00:00') /* Sentry (24874) */
     , (0x72B1100E, 0x72B11041, '2005-02-09 10:00:00') /* Finn Skigg (27948) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1100F,   722, 0x2B110000, 45.05, 155, 48, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x2B110000 [45.049999 155.000000 48.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11010,   721, 0x2B110000, 45.05, 157, 48, -0.707107, 0, 0, 0.707107, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x2B110000 [45.049999 157.000000 48.000000] -0.707107 0.000000 0.000000 0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11011,   412, 0x2B110000, 162.074, 172.273, 48, 0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x2B110000 [162.074005 172.272995 48.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11012,   412, 0x2B110000, 159.749, 167.136, 48, -4.37114E-08, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x2B110000 [159.748993 167.136002 48.000000] -0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11013,   720, 0x2B110000, 61.398, 125.588, 48, -1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Sliding Door */
/* @teleloc 0x2B110000 [61.397999 125.587997 48.000000] -1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11014,  7925, 0x2B110000, 122.728, 120.727, 48.005, -0.999999, 0, 0, 0.00162973, False, '2005-02-09 10:00:00'); /* Linkable Monster Generator ( 10 Min.) */
/* @teleloc 0x2B110000 [122.727997 120.726997 48.005001] -0.999999 0.000000 0.000000 0.001630 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x72B11014, 0x72B11015, '2005-02-09 10:00:00') /* Auroch Bull (20) */
     , (0x72B11014, 0x72B11016, '2005-02-09 10:00:00') /* Auroch Cow (181) */
     , (0x72B11014, 0x72B11017, '2005-02-09 10:00:00') /* Auroch Cow (181) */
     , (0x72B11014, 0x72B11018, '2005-02-09 10:00:00') /* Auroch Cow (181) */
     , (0x72B11014, 0x72B11019, '2005-02-09 10:00:00') /* Auroch Yearling (182) */
     , (0x72B11014, 0x72B1101A, '2005-02-09 10:00:00') /* Auroch Yearling (182) */
     , (0x72B11014, 0x72B1101B, '2005-02-09 10:00:00') /* Auroch Yearling (182) */
     , (0x72B11014, 0x72B1101C, '2005-02-09 10:00:00') /* Auroch Yearling (182) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11015,    20, 0x2B110000, 132.598, 123.87, 48.0093, 0.389755, 0, 0, -0.920919,  True, '2005-02-09 10:00:00'); /* Auroch Bull */
/* @teleloc 0x2B110000 [132.598007 123.870003 48.009300] 0.389755 0.000000 0.000000 -0.920919 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11016,   181, 0x2B110000, 122.314, 107.646, 48.0085, -0.999967, 0, 0, -0.00811607,  True, '2005-02-09 10:00:00'); /* Auroch Cow */
/* @teleloc 0x2B110000 [122.314003 107.646004 48.008499] -0.999967 0.000000 0.000000 -0.008116 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11017,   181, 0x2B110000, 126.895, 119.575, 48.0085, 0.988973, 0, 0, -0.148098,  True, '2005-02-09 10:00:00'); /* Auroch Cow */
/* @teleloc 0x2B110000 [126.894997 119.574997 48.008499] 0.988973 0.000000 0.000000 -0.148098 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11018,   181, 0x2B110000, 112.335, 127.569, 48.0085, 0.55778, 0, 0, -0.829989,  True, '2005-02-09 10:00:00'); /* Auroch Cow */
/* @teleloc 0x2B110000 [112.334999 127.569000 48.008499] 0.557780 0.000000 0.000000 -0.829989 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11019,   182, 0x2B110000, 110.478, 124.266, 48.0076, 0.39533, 0, 0, -0.918539,  True, '2005-02-09 10:00:00'); /* Auroch Yearling */
/* @teleloc 0x2B110000 [110.477997 124.265999 48.007599] 0.395330 0.000000 0.000000 -0.918539 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1101A,   182, 0x2B110000, 125.614, 111.849, 48.0076, 0.523866, 0, 0, -0.851801,  True, '2005-02-09 10:00:00'); /* Auroch Yearling */
/* @teleloc 0x2B110000 [125.613998 111.848999 48.007599] 0.523866 0.000000 0.000000 -0.851801 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1101B,   182, 0x2B110000, 123.612, 118.382, 48.0076, -0.870064, 0, 0, -0.492938,  True, '2005-02-09 10:00:00'); /* Auroch Yearling */
/* @teleloc 0x2B110000 [123.612000 118.382004 48.007599] -0.870064 0.000000 0.000000 -0.492938 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1101C,   182, 0x2B110000, 125.903, 125.894, 48.0076, 0.995278, 0, 0, -0.0970658,  True, '2005-02-09 10:00:00'); /* Auroch Yearling */
/* @teleloc 0x2B110000 [125.903000 125.893997 48.007599] 0.995278 0.000000 0.000000 -0.097066 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1101F, 24592, 0x2B11012C, 52.308, 132.072, 48.005, 0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Tyokai Renjiro the Grocer */
/* @teleloc 0x2B11012C [52.307999 132.072006 48.005001] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11020, 24584, 0x2B110000, 58.5404, 130.362, 48.005, -0.382683, 0, 0, -0.92388, False, '2005-02-09 10:00:00'); /* Sangi's Goods */
/* @teleloc 0x2B110000 [58.540401 130.362000 48.005001] -0.382683 0.000000 0.000000 -0.923880 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11021, 24586, 0x2B110000, 47.322, 159.913, 48.005, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* The Ravenous Mattekar Tavern */
/* @teleloc 0x2B110000 [47.321999 159.912994 48.005001] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11022, 24590, 0x2B110112, 31.0567, 149.394, 48.008, -0.894067, 0, 0, 0.447934, False, '2005-02-09 10:00:00'); /* Odvik the Inn Keeper */
/* @teleloc 0x2B110112 [31.056700 149.393997 48.007999] -0.894067 0.000000 0.000000 0.447934 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11023, 24578, 0x2B110000, 181.668, 179.74, 63.805, 0.726196, 0, 0, -0.687488,  True, '2005-02-09 10:00:00'); /* Sentry */
/* @teleloc 0x2B110000 [181.667999 179.740005 63.805000] 0.726196 0.000000 0.000000 -0.687488 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11024, 24578, 0x2B110000, 107.415, 106.009, 63.81, 0.0293549, 0, 0, -0.999569,  True, '2005-02-09 10:00:00'); /* Sentry */
/* @teleloc 0x2B110000 [107.415001 106.009003 63.810001] 0.029355 0.000000 0.000000 -0.999569 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11025, 24575, 0x2B110121, 162.059, 163.467, 47.205, 0.273224, 0, 0, -0.96195,  True, '2005-02-09 10:00:00'); /* Ulna bint-Fasha the Ivory Crafter */
/* @teleloc 0x2B110121 [162.059006 163.466995 47.205002] 0.273224 0.000000 0.000000 -0.961950 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11026,   143, 0x2B11011C, 164.901, 175.331, 47.205, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Chest */
/* @teleloc 0x2B11011C [164.901001 175.330994 47.205002] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11027, 24573, 0x2B110112, 39.9615, 163.457, 48.005, 0.119344, 0, 0, -0.992853,  True, '2005-02-09 10:00:00'); /* Yukara Miko the Collector */
/* @teleloc 0x2B110112 [39.961498 163.457001 48.005001] 0.119344 0.000000 0.000000 -0.992853 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11029, 24587, 0x2B110000, 187.016, 111.102, 48, -0.556267, 0, 0, -0.831004, False, '2005-02-09 10:00:00'); /* Candeth Keep */
/* @teleloc 0x2B110000 [187.016006 111.101997 48.000000] -0.556267 0.000000 0.000000 -0.831004 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1102A, 24571, 0x2B110000, 179.755, 108.735, 48.5534, 0.382683, 0, 0, -0.92388, False, '2005-02-09 10:00:00'); /* Portcullis */
/* @teleloc 0x2B110000 [179.755005 108.735001 48.553398] 0.382683 0.000000 0.000000 -0.923880 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1102C, 24874, 0x2B110000, 187.528, 135.193, 51.974, 0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Sentry */
/* @teleloc 0x2B110000 [187.528000 135.192993 51.973999] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1102D, 24874, 0x2B110000, 152.344, 100.784, 51.945, -4.37114E-08, 0, 0, -1,  True, '2005-02-09 10:00:00'); /* Sentry */
/* @teleloc 0x2B110000 [152.343994 100.783997 51.945000] -0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1102E,   143, 0x2B110127, 50.3953, 121.897, 52.405, -4.37114E-08, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Chest */
/* @teleloc 0x2B110127 [50.395302 121.897003 52.404999] -0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1102F,   143, 0x2B110127, 52.1341, 121.897, 52.405, -4.37114E-08, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Chest */
/* @teleloc 0x2B110127 [52.134102 121.897003 52.404999] -0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11030, 19443, 0x2B110121, 157.251, 165.5, 49.4791, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Auroch Skull */
/* @teleloc 0x2B110121 [157.251007 165.500000 49.479099] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11031, 19443, 0x2B110121, 159.141, 162.49, 48.13, 0.524222, 0, 0, -0.851582, False, '2005-02-09 10:00:00'); /* Auroch Skull */
/* @teleloc 0x2B110121 [159.141006 162.490005 48.130001] 0.524222 0.000000 0.000000 -0.851582 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11032, 24876, 0x2B110000, 161.279, 168.233, 48.005, 0.473651, 0, 0, -0.880713, False, '2005-02-09 10:00:00'); /* House of Bones */
/* @teleloc 0x2B110000 [161.279007 168.233002 48.005001] 0.473651 0.000000 0.000000 -0.880713 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11033,   153, 0x2B110000, 138.286, 147.611, 48.005, -4.37114E-08, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Fountain */
/* @teleloc 0x2B110000 [138.285995 147.610992 48.005001] -0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1103E,  8377, 0x2B110112, 37.37, 155.581, 48.505, 0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Beer Keg */
/* @teleloc 0x2B110112 [37.369999 155.580994 48.505001] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1103F,  8377, 0x2B110112, 37.4016, 156.663, 48.505, 0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Beer Keg */
/* @teleloc 0x2B110112 [37.401600 156.662994 48.505001] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11041, 27948, 0x2B110127, 55.9915, 124.656, 52.405, -0.845237, 0, 0, -0.534391,  True, '2005-02-09 10:00:00'); /* Finn Skigg */
/* @teleloc 0x2B110127 [55.991501 124.655998 52.404999] -0.845237 0.000000 0.000000 -0.534391 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1104C, 42852, 0x2B110027, 114.677, 160.92, 48.198, 0.0575734, 0, 0, -0.998341, False, '2020-06-12 04:19:15'); /* Portal to Town Network */
/* @teleloc 0x2B110027 [114.677002 160.919998 48.198002] 0.057573 0.000000 0.000000 -0.998341 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1104D, 43410, 0x2B11011C, 165.653, 173.53, 47.205, -0.3413, 0, 0, -0.939954, False, '2020-06-12 04:19:15'); /* Morathe */
/* @teleloc 0x2B11011C [165.653000 173.529999 47.205002] -0.341300 0.000000 0.000000 -0.939954 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11051, 36535, 0x2B11000D, 44.5181, 117.82, 65.8726, 0.0128755, 0, 0, 0.999917, False, '2020-05-15 05:31:42'); /* Guard Alfric */
/* @teleloc 0x2B11000D [44.518101 117.820000 65.872597] 0.012876 0.000000 0.000000 0.999917 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11052, 34726, 0x2B110016, 48.9044, 136.333, 48.055, 0.411724, 0, 0, 0.911309, False, '2020-05-14 18:07:22'); /* Garbage Barrel */
/* @teleloc 0x2B110016 [48.904400 136.332993 48.055000] 0.411724 0.000000 0.000000 0.911309 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11053, 31644, 0x2B110117, 39.6752, 158.577, 53.605, 0.692273, 0, 0, -0.721636, False, '2022-06-07 13:23:05'); /* Grania the Bold */
/* @teleloc 0x2B110117 [39.675201 158.576996 53.605000] 0.692273 0.000000 0.000000 -0.721636 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11054, 24576, 0x2B110104, 93.8327, 126.091, 48.0065, -0.699896, 0, 0, -0.714245, False, '2022-06-07 13:23:45'); /* Aun Xathurea the Leather Crafter */
/* @teleloc 0x2B110104 [93.832703 126.091003 48.006500] -0.699896 0.000000 0.000000 -0.714245 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11055, 5000998, 0x2B110121, 157.568, 163.803, 47.205, 0.932357, 0, 0, -0.361539, False, '2022-06-07 13:24:22'); /* Morgan Hawkins */
/* @teleloc 0x2B110121 [157.567993 163.802994 47.205002] 0.932357 0.000000 0.000000 -0.361539 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11056, 800078, 0x2B110020, 88.5087, 183.447, 48.055, 0.612678, 0, 0, 0.790333, False, '2022-06-07 13:27:42'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110020 [88.508698 183.447006 48.055000] 0.612678 0.000000 0.000000 0.790333 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11057, 800078, 0x2B110020, 88.5087, 183.447, 48.055, 0.207916, 0, 0, 0.978147, False, '2022-06-07 13:27:43'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110020 [88.508698 183.447006 48.055000] 0.207916 0.000000 0.000000 0.978147 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11058, 800078, 0x2B110028, 96.0377, 176.137, 48.055, -0.765114, 0, 0, 0.643895, False, '2022-06-07 13:27:45'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110028 [96.037697 176.136993 48.055000] -0.765114 0.000000 0.000000 0.643895 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11059, 800078, 0x2B110028, 110.763, 177.642, 48.055, -0.659503, 0, 0, 0.751702, False, '2022-06-07 13:27:46'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110028 [110.763000 177.641998 48.055000] -0.659503 0.000000 0.000000 0.751702 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1105A, 800078, 0x2B110018, 68.9409, 191.169, 48.055, 0.134563, 0, 0, -0.990905, False, '2022-06-07 13:27:53'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110018 [68.940903 191.169006 48.055000] 0.134563 0.000000 0.000000 -0.990905 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1105B, 800078, 0x2B110018, 70.7402, 174.886, 48.055, -0.0741205, 0, 0, -0.997249, False, '2022-06-07 13:27:54'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110018 [70.740196 174.886002 48.055000] -0.074120 0.000000 0.000000 -0.997249 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1105C, 800078, 0x2B11001F, 79.5907, 165.61, 48.055, 0.505579, 0, 0, -0.86278, False, '2022-06-07 13:27:55'); /* Slave of Carnage Generator */
/* @teleloc 0x2B11001F [79.590698 165.610001 48.055000] 0.505579 0.000000 0.000000 -0.862780 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1105D, 800078, 0x2B11001F, 86.782, 155.318, 48.055, 0.270981, 0, 0, -0.962585, False, '2022-06-07 13:27:56'); /* Slave of Carnage Generator */
/* @teleloc 0x2B11001F [86.781998 155.317993 48.055000] 0.270981 0.000000 0.000000 -0.962585 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1105E, 800078, 0x2B110027, 96.2805, 150.449, 48.055, 0.682248, 0, 0, -0.73112, False, '2022-06-07 13:27:57'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110027 [96.280502 150.449005 48.055000] 0.682248 0.000000 0.000000 -0.731120 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1105F, 800078, 0x2B110027, 106.395, 150.729, 48.055, 0.868889, 0, 0, -0.495006, False, '2022-06-07 13:27:58'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110027 [106.394997 150.729004 48.055000] 0.868889 0.000000 0.000000 -0.495006 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11060, 800078, 0x2B11002F, 120.027, 155.149, 48.055, 0.715482, 0, 0, -0.698631, False, '2022-06-07 13:27:59'); /* Slave of Carnage Generator */
/* @teleloc 0x2B11002F [120.027000 155.149002 48.055000] 0.715482 0.000000 0.000000 -0.698631 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11061, 800078, 0x2B11002F, 127.426, 156.622, 48.055, 0.911088, 0, 0, -0.412213, False, '2022-06-07 13:28:00'); /* Slave of Carnage Generator */
/* @teleloc 0x2B11002F [127.426003 156.621994 48.055000] 0.911088 0.000000 0.000000 -0.412213 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11062, 800078, 0x2B110030, 136.158, 168.463, 48.055, 0.999978, 0, 0, -0.00656059, False, '2022-06-07 13:28:00'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110030 [136.158005 168.462997 48.055000] 0.999978 0.000000 0.000000 -0.006561 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11063, 800078, 0x2B110030, 135.864, 174.157, 48.055, 0.983958, 0, 0, 0.1784, False, '2022-06-07 13:28:01'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110030 [135.863998 174.156998 48.055000] 0.983958 0.000000 0.000000 0.178400 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11064, 800078, 0x2B110030, 133.071, 183.788, 48.055, 0.996139, 0, 0, -0.0877877, False, '2022-06-07 13:28:02'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110030 [133.070999 183.787994 48.055000] 0.996139 0.000000 0.000000 -0.087788 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11065, 800078, 0x2B110018, 48.2365, 187.702, 48.055, -0.38762, 0, 0, 0.921819, False, '2022-06-07 13:28:16'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110018 [48.236500 187.701996 48.055000] -0.387620 0.000000 0.000000 0.921819 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11066, 800078, 0x2B110018, 51.4148, 179.669, 48.055, 0.193348, 0, 0, 0.98113, False, '2022-06-07 13:28:16'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110018 [51.414799 179.669006 48.055000] 0.193348 0.000000 0.000000 0.981130 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11067, 800078, 0x2B110017, 55.7437, 167.857, 48.055, -0.430032, 0, 0, 0.902814, False, '2022-06-07 13:28:17'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110017 [55.743698 167.856995 48.055000] -0.430032 0.000000 0.000000 0.902814 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11068, 800078, 0x2B110017, 60.2283, 162.325, 48.055, -0.0726231, 0, 0, 0.997359, False, '2022-06-07 13:28:18'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110017 [60.228298 162.324997 48.055000] -0.072623 0.000000 0.000000 0.997359 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11069, 800078, 0x2B110017, 63.3136, 146.859, 48.055, -0.34437, 0, 0, 0.938834, False, '2022-06-07 13:28:19'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110017 [63.313599 146.858994 48.055000] -0.344370 0.000000 0.000000 0.938834 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1106A, 800078, 0x2B11001E, 72.2544, 137.71, 48.055, -0.598853, 0, 0, 0.800859, False, '2022-06-07 13:28:20'); /* Slave of Carnage Generator */
/* @teleloc 0x2B11001E [72.254402 137.710007 48.055000] -0.598853 0.000000 0.000000 0.800859 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1106B, 800078, 0x2B11001E, 80.3313, 129.5, 48.055, 0.13605, 0, 0, 0.990702, False, '2022-06-07 13:28:21'); /* Slave of Carnage Generator */
/* @teleloc 0x2B11001E [80.331299 129.500000 48.055000] 0.136050 0.000000 0.000000 0.990702 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1106C, 800078, 0x2B11001D, 86.5249, 116.452, 48.055, -0.744382, 0, 0, 0.667754, False, '2022-06-07 13:28:23'); /* Slave of Carnage Generator */
/* @teleloc 0x2B11001D [86.524902 116.452003 48.055000] -0.744382 0.000000 0.000000 0.667754 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1106D, 800078, 0x2B110025, 99.8926, 116.481, 48.055, -0.653189, 0, 0, 0.757195, False, '2022-06-07 13:28:23'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110025 [99.892601 116.481003 48.055000] -0.653189 0.000000 0.000000 0.757195 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1106E, 800078, 0x2B11001E, 86.9453, 136.822, 48.055, 0.766848, 0, 0, -0.641829, False, '2022-06-07 13:28:29'); /* Slave of Carnage Generator */
/* @teleloc 0x2B11001E [86.945297 136.822006 48.055000] 0.766848 0.000000 0.000000 -0.641829 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1106F, 800078, 0x2B11002E, 137.746, 133.415, 48.055, 0.661528, 0, 0, -0.74992, False, '2022-06-07 13:28:33'); /* Slave of Carnage Generator */
/* @teleloc 0x2B11002E [137.746002 133.414993 48.055000] 0.661528 0.000000 0.000000 -0.749920 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11070, 800078, 0x2B110036, 150.496, 122.219, 48.055, 0.255199, 0, 0, -0.966888, False, '2022-06-07 13:28:34'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110036 [150.496002 122.219002 48.055000] 0.255199 0.000000 0.000000 -0.966888 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11071, 800078, 0x2B110036, 158.455, 120.063, 48.055, 0.872275, 0, 0, -0.489015, False, '2022-06-07 13:28:35'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110036 [158.455002 120.063004 48.055000] 0.872275 0.000000 0.000000 -0.489015 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11072, 800078, 0x2B110036, 156.001, 131.684, 48.055, 0.888495, 0, 0, 0.458887, False, '2022-06-07 13:28:36'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110036 [156.001007 131.684006 48.055000] 0.888495 0.000000 0.000000 0.458887 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11073, 800078, 0x2B110037, 155.808, 144.108, 48.055, 0.986849, 0, 0, -0.161647, False, '2022-06-07 13:28:37'); /* Slave of Carnage Generator */
/* @teleloc 0x2B110037 [155.807999 144.108002 48.055000] 0.986849 0.000000 0.000000 -0.161647 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11074, 800078, 0x2B11003F, 168.151, 151.23, 48.055, 0.795841, 0, 0, -0.605505, False, '2022-06-07 13:28:38'); /* Slave of Carnage Generator */
/* @teleloc 0x2B11003F [168.151001 151.229996 48.055000] 0.795841 0.000000 0.000000 -0.605505 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11075, 800078, 0x2B11003E, 177.646, 143.688, 48.055, 0.266417, 0, 0, -0.963858, False, '2022-06-07 13:28:39'); /* Slave of Carnage Generator */
/* @teleloc 0x2B11003E [177.645996 143.688004 48.055000] 0.266417 0.000000 0.000000 -0.963858 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11076, 52272, 0x2B11003D, 180.28, 105.481, 48.005, -0.142506, 0, 0, -0.989794, False, '2022-06-07 13:29:12'); /* Royal Guard */
/* @teleloc 0x2B11003D [180.279999 105.481003 48.005001] -0.142506 0.000000 0.000000 -0.989794 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11077, 52272, 0x2B11003D, 183.074, 108.398, 48.005, 0.739285, 0, 0, -0.673393, False, '2022-06-07 13:29:16'); /* Royal Guard */
/* @teleloc 0x2B11003D [183.074005 108.398003 48.005001] 0.739285 0.000000 0.000000 -0.673393 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11078, 52272, 0x2B11003D, 182.499, 106.044, 48.005, 0.384353, 0, 0, -0.923186, False, '2022-06-07 13:29:19'); /* Royal Guard */
/* @teleloc 0x2B11003D [182.498993 106.043999 48.005001] 0.384353 0.000000 0.000000 -0.923186 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B11079, 300113, 0x2B11003D, 179.892, 102.647, 48.005, -0.729707, 0, 0, 0.68376, False, '2022-06-11 14:07:30'); /* Candeth Guard Captain */
/* @teleloc 0x2B11003D [179.891998 102.647003 48.005001] -0.729707 0.000000 0.000000 0.683760 */
