DELETE FROM `landblock_instance` WHERE `landblock` = 0x02C8;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8000,  8380, 0x02C80100, 30.6854, -242.168, -11.995, 0.042756, 0, 0, 0.999086, False, '2005-02-09 10:00:00'); /* Surface Portal */
/* @teleloc 0x02C80100 [30.685400 -242.167999 -11.995000] 0.042756 0.000000 0.000000 0.999086 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8001,   278, 0x02C80102, 30, -235.25, -12, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x02C80102 [30.000000 -235.250000 -12.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C801E,   939, 0x02C80174, 130.552, -73.0907, -5.9923, -0.992499, 0, 0, 0.122252,  True, '2005-02-09 10:00:00'); /* Young Banderling */
/* @teleloc 0x02C80174 [130.552002 -73.090698 -5.992300] -0.992499 0.000000 0.000000 0.122252 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C801F,   939, 0x02C80177, 140.505, -74.7549, -5.945, -0.999171, 0, 0, -0.040702,  True, '2005-02-09 10:00:00'); /* Young Banderling */
/* @teleloc 0x02C80177 [140.505005 -74.754898 -5.945000] -0.999171 0.000000 0.000000 -0.040702 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8020,  5086, 0x02C80178, 137.377, -67.6884, -5.995, 0.593927, 0, 0, -0.804519, False, '2005-02-09 10:00:00'); /* Linkable Monster Gen - 30 sec. */
/* @teleloc 0x02C80178 [137.376999 -67.688400 -5.995000] 0.593927 0.000000 0.000000 -0.804519 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x702C8020, 0x702C801E, '2005-02-09 10:00:00') /* Young Banderling (939) */
     , (0x702C8020, 0x702C801F, '2005-02-09 10:00:00') /* Young Banderling (939) */
     , (0x702C8020, 0x702C8021, '2005-02-09 10:00:00') /* Young Banderling (939) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8021,   939, 0x02C8017B, 149.919, -72.1946, -5.945, -0.997903, 0, 0, -0.064722,  True, '2005-02-09 10:00:00'); /* Young Banderling */
/* @teleloc 0x02C8017B [149.919006 -72.194603 -5.945000] -0.997903 0.000000 0.000000 -0.064722 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C803B, 801834, 0x02C8024D, 315.224, -59.8105, 0.055, -0.73485, 0, 0, 0.67823, False, '2023-01-03 06:53:21'); /* MithrilBanderlingGen */
/* @teleloc 0x02C8024D [315.223999 -59.810501 0.055000] -0.734850 0.000000 0.000000 0.678230 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C803C, 801834, 0x02C80262, 328.043, -61.6975, 0.055, -0.566395, 0, 0, 0.824134, False, '2023-01-03 06:53:22'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80262 [328.042999 -61.697498 0.055000] -0.566395 0.000000 0.000000 0.824134 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C803D, 801834, 0x02C80268, 330.975, -85.0128, 0.055, -0.131595, 0, 0, 0.991304, False, '2023-01-03 06:53:24'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80268 [330.975006 -85.012802 0.055000] -0.131595 0.000000 0.000000 0.991304 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C803E, 801834, 0x02C80268, 330.975, -85.0128, 0.055, -0.131595, 0, 0, 0.991304, False, '2023-01-03 06:53:25'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80268 [330.975006 -85.012802 0.055000] -0.131595 0.000000 0.000000 0.991304 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C803F, 801834, 0x02C80268, 331.124, -85.562, 0.055, -0.131595, 0, 0, 0.991304, False, '2023-01-03 06:53:26'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80268 [331.123993 -85.561996 0.055000] -0.131595 0.000000 0.000000 0.991304 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8040, 801834, 0x02C80268, 331.124, -85.562, 0.055, -0.131595, 0, 0, 0.991304, False, '2023-01-03 06:53:26'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80268 [331.123993 -85.561996 0.055000] -0.131595 0.000000 0.000000 0.991304 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8041, 801834, 0x02C8026E, 339.003, -97.6512, 0.055, -0.00197059, 0, 0, 0.999998, False, '2023-01-03 06:53:34'); /* MithrilBanderlingGen */
/* @teleloc 0x02C8026E [339.002991 -97.651199 0.055000] -0.001971 0.000000 0.000000 0.999998 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8042, 801834, 0x02C80270, 338.568, -117.387, 0.055, 0.219546, 0, 0, 0.975602, False, '2023-01-03 06:53:35'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80270 [338.567993 -117.387001 0.055000] 0.219546 0.000000 0.000000 0.975602 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8043, 801834, 0x02C80251, 324.941, -119.745, 0.055, 0.66445, 0, 0, 0.747333, False, '2023-01-03 06:53:37'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80251 [324.941010 -119.745003 0.055000] 0.664450 0.000000 0.000000 0.747333 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8044, 801834, 0x02C80225, 290.7, -119.375, 0.055, 0.366519, 0, 0, 0.93041, False, '2023-01-03 06:53:43'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80225 [290.700012 -119.375000 0.055000] 0.366519 0.000000 0.000000 0.930410 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8045, 801834, 0x02C8023B, 296.027, -119.79, 0.055, -0.665029, 0, 0, 0.746817, False, '2023-01-03 06:53:44'); /* MithrilBanderlingGen */
/* @teleloc 0x02C8023B [296.027008 -119.790001 0.055000] -0.665029 0.000000 0.000000 0.746817 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8046, 801834, 0x02C80247, 309.375, -138.514, 0.055, -0.0182043, 0, 0, 0.999834, False, '2023-01-03 06:53:47'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80247 [309.375000 -138.514008 0.055000] -0.018204 0.000000 0.000000 0.999834 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8047, 801834, 0x02C80252, 317.239, -150.316, 0.055, -0.753071, 0, 0, 0.657939, False, '2023-01-03 06:53:48'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80252 [317.239014 -150.315994 0.055000] -0.753071 0.000000 0.000000 0.657939 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8048, 801834, 0x02C8018F, 319.268, -185.232, -5.945, 0.0522931, 0, 0, 0.998632, False, '2023-01-03 06:53:52'); /* MithrilBanderlingGen */
/* @teleloc 0x02C8018F [319.268005 -185.231995 -5.945000] 0.052293 0.000000 0.000000 0.998632 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8049, 801834, 0x02C8017D, 294.835, -184.989, -5.945, 0.966175, 0, 0, 0.257887, False, '2023-01-03 06:53:54'); /* MithrilBanderlingGen */
/* @teleloc 0x02C8017D [294.834991 -184.988998 -5.945000] 0.966175 0.000000 0.000000 0.257887 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C804A, 801834, 0x02C8017D, 294.442, -184.306, -5.945, 0.966175, 0, 0, 0.257887, False, '2023-01-03 06:53:55'); /* MithrilBanderlingGen */
/* @teleloc 0x02C8017D [294.441986 -184.306000 -5.945000] 0.966175 0.000000 0.000000 0.257887 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C804B, 801834, 0x02C8017D, 294.442, -184.306, -5.945, 0.257044, 0, 0, 0.9664, False, '2023-01-03 06:53:56'); /* MithrilBanderlingGen */
/* @teleloc 0x02C8017D [294.441986 -184.306000 -5.945000] 0.257044 0.000000 0.000000 0.966400 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C804C, 801834, 0x02C80183, 293.268, -219.51, -5.945, -0.349828, 0, 0, 0.936814, False, '2023-01-03 06:54:04'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80183 [293.268005 -219.509995 -5.945000] -0.349828 0.000000 0.000000 0.936814 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C804D, 801834, 0x02C80191, 317.344, -221.109, -5.945, -0.660701, 0, 0, 0.750649, False, '2023-01-03 06:54:06'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80191 [317.343994 -221.108994 -5.945000] -0.660701 0.000000 0.000000 0.750649 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C804E, 801834, 0x02C80106, 315.037, -254.733, -11.945, -0.00253831, 0, 0, 0.999997, False, '2023-01-03 06:54:19'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80106 [315.036987 -254.733002 -11.945000] -0.002538 0.000000 0.000000 0.999997 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C804F, 801834, 0x02C80106, 315.037, -254.733, -11.945, -0.00253831, 0, 0, 0.999997, False, '2023-01-03 06:54:20'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80106 [315.036987 -254.733002 -11.945000] -0.002538 0.000000 0.000000 0.999997 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8050, 801834, 0x02C80106, 318.742, -254.714, -11.945, -0.00253831, 0, 0, 0.999997, False, '2023-01-03 06:54:21'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80106 [318.742004 -254.714005 -11.945000] -0.002538 0.000000 0.000000 0.999997 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8051, 801834, 0x02C80108, 325.232, -254.759, -11.945, -0.00253831, 0, 0, 0.999997, False, '2023-01-03 06:54:23'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80108 [325.231995 -254.759003 -11.945000] -0.002538 0.000000 0.000000 0.999997 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8052, 801834, 0x02C80109, 330.142, -255.088, -11.7797, -0.00253831, 0, 0, 0.999997, False, '2023-01-03 06:54:25'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80109 [330.141998 -255.087997 -11.779700] -0.002538 0.000000 0.000000 0.999997 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8053, 801834, 0x02C8022A, 297.945, -19.9508, 0.055, -0.696409, 0, 0, -0.717646, False, '2023-01-03 06:55:47'); /* MithrilBanderlingGen */
/* @teleloc 0x02C8022A [297.945007 -19.950800 0.055000] -0.696409 0.000000 0.000000 -0.717646 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8054, 801834, 0x02C8022E, 299.501, -35.8507, 0.055, 0.0154386, 0, 0, -0.999881, False, '2023-01-03 06:55:50'); /* MithrilBanderlingGen */
/* @teleloc 0x02C8022E [299.501007 -35.850700 0.055000] 0.015439 0.000000 0.000000 -0.999881 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8055, 801834, 0x02C80233, 302.227, -60.2203, 0.055, 0.190572, 0, 0, -0.981673, False, '2023-01-03 06:55:52'); /* MithrilBanderlingGen */
/* @teleloc 0x02C80233 [302.226990 -60.220299 0.055000] 0.190572 0.000000 0.000000 -0.981673 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8056, 803040, 0x02C80268, 329.924, -86.282, 0.055, 0.0591021, 0, 0, -0.998252, False, '2023-10-30 05:06:30');
/* @teleloc 0x02C80268 [329.924011 -86.281998 0.055000] 0.059102 0.000000 0.000000 -0.998252 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702C8057, 803040, 0x02C8017D, 292.03983, -184.18799, -5.9449997, -0.9264491, 0, 0, -0.37642005, False, '2023-10-30 05:06:47');
/* @teleloc 0x02C8017D [292.039825 -184.187988 -5.945000] -0.926449 0.000000 0.000000 -0.376420 */
