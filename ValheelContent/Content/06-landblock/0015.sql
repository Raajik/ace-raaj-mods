DELETE FROM `landblock_instance` WHERE `landblock` = 0x0015;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015002,   286, 0x00150102, 21.3053, -13.8755, -28.4831, 0.793884, 0, 0, -0.608069,  True, '2021-11-08 06:01:47'); /* Lever */
/* @teleloc 0x00150102 [21.305300 -13.875500 -28.483101] 0.793884 0.000000 0.000000 -0.608069 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015008,  2179, 0x0015010B, 14.6357, -29.9725, -24, 0.707107, 0, 0, -0.707107, False, '2021-11-08 06:01:47'); /* Door */
/* @teleloc 0x0015010B [14.635700 -29.972500 -24.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x70015008, 0x70015002, '2021-11-08 06:01:47') /* Lever (286) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001500C,   278, 0x00150119, 20, -45.25, -24, 1, 0, 0, 0, False, '2021-11-08 06:01:47'); /* Door */
/* @teleloc 0x00150119 [20.000000 -45.250000 -24.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015010,  1948, 0x0015011D, 26.1267, -17.8241, -24, -0.999977, 0, 0, -0.006763, False, '2021-11-08 06:01:47'); /* Chest */
/* @teleloc 0x0015011D [26.126699 -17.824100 -24.000000] -0.999977 0.000000 0.000000 -0.006763 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015011,  1917, 0x0015011D, 28.5182, -18.4159, -24, 0.999601, 0, 0, -0.028248, False, '2021-11-08 06:01:47'); /* Chest */
/* @teleloc 0x0015011D [28.518200 -18.415899 -24.000000] 0.999601 0.000000 0.000000 -0.028248 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015012,   278, 0x0015011F, 30, -24.755, -24, 0, 0, 0, -1, False, '2021-11-08 06:01:47'); /* Door */
/* @teleloc 0x0015011F [30.000000 -24.754999 -24.000000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015016,   278, 0x00150134, 4.755, -30, -12, 0.707107, 0, 0, -0.707107, False, '2021-11-08 06:01:47'); /* Door */
/* @teleloc 0x00150134 [4.755000 -30.000000 -12.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015017,   286, 0x00150135, -4.39634, -36.1519, -10.4163, -0.710569, 0, 0, -0.703627,  True, '2021-11-08 06:01:47'); /* Lever */
/* @teleloc 0x00150135 [-4.396340 -36.151901 -10.416300] -0.710569 0.000000 0.000000 -0.703627 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015018,   278, 0x00150137, 4.77807, -40.0088, -12, 0.707107, 0, 0, -0.707107, False, '2021-11-08 06:01:47'); /* Door */
/* @teleloc 0x00150137 [4.778070 -40.008801 -12.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001501A,   278, 0x0015013A, 4.755, -50, -12, 0.707107, 0, 0, -0.707107, False, '2021-11-08 06:01:47'); /* Door */
/* @teleloc 0x0015013A [4.755000 -50.000000 -12.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001501B,  3972, 0x0015013B, -1.7525, -56.0875, -12, -1, 0, 0, 0, False, '2021-11-08 06:01:47'); /* Chest */
/* @teleloc 0x0015013B [-1.752500 -56.087502 -12.000000] -1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001501E,   278, 0x0015013D, 4.755, -60, -12, 0.707107, 0, 0, -0.707107, False, '2021-11-08 06:01:47'); /* Door */
/* @teleloc 0x0015013D [4.755000 -60.000000 -12.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001501F,  2179, 0x00150145, 14.75, -40, -12, 0.707107, 0, 0, -0.707107, False, '2021-11-08 06:01:47'); /* Door */
/* @teleloc 0x00150145 [14.750000 -40.000000 -12.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7001501F, 0x70015028, '2021-11-08 06:01:47') /* Lever (286) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015024,  2179, 0x00150165, 25.25, -50, -12, -0.707107, 0, 0, -0.707107, False, '2021-11-08 06:01:47'); /* Door */
/* @teleloc 0x00150165 [25.250000 -50.000000 -12.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x70015024, 0x70015017, '2021-11-08 06:01:47') /* Lever (286) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015027,   278, 0x0015016D, 35.245, -30, -12, -0.707107, 0, 0, -0.707107, False, '2021-11-08 06:01:47'); /* Door */
/* @teleloc 0x0015016D [35.244999 -30.000000 -12.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015028,   286, 0x0015016E, 44.3298, -43.2271, -11.2937, 0.703628, 0, 0, -0.710569,  True, '2021-11-08 06:01:47'); /* Lever */
/* @teleloc 0x0015016E [44.329800 -43.227100 -11.293700] 0.703628 0.000000 0.000000 -0.710569 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015029,   278, 0x00150170, 35.245, -40, -12, -0.707107, 0, 0, -0.707107, False, '2021-11-08 06:01:47'); /* Door */
/* @teleloc 0x00150170 [35.244999 -40.000000 -12.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001502A,  3979, 0x00150171, 41.7525, -53.9125, -12, 0, 0, 0, 1, False, '2021-11-08 06:01:47'); /* Chest */
/* @teleloc 0x00150171 [41.752499 -53.912498 -12.000000] 0.000000 0.000000 0.000000 1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001502C,   278, 0x00150173, 35.245, -50, -12, -0.707107, 0, 0, -0.707107, False, '2021-11-08 06:01:47'); /* Door */
/* @teleloc 0x00150173 [35.244999 -50.000000 -12.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001502D,  1939, 0x00150174, 41.7525, -63.9125, -12, 0, 0, 0, 1, False, '2021-11-08 06:01:47'); /* Chest */
/* @teleloc 0x00150174 [41.752499 -63.912498 -12.000000] 0.000000 0.000000 0.000000 1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001502F,   278, 0x00150176, 35.245, -60, -12, -0.707107, 0, 0, -0.707107, False, '2021-11-08 06:01:47'); /* Door */
/* @teleloc 0x00150176 [35.244999 -60.000000 -12.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015031,  1939, 0x001501AC, 15.9539, -23.7494, 6, 0.111578, 0, 0, -0.993756, False, '2021-11-08 06:01:47'); /* Chest */
/* @teleloc 0x001501AC [15.953900 -23.749399 6.000000] 0.111578 0.000000 0.000000 -0.993756 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015032,  1929, 0x001501AC, 23.3793, -23.6069, 6, -0.018435, 0, 0, -0.99983, False, '2021-11-08 06:01:47'); /* Chest */
/* @teleloc 0x001501AC [23.379299 -23.606899 6.000000] -0.018435 0.000000 0.000000 -0.999830 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015036,  4942, 0x001501CE, 19.9454, -63.6429, 11.937, 0.976249, 0, 0, -0.216653, False, '2021-11-08 06:01:47'); /* Surface */
/* @teleloc 0x001501CE [19.945400 -63.642899 11.937000] 0.976249 0.000000 0.000000 -0.216653 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001505A,  1450, 0x0015014D, 21.4922, -9.39682, -12, -0.66466, 0, 0, -0.747146, False, '2021-11-08 06:01:47'); /* Salmon */
/* @teleloc 0x0015014D [21.492201 -9.396820 -12.000000] -0.664660 0.000000 0.000000 -0.747146 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001505D,  1450, 0x00150104, 0.780976, -11.3762, -24, 0, 0, 0, -1, False, '2021-11-08 06:01:47'); /* Salmon */
/* @teleloc 0x00150104 [0.780976 -11.376200 -24.000000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001505E,   794, 0x0015013B, 0.135762, -59.9246, -11.945, 0.705991, 0, 0, -0.708221, False, '2021-11-08 06:01:47'); /* Apple Generator */
/* @teleloc 0x0015013B [0.135762 -59.924599 -11.945000] 0.705991 0.000000 0.000000 -0.708221 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001505F, 800028, 0x001501D4, 38.8166, -46.938, 12.055, 0.461657, 0, 0, -0.887058, False, '2022-06-03 10:00:49'); /* Linkable Carnage Drudge Generator ( 5 Min.) */
/* @teleloc 0x001501D4 [38.816601 -46.938000 12.055000] 0.461657 0.000000 0.000000 -0.887058 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015061, 800026, 0x001501CF, 31.1722, -34.45, 12.0045, 0.362902, 0, 0, 0.931827, False, '2022-06-03 10:01:26'); /* Carnage Drudge */
/* @teleloc 0x001501CF [31.172199 -34.450001 12.004500] 0.362902 0.000000 0.000000 0.931827 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015062, 800026, 0x001501BD, 29.073, -69.9839, 6.00455, 0.677327, 0, 0, -0.735682, False, '2022-06-03 10:01:34'); /* Carnage Drudge */
/* @teleloc 0x001501BD [29.073000 -69.983902 6.004550] 0.677327 0.000000 0.000000 -0.735682 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015063, 800026, 0x001501AA, 8.11881, -70.3867, 6.00455, 0.726062, 0, 0, -0.68763, False, '2022-06-03 10:01:44'); /* Carnage Drudge */
/* @teleloc 0x001501AA [8.118810 -70.386703 6.004550] 0.726062 0.000000 0.000000 -0.687630 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015064, 800026, 0x0015014E, 16.7305, -10.0099, -11.9955, -0.730971, 0, 0, -0.682409, False, '2022-06-03 10:02:03'); /* Carnage Drudge */
/* @teleloc 0x0015014E [16.730499 -10.009900 -11.995500] -0.730971 0.000000 0.000000 -0.682409 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015065, 800026, 0x0015019A, 26.1742, -20.7322, 0.00454998, -0.726481, 0, 0, 0.687186, False, '2022-06-03 10:02:24'); /* Carnage Drudge */
/* @teleloc 0x0015019A [26.174200 -20.732201 0.004550] -0.726481 0.000000 0.000000 0.687186 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015078, 800026, 0x00150120, 29.1261, -26.1142, -23.9955, -0.458945, 0, 0, -0.888465, False, '2022-06-03 10:06:47'); /* Carnage Drudge */
/* @teleloc 0x00150120 [29.126101 -26.114201 -23.995501] -0.458945 0.000000 0.000000 -0.888465 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015079, 800026, 0x0015011D, 31.0901, -20.833, -23.9955, 0.0308071, 0, 0, 0.999525, False, '2022-06-03 10:06:55'); /* Carnage Drudge */
/* @teleloc 0x0015011D [31.090099 -20.833000 -23.995501] 0.030807 0.000000 0.000000 0.999525 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001507A, 800026, 0x0015011D, 29.0374, -19.7078, -23.9955, 0.0308071, 0, 0, 0.999525, False, '2022-06-03 10:06:56'); /* Carnage Drudge */
/* @teleloc 0x0015011D [29.037399 -19.707800 -23.995501] 0.030807 0.000000 0.000000 0.999525 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001507F, 800026, 0x001501AC, 22.4132, -19.0267, 6.00455, 0.994192, 0, 0, 0.107624, False, '2022-06-03 10:08:34'); /* Carnage Drudge */
/* @teleloc 0x001501AC [22.413200 -19.026699 6.004550] 0.994192 0.000000 0.000000 0.107624 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015080, 800026, 0x001501AC, 17.5502, -19.5495, 6.00455, 0.98606, 0, 0, -0.16639, False, '2022-06-03 10:08:36'); /* Carnage Drudge */
/* @teleloc 0x001501AC [17.550200 -19.549500 6.004550] 0.986060 0.000000 0.000000 -0.166390 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015082, 800075, 0x001501D0, 31.7614, -37.0758, 12.055, 0.150591, 0, 0, 0.988596, False, '2022-06-05 15:35:29'); /* Carnage Drudge Generator */
/* @teleloc 0x001501D0 [31.761400 -37.075802 12.055000] 0.150591 0.000000 0.000000 0.988596 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015083, 800075, 0x001501D4, 40.4694, -50.1841, 12.055, -0.740364, 0, 0, -0.672206, False, '2022-06-05 15:35:39'); /* Carnage Drudge Generator */
/* @teleloc 0x001501D4 [40.469398 -50.184101 12.055000] -0.740364 0.000000 0.000000 -0.672206 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015084, 800075, 0x0015019A, 30.4045, -19.9, 0.055, 0.0977218, 0, 0, -0.995214, False, '2022-06-05 15:35:46'); /* Carnage Drudge Generator */
/* @teleloc 0x0015019A [30.404499 -19.900000 0.055000] 0.097722 0.000000 0.000000 -0.995214 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015085, 800075, 0x00150196, 24.1324, -32.5988, 0.055, -0.153688, 0, 0, -0.988119, False, '2022-06-05 15:35:56'); /* Carnage Drudge Generator */
/* @teleloc 0x00150196 [24.132401 -32.598801 0.055000] -0.153688 0.000000 0.000000 -0.988119 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015086, 800075, 0x00150199, 22.7512, -57.2138, 0.055, 0.0153857, 0, 0, -0.999882, False, '2022-06-05 15:36:03'); /* Carnage Drudge Generator */
/* @teleloc 0x00150199 [22.751200 -57.213799 0.055000] 0.015386 0.000000 0.000000 -0.999882 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015087, 800075, 0x00150132, 1.91854, -33.9315, -11.945, -0.736974, 0, 0, -0.675921, False, '2022-06-05 15:36:27'); /* Carnage Drudge Generator */
/* @teleloc 0x00150132 [1.918540 -33.931499 -11.945000] -0.736974 0.000000 0.000000 -0.675921 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015088, 800075, 0x00150132, 0.81445, -28.7933, -11.945, 0.74057, 0, 0, -0.671979, False, '2022-06-05 15:36:32'); /* Carnage Drudge Generator */
/* @teleloc 0x00150132 [0.814450 -28.793301 -11.945000] 0.740570 0.000000 0.000000 -0.671979 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015089, 800075, 0x00150146, 10.2427, -53.7015, -11.945, 0.633477, 0, 0, -0.773761, False, '2022-06-05 15:36:45'); /* Carnage Drudge Generator */
/* @teleloc 0x00150146 [10.242700 -53.701500 -11.945000] 0.633477 0.000000 0.000000 -0.773761 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001508A, 800075, 0x00150138, 3.15125, -49.7514, -11.945, 0.0735668, 0, 0, -0.99729, False, '2022-06-05 15:36:54'); /* Carnage Drudge Generator */
/* @teleloc 0x00150138 [3.151250 -49.751400 -11.945000] 0.073567 0.000000 0.000000 -0.997290 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001508B, 800075, 0x00150148, 10.1622, -59.4435, -11.945, 0.674805, 0, 0, -0.737997, False, '2022-06-05 15:37:01'); /* Carnage Drudge Generator */
/* @teleloc 0x00150148 [10.162200 -59.443501 -11.945000] 0.674805 0.000000 0.000000 -0.737997 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001508C, 800075, 0x00150149, 5.16771, -60.1268, -11.945, -0.0219188, 0, 0, -0.99976, False, '2022-06-05 15:37:10'); /* Carnage Drudge Generator */
/* @teleloc 0x00150149 [5.167710 -60.126801 -11.945000] -0.021919 0.000000 0.000000 -0.999760 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001508D, 800075, 0x00150169, 27.532, -70.0651, -11.945, 0.853, 0, 0, 0.521911, False, '2022-06-05 15:37:20'); /* Carnage Drudge Generator */
/* @teleloc 0x00150169 [27.532000 -70.065102 -11.945000] 0.853000 0.000000 0.000000 0.521911 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001508E, 800075, 0x00150167, 33.9213, -59.7315, -11.945, 0.996349, 0, 0, -0.085369, False, '2022-06-05 15:37:30'); /* Carnage Drudge Generator */
/* @teleloc 0x00150167 [33.921299 -59.731499 -11.945000] 0.996349 0.000000 0.000000 -0.085369 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001508F, 800075, 0x00150164, 34.6084, -49.0032, -11.945, 0.99625, 0, 0, -0.086522, False, '2022-06-05 15:37:40'); /* Carnage Drudge Generator */
/* @teleloc 0x00150164 [34.608398 -49.003201 -11.945000] 0.996250 0.000000 0.000000 -0.086522 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015090, 800075, 0x00150160, 34.3828, -30.4106, -11.945, 0.998828, 0, 0, 0.0483914, False, '2022-06-05 15:37:54'); /* Carnage Drudge Generator */
/* @teleloc 0x00150160 [34.382801 -30.410601 -11.945000] 0.998828 0.000000 0.000000 0.048391 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015091, 800075, 0x0015011C, 20.7016, -66.9644, -23.945, 0.94997, 0, 0, -0.31234, False, '2022-06-05 15:38:26'); /* Carnage Drudge Generator */
/* @teleloc 0x0015011C [20.701599 -66.964401 -23.945000] 0.949970 0.000000 0.000000 -0.312340 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015092, 800075, 0x00150126, 42.973, -50.5732, -23.945, 0.999904, 0, 0, 0.0138343, False, '2022-06-05 15:38:35'); /* Carnage Drudge Generator */
/* @teleloc 0x00150126 [42.973000 -50.573200 -23.945000] 0.999904 0.000000 0.000000 0.013834 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015093, 800075, 0x00150116, 17.1639, -37.8875, -23.945, -0.34605, 0, 0, 0.938216, False, '2022-06-05 15:38:45'); /* Carnage Drudge Generator */
/* @teleloc 0x00150116 [17.163900 -37.887501 -23.945000] -0.346050 0.000000 0.000000 0.938216 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015094, 800075, 0x00150106, 2.57445, -52.5799, -23.945, -0.372469, 0, 0, 0.928045, False, '2022-06-05 15:39:01'); /* Carnage Drudge Generator */
/* @teleloc 0x00150106 [2.574450 -52.579899 -23.945000] -0.372469 0.000000 0.000000 0.928045 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015095, 800075, 0x00150117, 19.3865, -46.2242, -23.945, 0.735851, 0, 0, -0.677143, False, '2022-06-05 15:39:21'); /* Carnage Drudge Generator */
/* @teleloc 0x00150117 [19.386499 -46.224201 -23.945000] 0.735851 0.000000 0.000000 -0.677143 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015096, 800075, 0x00150111, 20.5695, -30.1583, -23.945, 0.0521896, 0, 0, 0.998637, False, '2022-06-05 15:39:27'); /* Carnage Drudge Generator */
/* @teleloc 0x00150111 [20.569500 -30.158300 -23.945000] 0.052190 0.000000 0.000000 0.998637 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015097, 800075, 0x00150110, 20.7205, -18.0272, -28.0489, 0.767046, 0, 0, 0.641592, False, '2022-06-05 15:39:33'); /* Carnage Drudge Generator */
/* @teleloc 0x00150110 [20.720501 -18.027201 -28.048901] 0.767046 0.000000 0.000000 0.641592 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015098, 800075, 0x00150109, 9.80201, -19.7031, -23.945, -0.723401, 0, 0, -0.690428, False, '2022-06-05 15:39:46'); /* Carnage Drudge Generator */
/* @teleloc 0x00150109 [9.802010 -19.703100 -23.945000] -0.723401 0.000000 0.000000 -0.690428 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70015099, 800075, 0x00150109, 9.80201, -19.7031, -23.945, -0.0337092, 0, 0, -0.999432, False, '2022-06-05 15:39:50'); /* Carnage Drudge Generator */
/* @teleloc 0x00150109 [9.802010 -19.703100 -23.945000] -0.033709 0.000000 0.000000 -0.999432 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001509A, 800075, 0x00150109, 5.33394, -18.3278, -23.945, -0.340897, 0, 0, -0.940101, False, '2022-06-05 15:40:00'); /* Carnage Drudge Generator */
/* @teleloc 0x00150109 [5.333940 -18.327801 -23.945000] -0.340897 0.000000 0.000000 -0.940101 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7001509B, 800076, 0x00150100, 12.3042, -10.9734, -29.945, 0.0430011, 0, 0, -0.999075, False, '2022-06-05 15:42:11'); /* Slave of Carnage Generator */
/* @teleloc 0x00150100 [12.304200 -10.973400 -29.945000] 0.043001 0.000000 0.000000 -0.999075 */
