DELETE FROM `landblock_instance` WHERE `landblock` = 0x17B2;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2000,  1148, 0x17B20100, 130.885, 60.5018, 41.205, 0.999557, 0, 0, -0.029774, False, '2022-01-20 04:53:49'); /* Door */
/* @teleloc 0x17B20100 [130.884995 60.501801 41.205002] 0.999557 0.000000 0.000000 -0.029774 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2001,   720, 0x17B20000, 53.4993, 89.8703, 46, -0.361725, 0, 0, -0.932285, False, '2022-01-20 04:53:49'); /* Sliding Door */
/* @teleloc 0x17B20000 [53.499298 89.870300 46.000000] -0.361725 0.000000 0.000000 -0.932285 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2002, 11395, 0x17B20105, 131.524, 68.5955, 44.005, -0.54949, 0, 0, -0.8355, False, '2022-01-20 04:53:49'); /* Micon Stuvis the Barkeep */
/* @teleloc 0x17B20105 [131.524002 68.595497 44.005001] -0.549490 0.000000 0.000000 -0.835500 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2003, 11347, 0x17B2010E, 123.804, 54.6442, 41.205, 0.880174, 0, 0, -0.474652,  True, '2022-01-20 04:53:49'); /* Ling Xiao the Collector */
/* @teleloc 0x17B2010E [123.804001 54.644199 41.205002] 0.880174 0.000000 0.000000 -0.474652 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2004,  5086, 0x17B2010E, 127.03, 54.5464, 41.205, 0.765243, 0, 0, 0.643742, False, '2022-01-20 04:53:49'); /* Linkable Monster Gen - 30 sec. */
/* @teleloc 0x17B2010E [127.029999 54.546398 41.205002] 0.765243 0.000000 0.000000 0.643742 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x717B2004, 0x717B2003, '2022-01-20 04:53:49') /* Ling Xiao the Collector (11347) */
     , (0x717B2004, 0x717B2007, '2022-01-20 04:53:49') /* Behdo Yii (10842) */
     , (0x717B2004, 0x717B2010, '2022-01-20 04:53:49') /* Bachus Flufens (11322) */
     , (0x717B2004, 0x717B2013, '2022-01-20 04:53:49') /* Guard Liaza (37440) */
     , (0x717B2004, 0x717B2014, '2022-01-20 04:53:49') /* Piero Cenizzi (32069) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2005, 11399, 0x17B2011D, 153.693, 37.4657, 43.705, -0.898376, 0, 0, -0.439227, False, '2022-01-20 04:53:49'); /* Leyrale Shalorn the Tailor */
/* @teleloc 0x17B2011D [153.692993 37.465698 43.705002] -0.898376 0.000000 0.000000 -0.439227 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2006, 11396, 0x17B2011B, 108.972, 37.0342, 43.705, 0.753847, 0, 0, 0.65705, False, '2022-01-20 04:53:49'); /* Lam Yi the Jeweler */
/* @teleloc 0x17B2011B [108.972000 37.034199 43.705002] 0.753847 0.000000 0.000000 0.657050 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2007, 10842, 0x17B20122, 62.0743, 84.845, 46.005, 0.937462, 0, 0, -0.348088,  True, '2022-01-20 04:53:49'); /* Behdo Yii */
/* @teleloc 0x17B20122 [62.074299 84.845001 46.005001] 0.937462 0.000000 0.000000 -0.348088 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2008, 11397, 0x17B20126, 55.6191, 79.2514, 46.005, -0.895724, 0, 0, -0.444611, False, '2022-01-20 04:53:49'); /* Milanna Russmad the Mage */
/* @teleloc 0x17B20126 [55.619099 79.251404 46.005001] -0.895724 0.000000 0.000000 -0.444611 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2009, 11394, 0x17B2011F, 39.6727, 103.323, 45.705, -0.548237, 0, 0, -0.836323, False, '2022-01-20 04:53:49'); /* Ton Ai Yen the Armorer */
/* @teleloc 0x17B2011F [39.672699 103.322998 45.705002] -0.548237 0.000000 0.000000 -0.836323 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B200A, 31955, 0x17B2012A, 100.911, 79.975, 43.705, 0.313628, 0, 0, -0.949546, False, '2022-01-20 04:53:49'); /* Janus Roma the Shopkeep */
/* @teleloc 0x17B2012A [100.911003 79.974998 43.705002] 0.313628 0.000000 0.000000 -0.949546 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B200C,  8377, 0x17B20105, 129.502, 69.57, 45, -0.999255, 0, 0, -0.038588, False, '2022-01-20 04:53:49'); /* Beer Keg */
/* @teleloc 0x17B20105 [129.501999 69.570000 45.000000] -0.999255 0.000000 0.000000 -0.038588 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B200E,   509, 0x17B20000, 101.375, 53.2718, 44.005, 0.977793, 0, 0, 0.209573, False, '2022-01-20 04:53:49'); /* Life Stone */
/* @teleloc 0x17B20000 [101.375000 53.271801 44.005001] 0.977793 0.000000 0.000000 0.209573 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2010, 11322, 0x17B20000, 127.606, 65.2235, 49.205, -0.531658, 0, 0, -0.846959,  True, '2022-01-20 04:53:49'); /* Bachus Flufens */
/* @teleloc 0x17B20000 [127.606003 65.223503 49.205002] -0.531658 0.000000 0.000000 -0.846959 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2013, 37440, 0x17B2012B, 134.541, 81.8355, 44.005, 0.743722, 0, 0, 0.668489,  True, '2022-01-20 04:53:49'); /* Guard Liaza */
/* @teleloc 0x17B2012B [134.541000 81.835503 44.005001] 0.743722 0.000000 0.000000 0.668489 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2014, 32069, 0x17B2002C, 130.065, 80.946, 59.205, 0.374662, 0, 0, 0.927161,  True, '2022-01-20 04:53:49'); /* Piero Cenizzi */
/* @teleloc 0x17B2002C [130.065002 80.945999 59.205002] 0.374662 0.000000 0.000000 0.927161 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B201B, 42852, 0x17B2001B, 77.595, 58.6918, 45.1646, 0.477473, 0, 0, 0.878646, False, '2022-01-20 04:53:49'); /* Portal to Town Network */
/* @teleloc 0x17B2001B [77.595001 58.691799 45.164600] 0.477473 0.000000 0.000000 0.878646 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B201C, 87806, 0x17B20121, 60.2289, 82.8323, 50.455, 0.354748, 0, 0, 0.934962, False, '2022-01-20 04:53:49'); /* Cindy Event Gen */
/* @teleloc 0x17B20121 [60.228901 82.832298 50.455002] 0.354748 0.000000 0.000000 0.934962 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B201D, 32074, 0x17B20108, 130.946, 64.9665, 41.205, 0.031655, 0, 0, 0.999499, False, '2022-08-07 10:39:15'); /* Lucio Murrio */
/* @teleloc 0x17B20108 [130.945999 64.966499 41.205002] 0.031655 0.000000 0.000000 0.999499 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B201E, 32073, 0x17B2012A, 104.189, 79.0739, 43.705, 0.293194, 0, 0, 0.956053, False, '2022-08-07 10:39:29'); /* Andrea Dilazo */
/* @teleloc 0x17B2012A [104.189003 79.073898 43.705002] 0.293194 0.000000 0.000000 0.956053 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B201F, 31648, 0x17B2012B, 129.097, 80.7763, 44.005, -0.878732, 0, 0, 0.477315, False, '2022-08-07 10:39:50'); /* Afra bint Abbas */
/* @teleloc 0x17B2012B [129.097000 80.776299 44.005001] -0.878732 0.000000 0.000000 0.477315 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2020, 32072, 0x17B2011F, 36.1612, 102.904, 45.705, 0.138831, 0, 0, -0.990316, False, '2022-08-07 10:40:28'); /* Niccolo Brasi */
/* @teleloc 0x17B2011F [36.161201 102.903999 45.705002] 0.138831 0.000000 0.000000 -0.990316 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2021, 800612, 0x17B2002C, 134.703, 81.2794, 59.205, -0.951397, 0, 0, -0.307968, False, '2022-08-07 10:44:42'); /* Commander Wulfthorne */
/* @teleloc 0x17B2002C [134.703003 81.279404 59.205002] -0.951397 0.000000 0.000000 -0.307968 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2022, 32109, 0x17B20122, 60.5808, 82.6154, 46.005, -0.972331, 0, 0, -0.233609, False, '2022-08-07 10:46:52'); /* Susana du Loc */
/* @teleloc 0x17B20122 [60.580799 82.615402 46.005001] -0.972331 0.000000 0.000000 -0.233609 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2023, 800614, 0x17B2001A, 73.8803, 41.3174, 43.4981, 0.514234, 0, 0, -0.85765, False, '2022-08-07 10:47:03'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B2001A [73.880302 41.317402 43.498100] 0.514234 0.000000 0.000000 -0.857650 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2024, 800614, 0x17B2001A, 87.4239, 35.4987, 43.3403, 0.728102, 0, 0, -0.685468, False, '2022-08-07 10:47:08'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B2001A [87.423897 35.498699 43.340302] 0.728102 0.000000 0.000000 -0.685468 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2025, 800614, 0x17B20022, 103.58, 26.677, 44.055, 0.707029, 0, 0, -0.707185, False, '2022-08-07 10:47:09'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B20022 [103.580002 26.677000 44.055000] 0.707029 0.000000 0.000000 -0.707185 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B202E, 800614, 0x17B20023, 106.074, 57.9365, 44.055, 0.73235, 0, 0, 0.680928, False, '2022-08-07 10:47:26'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B20023 [106.073997 57.936501 44.055000] 0.732350 0.000000 0.000000 0.680928 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B202F, 800614, 0x17B2001B, 89.7502, 64.0523, 44.5758, 0.91868, 0, 0, 0.395001, False, '2022-08-07 10:47:28'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B2001B [89.750198 64.052299 44.575802] 0.918680 0.000000 0.000000 0.395001 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2030, 800614, 0x17B2001B, 73.1592, 70.1518, 45.901, 0.675078, 0, 0, 0.737746, False, '2022-08-07 10:47:29'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B2001B [73.159203 70.151802 45.901001] 0.675078 0.000000 0.000000 0.737746 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2031, 800614, 0x17B20013, 58.3118, 66.1612, 45.5684, 0.821645, 0, 0, 0.569999, False, '2022-08-07 10:47:30'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B20013 [58.311798 66.161201 45.568401] 0.821645 0.000000 0.000000 0.569999 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2032, 800614, 0x17B2000C, 47.7358, 77.0808, 46.055, 0.970902, 0, 0, 0.239478, False, '2022-08-07 10:47:32'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B2000C [47.735802 77.080803 46.055000] 0.970902 0.000000 0.000000 0.239478 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2033, 800614, 0x17B2000C, 43.6729, 92.1215, 46.055, 1, 0, 0, -0.000260932, False, '2022-08-07 10:47:33'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B2000C [43.672901 92.121498 46.055000] 1.000000 0.000000 0.000000 -0.000261 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2034, 800614, 0x17B20015, 49.5266, 99.0601, 46.055, 0.904678, 0, 0, -0.426097, False, '2022-08-07 10:47:37'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B20015 [49.526600 99.060097 46.055000] 0.904678 0.000000 0.000000 -0.426097 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2035, 800614, 0x17B20015, 60.2532, 102.573, 46.055, 0.9181, 0, 0, -0.39635, False, '2022-08-07 10:47:40'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B20015 [60.253201 102.572998 46.055000] 0.918100 0.000000 0.000000 -0.396350 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2036, 800614, 0x17B20014, 62.864, 92.2724, 46.055, 0.385887, 0, 0, -0.922546, False, '2022-08-07 10:47:42'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B20014 [62.863998 92.272400 46.055000] 0.385887 0.000000 0.000000 -0.922546 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2037, 800614, 0x17B2001C, 76.1796, 81.9105, 45.7067, 0.546129, 0, 0, -0.837701, False, '2022-08-07 10:47:44'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B2001C [76.179604 81.910500 45.706699] 0.546129 0.000000 0.000000 -0.837701 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2038, 800614, 0x17B2001C, 91.0751, 75.3818, 44.4654, 0.695697, 0, 0, -0.718335, False, '2022-08-07 10:47:45'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B2001C [91.075104 75.381798 44.465401] 0.695697 0.000000 0.000000 -0.718335 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2039, 800614, 0x17B20024, 111.981, 72.1734, 44.055, 0.86843, 0, 0, -0.495812, False, '2022-08-07 10:47:48'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B20024 [111.981003 72.173401 44.055000] 0.868430 0.000000 0.000000 -0.495812 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B203F, 800614, 0x17B2002C, 122.179, 94.2825, 44.055, 0.71915, 0, 0, 0.694855, False, '2022-08-07 10:47:59'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B2002C [122.179001 94.282501 44.055000] 0.719150 0.000000 0.000000 0.694855 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2040, 800614, 0x17B20024, 112.391, 91.1244, 44.055, 0.694645, 0, 0, 0.719353, False, '2022-08-07 10:48:00'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B20024 [112.390999 91.124397 44.055000] 0.694645 0.000000 0.000000 0.719353 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2041, 800614, 0x17B20024, 97.0025, 92.4581, 44.055, 0.575955, 0, 0, 0.817481, False, '2022-08-07 10:48:01'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B20024 [97.002502 92.458099 44.055000] 0.575955 0.000000 0.000000 0.817481 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2042, 800614, 0x17B2001C, 82.6858, 95.0584, 45.1645, 0.720221, 0, 0, 0.693745, False, '2022-08-07 10:48:03'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B2001C [82.685799 95.058403 45.164501] 0.720221 0.000000 0.000000 0.693745 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2043, 800614, 0x17B20015, 71.9639, 106.224, 46.055, 0.920883, 0, 0, 0.38984, False, '2022-08-07 10:48:04'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B20015 [71.963898 106.223999 46.055000] 0.920883 0.000000 0.000000 0.389840 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2044, 800614, 0x17B20015, 56.9104, 112.74, 46.055, 0.775749, 0, 0, 0.631041, False, '2022-08-07 10:48:06'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B20015 [56.910400 112.739998 46.055000] 0.775749 0.000000 0.000000 0.631041 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x717B2045, 800614, 0x17B2000D, 41.9805, 113.293, 46.055, 0.722357, 0, 0, 0.69152, False, '2022-08-07 10:48:07'); /* Spire Mercenary2 Gen 1 Min */
/* @teleloc 0x17B2000D [41.980499 113.292999 46.055000] 0.722357 0.000000 0.000000 0.691520 */
