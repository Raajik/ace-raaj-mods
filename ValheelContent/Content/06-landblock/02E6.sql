DELETE FROM `landblock_instance` WHERE `landblock` = 0x02E6;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6030,  7770, 0x02E601E6, 79.8746, -408.532, -11.974, 0.906769, 0, 0, 0.421628,  True, '2021-11-01 00:00:00'); /* Mi Krau-Li's Jitte */
/* @teleloc 0x02E601E6 [79.874603 -408.532013 -11.974000] 0.906769 0.000000 0.000000 0.421628 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E605C,  7778, 0x02E602B7, 83.2036, -40.9325, 0.079, 0.814274, 0, 0, -0.580481,  True, '2021-11-01 00:00:00'); /* Brodor's Epitaph */
/* @teleloc 0x02E602B7 [83.203598 -40.932499 0.079000] 0.814274 0.000000 0.000000 -0.580481 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E605F,  5085, 0x02E601E6, 76.6892, -406.175, -11.995, 0.999528, 0, 0, 0.030712, False, '2021-11-01 00:00:00'); /* Linkable Item Gen - 25 seconds */
/* @teleloc 0x02E601E6 [76.689201 -406.174988 -11.995000] 0.999528 0.000000 0.000000 0.030712 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x702E605F, 0x702E6030, '2021-11-01 00:00:00') /* Mi Krau-Li's Jitte (7770) */
     , (0x702E605F, 0x702E605C, '2021-11-01 00:00:00') /* Brodor's Epitaph (7778) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6066, 801826, 0x02E6029A, 60.4768, -59.751, 0.055, 0.68278, 0, 0, 0.730624, False, '2023-01-03 06:05:04'); /* KlaatuGen */
/* @teleloc 0x02E6029A [60.476799 -59.750999 0.055000] 0.682780 0.000000 0.000000 0.730624 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6067, 801826, 0x02E602B9, 78.7433, -60.1171, 0.055, 0.711425, 0, 0, -0.702762, False, '2023-01-03 06:05:33'); /* KlaatuGen */
/* @teleloc 0x02E602B9 [78.743301 -60.117100 0.055000] 0.711425 0.000000 0.000000 -0.702762 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6068, 801826, 0x02E602B8, 79.2096, -49.6123, 0.055, 0.998515, 0, 0, 0.0544695, False, '2023-01-03 06:05:34'); /* KlaatuGen */
/* @teleloc 0x02E602B8 [79.209602 -49.612301 0.055000] 0.998515 0.000000 0.000000 0.054469 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6069, 801826, 0x02E602B7, 79.6079, -41.8144, 0.055, 0.999219, 0, 0, -0.0395228, False, '2023-01-03 06:05:36'); /* KlaatuGen */
/* @teleloc 0x02E602B7 [79.607903 -41.814400 0.055000] 0.999219 0.000000 0.000000 -0.039523 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E606A, 801826, 0x02E602B6, 78.4908, -31.1809, 0.055, 0.999972, 0, 0, 0.00748163, False, '2023-01-03 06:05:37'); /* KlaatuGen */
/* @teleloc 0x02E602B6 [78.490799 -31.180901 0.055000] 0.999972 0.000000 0.000000 0.007482 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E606B, 801826, 0x02E602B5, 78.3453, -21.4562, 0.055, 0.999972, 0, 0, 0.00748163, False, '2023-01-03 06:05:39'); /* KlaatuGen */
/* @teleloc 0x02E602B5 [78.345299 -21.456200 0.055000] 0.999972 0.000000 0.000000 0.007482 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E606C, 801826, 0x02E60296, 59.4985, -20.5333, 0.055, 0.690512, 0, 0, 0.723321, False, '2023-01-03 06:05:42'); /* KlaatuGen */
/* @teleloc 0x02E60296 [59.498501 -20.533300 0.055000] 0.690512 0.000000 0.000000 0.723321 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E606D, 801826, 0x02E60297, 58.5255, -28.2978, 0.055, -0.0157881, 0, 0, 0.999875, False, '2023-01-03 06:05:44'); /* KlaatuGen */
/* @teleloc 0x02E60297 [58.525501 -28.297800 0.055000] -0.015788 0.000000 0.000000 0.999875 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E606E, 801826, 0x02E60298, 58.8522, -38.6425, 0.055, -0.0157881, 0, 0, 0.999875, False, '2023-01-03 06:05:46'); /* KlaatuGen */
/* @teleloc 0x02E60298 [58.852200 -38.642502 0.055000] -0.015788 0.000000 0.000000 0.999875 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E606F, 801826, 0x02E60299, 59.5878, -50.2948, 0.055, -0.0157881, 0, 0, 0.999875, False, '2023-01-03 06:05:48'); /* KlaatuGen */
/* @teleloc 0x02E60299 [59.587799 -50.294800 0.055000] -0.015788 0.000000 0.000000 0.999875 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6070, 801826, 0x02E6023B, 40.2148, -28.3827, -5.945, -0.000997092, 0, 0, -1, False, '2023-01-03 06:06:03'); /* KlaatuGen */
/* @teleloc 0x02E6023B [40.214802 -28.382700 -5.945000] -0.000997 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6071, 801826, 0x02E6023D, 38.9489, -48.7512, -5.945, -0.000997095, 0, 0, -1, False, '2023-01-03 06:06:05'); /* KlaatuGen */
/* @teleloc 0x02E6023D [38.948898 -48.751202 -5.945000] -0.000997 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6072, 801826, 0x02E60199, 50.3521, -88.5526, -11.945, -0.0244991, 0, 0, -0.9997, False, '2023-01-03 06:06:10'); /* KlaatuGen */
/* @teleloc 0x02E60199 [50.352100 -88.552597 -11.945000] -0.024499 0.000000 0.000000 -0.999700 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6073, 801826, 0x02E6019A, 49.8207, -99.3889, -11.945, -0.0244991, 0, 0, -0.9997, False, '2023-01-03 06:06:11'); /* KlaatuGen */
/* @teleloc 0x02E6019A [49.820702 -99.388901 -11.945000] -0.024499 0.000000 0.000000 -0.999700 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6074, 801826, 0x02E6019B, 49.3906, -108.158, -11.945, -0.0244991, 0, 0, -0.9997, False, '2023-01-03 06:06:13'); /* KlaatuGen */
/* @teleloc 0x02E6019B [49.390598 -108.157997 -11.945000] -0.024499 0.000000 0.000000 -0.999700 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6075, 801826, 0x02E6019C, 48.5542, -119.155, -11.945, 0.0225113, 0, 0, -0.999747, False, '2023-01-03 06:06:14'); /* KlaatuGen */
/* @teleloc 0x02E6019C [48.554199 -119.154999 -11.945000] 0.022511 0.000000 0.000000 -0.999747 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6076, 801826, 0x02E6016A, 9.92614, -100.642, -11.945, 0.0254343, 0, 0, 0.999676, False, '2023-01-03 06:06:34'); /* KlaatuGen */
/* @teleloc 0x02E6016A [9.926140 -100.641998 -11.945000] 0.025434 0.000000 0.000000 0.999676 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6077, 801826, 0x02E6016B, 10.6747, -109.952, -11.945, 0.0254343, 0, 0, 0.999676, False, '2023-01-03 06:06:35'); /* KlaatuGen */
/* @teleloc 0x02E6016B [10.674700 -109.952003 -11.945000] 0.025434 0.000000 0.000000 0.999676 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6078, 801826, 0x02E6016C, 10.2092, -119.095, -11.945, 0.0254343, 0, 0, 0.999676, False, '2023-01-03 06:06:36'); /* KlaatuGen */
/* @teleloc 0x02E6016C [10.209200 -119.095001 -11.945000] 0.025434 0.000000 0.000000 0.999676 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6079, 801826, 0x02E6016D, 10.1238, -127.83, -11.945, -0.0333252, 0, 0, 0.999445, False, '2023-01-03 06:06:38'); /* KlaatuGen */
/* @teleloc 0x02E6016D [10.123800 -127.830002 -11.945000] -0.033325 0.000000 0.000000 0.999445 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E607A, 801826, 0x02E60182, 29.4726, -190.178, -11.945, -0.673218, 0, 0, 0.739444, False, '2023-01-03 06:06:45'); /* KlaatuGen */
/* @teleloc 0x02E60182 [29.472601 -190.177994 -11.945000] -0.673218 0.000000 0.000000 0.739444 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E607B, 801826, 0x02E6018B, 39.0406, -190.434, -11.945, -0.698868, 0, 0, 0.715251, False, '2023-01-03 06:06:48'); /* KlaatuGen */
/* @teleloc 0x02E6018B [39.040600 -190.434006 -11.945000] -0.698868 0.000000 0.000000 0.715251 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E607C, 801826, 0x02E601A0, 49.9038, -189.953, -11.945, -0.731711, 0, 0, 0.681615, False, '2023-01-03 06:06:49'); /* KlaatuGen */
/* @teleloc 0x02E601A0 [49.903801 -189.953003 -11.945000] -0.731711 0.000000 0.000000 0.681615 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E607D, 801826, 0x02E601A8, 57.8946, -189.875, -11.945, -0.707226, 0, 0, 0.706987, False, '2023-01-03 06:06:51'); /* KlaatuGen */
/* @teleloc 0x02E601A8 [57.894600 -189.875000 -11.945000] -0.707226 0.000000 0.000000 0.706987 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E607E, 801826, 0x02E601F0, 90.0811, -120.445, -11.945, -0.997871, 0, 0, 0.0652226, False, '2023-01-03 06:07:15'); /* KlaatuGen */
/* @teleloc 0x02E601F0 [90.081100 -120.445000 -11.945000] -0.997871 0.000000 0.000000 0.065223 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E607F, 801826, 0x02E601EF, 90.0004, -110.242, -11.945, -0.999953, 0, 0, -0.00973091, False, '2023-01-03 06:07:16'); /* KlaatuGen */
/* @teleloc 0x02E601EF [90.000397 -110.241997 -11.945000] -0.999953 0.000000 0.000000 -0.009731 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6080, 801826, 0x02E601EE, 89.7907, -99.4644, -11.945, -0.999953, 0, 0, -0.00973091, False, '2023-01-03 06:07:17'); /* KlaatuGen */
/* @teleloc 0x02E601EE [89.790703 -99.464401 -11.945000] -0.999953 0.000000 0.000000 -0.009731 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6081, 801826, 0x02E601ED, 89.7507, -90.5578, -11.945, -0.999953, 0, 0, -0.00973091, False, '2023-01-03 06:07:18'); /* KlaatuGen */
/* @teleloc 0x02E601ED [89.750702 -90.557800 -11.945000] -0.999953 0.000000 0.000000 -0.009731 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6082, 801826, 0x02E60270, 100.113, -20.3342, -5.945, -0.00471985, 0, 0, -0.999989, False, '2023-01-03 06:07:28'); /* KlaatuGen */
/* @teleloc 0x02E60270 [100.112999 -20.334200 -5.945000] -0.004720 0.000000 0.000000 -0.999989 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6083, 801826, 0x02E60271, 100.033, -28.8324, -5.945, -0.00471985, 0, 0, -0.999989, False, '2023-01-03 06:07:29'); /* KlaatuGen */
/* @teleloc 0x02E60271 [100.032997 -28.832399 -5.945000] -0.004720 0.000000 0.000000 -0.999989 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6084, 801826, 0x02E60272, 99.9269, -40.0883, -5.945, -0.00471985, 0, 0, -0.999989, False, '2023-01-03 06:07:30'); /* KlaatuGen */
/* @teleloc 0x02E60272 [99.926903 -40.088299 -5.945000] -0.004720 0.000000 0.000000 -0.999989 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6085, 801826, 0x02E60273, 99.8327, -50.0624, -5.945, -0.00471985, 0, 0, -0.999989, False, '2023-01-03 06:07:31'); /* KlaatuGen */
/* @teleloc 0x02E60273 [99.832703 -50.062401 -5.945000] -0.004720 0.000000 0.000000 -0.999989 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6086, 801826, 0x02E60219, 129.389, -99.5034, -11.945, 0.0540221, 0, 0, -0.99854, False, '2023-01-03 06:07:38'); /* KlaatuGen */
/* @teleloc 0x02E60219 [129.389008 -99.503403 -11.945000] 0.054022 0.000000 0.000000 -0.998540 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6087, 801826, 0x02E6021A, 129.507, -108.364, -11.945, 0.00703365, 0, 0, -0.999975, False, '2023-01-03 06:07:39'); /* KlaatuGen */
/* @teleloc 0x02E6021A [129.507004 -108.363998 -11.945000] 0.007034 0.000000 0.000000 -0.999975 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6088, 801826, 0x02E6021B, 129.659, -119.163, -11.945, 0.00703365, 0, 0, -0.999975, False, '2023-01-03 06:07:40'); /* KlaatuGen */
/* @teleloc 0x02E6021B [129.658997 -119.163002 -11.945000] 0.007034 0.000000 0.000000 -0.999975 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6089, 801826, 0x02E6021C, 129.807, -129.647, -11.945, 0.00703365, 0, 0, -0.999975, False, '2023-01-03 06:07:41'); /* KlaatuGen */
/* @teleloc 0x02E6021C [129.807007 -129.647003 -11.945000] 0.007034 0.000000 0.000000 -0.999975 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E608A, 801826, 0x02E6020D, 110.769, -190.154, -11.945, -0.633783, 0, 0, -0.773511, False, '2023-01-03 06:07:48'); /* KlaatuGen */
/* @teleloc 0x02E6020D [110.768997 -190.154007 -11.945000] -0.633783 0.000000 0.000000 -0.773511 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E608B, 801826, 0x02E601FE, 103.572, -190.466, -11.945, -0.69842, 0, 0, -0.715688, False, '2023-01-03 06:07:49'); /* KlaatuGen */
/* @teleloc 0x02E601FE [103.571999 -190.466003 -11.945000] -0.698420 0.000000 0.000000 -0.715688 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E608C, 801826, 0x02E601F4, 90.1571, -189.554, -11.945, -0.69842, 0, 0, -0.715688, False, '2023-01-03 06:07:51'); /* KlaatuGen */
/* @teleloc 0x02E601F4 [90.157097 -189.554001 -11.945000] -0.698420 0.000000 0.000000 -0.715688 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E608D, 801826, 0x02E601D6, 80.9878, -189.778, -11.945, -0.69842, 0, 0, -0.715688, False, '2023-01-03 06:07:52'); /* KlaatuGen */
/* @teleloc 0x02E601D6 [80.987801 -189.778000 -11.945000] -0.698420 0.000000 0.000000 -0.715688 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E608E, 801826, 0x02E60112, 70.1495, -259.352, -23.945, 0.011327, 0, 0, -0.999936, False, '2023-01-03 06:08:04'); /* KlaatuGen */
/* @teleloc 0x02E60112 [70.149498 -259.351990 -23.945000] 0.011327 0.000000 0.000000 -0.999936 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E608F, 801826, 0x02E60112, 70.1495, -259.352, -23.945, 0.011327, 0, 0, -0.999936, False, '2023-01-03 06:08:05'); /* KlaatuGen */
/* @teleloc 0x02E60112 [70.149498 -259.351990 -23.945000] 0.011327 0.000000 0.000000 -0.999936 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6090, 801826, 0x02E60112, 70.1495, -259.352, -23.945, 0.011327, 0, 0, -0.999936, False, '2023-01-03 06:08:06'); /* KlaatuGen */
/* @teleloc 0x02E60112 [70.149498 -259.351990 -23.945000] 0.011327 0.000000 0.000000 -0.999936 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6091, 801826, 0x02E60112, 70.1495, -259.352, -23.945, 0.011327, 0, 0, -0.999936, False, '2023-01-03 06:08:07'); /* KlaatuGen */
/* @teleloc 0x02E60112 [70.149498 -259.351990 -23.945000] 0.011327 0.000000 0.000000 -0.999936 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6092, 801826, 0x02E60112, 70.1495, -259.352, -23.945, 0.011327, 0, 0, -0.999936, False, '2023-01-03 06:08:08'); /* KlaatuGen */
/* @teleloc 0x02E60112 [70.149498 -259.351990 -23.945000] 0.011327 0.000000 0.000000 -0.999936 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6093, 801826, 0x02E6011F, 113.836, -285.468, -23.945, 1, 0, 0, -0.00070052, False, '2023-01-03 06:08:30'); /* KlaatuGen */
/* @teleloc 0x02E6011F [113.835999 -285.467987 -23.945000] 1.000000 0.000000 0.000000 -0.000701 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6094, 801826, 0x02E6011F, 113.836, -285.468, -23.945, 1, 0, 0, -0.00070052, False, '2023-01-03 06:08:31'); /* KlaatuGen */
/* @teleloc 0x02E6011F [113.835999 -285.467987 -23.945000] 1.000000 0.000000 0.000000 -0.000701 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6095, 801826, 0x02E6011F, 113.836, -285.468, -23.945, 1, 0, 0, -0.00070052, False, '2023-01-03 06:08:32'); /* KlaatuGen */
/* @teleloc 0x02E6011F [113.835999 -285.467987 -23.945000] 1.000000 0.000000 0.000000 -0.000701 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6096, 801826, 0x02E60102, 24.7362, -285.074, -23.945, 0.104704, 0, 0, 0.994503, False, '2023-01-03 06:08:46'); /* KlaatuGen */
/* @teleloc 0x02E60102 [24.736200 -285.074005 -23.945000] 0.104704 0.000000 0.000000 0.994503 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6097, 801826, 0x02E60102, 24.7362, -285.074, -23.945, 0.104704, 0, 0, 0.994503, False, '2023-01-03 06:08:47'); /* KlaatuGen */
/* @teleloc 0x02E60102 [24.736200 -285.074005 -23.945000] 0.104704 0.000000 0.000000 0.994503 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6098, 801826, 0x02E60102, 24.7362, -285.074, -23.945, -0.900146, 0, 0, 0.435589, False, '2023-01-03 06:08:47'); /* KlaatuGen */
/* @teleloc 0x02E60102 [24.736200 -285.074005 -23.945000] -0.900146 0.000000 0.000000 0.435589 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E6099, 801826, 0x02E60148, 70.0182, -330.371, -17.945, -0.0240231, 0, 0, 0.999711, False, '2023-01-03 06:09:02'); /* KlaatuGen */
/* @teleloc 0x02E60148 [70.018204 -330.371002 -17.945000] -0.024023 0.000000 0.000000 0.999711 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E609A, 801826, 0x02E60148, 69.982, -329.616, -17.945, -0.0240231, 0, 0, 0.999711, False, '2023-01-03 06:09:03'); /* KlaatuGen */
/* @teleloc 0x02E60148 [69.982002 -329.615997 -17.945000] -0.024023 0.000000 0.000000 0.999711 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E609B, 801826, 0x02E60148, 69.982, -329.616, -17.945, -0.0240231, 0, 0, 0.999711, False, '2023-01-03 06:09:04'); /* KlaatuGen */
/* @teleloc 0x02E60148 [69.982002 -329.615997 -17.945000] -0.024023 0.000000 0.000000 0.999711 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E609C, 801826, 0x02E60148, 69.982, -329.616, -17.945, -0.0240231, 0, 0, 0.999711, False, '2023-01-03 06:09:05'); /* KlaatuGen */
/* @teleloc 0x02E60148 [69.982002 -329.615997 -17.945000] -0.024023 0.000000 0.000000 0.999711 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E609D, 801826, 0x02E60148, 69.982, -329.616, -17.945, -0.0240231, 0, 0, 0.999711, False, '2023-01-03 06:09:06'); /* KlaatuGen */
/* @teleloc 0x02E60148 [69.982002 -329.615997 -17.945000] -0.024023 0.000000 0.000000 0.999711 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E609E, 801826, 0x02E601C4, 70.0513, -380.268, -11.945, -0.0107877, 0, 0, 0.999942, False, '2023-01-03 06:09:30'); /* KlaatuGen */
/* @teleloc 0x02E601C4 [70.051300 -380.268005 -11.945000] -0.010788 0.000000 0.000000 0.999942 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E609F, 801826, 0x02E601C7, 70.7084, -389.954, -11.945, 0.0244707, 0, 0, 0.999701, False, '2023-01-03 06:09:34'); /* KlaatuGen */
/* @teleloc 0x02E601C7 [70.708397 -389.954010 -11.945000] 0.024471 0.000000 0.000000 0.999701 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E60A0, 801826, 0x02E601CA, 70.2808, -398.684, -11.945, 0.0244707, 0, 0, 0.999701, False, '2023-01-03 06:09:35'); /* KlaatuGen */
/* @teleloc 0x02E601CA [70.280800 -398.683990 -11.945000] 0.024471 0.000000 0.000000 0.999701 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E60A1, 801826, 0x02E601CD, 70.3531, -409.781, -11.945, -0.0225397, 0, 0, 0.999746, False, '2023-01-03 06:09:37'); /* KlaatuGen */
/* @teleloc 0x02E601CD [70.353104 -409.781006 -11.945000] -0.022540 0.000000 0.000000 0.999746 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E60A2, 801828, 0x02E6025A, 69.9234, -462.485, -5.945, -0.999964, 0, 0, 0.00851561, False, '2023-01-03 06:13:24'); /* KlaatuGen2 */
/* @teleloc 0x02E6025A [69.923401 -462.484985 -5.945000] -0.999964 0.000000 0.000000 0.008516 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E60A3, 803040, 0x02E602A7, 70.4141, -34.2187, 0.055, 0.999956, 0, 0, 0.00937379, False, '2023-10-30 05:03:15');
/* @teleloc 0x02E602A7 [70.414101 -34.218700 0.055000] 0.999956 0.000000 0.000000 0.009374 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E60A4, 803040, 0x02E60272, 99.4053, -35.2543, -5.945, -0.0208016, 0, 0, -0.999784, False, '2023-10-30 05:03:23');
/* @teleloc 0x02E60272 [99.405296 -35.254299 -5.945000] -0.020802 0.000000 0.000000 -0.999784 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E60A5, 803040, 0x02E60112, 70.8889, -260.101, -23.945, 0.038079, 0, 0, -0.999275, False, '2023-10-30 05:03:48');
/* @teleloc 0x02E60112 [70.888901 -260.101013 -23.945000] 0.038079 0.000000 0.000000 -0.999275 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702E60A6, 803040, 0x02E6019B, 50.293755, -112.45157, -11.945001, -0.9999977, 0, 0, -0.0021501447, False, '2023-10-30 05:04:09');
/* @teleloc 0x02E6019B [50.293755 -112.451569 -11.945001] -0.999998 0.000000 0.000000 -0.002150 */
