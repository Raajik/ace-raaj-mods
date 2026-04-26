DELETE FROM `landblock_instance` WHERE `landblock` = 0x21B1;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B1000, 29859, 0x21B10000, 62.0048, 15.288, 2.005, -0.326463, 0, 0, -0.94521,  True, '2005-02-09 10:00:00'); /* Aun Nireeura */
/* @teleloc 0x21B10000 [62.004799 15.288000 2.005000] -0.326463 0.000000 0.000000 -0.945210 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B1001, 29860, 0x21B10000, 60.6515, 9.94679, 2.005, -0.989189, 0, 0, -0.146646,  True, '2005-02-09 10:00:00'); /* Aun Ihmenaura */
/* @teleloc 0x21B10000 [60.651501 9.946790 2.005000] -0.989189 0.000000 0.000000 -0.146646 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B1002, 29861, 0x21B10000, 57.0183, 12.5852, 2.005, -0.823738, 0, 0, 0.56697,  True, '2005-02-09 10:00:00'); /* Aun Kahuiura */
/* @teleloc 0x21B10000 [57.018299 12.585200 2.005000] -0.823738 0.000000 0.000000 0.566970 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B1003, 29862, 0x21B10000, 57.566, 16.4766, 2.005, -0.23099, 0, 0, 0.972956,  True, '2005-02-09 10:00:00'); /* Aun Pitamaura */
/* @teleloc 0x21B10000 [57.566002 16.476601 2.005000] -0.230990 0.000000 0.000000 0.972956 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B1004,  5086, 0x21B10000, 59.9665, 12.0305, 2.005, -0.182074, 0, 0, 0.983285, False, '2005-02-09 10:00:00'); /* Linkable Monster Gen - 30 sec. */
/* @teleloc 0x21B10000 [59.966499 12.030500 2.005000] -0.182074 0.000000 0.000000 0.983285 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x721B1004, 0x721B1000, '2005-02-09 10:00:00') /* Aun Nireeura (29859) */
     , (0x721B1004, 0x721B1001, '2005-02-09 10:00:00') /* Aun Ihmenaura (29860) */
     , (0x721B1004, 0x721B1002, '2005-02-09 10:00:00') /* Aun Kahuiura (29861) */
     , (0x721B1004, 0x721B1003, '2005-02-09 10:00:00') /* Aun Pitamaura (29862) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B1005, 800614, 0x21B10029, 135.489, 2.98367, 1.68553, -0.986709, 0, 0, -0.1625, False, '2022-08-07 11:01:51'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x21B10029 [135.488998 2.983670 1.685530] -0.986709 0.000000 0.000000 -0.162500 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B1006, 800614, 0x21B10029, 132.864, 14.9003, 1.29669, -0.979351, 0, 0, -0.202169, False, '2022-08-07 11:01:52'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x21B10029 [132.863998 14.900300 1.296690] -0.979351 0.000000 0.000000 -0.202169 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B1007, 800614, 0x21B10021, 119.57, 21.7449, 2.32342, -0.719898, 0, 0, -0.69408, False, '2022-08-07 11:01:54'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x21B10021 [119.570000 21.744900 2.323420] -0.719898 0.000000 0.000000 -0.694080 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B1008, 800614, 0x21B10022, 109.784, 28.2995, 0.845386, -0.989814, 0, 0, -0.142366, False, '2022-08-07 11:01:55'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x21B10022 [109.783997 28.299500 0.845386] -0.989814 0.000000 0.000000 -0.142366 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B1009, 800614, 0x21B10022, 106.969, 32.7589, 0.239184, -0.954074, 0, 0, -0.299572, False, '2022-08-07 11:01:56'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x21B10022 [106.969002 32.758900 0.239184] -0.954074 0.000000 0.000000 -0.299572 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B100A, 800614, 0x21B10022, 100.243, 37.4232, 0.055, -0.803814, 0, 0, -0.59488, False, '2022-08-07 11:01:57'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x21B10022 [100.242996 37.423199 0.055000] -0.803814 0.000000 0.000000 -0.594880 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B100B, 800614, 0x21B1001A, 89.7442, 45.4523, 0.055, -0.770714, 0, 0, -0.637181, False, '2022-08-07 11:01:58'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x21B1001A [89.744202 45.452301 0.055000] -0.770714 0.000000 0.000000 -0.637181 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B100C, 800614, 0x21B1001B, 85.5979, 50.583, 0.055, -0.998553, 0, 0, -0.0537826, False, '2022-08-07 11:02:00'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x21B1001B [85.597900 50.583000 0.055000] -0.998553 0.000000 0.000000 -0.053783 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B100D, 800614, 0x21B10013, 70.2341, 50.6686, 0.055, -0.396235, 0, 0, -0.918149, False, '2022-08-07 11:02:01'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x21B10013 [70.234100 50.668598 0.055000] -0.396235 0.000000 0.000000 -0.918149 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B100E, 800614, 0x21B10012, 51.7693, 47.4553, 0.055, -0.662762, 0, 0, -0.74883, False, '2022-08-07 11:02:02'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x21B10012 [51.769299 47.455299 0.055000] -0.662762 0.000000 0.000000 -0.748830 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B100F, 800614, 0x21B1000B, 28.6185, 51.3413, 0.055, -0.616255, 0, 0, -0.787546, False, '2022-08-07 11:02:04'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x21B1000B [28.618500 51.341301 0.055000] -0.616255 0.000000 0.000000 -0.787546 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x721B1010, 800614, 0x21B10002, 12.7795, 42.9871, 0.055, -0.3441, 0, 0, -0.938933, False, '2022-08-07 11:02:05'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x21B10002 [12.779500 42.987099 0.055000] -0.344100 0.000000 0.000000 -0.938933 */
