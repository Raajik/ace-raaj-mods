DELETE FROM `landblock_instance` WHERE `landblock` = 0x5E47;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75E47002, 33590, 0x5E470105, 10.3632, -22.7972, 0, 0, 0, 0, -1, False, '2021-11-29 06:19:28'); /* Asheron's Tower */
/* @teleloc 0x5E470105 [10.363200 -22.797199 0.000000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75E47003,  1154, 0x5E470103, 8, 4, 0.01, 0, 0, 0, -1, False, '2021-11-29 06:19:28'); /* Linkable Monster Generator */
/* @teleloc 0x5E470103 [8.000000 4.000000 0.010000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x75E47003, 0x75E47004, '2021-11-29 06:19:28') /* Guardian (24432) */
     , (0x75E47003, 0x75E47005, '2021-11-29 06:19:28') /* Guardian (24432) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75E47004, 24432, 0x5E470103, 8, 4, 0.01, 0, 0, 0, -1,  True, '2021-11-29 06:19:28'); /* Guardian */
/* @teleloc 0x5E470103 [8.000000 4.000000 0.010000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75E47005, 24432, 0x5E470103, 12, 4, 0.01, 0, 0, 0, -1,  True, '2021-11-29 06:19:28'); /* Guardian */
/* @teleloc 0x5E470103 [12.000000 4.000000 0.010000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75E47006,  1542, 0x5E470107, 20.4978, -11.4963, 1.13063, 0.516241, 0, 0, -0.856444, False, '2021-11-29 06:19:28'); /* Linkable Item Generator */
/* @teleloc 0x5E470107 [20.497801 -11.496300 1.130630] 0.516241 0.000000 0.000000 -0.856444 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x75E47006, 0x75E47007, '2021-11-29 06:19:28') /* Asheron's Report (37062) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75E47007, 37062, 0x5E470107, 20.4978, -11.4963, 1.13063, 0.516241, 0, 0, -0.856444,  True, '2021-11-29 06:19:28'); /* Asheron's Report */
/* @teleloc 0x5E470107 [20.497801 -11.496300 1.130630] 0.516241 0.000000 0.000000 -0.856444 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75E47008,  5509, 0x5E470101, 0.204878, -10.5049, -0.063, -0.710557, 0, 0, -0.703639, False, '2025-12-29 06:34:13'); /* Winthura's Garden */
/* @teleloc 0x5E470101 [0.204878 -10.504900 -0.063000] -0.710557 0.000000 0.000000 -0.703639 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75E47009, 804043, 0x5E470103, 9.978798, 0.7761848, -0.016000032, -0.999979, 0, 0, -0.006473428, False, '2025-12-29 10:23:37'); /* Alter of Cragstone */
/* @teleloc 0x5E470103 [9.978798 0.776185 -0.016000] -0.999979 0.000000 0.000000 -0.006473 */
