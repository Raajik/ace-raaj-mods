DELETE FROM `landblock_instance` WHERE `landblock` = 0x1B13;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B13022, 15274, 0x1B130000, 131.982, 177.36, 4.00207, 0.999862, 0, 0, -0.01662, False, '2005-02-09 10:00:00'); /* Linkable Monster Gen (1 min.) */
/* @teleloc 0x1B130000 [131.981995 177.360001 4.002070] 0.999862 0.000000 0.000000 -0.016620 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x71B13022, 0x71B13023, '2005-02-09 10:00:00') /* Withered Raider Prefect (30689) */
     , (0x71B13022, 0x71B13024, '2005-02-09 10:00:00') /* Withered Raider Prefect (30689) */
     , (0x71B13022, 0x71B13025, '2005-02-09 10:00:00') /* Withered Transcendent Tumerok (30686) */
     , (0x71B13022, 0x71B13026, '2005-02-09 10:00:00') /* Withered Transcendent Tumerok (30686) */
     , (0x71B13022, 0x71B13027, '2005-02-09 10:00:00') /* Withered Drudge Seraph Mystic (30682) */
     , (0x71B13022, 0x71B13028, '2005-02-09 10:00:00') /* Withered Drudge Seraph Mystic (30682) */
     , (0x71B13022, 0x71B13029, '2005-02-09 10:00:00') /* Withered Transcendent Tumerok (30686) */
     , (0x71B13022, 0x71B1302A, '2005-02-09 10:00:00') /* Withered Transcendent Tumerok (30686) */
     , (0x71B13022, 0x71B1302B, '2005-02-09 10:00:00') /* Withered Transcendent Tumerok (30686) */
     , (0x71B13022, 0x71B1302C, '2005-02-09 10:00:00') /* Withered Raider Prefect (30689) */
     , (0x71B13022, 0x71B1302D, '2005-02-09 10:00:00') /* Withered Raider Prefect (30689) */
     , (0x71B13022, 0x71B1302E, '2005-02-09 10:00:00') /* Withered Raider Justicar (30691) */
     , (0x71B13022, 0x71B1302F, '2005-02-09 10:00:00') /* Withered Raider Justicar (30691) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B13023, 30689, 0x1B130000, 131.29, 185.778, 3.89161, 0.999443, 0, 0, 0.033373,  True, '2005-02-09 10:00:00'); /* Withered Raider Prefect */
/* @teleloc 0x1B130000 [131.289993 185.778000 3.891610] 0.999443 0.000000 0.000000 0.033373 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B13024, 30689, 0x1B130000, 133.824, 182.948, 4.31404, 0.999443, 0, 0, 0.033373,  True, '2005-02-09 10:00:00'); /* Withered Raider Prefect */
/* @teleloc 0x1B130000 [133.824005 182.947998 4.314040] 0.999443 0.000000 0.000000 0.033373 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B13025, 30686, 0x1B130000, 129.002, 187.165, 3.50688, 0.999443, 0, 0, 0.033373,  True, '2005-02-09 10:00:00'); /* Withered Transcendent Tumerok */
/* @teleloc 0x1B130000 [129.001999 187.164993 3.506880] 0.999443 0.000000 0.000000 0.033373 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B13026, 30686, 0x1B130000, 134.745, 185.921, 4.46392, 0.999443, 0, 0, 0.033373,  True, '2005-02-09 10:00:00'); /* Withered Transcendent Tumerok */
/* @teleloc 0x1B130000 [134.744995 185.921005 4.463920] 0.999443 0.000000 0.000000 0.033373 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B13027, 30682, 0x1B130000, 76.9506, 157.373, 0.00524995, -0.970248, 0, 0, 0.242114,  True, '2005-02-09 10:00:00'); /* Withered Drudge Seraph Mystic */
/* @teleloc 0x1B130000 [76.950600 157.373001 0.005250] -0.970248 0.000000 0.000000 0.242114 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B13028, 30682, 0x1B130000, 78.0576, 155.196, 0.00524995, -0.970248, 0, 0, 0.242114,  True, '2005-02-09 10:00:00'); /* Withered Drudge Seraph Mystic */
/* @teleloc 0x1B130000 [78.057602 155.195999 0.005250] -0.970248 0.000000 0.000000 0.242114 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B13029, 30686, 0x1B130000, 80.2126, 159.245, 0.0065, -0.970248, 0, 0, 0.242114,  True, '2005-02-09 10:00:00'); /* Withered Transcendent Tumerok */
/* @teleloc 0x1B130000 [80.212601 159.244995 0.006500] -0.970248 0.000000 0.000000 0.242114 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B1302A, 30686, 0x1B130000, 77.5688, 160.673, 0.0065, -0.970248, 0, 0, 0.242114,  True, '2005-02-09 10:00:00'); /* Withered Transcendent Tumerok */
/* @teleloc 0x1B130000 [77.568802 160.673004 0.006500] -0.970248 0.000000 0.000000 0.242114 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B1302B, 30686, 0x1B130000, 75.8783, 153.549, 0.0065, -0.970248, 0, 0, 0.242114,  True, '2005-02-09 10:00:00'); /* Withered Transcendent Tumerok */
/* @teleloc 0x1B130000 [75.878304 153.548996 0.006500] -0.970248 0.000000 0.000000 0.242114 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B1302C, 30689, 0x1B130000, 149.324, 109.746, 8.48646, -0.989704, 0, 0, 0.143129,  True, '2005-02-09 10:00:00'); /* Withered Raider Prefect */
/* @teleloc 0x1B130000 [149.324005 109.746002 8.486460] -0.989704 0.000000 0.000000 0.143129 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B1302D, 30689, 0x1B130000, 151.925, 109.727, 9.13505, -0.99998, 0, 0, -0.00637766,  True, '2005-02-09 10:00:00'); /* Withered Raider Prefect */
/* @teleloc 0x1B130000 [151.925003 109.726997 9.135050] -0.999980 0.000000 0.000000 -0.006378 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B1302E, 30691, 0x1B130000, 150.173, 112.97, 8.96749, -0.99998, 0, 0, -0.00637766,  True, '2005-02-09 10:00:00'); /* Withered Raider Justicar */
/* @teleloc 0x1B130000 [150.173004 112.970001 8.967490] -0.999980 0.000000 0.000000 -0.006378 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B1302F, 30691, 0x1B130000, 147.603, 112.011, 8.24493, -0.97878, 0, 0, -0.204916,  True, '2005-02-09 10:00:00'); /* Withered Raider Justicar */
/* @teleloc 0x1B130000 [147.602997 112.011002 8.244930] -0.978780 0.000000 0.000000 -0.204916 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B13031, 5000924, 0x1B13001D, 85.3215, 104.471, 0.055, 0.584442, 0, 0, -0.811435, False, '2020-06-24 00:24:32'); /* BandieIsleBossTrigger */
/* @teleloc 0x1B13001D [85.321503 104.471001 0.055000] 0.584442 0.000000 0.000000 -0.811435 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B13032, 801643, 0x1B13000A, 28.3236, 34.7197, -0.045, 0.65398, 0, 0, -0.756512, False, '2022-11-16 05:53:37');
/* @teleloc 0x1B13000A [28.323601 34.719700 -0.045000] 0.653980 0.000000 0.000000 -0.756512 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B13033, 801643, 0x1B130004, 18.5731, 72.1831, 0.055, 0.996908, 0, 0, 0.0785743, False, '2022-11-16 05:56:10');
/* @teleloc 0x1B130004 [18.573099 72.183098 0.055000] 0.996908 0.000000 0.000000 0.078574 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B13034, 801643, 0x1B130006, 12.9282, 131.201, 0.055, 0.999764, 0, 0, 0.0217441, False, '2022-11-16 05:56:14');
/* @teleloc 0x1B130006 [12.928200 131.201004 0.055000] 0.999764 0.000000 0.000000 0.021744 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x71B13035, 801643, 0x1B130008, 10.749201, 181.26987, 0.054999996, 0.99976355, 0, 0, 0.021744104, False, '2022-11-16 05:56:18');
/* @teleloc 0x1B130008 [10.749201 181.269867 0.055000] 0.999764 0.000000 0.000000 0.021744 */
