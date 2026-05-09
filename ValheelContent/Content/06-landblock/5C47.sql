DELETE FROM `landblock_instance` WHERE `landblock` = 0x5C47;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47000, 804036, 0x5C470102, 94.952, -19.4917, -53.945, -0.0075423, 0, 0, -0.999972, False, '2025-12-28 17:52:53'); /* KrastenSeerGen */
/* @teleloc 0x5C470102 [94.952003 -19.491699 -53.945000] -0.007542 0.000000 0.000000 -0.999972 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47001, 24129, 0x5C470183, 8.23217, -177.488, 0.055, 0.673269, 0, 0, 0.739397, False, '2025-12-29 19:02:06'); /* Linkable Monster Generator ( 2 Min.) */
/* @teleloc 0x5C470183 [8.232170 -177.488007 0.055000] 0.673269 0.000000 0.000000 0.739397 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x75C47001, 0x75C47002, '2025-12-29 19:02:25') /* Reanimated Virindi (804019) */
     , (0x75C47001, 0x75C47003, '2025-12-29 19:02:28') /* Reanimated Virindi (804019) */
     , (0x75C47001, 0x75C47004, '2025-12-29 19:02:38') /* Reanimated Virindi (804019) */
     , (0x75C47001, 0x75C47005, '2025-12-29 19:02:51') /* Reanimated Virindi (804019) */
     , (0x75C47001, 0x75C47006, '2025-12-29 19:02:54') /* Reanimated Virindi (804019) */
     , (0x75C47001, 0x75C47007, '2025-12-29 19:03:02') /* Reanimated Virindi (804019) */
     , (0x75C47001, 0x75C47008, '2025-12-29 19:03:08') /* Reanimated Virindi (804019) */
     , (0x75C47001, 0x75C47009, '2025-12-29 19:03:09') /* Reanimated Virindi (804019) */
     , (0x75C47001, 0x75C4700A, '2025-12-29 19:03:26') /* Enraged Virindi (804021) */
     , (0x75C47001, 0x75C4700B, '2025-12-29 19:03:29') /* Enraged Virindi (804021) */
     , (0x75C47001, 0x75C4700C, '2025-12-29 19:03:34') /* Enraged Virindi (804021) */
     , (0x75C47001, 0x75C4700D, '2025-12-29 19:03:41') /* Reanimated Virindi (804019) */
     , (0x75C47001, 0x75C4700E, '2025-12-29 19:03:53') /* Reanimated Virindi (804019) */
     , (0x75C47001, 0x75C4700F, '2025-12-29 19:03:58') /* Reanimated Virindi (804019) */
     , (0x75C47001, 0x75C47010, '2025-12-29 19:04:38') /* Tormented Virindi (804022) */
     , (0x75C47001, 0x75C47011, '2025-12-29 19:04:42') /* Tormented Virindi (804022) */
     , (0x75C47001, 0x75C47012, '2025-12-29 19:04:44') /* Tormented Virindi (804022) */
     , (0x75C47001, 0x75C47013, '2025-12-29 19:04:48') /* Tormented Virindi (804022) */
     , (0x75C47001, 0x75C47014, '2025-12-29 19:05:02') /* Enraged Virindi (804021) */
     , (0x75C47001, 0x75C47015, '2025-12-29 19:05:10') /* Enraged Virindi (804021) */
     , (0x75C47001, 0x75C47016, '2025-12-29 19:05:18') /* Reanimated Virindi (804019) */
     , (0x75C47001, 0x75C47017, '2025-12-29 19:05:20') /* Reanimated Virindi (804019) */
     , (0x75C47001, 0x75C47018, '2025-12-29 19:05:33') /* Reanimated Virindi (804019) */
     , (0x75C47001, 0x75C47019, '2025-12-29 19:05:59') /* Tormented Virindi (804022) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47002, 804019, 0x5C470164, 2.27083, -148.482, -11.9623, -0.00513857, 0, 0, -0.999987,  True, '2025-12-29 19:02:25'); /* Reanimated Virindi */
/* @teleloc 0x5C470164 [2.270830 -148.481995 -11.962300] -0.005139 0.000000 0.000000 -0.999987 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47003, 804019, 0x5C47016C, 7.84026, -148.54, -11.9623, -0.00513857, 0, 0, -0.999987,  True, '2025-12-29 19:02:28'); /* Reanimated Virindi */
/* @teleloc 0x5C47016C [7.840260 -148.539993 -11.962300] -0.005139 0.000000 0.000000 -0.999987 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47004, 804019, 0x5C470147, 30.7503, -130.04, -17.9623, -0.710141, 0, 0, -0.70406,  True, '2025-12-29 19:02:38'); /* Reanimated Virindi */
/* @teleloc 0x5C470147 [30.750299 -130.039993 -17.962299] -0.710141 0.000000 0.000000 -0.704060 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47005, 804019, 0x5C47012E, 70.4226, -122.548, -23.9623, 0.709302, 0, 0, 0.704905,  True, '2025-12-29 19:02:51'); /* Reanimated Virindi */
/* @teleloc 0x5C47012E [70.422600 -122.547997 -23.962299] 0.709302 0.000000 0.000000 0.704905 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47006, 804019, 0x5C47012F, 70.3916, -127.529, -23.9623, 0.709302, 0, 0, 0.704905,  True, '2025-12-29 19:02:54'); /* Reanimated Virindi */
/* @teleloc 0x5C47012F [70.391602 -127.528999 -23.962299] 0.709302 0.000000 0.000000 0.704905 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47007, 804019, 0x5C470133, 83.6513, -123.875, -23.9623, 0.662432, 0, 0, 0.749122,  True, '2025-12-29 19:03:02'); /* Reanimated Virindi */
/* @teleloc 0x5C470133 [83.651299 -123.875000 -23.962299] 0.662432 0.000000 0.000000 0.749122 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47008, 804019, 0x5C470129, 87.428, -100.583, -29.9623, 0.0473435, 0, 0, -0.998879,  True, '2025-12-29 19:03:08'); /* Reanimated Virindi */
/* @teleloc 0x5C470129 [87.428001 -100.583000 -29.962299] 0.047343 0.000000 0.000000 -0.998879 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47009, 804019, 0x5C470126, 83.2488, -100.834, -29.9623, -0.0026388, 0, 0, -0.999997,  True, '2025-12-29 19:03:09'); /* Reanimated Virindi */
/* @teleloc 0x5C470126 [83.248802 -100.834000 -29.962299] -0.002639 0.000000 0.000000 -0.999997 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4700A, 804021, 0x5C470124, 82.3632, -84.3795, -29.9623, -0.112383, 0, 0, 0.993665,  True, '2025-12-29 19:03:26'); /* Enraged Virindi */
/* @teleloc 0x5C470124 [82.363197 -84.379501 -29.962299] -0.112383 0.000000 0.000000 0.993665 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4700B, 804021, 0x5C470127, 85.7217, -84.9724, -29.9623, 0.0872684, 0, 0, 0.996185,  True, '2025-12-29 19:03:29'); /* Enraged Virindi */
/* @teleloc 0x5C470127 [85.721703 -84.972397 -29.962299] 0.087268 0.000000 0.000000 0.996185 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4700C, 804021, 0x5C47011C, 112.196, -87.3448, -35.9623, -0.661451, 0, 0, -0.749989,  True, '2025-12-29 19:03:34'); /* Enraged Virindi */
/* @teleloc 0x5C47011C [112.195999 -87.344803 -35.962299] -0.661451 0.000000 0.000000 -0.749989 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4700D, 804019, 0x5C47011B, 113.201, -82.8312, -35.9623, -0.715788, 0, 0, -0.698318,  True, '2025-12-29 19:03:41'); /* Reanimated Virindi */
/* @teleloc 0x5C47011B [113.200996 -82.831200 -35.962299] -0.715788 0.000000 0.000000 -0.698318 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4700E, 804019, 0x5C47011F, 119.928, -63.6231, -35.9623, 0.00322257, 0, 0, -0.999995,  True, '2025-12-29 19:03:53'); /* Reanimated Virindi */
/* @teleloc 0x5C47011F [119.928001 -63.623100 -35.962299] 0.003223 0.000000 0.000000 -0.999995 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4700F, 804019, 0x5C470117, 100.869, -58.7987, -41.9623, -0.459142, 0, 0, 0.888363,  True, '2025-12-29 19:03:58'); /* Reanimated Virindi */
/* @teleloc 0x5C470117 [100.869003 -58.798698 -41.962299] -0.459142 0.000000 0.000000 0.888363 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47010, 804022, 0x5C470101, 91.1891, -13.7958, -53.9623, 0.00848911, 0, 0, -0.999964,  True, '2025-12-29 19:04:38'); /* Tormented Virindi */
/* @teleloc 0x5C470101 [91.189102 -13.795800 -53.962299] 0.008489 0.000000 0.000000 -0.999964 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47011, 804022, 0x5C470107, 99.2353, -13.8876, -53.9623, -0.00401078, 0, 0, -0.999992,  True, '2025-12-29 19:04:42'); /* Tormented Virindi */
/* @teleloc 0x5C470107 [99.235298 -13.887600 -53.962299] -0.004011 0.000000 0.000000 -0.999992 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47012, 804022, 0x5C470108, 99.1578, -23.5492, -53.9623, -0.00401078, 0, 0, -0.999992,  True, '2025-12-29 19:04:44'); /* Tormented Virindi */
/* @teleloc 0x5C470108 [99.157799 -23.549200 -53.962299] -0.004011 0.000000 0.000000 -0.999992 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47013, 804022, 0x5C470102, 90.7123, -24.1244, -53.9623, -0.00401078, 0, 0, -0.999992,  True, '2025-12-29 19:04:48'); /* Tormented Virindi */
/* @teleloc 0x5C470102 [90.712303 -24.124399 -53.962299] -0.004011 0.000000 0.000000 -0.999992 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47014, 804021, 0x5C470108, 99.8369, -18.3092, -53.9448, 0.693124, 0, 0, 0.720819,  True, '2025-12-29 19:05:02'); /* Enraged Virindi */
/* @teleloc 0x5C470108 [99.836899 -18.309200 -53.944801] 0.693124 0.000000 0.000000 0.720819 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47015, 804021, 0x5C470102, 90.4425, -18.3959, -53.9623, -0.701464, 0, 0, 0.712705,  True, '2025-12-29 19:05:10'); /* Enraged Virindi */
/* @teleloc 0x5C470102 [90.442497 -18.395901 -53.962299] -0.701464 0.000000 0.000000 0.712705 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47016, 804019, 0x5C470100, 94.1547, -0.260496, -53.9623, 0.714462, 0, 0, -0.699674,  True, '2025-12-29 19:05:18'); /* Reanimated Virindi */
/* @teleloc 0x5C470100 [94.154701 -0.260496 -53.962299] 0.714462 0.000000 0.000000 -0.699674 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47017, 804019, 0x5C470103, 97.3204, -0.194281, -53.9623, 0.714462, 0, 0, -0.699674,  True, '2025-12-29 19:05:20'); /* Reanimated Virindi */
/* @teleloc 0x5C470103 [97.320396 -0.194281 -53.962299] 0.714462 0.000000 0.000000 -0.699674 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47018, 804019, 0x5C47010B, 90.9572, -37.7456, -47.9623, 0.68705, 0, 0, -0.726611,  True, '2025-12-29 19:05:33'); /* Reanimated Virindi */
/* @teleloc 0x5C47010B [90.957199 -37.745602 -47.962299] 0.687050 0.000000 0.000000 -0.726611 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C47019, 804022, 0x5C470123, 117.63925, -88.96507, -35.962303, -0.7795898, 0, 0, -0.6262905,  True, '2025-12-29 19:05:59'); /* Tormented Virindi */
/* @teleloc 0x5C470123 [117.639252 -88.965073 -35.962303] -0.779590 0.000000 0.000000 -0.626291 */
