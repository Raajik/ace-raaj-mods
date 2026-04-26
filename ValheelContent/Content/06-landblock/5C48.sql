DELETE FROM `landblock_instance` WHERE `landblock` = 0x5C48;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48000, 1000126, 0x5C480178, 90.238, -150.203, 16.235, 0.999999, 0, 0, 0.00105296, False, '2025-12-28 17:45:05'); /* Platformx */
/* @teleloc 0x5C480178 [90.237999 -150.203003 16.235001] 0.999999 0.000000 0.000000 0.001053 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48001, 804035, 0x5C4801A5, 91.0725, -150.038, 18.0533, 0.705721, 0, 0, 0.70849, False, '2025-12-28 17:48:40'); /* ArlenSeerGen */
/* @teleloc 0x5C4801A5 [91.072502 -150.037994 18.053301] 0.705721 0.000000 0.000000 0.708490 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48002, 24129, 0x5C480124, 72.4172, -5.30397, 0.055, 0.999373, 0, 0, -0.0354156, False, '2025-12-29 18:45:22'); /* Linkable Monster Generator ( 2 Min.) */
/* @teleloc 0x5C480124 [72.417198 -5.303970 0.055000] 0.999373 0.000000 0.000000 -0.035416 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x75C48002, 0x75C48003, '2025-12-29 18:53:38') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48004, '2025-12-29 18:53:40') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48005, '2025-12-29 18:53:55') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48006, '2025-12-29 18:53:57') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48007, '2025-12-29 18:54:15') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48008, '2025-12-29 18:54:17') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48009, '2025-12-29 18:54:21') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C4800A, '2025-12-29 18:54:38') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C4800B, '2025-12-29 18:54:52') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C4800C, '2025-12-29 18:55:00') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C4800D, '2025-12-29 18:55:10') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C4800E, '2025-12-29 18:55:12') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C4800F, '2025-12-29 18:55:24') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48010, '2025-12-29 18:55:30') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48011, '2025-12-29 18:55:42') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48012, '2025-12-29 18:55:51') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48013, '2025-12-29 18:56:26') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48014, '2025-12-29 18:56:36') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48015, '2025-12-29 18:56:46') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48016, '2025-12-29 18:56:59') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48017, '2025-12-29 18:57:00') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48018, '2025-12-29 18:57:04') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48019, '2025-12-29 18:57:13') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C4801A, '2025-12-29 18:57:21') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C4801B, '2025-12-29 18:57:25') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C4801C, '2025-12-29 18:57:27') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C4801D, '2025-12-29 18:57:52') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C4801E, '2025-12-29 18:57:54') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C4801F, '2025-12-29 18:57:55') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48020, '2025-12-29 18:58:11') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48021, '2025-12-29 18:58:33') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48022, '2025-12-29 18:58:36') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48023, '2025-12-29 18:58:48') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48024, '2025-12-29 18:58:57') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48025, '2025-12-29 18:59:08') /* Emboldened Virindi (804020) */
     , (0x75C48002, 0x75C48026, '2025-12-29 18:59:31') /* Enraged Virindi (804021) */
     , (0x75C48002, 0x75C48027, '2025-12-29 18:59:38') /* Enraged Virindi (804021) */
     , (0x75C48002, 0x75C48028, '2025-12-29 18:59:46') /* Enraged Virindi (804021) */
     , (0x75C48002, 0x75C48029, '2025-12-29 18:59:53') /* Enraged Virindi (804021) */
     , (0x75C48002, 0x75C4802A, '2025-12-29 19:00:10') /* Enraged Virindi (804021) */
     , (0x75C48002, 0x75C4802B, '2025-12-29 19:00:25') /* Enraged Virindi (804021) */
     , (0x75C48002, 0x75C4802C, '2025-12-29 19:00:41') /* Enraged Virindi (804021) */
     , (0x75C48002, 0x75C4802D, '2025-12-29 19:00:51') /* Enraged Virindi (804021) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48003, 804020, 0x5C48010D, 90.3445, -2.46855, -5.9623, 0.669565, 0, 0, 0.742753,  True, '2025-12-29 18:53:38'); /* Emboldened Virindi */
/* @teleloc 0x5C48010D [90.344498 -2.468550 -5.962300] 0.669565 0.000000 0.000000 0.742753 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48004, 804020, 0x5C48010E, 90.8094, -6.94162, -5.9623, 0.669565, 0, 0, 0.742753,  True, '2025-12-29 18:53:40'); /* Emboldened Virindi */
/* @teleloc 0x5C48010E [90.809402 -6.941620 -5.962300] 0.669565 0.000000 0.000000 0.742753 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48005, 804020, 0x5C48011A, 110.078, -22.2324, -5.9623, 0.999995, 0, 0, 0.0030115,  True, '2025-12-29 18:53:55'); /* Emboldened Virindi */
/* @teleloc 0x5C48011A [110.078003 -22.232401 -5.962300] 0.999995 0.000000 0.000000 0.003011 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48006, 804020, 0x5C48011A, 110.058, -18.7994, -5.9623, 0.999995, 0, 0, 0.0030115,  True, '2025-12-29 18:53:57'); /* Emboldened Virindi */
/* @teleloc 0x5C48011A [110.057999 -18.799400 -5.962300] 0.999995 0.000000 0.000000 0.003011 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48007, 804020, 0x5C48010F, 93.2044, -68.6996, -5.9623, -0.999894, 0, 0, 0.0145544,  True, '2025-12-29 18:54:15'); /* Emboldened Virindi */
/* @teleloc 0x5C48010F [93.204399 -68.699600 -5.962300] -0.999894 0.000000 0.000000 0.014554 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48008, 804020, 0x5C480115, 96.659, -68.8002, -5.9623, -0.999894, 0, 0, 0.0145544,  True, '2025-12-29 18:54:17'); /* Emboldened Virindi */
/* @teleloc 0x5C480115 [96.658997 -68.800201 -5.962300] -0.999894 0.000000 0.000000 0.014554 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48009, 804020, 0x5C48010F, 94.7893, -71.6274, -5.9623, -0.999894, 0, 0, 0.0145544,  True, '2025-12-29 18:54:21'); /* Emboldened Virindi */
/* @teleloc 0x5C48010F [94.789299 -71.627403 -5.962300] -0.999894 0.000000 0.000000 0.014554 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4800A, 804020, 0x5C480103, 75.1175, -69.9819, -5.9623, -0.703484, 0, 0, 0.710711,  True, '2025-12-29 18:54:38'); /* Emboldened Virindi */
/* @teleloc 0x5C480103 [75.117500 -69.981903 -5.962300] -0.703484 0.000000 0.000000 0.710711 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4800B, 804020, 0x5C48010C, 75.2036, -90.0309, -5.9623, -0.711657, 0, 0, 0.702528,  True, '2025-12-29 18:54:52'); /* Emboldened Virindi */
/* @teleloc 0x5C48010C [75.203598 -90.030899 -5.962300] -0.711657 0.000000 0.000000 0.702528 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4800C, 804020, 0x5C48011F, 61.4388, -80.9464, 0.0376999, 0.909275, 0, 0, -0.416196,  True, '2025-12-29 18:55:00'); /* Emboldened Virindi */
/* @teleloc 0x5C48011F [61.438801 -80.946404 0.037700] 0.909275 0.000000 0.000000 -0.416196 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4800D, 804020, 0x5C480159, 46.0886, -106.388, 6.0377, 0.960207, 0, 0, -0.27929,  True, '2025-12-29 18:55:10'); /* Emboldened Virindi */
/* @teleloc 0x5C480159 [46.088600 -106.388000 6.037700] 0.960207 0.000000 0.000000 -0.279290 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4800E, 804020, 0x5C480151, 42.5588, -103.15, 6.0377, 0.879705, 0, 0, -0.47552,  True, '2025-12-29 18:55:12'); /* Emboldened Virindi */
/* @teleloc 0x5C480151 [42.558800 -103.150002 6.037700] 0.879705 0.000000 0.000000 -0.475520 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4800F, 804020, 0x5C48014E, 30.1005, -115.004, 6.0377, -0.0108276, 0, 0, -0.999941,  True, '2025-12-29 18:55:24'); /* Emboldened Virindi */
/* @teleloc 0x5C48014E [30.100500 -115.003998 6.037700] -0.010828 0.000000 0.000000 -0.999941 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48010, 804020, 0x5C480150, 30.1188, -125.079, 6.0377, 0.999978, 0, 0, -0.00662405,  True, '2025-12-29 18:55:30'); /* Emboldened Virindi */
/* @teleloc 0x5C480150 [30.118799 -125.079002 6.037700] 0.999978 0.000000 0.000000 -0.006624 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48011, 804020, 0x5C480147, 20.0037, -115.055, 6.0377, -0.00431631, 0, 0, 0.999991,  True, '2025-12-29 18:55:42'); /* Emboldened Virindi */
/* @teleloc 0x5C480147 [20.003700 -115.055000 6.037700] -0.004316 0.000000 0.000000 0.999991 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48012, 804020, 0x5C480145, 20.1381, -124.95, 6.0377, -0.999779, 0, 0, -0.0210186,  True, '2025-12-29 18:55:51'); /* Emboldened Virindi */
/* @teleloc 0x5C480145 [20.138100 -124.949997 6.037700] -0.999779 0.000000 0.000000 -0.021019 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48013, 804020, 0x5C480140, 10.0263, -115.042, 6.0377, -0.000252947, 0, 0, -1,  True, '2025-12-29 18:56:26'); /* Emboldened Virindi */
/* @teleloc 0x5C480140 [10.026300 -115.042000 6.037700] -0.000253 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48014, 804020, 0x5C48013E, 10.0898, -124.963, 6.0377, 0.999992, 0, 0, 0.00395073,  True, '2025-12-29 18:56:36'); /* Emboldened Virindi */
/* @teleloc 0x5C48013E [10.089800 -124.962997 6.037700] 0.999992 0.000000 0.000000 0.003951 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48015, 804020, 0x5C48013B, -0.0210043, -130.476, 6.0377, -0.999905, 0, 0, -0.0137695,  True, '2025-12-29 18:56:46'); /* Emboldened Virindi */
/* @teleloc 0x5C48013B [-0.021004 -130.475998 6.037700] -0.999905 0.000000 0.000000 -0.013769 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48016, 804020, 0x5C48016E, 10.9548, -152.409, 12.0377, -0.686069, 0, 0, -0.727536,  True, '2025-12-29 18:56:59'); /* Emboldened Virindi */
/* @teleloc 0x5C48016E [10.954800 -152.408997 12.037700] -0.686069 0.000000 0.000000 -0.727536 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48017, 804020, 0x5C48016F, 11.2338, -157.16, 12.0377, -0.686069, 0, 0, -0.727536,  True, '2025-12-29 18:57:00'); /* Emboldened Virindi */
/* @teleloc 0x5C48016F [11.233800 -157.160004 12.037700] -0.686069 0.000000 0.000000 -0.727536 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48018, 804020, 0x5C48016E, 7.6211, -154.783, 12.0377, -0.672301, 0, 0, -0.740278,  True, '2025-12-29 18:57:04'); /* Emboldened Virindi */
/* @teleloc 0x5C48016E [7.621100 -154.783005 12.037700] -0.672301 0.000000 0.000000 -0.740278 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48019, 804020, 0x5C4801AF, 37.1724, -156.732, 24.0377, 0.685854, 0, 0, 0.727739,  True, '2025-12-29 18:57:13'); /* Emboldened Virindi */
/* @teleloc 0x5C4801AF [37.172401 -156.731995 24.037701] 0.685854 0.000000 0.000000 0.727739 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4801A, 804020, 0x5C4801B4, 53.4281, -170.146, 24.0377, 0.722716, 0, 0, 0.691145,  True, '2025-12-29 18:57:21'); /* Emboldened Virindi */
/* @teleloc 0x5C4801B4 [53.428101 -170.145996 24.037701] 0.722716 0.000000 0.000000 0.691145 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4801B, 804020, 0x5C4801B4, 49.7528, -170.065, 24.0377, 0.705213, 0, 0, 0.708996,  True, '2025-12-29 18:57:25'); /* Emboldened Virindi */
/* @teleloc 0x5C4801B4 [49.752800 -170.065002 24.037701] 0.705213 0.000000 0.000000 0.708996 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4801C, 804020, 0x5C4801B4, 46.5865, -170.082, 24.0377, 0.705213, 0, 0, 0.708996,  True, '2025-12-29 18:57:27'); /* Emboldened Virindi */
/* @teleloc 0x5C4801B4 [46.586498 -170.082001 24.037701] 0.705213 0.000000 0.000000 0.708996 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4801D, 804020, 0x5C4801B8, 59.9074, -155.04, 24.0377, -0.00716128, 0, 0, 0.999974,  True, '2025-12-29 18:57:52'); /* Emboldened Virindi */
/* @teleloc 0x5C4801B8 [59.907398 -155.039993 24.037701] -0.007161 0.000000 0.000000 0.999974 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4801E, 804020, 0x5C4801B8, 59.9585, -158.606, 24.0377, -0.00716128, 0, 0, 0.999974,  True, '2025-12-29 18:57:54'); /* Emboldened Virindi */
/* @teleloc 0x5C4801B8 [59.958500 -158.606003 24.037701] -0.007161 0.000000 0.000000 0.999974 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4801F, 804020, 0x5C4801B8, 60.0304, -163.627, 24.0377, -0.00716128, 0, 0, 0.999974,  True, '2025-12-29 18:57:55'); /* Emboldened Virindi */
/* @teleloc 0x5C4801B8 [60.030399 -163.626999 24.037701] -0.007161 0.000000 0.000000 0.999974 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48020, 804020, 0x5C4801A1, 82.4326, -137.071, 18.0377, -0.020919, 0, 0, -0.999781,  True, '2025-12-29 18:58:11'); /* Emboldened Virindi */
/* @teleloc 0x5C4801A1 [82.432602 -137.070999 18.037701] -0.020919 0.000000 0.000000 -0.999781 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48021, 804020, 0x5C4801A4, 90.8689, -137.281, 18.0377, -0.00334557, 0, 0, 0.999994,  True, '2025-12-29 18:58:33'); /* Emboldened Virindi */
/* @teleloc 0x5C4801A4 [90.868896 -137.281006 18.037701] -0.003346 0.000000 0.000000 0.999994 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48022, 804020, 0x5C4801A7, 100.81, -136.548, 18.0377, -0.00334557, 0, 0, 0.999994,  True, '2025-12-29 18:58:36'); /* Emboldened Virindi */
/* @teleloc 0x5C4801A7 [100.809998 -136.548004 18.037701] -0.003346 0.000000 0.000000 0.999994 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48023, 804020, 0x5C4801A9, 99.8631, -162.577, 18.0377, 0.999995, 0, 0, -0.00326268,  True, '2025-12-29 18:58:48'); /* Emboldened Virindi */
/* @teleloc 0x5C4801A9 [99.863098 -162.576996 18.037701] 0.999995 0.000000 0.000000 -0.003263 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48024, 804020, 0x5C4801A6, 89.9962, -162.407, 18.0377, 0.999995, 0, 0, -0.00326265,  True, '2025-12-29 18:58:57'); /* Emboldened Virindi */
/* @teleloc 0x5C4801A6 [89.996201 -162.406998 18.037701] 0.999995 0.000000 0.000000 -0.003263 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48025, 804020, 0x5C4801A3, 81.5956, -162.352, 18.0377, 0.999995, 0, 0, -0.00326265,  True, '2025-12-29 18:59:08'); /* Emboldened Virindi */
/* @teleloc 0x5C4801A3 [81.595596 -162.352005 18.037701] 0.999995 0.000000 0.000000 -0.003263 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48026, 804021, 0x5C4801A7, 102.954, -143.582, 18.0377, 0.705213, 0, 0, 0.708996,  True, '2025-12-29 18:59:31'); /* Enraged Virindi */
/* @teleloc 0x5C4801A7 [102.954002 -143.582001 18.037701] 0.705213 0.000000 0.000000 0.708996 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48027, 804021, 0x5C4801A9, 102.842, -156.269, 18.0377, 0.696295, 0, 0, 0.717756,  True, '2025-12-29 18:59:38'); /* Enraged Virindi */
/* @teleloc 0x5C4801A9 [102.842003 -156.268997 18.037701] 0.696295 0.000000 0.000000 0.717756 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48028, 804021, 0x5C4801A1, 76.9892, -143.865, 18.0377, -0.715629, 0, 0, 0.69848,  True, '2025-12-29 18:59:46'); /* Enraged Virindi */
/* @teleloc 0x5C4801A1 [76.989197 -143.865005 18.037701] -0.715629 0.000000 0.000000 0.698480 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C48029, 804021, 0x5C4801A3, 77.2878, -156.176, 18.0377, -0.697945, 0, 0, 0.716151,  True, '2025-12-29 18:59:53'); /* Enraged Virindi */
/* @teleloc 0x5C4801A3 [77.287804 -156.175995 18.037701] -0.697945 0.000000 0.000000 0.716151 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4802A, 804021, 0x5C48016E, 14.2266, -154.974, 12.0377, -0.712555, 0, 0, -0.701616,  True, '2025-12-29 19:00:10'); /* Enraged Virindi */
/* @teleloc 0x5C48016E [14.226600 -154.973999 12.037700] -0.712555 0.000000 0.000000 -0.701616 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4802B, 804021, 0x5C480153, 41.7723, -107.157, 6.0377, -0.919692, 0, 0, 0.39264,  True, '2025-12-29 19:00:25'); /* Enraged Virindi */
/* @teleloc 0x5C480153 [41.772301 -107.156998 6.037700] -0.919692 0.000000 0.000000 0.392640 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4802C, 804021, 0x5C480115, 95.0646, -65.5758, -5.9623, -0.999672, 0, 0, 0.0256154,  True, '2025-12-29 19:00:41'); /* Enraged Virindi */
/* @teleloc 0x5C480115 [95.064598 -65.575798 -5.962300] -0.999672 0.000000 0.000000 0.025615 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x75C4802D, 804021, 0x5C48010D, 93.57897, -4.8066854, -5.9623, -0.7125419, 0, 0, -0.7016296,  True, '2025-12-29 19:00:51'); /* Enraged Virindi */
/* @teleloc 0x5C48010D [93.578972 -4.806685 -5.962300] -0.712542 0.000000 0.000000 -0.701630 */
