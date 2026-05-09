DELETE FROM `landblock_instance` WHERE `landblock` = 0x2B12;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12007,  1969, 0x2B120000, 141.282, 147.129, 18.9954, -0.241699, 0, 0, -0.970351, False, '2005-02-09 10:00:00'); /* High Direlands Desert Undead Generator */
/* @teleloc 0x2B120000 [141.281998 147.128998 18.995399] -0.241699 0.000000 0.000000 -0.970351 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12008,  1969, 0x2B120000, 76.9607, 155.884, 27.2927, 0.00678479, 0, 0, -0.999977, False, '2005-02-09 10:00:00'); /* High Direlands Desert Undead Generator */
/* @teleloc 0x2B120000 [76.960701 155.884003 27.292700] 0.006785 0.000000 0.000000 -0.999977 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1200E,  3953, 0x2B120000, 94.8832, 2.64467, 48.005, 0.973847, 0, 0, 0.227203, False, '2005-02-09 10:00:00'); /* Linkable Monster Gen (30 min.) */
/* @teleloc 0x2B120000 [94.883202 2.644670 48.005001] 0.973847 0.000000 0.000000 0.227203 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x72B1200E, 0x72B12016, '2005-02-09 10:00:00') /* Pagrok the Stone Collector (24574) */
     , (0x72B1200E, 0x72B12017, '2005-02-09 10:00:00') /* Sentry (24578) */
     , (0x72B1200E, 0x72B12018, '2005-02-09 10:00:00') /* Sentry (24578) */
     , (0x72B1200E, 0x72B1201E, '2005-02-09 10:00:00') /* Agent Dravos (24577) */
     , (0x72B1200E, 0x72B12034, '2005-02-09 10:00:00') /* Dalius Kendmar (25585) */
     , (0x72B1200E, 0x72B12035, '2005-02-09 10:00:00') /* Talira Dain (25584) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1200F,  1148, 0x2B120131, 139.99, 63.5, 48, 0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x2B120131 [139.990005 63.500000 48.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12010,  1148, 0x2B120000, 133.99, 55.5, 48, 0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x2B120000 [133.990005 55.500000 48.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12011,  1148, 0x2B120000, 128.5, 58.49, 48, -1, 0, 0, 8.74228E-08, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x2B120000 [128.500000 58.490002 48.000000] -1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12015, 24580, 0x2B120000, 87.5, 8.5, 48.005, -0.92388, 0, 0, -0.382683, False, '2005-02-09 10:00:00'); /* Tree Portal */
/* @teleloc 0x2B120000 [87.500000 8.500000 48.005001] -0.923880 0.000000 0.000000 -0.382683 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12016, 24574, 0x2B12011F, 56.3862, 74.628, 32.41, 0.438308, 0, 0, -0.898825,  True, '2005-02-09 10:00:00'); /* Pagrok the Stone Collector */
/* @teleloc 0x2B12011F [56.386200 74.627998 32.410000] 0.438308 0.000000 0.000000 -0.898825 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12017, 24578, 0x2B120000, 84.3083, 86.6441, 63.81, 0.998354, 0, 0, 0.0573511,  True, '2005-02-09 10:00:00'); /* Sentry */
/* @teleloc 0x2B120000 [84.308296 86.644096 63.810001] 0.998354 0.000000 0.000000 0.057351 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12018, 24578, 0x2B120000, 10.0363, 12.3521, 63.81, -0.68683, 0, 0, -0.726819,  True, '2005-02-09 10:00:00'); /* Sentry */
/* @teleloc 0x2B120000 [10.036300 12.352100 63.810001] -0.686830 0.000000 0.000000 -0.726819 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12019, 24588, 0x2B120000, 21.457, 77.563, 65.873, -4.37114E-08, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Gilly */
/* @teleloc 0x2B120000 [21.457001 77.563004 65.873001] -0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1201E, 24577, 0x2B120134, 141.14, 55.474, 48.01, -0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Agent Dravos */
/* @teleloc 0x2B120134 [141.139999 55.473999 48.009998] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12023, 12304, 0x2B120000, 132.991, 51.912, 48.005, 0.727249, 0, 0, -0.686374, False, '2005-02-09 10:00:00'); /* Agent of the Arcanum  */
/* @teleloc 0x2B120000 [132.990997 51.911999 48.005001] 0.727249 0.000000 0.000000 -0.686374 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12024, 24583, 0x2B120000, 145.42, 7.45886, 48.005, 0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Shot in the Arm Bowyers */
/* @teleloc 0x2B120000 [145.419998 7.458860 48.005001] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12025, 24585, 0x2B120000, 145.477, 16.043, 48.005, 0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* The Healer's Home */
/* @teleloc 0x2B120000 [145.477005 16.042999 48.005001] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12026, 24591, 0x2B12012A, 149.886, 6.8133, 48.007, 0.997034, 0, 0, -0.0769616, False, '2005-02-09 10:00:00'); /* Aun Gunditealuan the Marksman */
/* @teleloc 0x2B12012A [149.886002 6.813300 48.007000] 0.997034 0.000000 0.000000 -0.076962 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12027, 24593, 0x2B12012A, 161.973, 16.242, 48.006, 0.576633, 0, 0, 0.817004, False, '2005-02-09 10:00:00'); /* Aun Oreilauri the Healer */
/* @teleloc 0x2B12012A [161.973007 16.242001 48.006001] 0.576633 0.000000 0.000000 0.817004 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12028, 24875, 0x2B120000, 93, 3, 73.4, 0.382683, 0, 0, -0.92388, False, '2005-02-09 10:00:00'); /* Ground Portal */
/* @teleloc 0x2B120000 [93.000000 3.000000 73.400002] 0.382683 0.000000 0.000000 -0.923880 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1202B, 24582, 0x2B120000, 68.4772, 51.177, 48.005, -0.967471, 0, 0, -0.252982, False, '2005-02-09 10:00:00'); /* Rkos and Ry'zir's Metalworks */
/* @teleloc 0x2B120000 [68.477203 51.176998 48.005001] -0.967471 0.000000 0.000000 -0.252982 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1202C,   143, 0x2B120004, 22.784, 74.643, 65.873, -0.702471, 0, 0, 0.711712, False, '2019-07-17 00:00:00'); /* Chest */
/* @teleloc 0x2B120004 [22.784000 74.642998 65.873001] -0.702471 0.000000 0.000000 0.711712 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1202D, 24581, 0x2B120000, 24.0339, 71.91, 56.2079, 0.92388, 0, 0, -0.382683, False, '2005-02-09 10:00:00'); /* Lady Dain's Tower (Archmagus) */
/* @teleloc 0x2B120000 [24.033899 71.910004 56.207901] 0.923880 0.000000 0.000000 -0.382683 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1202E,   143, 0x2B12012A, 164.948, 18.514, 48.005, -0.999994, 0, 0, 0.00344532, False, '2005-02-09 10:00:00'); /* Chest */
/* @teleloc 0x2B12012A [164.947998 18.514000 48.005001] -0.999994 0.000000 0.000000 0.003445 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1202F,   153, 0x2B120000, 129.309, 24.7879, 48.005, 0.993688, 0, 0, 0.112182, False, '2005-02-09 10:00:00'); /* Fountain */
/* @teleloc 0x2B120000 [129.309006 24.787901 48.005001] 0.993688 0.000000 0.000000 0.112182 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12030,   174, 0x2B120000, 60.343, 35.335, 48.005, -0.0857437, 0, 0, -0.996317, False, '2005-02-09 10:00:00'); /* Well */
/* @teleloc 0x2B120000 [60.342999 35.334999 48.005001] -0.085744 0.000000 0.000000 -0.996317 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12031, 24877, 0x2B120000, 68.6345, 63.9572, 48.005, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Town Mason and Storage */
/* @teleloc 0x2B120000 [68.634499 63.957199 48.005001] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12032, 24888, 0x2B12012A, 165.203, 11.6649, 48.005, -0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Pyreal Target Drudge */
/* @teleloc 0x2B12012A [165.203003 11.664900 48.005001] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12033,  5085, 0x2B12012A, 165.203, 11.665, 48.005, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Linkable Item Gen - 25 seconds */
/* @teleloc 0x2B12012A [165.203003 11.665000 48.005001] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x72B12033, 0x72B12032, '2005-02-09 10:00:00') /* Pyreal Target Drudge (24888) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12034, 25585, 0x2B12013C, 22.894, 75.559, 60.025, -0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Dalius Kendmar */
/* @teleloc 0x2B12013C [22.893999 75.558998 60.025002] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12035, 25584, 0x2B12013C, 20.198, 73.415, 60.025, 1, 0, 0, 0,  True, '2005-02-09 10:00:00'); /* Talira Dain */
/* @teleloc 0x2B12013C [20.198000 73.415001 60.025002] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12036,  7923, 0x2B12012A, 147.873, 18.0287, 48.005, -0.935899, 0, 0, -0.352268, False, '2005-02-09 10:00:00'); /* Linkable Monster Generator ( 3 Min.) */
/* @teleloc 0x2B12012A [147.873001 18.028700 48.005001] -0.935899 0.000000 0.000000 -0.352268 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x72B12036, 0x72B12037, '2005-02-09 10:00:00') /* Aun Autuorea (27263) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12037, 27263, 0x2B12012A, 147.873, 18.0287, 48.0065, 0.336703, 0, 0, -0.941611,  True, '2005-02-09 10:00:00'); /* Aun Autuorea */
/* @teleloc 0x2B12012A [147.873001 18.028700 48.006500] 0.336703 0.000000 0.000000 -0.941611 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12038,   509, 0x2B120000, 109.413, 9.47661, 48.005, 0.864827, 0, 0, -0.50207, False, '2005-02-09 10:00:00'); /* Life Stone */
/* @teleloc 0x2B120000 [109.413002 9.476610 48.005001] 0.864827 0.000000 0.000000 -0.502070 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1203A, 52272, 0x2B120031, 145.371, 8.89994, 48.005, -0.45082, 0, 0, -0.892615, False, '2022-06-07 13:24:57'); /* Royal Guard */
/* @teleloc 0x2B120031 [145.371002 8.899940 48.005001] -0.450820 0.000000 0.000000 -0.892615 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1203B, 52272, 0x2B120031, 145.05, 11.9137, 48.005, -0.694471, 0, 0, -0.719521, False, '2022-06-07 13:25:03'); /* Royal Guard */
/* @teleloc 0x2B120031 [145.050003 11.913700 48.005001] -0.694471 0.000000 0.000000 -0.719521 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1203C, 52272, 0x2B120031, 145.363, 14.4477, 48.005, -0.899089, 0, 0, -0.437766, False, '2022-06-07 13:25:11'); /* Royal Guard */
/* @teleloc 0x2B120031 [145.363007 14.447700 48.005001] -0.899089 0.000000 0.000000 -0.437766 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1203D, 24597, 0x2B120111, 62.0689, 50.7574, 42.805, -0.965738, 0, 0, 0.25952, False, '2022-06-07 13:25:52'); /* Ry'zir al-Nabit */
/* @teleloc 0x2B120111 [62.068901 50.757401 42.805000] -0.965738 0.000000 0.000000 0.259520 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1203E, 24589, 0x2B120112, 67.9977, 50.9734, 42.81, -0.961953, 0, 0, -0.273217, False, '2022-06-07 13:26:12'); /* Rkos the Armorer */
/* @teleloc 0x2B120112 [67.997704 50.973400 42.810001] -0.961953 0.000000 0.000000 -0.273217 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1203F, 800080, 0x2B120019, 90.8127, 1.57204, 48.055, 0.908334, 0, 0, 0.418245, False, '2022-06-07 13:27:28'); /* King Golem Generator */
/* @teleloc 0x2B120019 [90.812698 1.572040 48.055000] 0.908334 0.000000 0.000000 0.418245 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12040, 800078, 0x2B120021, 115.569, 0.268303, 48.055, -0.919368, 0, 0, -0.393398, False, '2022-06-07 13:27:47'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120021 [115.569000 0.268303 48.055000] -0.919368 0.000000 0.000000 -0.393398 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12041, 800078, 0x2B120021, 107.223, 15.0779, 48.055, -0.997402, 0, 0, 0.0720337, False, '2022-06-07 13:27:48'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120021 [107.223000 15.077900 48.055000] -0.997402 0.000000 0.000000 0.072034 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12042, 800078, 0x2B120021, 103.676, 21.2991, 48.055, -0.824281, 0, 0, -0.566181, False, '2022-06-07 13:27:49'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120021 [103.676003 21.299101 48.055000] -0.824281 0.000000 0.000000 -0.566181 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12043, 800078, 0x2B120019, 92.515, 23.9939, 48.055, -0.627572, 0, 0, -0.778559, False, '2022-06-07 13:27:50'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120019 [92.514999 23.993900 48.055000] -0.627572 0.000000 0.000000 -0.778559 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12044, 800078, 0x2B120019, 79.84, 17.4469, 48.055, -0.452235, 0, 0, -0.891899, False, '2022-06-07 13:27:51'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120019 [79.839996 17.446899 48.055000] -0.452235 0.000000 0.000000 -0.891899 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12045, 800078, 0x2B120011, 71.9403, 10.179, 48.055, -0.177818, 0, 0, -0.984063, False, '2022-06-07 13:27:52'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120011 [71.940300 10.179000 48.055000] -0.177818 0.000000 0.000000 -0.984063 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12046, 800078, 0x2B120029, 133.688, 3.09286, 48.055, 0.963149, 0, 0, 0.268967, False, '2022-06-07 13:28:03'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120029 [133.688004 3.092860 48.055000] 0.963149 0.000000 0.000000 0.268967 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12047, 800078, 0x2B120029, 130.539, 11.6645, 48.055, 0.990984, 0, 0, -0.133977, False, '2022-06-07 13:28:04'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120029 [130.539001 11.664500 48.055000] 0.990984 0.000000 0.000000 -0.133977 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12048, 800078, 0x2B12002A, 131.608, 25.6687, 48.055, 0.956639, 0, 0, 0.291276, False, '2022-06-07 13:28:05'); /* Slave of Carnage Generator */
/* @teleloc 0x2B12002A [131.608002 25.668699 48.055000] 0.956639 0.000000 0.000000 0.291276 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12049, 800078, 0x2B120022, 119.962, 38.4233, 48.055, 0.880869, 0, 0, 0.473359, False, '2022-06-07 13:28:06'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120022 [119.961998 38.423302 48.055000] 0.880869 0.000000 0.000000 0.473359 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1204A, 800078, 0x2B120022, 115.05, 44.1129, 48.055, 0.977143, 0, 0, 0.212585, False, '2022-06-07 13:28:07'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120022 [115.050003 44.112900 48.055000] 0.977143 0.000000 0.000000 0.212585 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1204B, 800078, 0x2B120022, 102.819, 44.3417, 48.055, 0.496823, 0, 0, 0.867852, False, '2022-06-07 13:28:08'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120022 [102.819000 44.341702 48.055000] 0.496823 0.000000 0.000000 0.867852 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1204C, 800078, 0x2B12001A, 95.7444, 44.4106, 48.055, 0.792572, 0, 0, 0.609778, False, '2022-06-07 13:28:08'); /* Slave of Carnage Generator */
/* @teleloc 0x2B12001A [95.744400 44.410599 48.055000] 0.792572 0.000000 0.000000 0.609778 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1204D, 800078, 0x2B12001A, 85.2653, 44.4067, 48.055, 0.392855, 0, 0, 0.9196, False, '2022-06-07 13:28:09'); /* Slave of Carnage Generator */
/* @teleloc 0x2B12001A [85.265297 44.406700 48.055000] 0.392855 0.000000 0.000000 0.919600 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1204E, 800078, 0x2B12001A, 78.995, 37.4369, 48.055, 0.147553, 0, 0, 0.989054, False, '2022-06-07 13:28:10'); /* Slave of Carnage Generator */
/* @teleloc 0x2B12001A [78.995003 37.436901 48.055000] 0.147553 0.000000 0.000000 0.989054 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B1204F, 800078, 0x2B120012, 62.1214, 31.8296, 48.055, 0.708376, 0, 0, 0.705835, False, '2022-06-07 13:28:12'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120012 [62.121399 31.829599 48.055000] 0.708376 0.000000 0.000000 0.705835 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12050, 800078, 0x2B120012, 56.9215, 31.8483, 48.055, 0.708376, 0, 0, 0.705835, False, '2022-06-07 13:28:12'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120012 [56.921501 31.848301 48.055000] 0.708376 0.000000 0.000000 0.705835 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12051, 800078, 0x2B120011, 51.6754, 19.5223, 48.055, -0.17634, 0, 0, 0.984329, False, '2022-06-07 13:28:13'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120011 [51.675400 19.522301 48.055000] -0.176340 0.000000 0.000000 0.984329 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72B12052, 800078, 0x2B120009, 46.4767, 5.99524, 48.055, 0.403514, 0, 0, 0.914973, False, '2022-06-07 13:28:15'); /* Slave of Carnage Generator */
/* @teleloc 0x2B120009 [46.476700 5.995240 48.055000] 0.403514 0.000000 0.000000 0.914973 */
