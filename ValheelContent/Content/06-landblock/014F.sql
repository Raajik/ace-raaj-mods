DELETE FROM `landblock_instance` WHERE `landblock` = 0x014F;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F001,   278, 0x014F0102, 24.75, -70, -24, -0.707107, 0, 0, 0.707107, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x014F0102 [24.750000 -70.000000 -24.000000] -0.707107 0.000000 0.000000 0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F002,   568, 0x014F0104, 19.99, -75.15, -24, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x014F0104 [19.990000 -75.150002 -24.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F01F,   171, 0x014F01CA, 37.5604, -43.6154, -12, 0, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Vat */
/* @teleloc 0x014F01CA [37.560398 -43.615398 -12.000000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F026,   261, 0x014F01E5, 61.3121, -73.5784, -11.976, 0.051573, 0, 0, -0.998669,  True, '2005-02-09 10:00:00'); /* Cheese */
/* @teleloc 0x014F01E5 [61.312099 -73.578400 -11.976000] 0.051573 0.000000 0.000000 -0.998669 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F028,  1542, 0x014F01E5, 60, -70, -12, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Linkable Item Generator */
/* @teleloc 0x014F01E5 [60.000000 -70.000000 -12.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7014F028, 0x7014F026, '2005-02-09 10:00:00') /* Cheese (261) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F02C,  3961, 0x014F01F3, 83.8509, -52.9288, -12, 0.704711, 0, 0, -0.709494, False, '2005-02-09 10:00:00'); /* Chest */
/* @teleloc 0x014F01F3 [83.850899 -52.928799 -12.000000] 0.704711 0.000000 0.000000 -0.709494 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F04E,   171, 0x014F0251, 42.5597, -33.5644, 0, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Vat */
/* @teleloc 0x014F0251 [42.559700 -33.564400 0.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F04F, 801864, 0x014F01A2, 19.6143, -31.7545, -11.945, 0.997867, 0, 0, -0.0652799, False, '2023-01-11 07:47:15'); /* RynthidGen5 */
/* @teleloc 0x014F01A2 [19.614300 -31.754499 -11.945000] 0.997867 0.000000 0.000000 -0.065280 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F050, 801864, 0x014F0214, 50.3461, -49.8531, -5.945, -0.0349527, 0, 0, -0.999389, False, '2023-01-11 07:47:29'); /* RynthidGen5 */
/* @teleloc 0x014F0214 [50.346100 -49.853100 -5.945000] -0.034953 0.000000 0.000000 -0.999389 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F051, 801864, 0x014F01CA, 39.1875, -41.5284, -11.945, -0.921652, 0, 0, 0.388017, False, '2023-01-11 07:47:36'); /* RynthidGen5 */
/* @teleloc 0x014F01CA [39.187500 -41.528400 -11.945000] -0.921652 0.000000 0.000000 0.388017 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F052, 801864, 0x014F0172, 50.495, -50.1284, -17.4375, 0.698418, 0, 0, 0.71569, False, '2023-01-11 07:47:43'); /* RynthidGen5 */
/* @teleloc 0x014F0172 [50.494999 -50.128399 -17.437500] 0.698418 0.000000 0.000000 0.715690 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F053, 801864, 0x014F017A, 54.4691, -69.882, -17.945, -0.31986, 0, 0, 0.947465, False, '2023-01-11 07:47:48'); /* RynthidGen5 */
/* @teleloc 0x014F017A [54.469101 -69.882004 -17.945000] -0.319860 0.000000 0.000000 0.947465 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F054, 801864, 0x014F0185, 60.5038, -52.2994, -17.945, 0.0228643, 0, 0, 0.999739, False, '2023-01-11 07:47:59'); /* RynthidGen5 */
/* @teleloc 0x014F0185 [60.503799 -52.299400 -17.945000] 0.022864 0.000000 0.000000 0.999739 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F055, 801864, 0x014F0158, 40.5056, -69.0242, -17.945, -0.0901983, 0, 0, 0.995924, False, '2023-01-11 07:48:10'); /* RynthidGen5 */
/* @teleloc 0x014F0158 [40.505600 -69.024200 -17.945000] -0.090198 0.000000 0.000000 0.995924 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F056, 801864, 0x014F013A, 30.2929, -90.3087, -17.945, -0.0234951, 0, 0, 0.999724, False, '2023-01-11 07:48:17'); /* RynthidGen5 */
/* @teleloc 0x014F013A [30.292900 -90.308701 -17.945000] -0.023495 0.000000 0.000000 0.999724 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F057, 801864, 0x014F0195, 69.6505, -87.0633, -17.945, -0.964028, 0, 0, 0.265801, False, '2023-01-11 07:48:29'); /* RynthidGen5 */
/* @teleloc 0x014F0195 [69.650497 -87.063301 -17.945000] -0.964028 0.000000 0.000000 0.265801 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F058, 801864, 0x014F01FC, 90.898, -59.8431, -11.945, -0.691084, 0, 0, 0.722774, False, '2023-01-11 07:48:42'); /* RynthidGen5 */
/* @teleloc 0x014F01FC [90.898003 -59.843102 -11.945000] -0.691084 0.000000 0.000000 0.722774 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F059, 801864, 0x014F01F9, 80.3424, -68.571, -11.945, 0.0909468, 0, 0, 0.995856, False, '2023-01-11 07:48:46'); /* RynthidGen5 */
/* @teleloc 0x014F01F9 [80.342400 -68.570999 -11.945000] 0.090947 0.000000 0.000000 0.995856 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F05A, 801864, 0x014F01F3, 80.218, -50.9373, -11.945, -0.999885, 0, 0, 0.0151327, False, '2023-01-11 07:48:52'); /* RynthidGen5 */
/* @teleloc 0x014F01F3 [80.218002 -50.937302 -11.945000] -0.999885 0.000000 0.000000 0.015133 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F05B, 801864, 0x014F01EA, 69.6961, -40.0454, -11.945, -0.999438, 0, 0, -0.033507, False, '2023-01-11 07:58:58'); /* RynthidGen5 */
/* @teleloc 0x014F01EA [69.696098 -40.045399 -11.945000] -0.999438 0.000000 0.000000 -0.033507 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F05C, 801864, 0x014F01DF, 60.1092, -53.6103, -11.945, 0.999704, 0, 0, 0.0243224, False, '2023-01-11 07:59:10'); /* RynthidGen5 */
/* @teleloc 0x014F01DF [60.109200 -53.610298 -11.945000] 0.999704 0.000000 0.000000 0.024322 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F05D, 801864, 0x014F01E5, 59.8572, -66.9745, -11.945, -0.00696795, 0, 0, -0.999976, False, '2023-01-11 07:59:16'); /* RynthidGen5 */
/* @teleloc 0x014F01E5 [59.857201 -66.974503 -11.945000] -0.006968 0.000000 0.000000 -0.999976 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F05E, 801864, 0x014F01D7, 49.4004, -59.873, -11.945, 0.993631, 0, 0, 0.112686, False, '2023-01-11 07:59:27'); /* RynthidGen5 */
/* @teleloc 0x014F01D7 [49.400398 -59.873001 -11.945000] 0.993631 0.000000 0.000000 0.112686 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F05F, 801864, 0x014F021B, 49.457, -69.6848, -5.945, 0.996128, 0, 0, -0.087915, False, '2023-01-11 07:59:43'); /* RynthidGen5 */
/* @teleloc 0x014F021B [49.457001 -69.684799 -5.945000] 0.996128 0.000000 0.000000 -0.087915 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F060, 801864, 0x014F021E, 11.0378, -40.6299, 0.055, 0.869262, 0, 0, -0.494351, False, '2023-01-11 07:59:55'); /* RynthidGen5 */
/* @teleloc 0x014F021E [11.037800 -40.629902 0.055000] 0.869262 0.000000 0.000000 -0.494351 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F061, 801864, 0x014F0231, 19.3536, -40.5936, 0.055, 0.80199, 0, 0, -0.597338, False, '2023-01-11 07:59:56'); /* RynthidGen5 */
/* @teleloc 0x014F0231 [19.353600 -40.593601 0.055000] 0.801990 0.000000 0.000000 -0.597338 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F062, 801864, 0x014F0251, 39.545, -29.594, 0.055, 0.83622, 0, 0, 0.548395, False, '2023-01-11 08:00:01'); /* RynthidGen5 */
/* @teleloc 0x014F0251 [39.544998 -29.594000 0.055000] 0.836220 0.000000 0.000000 0.548395 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F063, 801864, 0x014F022A, 22.1461, -20.1353, 0.055, 0.676675, 0, 0, -0.736281, False, '2023-01-11 08:00:05'); /* RynthidGen5 */
/* @teleloc 0x014F022A [22.146099 -20.135300 0.055000] 0.676675 0.000000 0.000000 -0.736281 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F064, 801864, 0x014F023B, 30.1694, -9.02999, 0.055, 0.987726, 0, 0, 0.156194, False, '2023-01-11 08:00:07'); /* RynthidGen5 */
/* @teleloc 0x014F023B [30.169399 -9.029990 0.055000] 0.987726 0.000000 0.000000 0.156194 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F065, 801864, 0x014F024F, 40.2698, -5.04114, 0.055, 0.133562, 0, 0, -0.99104, False, '2023-01-11 08:00:09'); /* RynthidGen5 */
/* @teleloc 0x014F024F [40.269798 -5.041140 0.055000] 0.133562 0.000000 0.000000 -0.991040 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F068, 801864, 0x014F01AC, 18.5293, -76.7509, -11.945, 0.315747, 0, 0, 0.948843, False, '2023-01-11 08:00:45'); /* RynthidGen5 */
/* @teleloc 0x014F01AC [18.529301 -76.750900 -11.945000] 0.315747 0.000000 0.000000 0.948843 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F069, 801864, 0x014F019E, 9.08595, -83.6474, -11.945, 0.2514, 0, 0, 0.967883, False, '2023-01-11 08:00:46'); /* RynthidGen5 */
/* @teleloc 0x014F019E [9.085950 -83.647400 -11.945000] 0.251400 0.000000 0.000000 0.967883 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F06A, 801864, 0x014F01AF, 16.6888, -89.8464, -11.945, -0.54097, 0, 0, 0.841042, False, '2023-01-11 08:00:47'); /* RynthidGen5 */
/* @teleloc 0x014F01AF [16.688801 -89.846397 -11.945000] -0.540970 0.000000 0.000000 0.841042 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F06B, 801864, 0x014F01AF, 23.5499, -89.5296, -11.945, -0.658095, 0, 0, 0.752935, False, '2023-01-11 08:00:48'); /* RynthidGen5 */
/* @teleloc 0x014F01AF [23.549900 -89.529602 -11.945000] -0.658095 0.000000 0.000000 0.752935 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F06C, 801864, 0x014F0127, 19.8744, -103.832, -17.945, 0.333895, 0, 0, 0.94261, False, '2023-01-11 08:00:53'); /* RynthidGen5 */
/* @teleloc 0x014F0127 [19.874399 -103.832001 -17.945000] 0.333895 0.000000 0.000000 0.942610 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F06D, 801864, 0x014F0146, 30.3089, -119.068, -17.945, -0.582328, 0, 0, 0.812954, False, '2023-01-11 08:00:56'); /* RynthidGen5 */
/* @teleloc 0x014F0146 [30.308901 -119.068001 -17.945000] -0.582328 0.000000 0.000000 0.812954 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F06E, 801864, 0x014F0162, 41.8495, -120.501, -17.945, 0.00337064, 0, 0, 0.999994, False, '2023-01-11 08:00:58'); /* RynthidGen5 */
/* @teleloc 0x014F0162 [41.849499 -120.500999 -17.945000] 0.003371 0.000000 0.000000 0.999994 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F06F, 801864, 0x014F016A, 40.3505, -139.289, -17.945, -0.063704, 0, 0, 0.997969, False, '2023-01-11 08:01:00'); /* RynthidGen5 */
/* @teleloc 0x014F016A [40.350498 -139.289001 -17.945000] -0.063704 0.000000 0.000000 0.997969 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F070, 801864, 0x014F0194, 55.5204, -138.614, -17.0677, -0.865462, 0, 0, 0.500975, False, '2023-01-11 08:01:01'); /* RynthidGen5 */
/* @teleloc 0x014F0194 [55.520401 -138.613998 -17.067699] -0.865462 0.000000 0.000000 0.500975 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F071, 801864, 0x014F0194, 59.0392, -135.961, -16.9117, -0.865462, 0, 0, 0.500975, False, '2023-01-11 08:01:02'); /* RynthidGen5 */
/* @teleloc 0x014F0194 [59.039200 -135.960999 -16.911699] -0.865462 0.000000 0.000000 0.500975 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F072, 801864, 0x014F0194, 59.0594, -135.948, -16.9117, -0.865462, 0, 0, 0.500975, False, '2023-01-11 08:01:03'); /* RynthidGen5 */
/* @teleloc 0x014F0194 [59.059399 -135.947998 -16.911699] -0.865462 0.000000 0.000000 0.500975 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F073, 801864, 0x014F0194, 59.0594, -135.948, -16.9117, -0.54007, 0, 0, -0.84162, False, '2023-01-11 08:01:04'); /* RynthidGen5 */
/* @teleloc 0x014F0194 [59.059399 -135.947998 -16.911699] -0.540070 0.000000 0.000000 -0.841620 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F074, 801864, 0x014F0151, 25.8045, -149.251, -17.945, -0.934717, 0, 0, -0.355392, False, '2023-01-11 08:01:11'); /* RynthidGen5 */
/* @teleloc 0x014F0151 [25.804501 -149.251007 -17.945000] -0.934717 0.000000 0.000000 -0.355392 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F075, 801864, 0x014F0134, 23.2361, -142.401, -17.945, -0.993084, 0, 0, 0.117407, False, '2023-01-11 08:01:12'); /* RynthidGen5 */
/* @teleloc 0x014F0134 [23.236099 -142.401001 -17.945000] -0.993084 0.000000 0.000000 0.117407 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F076, 801864, 0x014F0113, 3.24957, -122.341, -17.945, -0.141147, 0, 0, -0.989989, False, '2023-01-11 08:01:19'); /* RynthidGen5 */
/* @teleloc 0x014F0113 [3.249570 -122.341003 -17.945000] -0.141147 0.000000 0.000000 -0.989989 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7014F077, 803040, 0x014F0108, 29.826496, -74.247185, -23.945002, 0.41251305, 0, 0, -0.9109517, False, '2023-10-30 05:16:38');
/* @teleloc 0x014F0108 [29.826496 -74.247185 -23.945002] 0.412513 0.000000 0.000000 -0.910952 */
