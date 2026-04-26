DELETE FROM `landblock_instance` WHERE `landblock` = 0x00DF;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF000, 29962, 0x00DF02AA, 105.465, -90.0011, -5.945, 0.713353, 0, 0, 0.700805, False, '2021-11-01 00:00:00'); /* Door */
/* @teleloc 0x00DF02AA [105.464996 -90.001099 -5.945000] 0.713353 0.000000 0.000000 0.700805 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x700DF000, 0x700DF001, '2021-11-01 00:00:00') /* Lever (29593) */
     , (0x700DF000, 0x700DF002, '2021-11-01 00:00:00') /* Lever (29593) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF001, 29593, 0x00DF0313, 112.085, -81.952, 5.974, 0.342632, 0, 0, -0.93947,  True, '2021-11-01 00:00:00'); /* Lever */
/* @teleloc 0x00DF0313 [112.084999 -81.952003 5.974000] 0.342632 0.000000 0.000000 -0.939470 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF002, 29593, 0x00DF031A, 111.437, -98.6989, 5.974, -0.91309, 0, 0, 0.407758,  True, '2021-11-01 00:00:00'); /* Lever */
/* @teleloc 0x00DF031A [111.436996 -98.698898 5.974000] -0.913090 0.000000 0.000000 0.407758 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF003, 29962, 0x00DF02C8, 134.556, -90.0008, -6, 0.707107, 0, 0, -0.707107, False, '2021-11-01 00:00:00'); /* Door */
/* @teleloc 0x00DF02C8 [134.556000 -90.000801 -6.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x700DF003, 0x700DF004, '2021-11-01 00:00:00') /* Lever (29593) */
     , (0x700DF003, 0x700DF005, '2021-11-01 00:00:00') /* Lever (29593) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF004, 29593, 0x00DF032E, 128.288, -98.1644, 5.974, -0.921278, 0, 0, -0.388906,  True, '2021-11-01 00:00:00'); /* Lever */
/* @teleloc 0x00DF032E [128.287994 -98.164398 5.974000] -0.921278 0.000000 0.000000 -0.388906 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF005, 29593, 0x00DF0327, 128.009, -81.8391, 5.974, 0.370791, 0, 0, 0.928716,  True, '2021-11-01 00:00:00'); /* Lever */
/* @teleloc 0x00DF0327 [128.009003 -81.839104 5.974000] 0.370791 0.000000 0.000000 0.928716 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF006,  4145, 0x00DF01A3, 154.8, -59.993, -41.945, 0.707107, 0, 0, -0.707107, False, '2021-11-01 00:00:00'); /* Door */
/* @teleloc 0x00DF01A3 [154.800003 -59.993000 -41.945000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x700DF006, 0x700DF007, '2021-11-01 00:00:00') /* Lever (29593) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF007, 29593, 0x00DF0182, 79.7302, -131.532, -42.026, -0.01252, 0, 0, 0.999922,  True, '2021-11-01 00:00:00'); /* Lever */
/* @teleloc 0x00DF0182 [79.730202 -131.531998 -42.026001] -0.012520 0.000000 0.000000 0.999922 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF008, 803355, 0x00DF0313, 110.187, -79.6565, 6.055, -0.0668678, 0, 0, 0.997762, False, '2024-03-11 10:39:38');
/* @teleloc 0x00DF0313 [110.186996 -79.656502 6.055000] -0.066868 0.000000 0.000000 0.997762 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF009, 803355, 0x00DF0299, 73.645, -90.3559, -5.945, -0.68454, 0, 0, 0.728975, False, '2024-03-11 10:39:46');
/* @teleloc 0x00DF0299 [73.644997 -90.355904 -5.945000] -0.684540 0.000000 0.000000 0.728975 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF00A, 803355, 0x00DF031A, 110.544, -100.069, 6.055, -0.704479, 0, 0, 0.709724, False, '2024-03-11 10:39:55');
/* @teleloc 0x00DF031A [110.543999 -100.069000 6.055000] -0.704479 0.000000 0.000000 0.709724 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF00B, 803355, 0x00DF02C2, 120.141, -138.046, -5.945, -0.999104, 0, 0, 0.0423148, False, '2024-03-11 10:40:01');
/* @teleloc 0x00DF02C2 [120.140999 -138.046005 -5.945000] -0.999104 0.000000 0.000000 0.042315 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF00C, 803355, 0x00DF032E, 129.713, -101.553, 6.055, -0.999909, 0, 0, -0.0135017, False, '2024-03-11 10:40:07');
/* @teleloc 0x00DF032E [129.712997 -101.553001 6.055000] -0.999909 0.000000 0.000000 -0.013502 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF00D, 803355, 0x00DF02D9, 167.658, -90.2783, -5.945, -0.800687, 0, 0, -0.599083, False, '2024-03-11 10:40:13');
/* @teleloc 0x00DF02D9 [167.658005 -90.278297 -5.945000] -0.800687 0.000000 0.000000 -0.599083 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF00E, 803355, 0x00DF0327, 130.348, -79.6363, 6.055, -0.715414, 0, 0, -0.698701, False, '2024-03-11 10:40:22');
/* @teleloc 0x00DF0327 [130.348007 -79.636299 6.055000] -0.715414 0.000000 0.000000 -0.698701 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF00F, 803355, 0x00DF025B, 119.999, -87.7229, -23.74, -0.0113512, 0, 0, -0.999936, False, '2024-03-11 10:40:55');
/* @teleloc 0x00DF025B [119.999001 -87.722900 -23.740000] -0.011351 0.000000 0.000000 -0.999936 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF010, 803355, 0x00DF025B, 119.992, -88.0517, -23.74, 0.0136481, 0, 0, -0.999907, False, '2024-03-11 10:40:57');
/* @teleloc 0x00DF025B [119.991997 -88.051697 -23.740000] 0.013648 0.000000 0.000000 -0.999907 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF011, 803355, 0x00DF0261, 128.942, -96.232, -23.945, 0.0754347, 0, 0, -0.997151, False, '2024-03-11 10:41:02');
/* @teleloc 0x00DF0261 [128.942001 -96.232002 -23.945000] 0.075435 0.000000 0.000000 -0.997151 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF012, 803355, 0x00DF025F, 128.678, -84.0751, -23.945, -0.99966, 0, 0, 0.0260755, False, '2024-03-11 10:41:04');
/* @teleloc 0x00DF025F [128.677994 -84.075104 -23.945000] -0.999660 0.000000 0.000000 0.026075 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF013, 803355, 0x00DF0257, 111.041, -96.7866, -23.945, -0.129857, 0, 0, -0.991533, False, '2024-03-11 10:41:07');
/* @teleloc 0x00DF0257 [111.041000 -96.786598 -23.945000] -0.129857 0.000000 0.000000 -0.991533 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF014, 803355, 0x00DF0255, 109.38, -83.4195, -23.945, -0.997137, 0, 0, 0.0756108, False, '2024-03-11 10:41:09');
/* @teleloc 0x00DF0255 [109.379997 -83.419502 -23.945000] -0.997137 0.000000 0.000000 0.075611 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF015, 803355, 0x00DF023F, 161.846, -130.31, -29.94, 0.694505, 0, 0, 0.719488, False, '2024-03-11 10:41:20');
/* @teleloc 0x00DF023F [161.845993 -130.309998 -29.940001] 0.694505 0.000000 0.000000 0.719488 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF016, 803355, 0x00DF01E8, 133.311, -129.558, -35.945, 0.6865, 0, 0, 0.72713, False, '2024-03-11 10:41:23');
/* @teleloc 0x00DF01E8 [133.311005 -129.557999 -35.945000] 0.686500 0.000000 0.000000 0.727130 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF017, 803355, 0x00DF01CB, 103.319, -129.84, -35.945, 0.661984, 0, 0, 0.749518, False, '2024-03-11 10:41:25');
/* @teleloc 0x00DF01CB [103.319000 -129.839996 -35.945000] 0.661984 0.000000 0.000000 0.749518 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF018, 803355, 0x00DF01DA, 120.069, -91.757, -35.7132, 0.999997, 0, 0, 0.00247237, False, '2024-03-11 10:41:34');
/* @teleloc 0x00DF01DA [120.069000 -91.757004 -35.713200] 0.999997 0.000000 0.000000 0.002472 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF019, 803355, 0x00DF01E5, 130.719, -89.9857, -35.945, 0.735585, 0, 0, -0.677433, False, '2024-03-11 10:41:36');
/* @teleloc 0x00DF01E5 [130.718994 -89.985703 -35.945000] 0.735585 0.000000 0.000000 -0.677433 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF01A, 803355, 0x00DF01CF, 108.767, -90.6107, -35.945, 0.710954, 0, 0, 0.703239, False, '2024-03-11 10:41:39');
/* @teleloc 0x00DF01CF [108.766998 -90.610703 -35.945000] 0.710954 0.000000 0.000000 0.703239 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF01B, 803355, 0x00DF017D, 79.8192, -81.2058, -41.945, 0.0600499, 0, 0, 0.998195, False, '2024-03-11 10:41:48');
/* @teleloc 0x00DF017D [79.819199 -81.205803 -41.945000] 0.060050 0.000000 0.000000 0.998195 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF01C, 803355, 0x00DF017F, 79.0491, -100.026, -41.945, -0.0395084, 0, 0, 0.999219, False, '2024-03-11 10:41:50');
/* @teleloc 0x00DF017F [79.049103 -100.026001 -41.945000] -0.039508 0.000000 0.000000 0.999219 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF01D, 803355, 0x00DF0181, 79.9972, -115.478, -41.945, 0.0379425, 0, 0, 0.99928, False, '2024-03-11 10:41:51');
/* @teleloc 0x00DF0181 [79.997200 -115.477997 -41.945000] 0.037942 0.000000 0.000000 0.999280 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF01E, 803355, 0x00DF01A8, 159.624, -103.567, -39.6508, -0.999744, 0, 0, -0.0226232, False, '2024-03-11 10:42:10');
/* @teleloc 0x00DF01A8 [159.623993 -103.567001 -39.650799] -0.999744 0.000000 0.000000 -0.022623 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF01F, 803355, 0x00DF01A6, 160.069, -82.7393, -41.945, -0.998496, 0, 0, 0.0548176, False, '2024-03-11 10:42:12');
/* @teleloc 0x00DF01A6 [160.069000 -82.739304 -41.945000] -0.998496 0.000000 0.000000 0.054818 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF020, 803355, 0x00DF01A4, 160.17, -60.2309, -41.945, -0.999766, 0, 0, 0.0216419, False, '2024-03-11 10:42:14');
/* @teleloc 0x00DF01A4 [160.169998 -60.230900 -41.945000] -0.999766 0.000000 0.000000 0.021642 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF021, 803355, 0x00DF0112, 120.513, -46.6812, -53.945, -0.623656, 0, 0, 0.781699, False, '2024-03-11 10:42:23');
/* @teleloc 0x00DF0112 [120.513000 -46.681198 -53.945000] -0.623656 0.000000 0.000000 0.781699 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF022, 803355, 0x00DF011C, 134.413, -39.0864, -53.945, -0.984197, 0, 0, 0.17708, False, '2024-03-11 10:42:25');
/* @teleloc 0x00DF011C [134.412994 -39.086399 -53.945000] -0.984197 0.000000 0.000000 0.177080 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF023, 803355, 0x00DF0124, 141.992, -28.1903, -53.945, -0.996251, 0, 0, 0.0865069, False, '2024-03-11 10:42:27');
/* @teleloc 0x00DF0124 [141.992004 -28.190300 -53.945000] -0.996251 0.000000 0.000000 0.086507 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF024, 803355, 0x00DF0132, 148.479, -17.4962, -53.945, -0.869525, 0, 0, 0.493888, False, '2024-03-11 10:42:29');
/* @teleloc 0x00DF0132 [148.479004 -17.496201 -53.945000] -0.869525 0.000000 0.000000 0.493888 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF025, 803355, 0x00DF0138, 150.222, -60.1161, -53.7118, -0.0278542, 0, 0, 0.999612, False, '2024-03-11 10:42:37');
/* @teleloc 0x00DF0138 [150.222000 -60.116100 -53.711800] -0.027854 0.000000 0.000000 0.999612 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF026, 803355, 0x00DF012A, 138.8, -70.713, -53.945, 0.193348, 0, 0, 0.98113, False, '2024-03-11 10:42:41');
/* @teleloc 0x00DF012A [138.800003 -70.712997 -53.945000] 0.193348 0.000000 0.000000 0.981130 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF027, 803355, 0x00DF012E, 136.422, -107.254, -53.945, -0.428808, 0, 0, 0.903396, False, '2024-03-11 10:42:46');
/* @teleloc 0x00DF012E [136.421997 -107.253998 -53.945000] -0.428808 0.000000 0.000000 0.903396 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF028, 803355, 0x00DF0100, 100.798, -71.4162, -53.945, -0.919322, 0, 0, -0.393506, False, '2024-03-11 10:42:55');
/* @teleloc 0x00DF0100 [100.797997 -71.416199 -53.945000] -0.919322 0.000000 0.000000 -0.393506 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF029, 803355, 0x00DF0104, 101.282, -108.779, -53.945, -0.325902, 0, 0, -0.945403, False, '2024-03-11 10:42:59');
/* @teleloc 0x00DF0104 [101.281998 -108.778999 -53.945000] -0.325902 0.000000 0.000000 -0.945403 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF02B, 803355, 0x00DF01E9, 141.859, -49.3521, -35.945, -0.675459, 0, 0, -0.737398, False, '2024-03-11 10:44:04');
/* @teleloc 0x00DF01E9 [141.858994 -49.352100 -35.945000] -0.675459 0.000000 0.000000 -0.737398 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF02C, 803355, 0x00DF01D4, 118.328, -49.8292, -35.945, -0.70743, 0, 0, -0.706784, False, '2024-03-11 10:44:06');
/* @teleloc 0x00DF01D4 [118.328003 -49.829201 -35.945000] -0.707430 0.000000 0.000000 -0.706784 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF02D, 803355, 0x00DF01C4, 96.9664, -49.8097, -35.945, -0.70743, 0, 0, -0.706784, False, '2024-03-11 10:44:08');
/* @teleloc 0x00DF01C4 [96.966400 -49.809700 -35.945000] -0.707430 0.000000 0.000000 -0.706784 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF02E, 803355, 0x00DF02B9, 121.798, -89.18, -5.945, 0.701958, 0, 0, 0.712218, False, '2024-03-11 10:44:29');
/* @teleloc 0x00DF02B9 [121.797997 -89.180000 -5.945000] 0.701958 0.000000 0.000000 0.712218 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x700DF02F, 803356, 0x00DF0117, 120.026566, -90.18738, -53.3437, -0.919129, 0, 0, -0.393958, False, '2024-03-11 10:58:36');
/* @teleloc 0x00DF0117 [120.026566 -90.187378 -53.343700] -0.919129 0.000000 0.000000 -0.393958 */
