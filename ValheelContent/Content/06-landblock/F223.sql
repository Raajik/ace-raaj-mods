DELETE FROM `landblock_instance` WHERE `landblock` = 0xF223;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223004,   412, 0xF2230000, 159.769, 34.1177, 18, 0.999932, 0, 0, -0.011672, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0xF2230000 [159.768997 34.117699 18.000000] 0.999932 0.000000 0.000000 -0.011672 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223005, 12050, 0xF2230102, 155.427, 40.8154, 18.005, -0.145149, 0, 0, -0.98941,  True, '2005-02-09 10:00:00'); /* Agent of the Arcanum */
/* @teleloc 0xF2230102 [155.427002 40.815399 18.004999] -0.145149 0.000000 0.000000 -0.989410 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223006,  7923, 0xF2230102, 155.373, 39.499, 18.005, -0.980093, 0, 0, 0.198539, False, '2005-02-09 10:00:00'); /* Linkable Monster Generator ( 3 Min.) */
/* @teleloc 0xF2230102 [155.373001 39.499001 18.004999] -0.980093 0.000000 0.000000 0.198539 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7F223006, 0x7F223005, '2005-02-09 10:00:00') /* Agent of the Arcanum (12050) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223007, 12304, 0xF2230000, 150.002, 33.0799, 18.005, 0.999822, 0, 0, -0.018851, False, '2005-02-09 10:00:00'); /* Agent of the Arcanum  */
/* @teleloc 0xF2230000 [150.001999 33.079899 18.004999] 0.999822 0.000000 0.000000 -0.018851 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223008, 800034, 0xF2230031, 151.459, 14.9421, 18, -0.987747, 0, 0, 0.156061, False, '2022-08-18 08:02:54'); /* Nightmare Queen */
/* @teleloc 0xF2230031 [151.459000 14.942100 18.000000] -0.987747 0.000000 0.000000 0.156061 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223010, 800077, 0xF2230031, 165.302, 21.0981, 18.01, 0.636808, 0, 0, 0.771022, False, '2022-08-18 08:04:44'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [165.302002 21.098101 18.010000] 0.636808 0.000000 0.000000 0.771022 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223011, 800077, 0xF2230032, 164.299, 24.5364, 18.01, 0.555442, 0, 0, 0.831555, False, '2022-08-18 08:04:52'); /* Corroded Stone Golem */
/* @teleloc 0xF2230032 [164.298996 24.536400 18.010000] 0.555442 0.000000 0.000000 0.831555 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223012, 800077, 0xF2230031, 167.049, 16.7306, 18.01, 0.327614, 0, 0, 0.944812, False, '2022-08-18 08:04:54'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [167.048996 16.730600 18.010000] 0.327614 0.000000 0.000000 0.944812 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223013, 800077, 0xF2230031, 164.115, 12.5227, 18.01, 0.157673, 0, 0, 0.987491, False, '2022-08-18 08:04:56'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [164.115005 12.522700 18.010000] 0.157673 0.000000 0.000000 0.987491 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223014, 800077, 0xF2230031, 162.386, 7.24408, 18.01, 0.157673, 0, 0, 0.987491, False, '2022-08-18 08:04:58'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [162.386002 7.244080 18.010000] 0.157673 0.000000 0.000000 0.987491 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223015, 800077, 0xF2230031, 161.362, 4.11946, 18.01, 0.157673, 0, 0, 0.987491, False, '2022-08-18 08:04:59'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [161.362000 4.119460 18.010000] 0.157673 0.000000 0.000000 0.987491 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223016, 800077, 0xF2230031, 159.59, 3.02206, 18.01, 0.631529, 0, 0, 0.775352, False, '2022-08-18 08:05:01'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [159.589996 3.022060 18.010000] 0.631529 0.000000 0.000000 0.775352 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223017, 800077, 0xF2230031, 158.285, 3.89999, 18.01, 0.971983, 0, 0, 0.235053, False, '2022-08-18 08:05:02'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [158.285004 3.899990 18.010000] 0.971983 0.000000 0.000000 0.235053 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223018, 800077, 0xF2230031, 158.029, 8.69966, 18.01, 0.999919, 0, 0, -0.0127269, False, '2022-08-18 08:05:04'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [158.029007 8.699660 18.010000] 0.999919 0.000000 0.000000 -0.012727 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223019, 800077, 0xF2230031, 158.816, 13.5374, 18.01, 0.795946, 0, 0, -0.605367, False, '2022-08-18 08:05:06'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [158.815994 13.537400 18.010000] 0.795946 0.000000 0.000000 -0.605367 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22301A, 800077, 0xF2230031, 160.835, 15.7382, 18.01, 0.977506, 0, 0, -0.21091, False, '2022-08-18 08:05:08'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [160.835007 15.738200 18.010000] 0.977506 0.000000 0.000000 -0.210910 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22301B, 800077, 0xF2230031, 162.056, 17.2041, 18.01, 0.905811, 0, 0, -0.423682, False, '2022-08-18 08:05:09'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [162.056000 17.204100 18.010000] 0.905811 0.000000 0.000000 -0.423682 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22301C, 800077, 0xF2230031, 163.372, 21.1976, 18.01, 0.996201, 0, 0, -0.0870789, False, '2022-08-18 08:05:10'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [163.371994 21.197599 18.010000] 0.996201 0.000000 0.000000 -0.087079 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22301D, 800077, 0xF2230032, 161.906, 24.0237, 18.01, 0.94342, 0, 0, 0.331601, False, '2022-08-18 08:05:12'); /* Corroded Stone Golem */
/* @teleloc 0xF2230032 [161.906006 24.023701 18.010000] 0.943420 0.000000 0.000000 0.331601 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22301E, 800077, 0xF2230032, 158.857, 24.3755, 18.01, 0.668715, 0, 0, 0.743519, False, '2022-08-18 08:05:13'); /* Corroded Stone Golem */
/* @teleloc 0xF2230032 [158.856995 24.375500 18.010000] 0.668715 0.000000 0.000000 0.743519 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22301F, 800077, 0xF2230032, 155.717, 24.5147, 18.01, 0.739602, 0, 0, 0.673044, False, '2022-08-18 08:05:15'); /* Corroded Stone Golem */
/* @teleloc 0xF2230032 [155.716995 24.514700 18.010000] 0.739602 0.000000 0.000000 0.673044 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223020, 800077, 0xF2230032, 153.677, 26.27, 18.01, 0.951375, 0, 0, 0.308035, False, '2022-08-18 08:05:16'); /* Corroded Stone Golem */
/* @teleloc 0xF2230032 [153.677002 26.270000 18.010000] 0.951375 0.000000 0.000000 0.308035 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223021, 800077, 0xF2230032, 154.404, 29.107, 18.01, 0.969044, 0, 0, -0.246888, False, '2022-08-18 08:05:18'); /* Corroded Stone Golem */
/* @teleloc 0xF2230032 [154.404007 29.107000 18.010000] 0.969044 0.000000 0.000000 -0.246888 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223022, 800077, 0xF2230032, 158.238, 30.677, 18.01, 0.788726, 0, 0, -0.614745, False, '2022-08-18 08:05:19'); /* Corroded Stone Golem */
/* @teleloc 0xF2230032 [158.238007 30.677000 18.010000] 0.788726 0.000000 0.000000 -0.614745 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223023, 800077, 0xF2230032, 159.908, 30.1363, 18.01, 0.442983, 0, 0, -0.89653, False, '2022-08-18 08:05:22'); /* Corroded Stone Golem */
/* @teleloc 0xF2230032 [159.908005 30.136299 18.010000] 0.442983 0.000000 0.000000 -0.896530 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223024, 800077, 0xF2230032, 156.804, 27.2408, 18.01, 0.900912, 0, 0, -0.434002, False, '2022-08-18 08:05:27'); /* Corroded Stone Golem */
/* @teleloc 0xF2230032 [156.804001 27.240801 18.010000] 0.900912 0.000000 0.000000 -0.434002 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223025, 800077, 0xF2230032, 158.903, 27.184, 18.01, 0.697474, 0, 0, -0.71661, False, '2022-08-18 08:05:28'); /* Corroded Stone Golem */
/* @teleloc 0xF2230032 [158.903000 27.184000 18.010000] 0.697474 0.000000 0.000000 -0.716610 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223026, 800077, 0xF2230031, 156.028, 23.7131, 18.01, -0.164128, 0, 0, -0.986439, False, '2022-08-18 08:05:31'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [156.028000 23.713100 18.010000] -0.164128 0.000000 0.000000 -0.986439 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223027, 800077, 0xF2230031, 156.731, 21.3331, 18.01, 0.257447, 0, 0, -0.966292, False, '2022-08-18 08:05:32'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [156.731003 21.333099 18.010000] 0.257447 0.000000 0.000000 -0.966292 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223028, 800077, 0xF2230031, 156.936, 18.2902, 18.01, -0.0396105, 0, 0, -0.999215, False, '2022-08-18 08:05:34'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [156.936005 18.290199 18.010000] -0.039611 0.000000 0.000000 -0.999215 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223029, 800077, 0xF2230031, 155.746, 17.211, 18.01, -0.626724, 0, 0, -0.779241, False, '2022-08-18 08:05:35'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [155.746002 17.211000 18.010000] -0.626724 0.000000 0.000000 -0.779241 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22302A, 800077, 0xF2230031, 152.409, 18.3909, 18.01, -0.855928, 0, 0, -0.517095, False, '2022-08-18 08:05:36'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [152.408997 18.390900 18.010000] -0.855928 0.000000 0.000000 -0.517095 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22302B, 800077, 0xF2230031, 149.354, 21.0644, 18.01, -0.923663, 0, 0, -0.383205, False, '2022-08-18 08:05:37'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [149.354004 21.064400 18.010000] -0.923663 0.000000 0.000000 -0.383205 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22302C, 800077, 0xF2230032, 147.806, 24.0528, 18.01, -0.981383, 0, 0, -0.192063, False, '2022-08-18 08:05:39'); /* Corroded Stone Golem */
/* @teleloc 0xF2230032 [147.806000 24.052799 18.010000] -0.981383 0.000000 0.000000 -0.192063 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22302D, 800077, 0xF2230032, 148.142, 26.5076, 18.01, -0.996661, 0, 0, 0.081645, False, '2022-08-18 08:05:40'); /* Corroded Stone Golem */
/* @teleloc 0xF2230032 [148.141998 26.507601 18.010000] -0.996661 0.000000 0.000000 0.081645 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22302E, 800077, 0xF2230032, 149.916, 24.4243, 18.01, -0.673921, 0, 0, 0.738803, False, '2022-08-18 08:05:44'); /* Corroded Stone Golem */
/* @teleloc 0xF2230032 [149.916000 24.424299 18.010000] -0.673921 0.000000 0.000000 0.738803 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22302F, 800077, 0xF2230031, 151.339, 23.3758, 18.01, -0.285476, 0, 0, 0.958386, False, '2022-08-18 08:05:45'); /* Corroded Stone Golem */
/* @teleloc 0xF2230031 [151.339005 23.375799 18.010000] -0.285476 0.000000 0.000000 0.958386 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223030, 800026, 0xF2230031, 147.959, 20.6133, 18.0045, 0.305532, 0, 0, 0.952182, False, '2022-08-18 08:06:29'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [147.959000 20.613300 18.004499] 0.305532 0.000000 0.000000 0.952182 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223031, 800026, 0xF2230031, 146.815, 19.0141, 18.0045, 0.305532, 0, 0, 0.952182, False, '2022-08-18 08:06:30'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [146.815002 19.014099 18.004499] 0.305532 0.000000 0.000000 0.952182 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223032, 800026, 0xF2230029, 143.995, 17.8261, 18.0045, 0.623406, 0, 0, 0.781898, False, '2022-08-18 08:06:32'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [143.994995 17.826099 18.004499] 0.623406 0.000000 0.000000 0.781898 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223033, 800026, 0xF2230029, 143.709, 18.5449, 18.0045, 0.989111, 0, 0, 0.147168, False, '2022-08-18 08:06:34'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [143.709000 18.544901 18.004499] 0.989111 0.000000 0.000000 0.147168 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223034, 800026, 0xF2230029, 141.195, 18.0499, 18.0045, 0.477472, 0, 0, 0.878647, False, '2022-08-18 08:06:35'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [141.195007 18.049900 18.004499] 0.477472 0.000000 0.000000 0.878647 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223035, 800026, 0xF2230029, 140.379, 15.801, 18.0045, 0.0099268, 0, 0, 0.999951, False, '2022-08-18 08:06:37'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [140.378998 15.801000 18.004499] 0.009927 0.000000 0.000000 0.999951 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223036, 800026, 0xF2230029, 141.69, 13.3873, 18.0045, -0.345522, 0, 0, 0.938411, False, '2022-08-18 08:06:38'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [141.690002 13.387300 18.004499] -0.345522 0.000000 0.000000 0.938411 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223037, 800026, 0xF2230031, 144.083, 12.9877, 18.0045, -0.744903, 0, 0, 0.667173, False, '2022-08-18 08:06:40'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [144.082993 12.987700 18.004499] -0.744903 0.000000 0.000000 0.667173 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223038, 800026, 0xF2230031, 146.318, 14.422, 18.0045, -0.892557, 0, 0, 0.450934, False, '2022-08-18 08:06:41'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [146.317993 14.422000 18.004499] -0.892557 0.000000 0.000000 0.450934 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223039, 800026, 0xF2230031, 148.083, 13.2813, 18.0045, -0.298249, 0, 0, 0.954488, False, '2022-08-18 08:06:43'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [148.082993 13.281300 18.004499] -0.298249 0.000000 0.000000 0.954488 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22303A, 800026, 0xF2230031, 147.701, 10.2762, 18.0045, 0.171418, 0, 0, 0.985198, False, '2022-08-18 08:06:44'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [147.701004 10.276200 18.004499] 0.171418 0.000000 0.000000 0.985198 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22303B, 800026, 0xF2230031, 147.994, 6.42956, 18.0045, -0.286265, 0, 0, 0.958151, False, '2022-08-18 08:06:47'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [147.994003 6.429560 18.004499] -0.286265 0.000000 0.000000 0.958151 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22303C, 800026, 0xF2230031, 149.775, 5.99359, 18.0045, -0.617316, 0, 0, 0.786715, False, '2022-08-18 08:06:48'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [149.774994 5.993590 18.004499] -0.617316 0.000000 0.000000 0.786715 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22303D, 800026, 0xF2230031, 153.227, 5.14811, 18.0045, -0.617316, 0, 0, 0.786715, False, '2022-08-18 08:06:50'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [153.227005 5.148110 18.004499] -0.617316 0.000000 0.000000 0.786715 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22303E, 800026, 0xF2230031, 154.088, 5.54312, 18.0045, -0.996764, 0, 0, 0.0803833, False, '2022-08-18 08:06:51'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [154.087997 5.543120 18.004499] -0.996764 0.000000 0.000000 0.080383 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22303F, 800026, 0xF2230031, 154.766, 9.72283, 18.0045, -0.996764, 0, 0, 0.0803833, False, '2022-08-18 08:06:52'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [154.766006 9.722830 18.004499] -0.996764 0.000000 0.000000 0.080383 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223040, 800026, 0xF2230031, 155.967, 6.21311, 18.0045, 0.0237314, 0, 0, -0.999718, False, '2022-08-18 08:06:56'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [155.966995 6.213110 18.004499] 0.023731 0.000000 0.000000 -0.999718 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223041, 800026, 0xF2230031, 156.129, 2.79552, 18.0045, 0.0237314, 0, 0, -0.999718, False, '2022-08-18 08:06:57'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [156.128998 2.795520 18.004499] 0.023731 0.000000 0.000000 -0.999718 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223042, 800026, 0xF2230031, 154.893, 1.75165, 18.0045, -0.635659, 0, 0, -0.77197, False, '2022-08-18 08:06:59'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [154.893005 1.751650 18.004499] -0.635659 0.000000 0.000000 -0.771970 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223043, 800026, 0xF2230031, 151.151, 2.22351, 18.0045, -0.776355, 0, 0, -0.630296, False, '2022-08-18 08:07:00'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [151.151001 2.223510 18.004499] -0.776355 0.000000 0.000000 -0.630296 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223044, 800026, 0xF2230031, 147.019, 3.09082, 18.0045, -0.776355, 0, 0, -0.630296, False, '2022-08-18 08:07:01'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [147.018997 3.090820 18.004499] -0.776355 0.000000 0.000000 -0.630296 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223045, 800026, 0xF2230031, 144.98, 4.57654, 18.0045, -0.927945, 0, 0, -0.372717, False, '2022-08-18 08:07:02'); /* Carnage Drudge */
/* @teleloc 0xF2230031 [144.979996 4.576540 18.004499] -0.927945 0.000000 0.000000 -0.372717 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223046, 800026, 0xF2230029, 142.244, 7.43255, 18.0045, -0.927945, 0, 0, -0.372717, False, '2022-08-18 08:07:03'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [142.244003 7.432550 18.004499] -0.927945 0.000000 0.000000 -0.372717 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223047, 800026, 0xF2230029, 140.601, 9.94654, 18.0045, -0.967173, 0, 0, -0.254117, False, '2022-08-18 08:07:05'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [140.600998 9.946540 18.004499] -0.967173 0.000000 0.000000 -0.254117 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223048, 800026, 0xF2230029, 138.647, 10.6117, 18.0045, -0.70062, 0, 0, -0.713534, False, '2022-08-18 08:07:06'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [138.647003 10.611700 18.004499] -0.700620 0.000000 0.000000 -0.713534 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223049, 800026, 0xF2230029, 137.256, 9.44627, 18.0045, -0.236412, 0, 0, -0.971653, False, '2022-08-18 08:07:08'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [137.255997 9.446270 18.004499] -0.236412 0.000000 0.000000 -0.971653 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22304A, 800026, 0xF2230029, 137.994, 7.11683, 18.0045, 0.294492, 0, 0, -0.955654, False, '2022-08-18 08:07:10'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [137.994003 7.116830 18.004499] 0.294492 0.000000 0.000000 -0.955654 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22304B, 800026, 0xF2230029, 139.845, 4.39904, 18.0045, 0.294492, 0, 0, -0.955654, False, '2022-08-18 08:07:11'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [139.845001 4.399040 18.004499] 0.294492 0.000000 0.000000 -0.955654 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22304C, 800026, 0xF2230029, 142.661, 1.8569, 18.0045, 0.433996, 0, 0, -0.900915, False, '2022-08-18 08:07:12'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [142.660995 1.856900 18.004499] 0.433996 0.000000 0.000000 -0.900915 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22304D, 800026, 0xF2230029, 138.856, 0.0578766, 18.0045, -0.995517, 0, 0, -0.0945782, False, '2022-08-18 08:07:20'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [138.856003 0.057877 18.004499] -0.995517 0.000000 0.000000 -0.094578 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22304E, 800026, 0xF2230029, 136.479, 2.87495, 18.0045, -0.873991, 0, 0, -0.485943, False, '2022-08-18 08:07:22'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [136.479004 2.874950 18.004499] -0.873991 0.000000 0.000000 -0.485943 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22304F, 800026, 0xF2230029, 135.821, 5.12384, 18.0045, -0.999987, 0, 0, 0.00515373, False, '2022-08-18 08:07:23'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [135.820999 5.123840 18.004499] -0.999987 0.000000 0.000000 0.005154 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223050, 800026, 0xF2230029, 134.349, 6.99114, 18.0045, -0.885806, 0, 0, -0.464055, False, '2022-08-18 08:07:25'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [134.348999 6.991140 18.004499] -0.885806 0.000000 0.000000 -0.464055 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223051, 800026, 0xF2230029, 131.006, 6.40356, 18.0045, -0.565165, 0, 0, -0.824978, False, '2022-08-18 08:07:27'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [131.005997 6.403560 18.004499] -0.565165 0.000000 0.000000 -0.824978 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223052, 800026, 0xF2230029, 131.416, 5.7563, 18.0045, 0.283039, 0, 0, -0.959108, False, '2022-08-18 08:07:29'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [131.416000 5.756300 18.004499] 0.283039 0.000000 0.000000 -0.959108 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223053, 800026, 0xF2230029, 134.63, 2.94521, 18.0045, 0.445705, 0, 0, -0.89518, False, '2022-08-18 08:07:31'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [134.630005 2.945210 18.004499] 0.445705 0.000000 0.000000 -0.895180 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223054, 800026, 0xF2230029, 133.646, 0.0768433, 18.0045, -0.96036, 0, 0, -0.278762, False, '2022-08-18 08:07:42'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [133.645996 0.076843 18.004499] -0.960360 0.000000 0.000000 -0.278762 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223055, 800026, 0xF2230029, 130.591, 3.25148, 18.0045, -0.759924, 0, 0, -0.650011, False, '2022-08-18 08:07:44'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [130.591003 3.251480 18.004499] -0.759924 0.000000 0.000000 -0.650011 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223056, 800026, 0xF2230029, 127.761, 2.92326, 18.0045, -0.625367, 0, 0, -0.780331, False, '2022-08-18 08:07:45'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [127.761002 2.923260 18.004499] -0.625367 0.000000 0.000000 -0.780331 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223057, 800026, 0xF2230029, 127.568, 5.04511, 18.0045, -0.991562, 0, 0, 0.12963, False, '2022-08-18 08:07:47'); /* Carnage Drudge */
/* @teleloc 0xF2230029 [127.568001 5.045110 18.004499] -0.991562 0.000000 0.000000 0.129630 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223058, 46700, 0xF2230032, 164.039, 31.5666, 18, 0.238433, 0, 0, 0.971159, False, '2022-08-18 14:36:07'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [164.039001 31.566601 18.000000] 0.238433 0.000000 0.000000 0.971159 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223059, 46700, 0xF2230032, 164.517, 26.5412, 18, 0.152872, 0, 0, 0.988246, False, '2022-08-18 14:36:45'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [164.516998 26.541201 18.000000] 0.152872 0.000000 0.000000 0.988246 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22305A, 46700, 0xF2230032, 164.366, 26.0622, 18, 0.152872, 0, 0, 0.988246, False, '2022-08-18 14:36:47'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [164.365997 26.062201 18.000000] 0.152872 0.000000 0.000000 0.988246 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22305B, 46700, 0xF2230032, 164.016, 24.9605, 18, 0.152872, 0, 0, 0.988246, False, '2022-08-18 14:36:48'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [164.016006 24.960501 18.000000] 0.152872 0.000000 0.000000 0.988246 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22305C, 46700, 0xF2230031, 163.259, 23.9782, 18, 0.322599, 0, 0, 0.946536, False, '2022-08-18 14:36:49'); /* Crazed Olthoi */
/* @teleloc 0xF2230031 [163.259003 23.978201 18.000000] 0.322599 0.000000 0.000000 0.946536 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22305D, 46700, 0xF2230032, 162.442, 26.2774, 18, 0.457635, 0, 0, -0.88914, False, '2022-08-18 14:36:54'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [162.442001 26.277399 18.000000] 0.457635 0.000000 0.000000 -0.889140 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22305E, 46700, 0xF2230032, 161.948, 26.6302, 18, 0.457635, 0, 0, -0.88914, False, '2022-08-18 14:36:55'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [161.947998 26.630199 18.000000] 0.457635 0.000000 0.000000 -0.889140 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22305F, 46700, 0xF2230032, 160.3, 27.8069, 18, 0.457635, 0, 0, -0.88914, False, '2022-08-18 14:36:57'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [160.300003 27.806900 18.000000] 0.457635 0.000000 0.000000 -0.889140 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223060, 46700, 0xF2230032, 161.7, 27.9866, 18, 0.699955, 0, 0, -0.714187, False, '2022-08-18 14:36:58'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [161.699997 27.986601 18.000000] 0.699955 0.000000 0.000000 -0.714187 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223061, 46700, 0xF2230032, 158.616, 28.0487, 18, 0.699955, 0, 0, -0.714187, False, '2022-08-18 14:37:00'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [158.615997 28.048700 18.000000] 0.699955 0.000000 0.000000 -0.714187 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223062, 46700, 0xF2230032, 158.765, 28.6215, 18, 0.93216, 0, 0, -0.362047, False, '2022-08-18 14:37:02'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [158.764999 28.621500 18.000000] 0.932160 0.000000 0.000000 -0.362047 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223063, 46700, 0xF2230032, 159.37, 25.4466, 18, 0.000333546, 0, 0, -1, False, '2022-08-18 14:37:04'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [159.369995 25.446600 18.000000] 0.000334 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223064, 46700, 0xF2230031, 160.929, 23.0593, 18, 0.378272, 0, 0, -0.925695, False, '2022-08-18 14:37:06'); /* Crazed Olthoi */
/* @teleloc 0xF2230031 [160.929001 23.059299 18.000000] 0.378272 0.000000 0.000000 -0.925695 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223065, 46700, 0xF2230031, 161.63, 20.5358, 18, 0.0379194, 0, 0, -0.999281, False, '2022-08-18 14:37:07'); /* Crazed Olthoi */
/* @teleloc 0xF2230031 [161.630005 20.535801 18.000000] 0.037919 0.000000 0.000000 -0.999281 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223066, 46700, 0xF2230031, 163.161, 18.8994, 18, 0.501666, 0, 0, -0.865061, False, '2022-08-18 14:37:09'); /* Crazed Olthoi */
/* @teleloc 0xF2230031 [163.160995 18.899401 18.000000] 0.501666 0.000000 0.000000 -0.865061 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223067, 46700, 0xF2230031, 161.757, 18.2981, 18, -0.672122, 0, 0, -0.74044, False, '2022-08-18 14:37:11'); /* Crazed Olthoi */
/* @teleloc 0xF2230031 [161.757004 18.298100 18.000000] -0.672122 0.000000 0.000000 -0.740440 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223068, 46700, 0xF2230031, 159.359, 19.7584, 18, -0.927395, 0, 0, -0.374083, False, '2022-08-18 14:37:12'); /* Crazed Olthoi */
/* @teleloc 0xF2230031 [159.358994 19.758400 18.000000] -0.927395 0.000000 0.000000 -0.374083 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223069, 46700, 0xF2230031, 159.287, 21.9581, 18, -0.989993, 0, 0, 0.141119, False, '2022-08-18 14:37:14'); /* Crazed Olthoi */
/* @teleloc 0xF2230031 [159.287003 21.958099 18.000000] -0.989993 0.000000 0.000000 0.141119 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22306A, 46700, 0xF2230032, 158.992, 24.0575, 18, -0.983228, 0, 0, -0.182382, False, '2022-08-18 14:37:16'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [158.992004 24.057501 18.000000] -0.983228 0.000000 0.000000 -0.182382 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22306B, 46700, 0xF2230032, 157.367, 26.2273, 18, -0.944932, 0, 0, -0.327266, False, '2022-08-18 14:37:17'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [157.367004 26.227301 18.000000] -0.944932 0.000000 0.000000 -0.327266 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22306C, 46700, 0xF2230032, 156.572, 27.972, 18, -0.991114, 0, 0, -0.133013, False, '2022-08-18 14:37:19'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [156.572006 27.972000 18.000000] -0.991114 0.000000 0.000000 -0.133013 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22306D, 46700, 0xF2230032, 154.503, 29.7061, 18, -0.854607, 0, 0, -0.519276, False, '2022-08-18 14:37:20'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [154.503006 29.706100 18.000000] -0.854607 0.000000 0.000000 -0.519276 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22306E, 46700, 0xF2230032, 151.31, 29.8915, 18, -0.681487, 0, 0, -0.73183, False, '2022-08-18 14:37:22'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [151.309998 29.891500 18.000000] -0.681487 0.000000 0.000000 -0.731830 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22306F, 46700, 0xF2230032, 149.192, 27.7214, 18, -0.271165, 0, 0, -0.962533, False, '2022-08-18 14:37:23'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [149.192001 27.721399 18.000000] -0.271165 0.000000 0.000000 -0.962533 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223070, 46700, 0xF2230032, 149.961, 25.1601, 18, 0.296202, 0, 0, -0.955125, False, '2022-08-18 14:37:25'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [149.960999 25.160101 18.000000] 0.296202 0.000000 0.000000 -0.955125 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223071, 46700, 0xF2230032, 152.095, 24.3076, 18, 0.663669, 0, 0, -0.748026, False, '2022-08-18 14:37:26'); /* Crazed Olthoi */
/* @teleloc 0xF2230032 [152.095001 24.307600 18.000000] 0.663669 0.000000 0.000000 -0.748026 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223072, 46700, 0xF2230031, 155.227, 23.9319, 18, 0.663669, 0, 0, -0.748026, False, '2022-08-18 14:37:27'); /* Crazed Olthoi */
/* @teleloc 0xF2230031 [155.227005 23.931900 18.000000] 0.663669 0.000000 0.000000 -0.748026 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223073, 46700, 0xF2230031, 156.505, 23.2526, 18, 0.343568, 0, 0, -0.939128, False, '2022-08-18 14:37:29'); /* Crazed Olthoi */
/* @teleloc 0xF2230031 [156.505005 23.252600 18.000000] 0.343568 0.000000 0.000000 -0.939128 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223074, 46700, 0xF2230031, 157.74, 20.4499, 18, 0.150143, 0, 0, -0.988664, False, '2022-08-18 14:37:31'); /* Crazed Olthoi */
/* @teleloc 0xF2230031 [157.740005 20.449900 18.000000] 0.150143 0.000000 0.000000 -0.988664 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223075, 46700, 0xF2230031, 155.365, 21.1205, 18, -0.890884, 0, 0, -0.454232, False, '2022-08-18 14:37:34'); /* Crazed Olthoi */
/* @teleloc 0xF2230031 [155.365005 21.120501 18.000000] -0.890884 0.000000 0.000000 -0.454232 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223076, 46700, 0xF2230031, 152.726, 22.3159, 18, -0.798191, 0, 0, -0.602404, False, '2022-08-18 14:37:35'); /* Crazed Olthoi */
/* @teleloc 0xF2230031 [152.725998 22.315901 18.000000] -0.798191 0.000000 0.000000 -0.602404 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223077, 46700, 0xF2230031, 148.922, 23.4004, 18, -0.798191, 0, 0, -0.602404, False, '2022-08-18 14:37:36'); /* Crazed Olthoi */
/* @teleloc 0xF2230031 [148.921997 23.400400 18.000000] -0.798191 0.000000 0.000000 -0.602404 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223078, 800034, 0xF2230031, 153.183, 14.236, 18, -0.513342, 0, 0, 0.858184, False, '2022-08-18 14:38:04'); /* Nightmare Queen */
/* @teleloc 0xF2230031 [153.182999 14.236000 18.000000] -0.513342 0.000000 0.000000 0.858184 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223079, 800034, 0xF2230031, 159.996, 10.3029, 18, -0.991494, 0, 0, 0.130149, False, '2022-08-18 14:38:13'); /* Nightmare Queen */
/* @teleloc 0xF2230031 [159.996002 10.302900 18.000000] -0.991494 0.000000 0.000000 0.130149 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22307A, 53345, 0xF2230032, 164.009, 42.7166, 18.003, 0.889209, 0, 0, 0.4575, False, '2022-08-28 18:24:36'); /* Emerald Thorn Gromnie */
/* @teleloc 0xF2230032 [164.009003 42.716599 18.003000] 0.889209 0.000000 0.000000 0.457500 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22307B, 53345, 0xF2230032, 161.623, 41.6336, 18.003, 0.845827, 0, 0, 0.533457, False, '2022-08-28 18:24:39'); /* Emerald Thorn Gromnie */
/* @teleloc 0xF2230032 [161.623001 41.633598 18.003000] 0.845827 0.000000 0.000000 0.533457 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22307C, 53345, 0xF2230032, 161.047, 44.8826, 18.003, 0.996158, 0, 0, 0.0875699, False, '2022-08-28 18:24:41'); /* Emerald Thorn Gromnie */
/* @teleloc 0xF2230032 [161.046997 44.882599 18.003000] 0.996158 0.000000 0.000000 0.087570 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22307D, 53345, 0xF2230032, 156.969, 46.4157, 18.003, 0.70549, 0, 0, 0.70872, False, '2022-08-28 18:24:44'); /* Emerald Thorn Gromnie */
/* @teleloc 0xF2230032 [156.968994 46.415699 18.003000] 0.705490 0.000000 0.000000 0.708720 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22307E, 53345, 0xF2230032, 152.348, 46.3946, 18.003, 0.70549, 0, 0, 0.70872, False, '2022-08-28 18:24:45'); /* Emerald Thorn Gromnie */
/* @teleloc 0xF2230032 [152.348007 46.394600 18.003000] 0.705490 0.000000 0.000000 0.708720 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F22307F, 53345, 0xF2230032, 147.726, 46.3735, 18.003, 0.70549, 0, 0, 0.70872, False, '2022-08-28 18:24:46'); /* Emerald Thorn Gromnie */
/* @teleloc 0xF2230032 [147.725998 46.373501 18.003000] 0.705490 0.000000 0.000000 0.708720 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223080, 53345, 0xF2230032, 146.296, 45.2396, 18.003, 0.255257, 0, 0, 0.966873, False, '2022-08-28 18:24:47'); /* Emerald Thorn Gromnie */
/* @teleloc 0xF2230032 [146.296005 45.239601 18.003000] 0.255257 0.000000 0.000000 0.966873 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223081, 53345, 0xF2230032, 146, 41.7891, 18.003, -0.0168853, 0, 0, 0.999857, False, '2022-08-28 18:24:48'); /* Emerald Thorn Gromnie */
/* @teleloc 0xF2230032 [146.000000 41.789101 18.003000] -0.016885 0.000000 0.000000 0.999857 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223082, 53345, 0xF2230032, 146.12, 38.2363, 18.003, -0.0168853, 0, 0, 0.999857, False, '2022-08-28 18:24:50'); /* Emerald Thorn Gromnie */
/* @teleloc 0xF2230032 [146.119995 38.236301 18.003000] -0.016885 0.000000 0.000000 0.999857 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223083, 53345, 0xF2230032, 146.267, 33.884, 18.003, -0.0168853, 0, 0, 0.999857, False, '2022-08-28 18:24:51'); /* Emerald Thorn Gromnie */
/* @teleloc 0xF2230032 [146.266998 33.883999 18.003000] -0.016885 0.000000 0.000000 0.999857 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223084, 53345, 0xF2230032, 146.356, 31.2641, 18.003, -0.0168853, 0, 0, 0.999857, False, '2022-08-28 18:24:52'); /* Emerald Thorn Gromnie */
/* @teleloc 0xF2230032 [146.356003 31.264099 18.003000] -0.016885 0.000000 0.000000 0.999857 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223085, 53345, 0xF2230032, 148.683, 29.9204, 18.003, -0.618542, 0, 0, 0.785752, False, '2022-08-28 18:24:53'); /* Emerald Thorn Gromnie */
/* @teleloc 0xF2230032 [148.682999 29.920401 18.003000] -0.618542 0.000000 0.000000 0.785752 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223086, 53345, 0xF2230032, 145.397, 27.0615, 18.003, 0.994176, 0, 0, -0.107768, False, '2022-08-28 18:24:58'); /* Emerald Thorn Gromnie */
/* @teleloc 0xF2230032 [145.397003 27.061501 18.003000] 0.994176 0.000000 0.000000 -0.107768 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7F223087, 53345, 0xF2230031, 144.62, 23.5209, 18.003, 0.994176, 0, 0, -0.107768, False, '2022-08-28 18:25:01'); /* Emerald Thorn Gromnie */
/* @teleloc 0xF2230031 [144.619995 23.520901 18.003000] 0.994176 0.000000 0.000000 -0.107768 */
