DELETE FROM `landblock_instance` WHERE `landblock` = 0x2CB5;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5000,   720, 0x2CB50000, 35.9423, 81.0811, 1.6, 0, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Sliding Door */
/* @teleloc 0x2CB50000 [35.942299 81.081100 1.600000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5001,   720, 0x2CB50000, 35.9423, 87.0311, 1.6, 0, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Sliding Door */
/* @teleloc 0x2CB50000 [35.942299 87.031097 1.600000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5002,   720, 0x2CB50113, 17.2723, 37.0035, 2.5, -0.927248, 0, 0, -0.374448, False, '2005-02-09 10:00:00'); /* Sliding Door */
/* @teleloc 0x2CB50113 [17.272301 37.003502 2.500000] -0.927248 0.000000 0.000000 -0.374448 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5003,   720, 0x2CB50116, 13.0364, 41.3929, 2.5, -0.927248, 0, 0, -0.374448, False, '2005-02-09 10:00:00'); /* Sliding Door */
/* @teleloc 0x2CB50116 [13.036400 41.392899 2.500000] -0.927248 0.000000 0.000000 -0.374448 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5004,   720, 0x2CB50000, 19.1839, 43.0869, -6.69388E-10, -0.390888, 0, 0, -0.920438, False, '2005-02-09 10:00:00'); /* Sliding Door */
/* @teleloc 0x2CB50000 [19.183901 43.086899 -0.000000] -0.390888 0.000000 0.000000 -0.920438 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5005, 11390, 0x2CB50102, 32.0295, 76.5995, 1.605, 0.888487, 0, 0, -0.458902, False, '2005-02-09 10:00:00'); /* Kasin ibn Sayrak the Barkeep */
/* @teleloc 0x2CB50102 [32.029499 76.599503 1.605000] 0.888487 0.000000 0.000000 -0.458902 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5006, 11346, 0x2CB50106, 31.4173, 92.0089, 4.405, 0.399461, 0, 0, -0.91675,  True, '2005-02-09 10:00:00'); /* Shalon ibn Mayar the Collector */
/* @teleloc 0x2CB50106 [31.417299 92.008904 4.405000] 0.399461 0.000000 0.000000 -0.916750 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5007,  5086, 0x2CB50106, 29.9541, 92.8776, 4.405, 0.919408, 0, 0, 0.393306, False, '2005-02-09 10:00:00'); /* Linkable Monster Gen - 30 sec. */
/* @teleloc 0x2CB50106 [29.954100 92.877602 4.405000] 0.919408 0.000000 0.000000 0.393306 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x72CB5007, 0x72CB5006, '2005-02-09 10:00:00') /* Shalon ibn Mayar the Collector (11346) */
     , (0x72CB5007, 0x72CB5009, '2005-02-09 10:00:00');

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB500A,  8377, 0x2CB50102, 30.6872, 79.4672, 2.568, -0.724026, 0, 0, -0.689772, False, '2005-02-09 10:00:00'); /* Beer Keg */
/* @teleloc 0x2CB50102 [30.687201 79.467201 2.568000] -0.724026 0.000000 0.000000 -0.689772 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB500B,   143, 0x2CB50113, 12.4156, 27.2421, 2.505, -0.400438, 0, 0, -0.916324, False, '2005-02-09 10:00:00'); /* Chest */
/* @teleloc 0x2CB50113 [12.415600 27.242100 2.505000] -0.400438 0.000000 0.000000 -0.916324 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB500C,   143, 0x2CB50113, 20.3784, 34.5106, 2.505, 0.913298, 0, 0, -0.407293, False, '2005-02-09 10:00:00'); /* Chest */
/* @teleloc 0x2CB50113 [20.378401 34.510601 2.505000] 0.913298 0.000000 0.000000 -0.407293 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5012, 42852, 0x2CB50003, 21.1171, 63.1885, 0.198001, -0.900853, 0, 0, -0.434125, False, '2020-06-12 04:19:15'); /* Portal to Town Network */
/* @teleloc 0x2CB50003 [21.117100 63.188499 0.198001] -0.900853 0.000000 0.000000 -0.434125 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5014, 31957, 0x2CB50111, 5.977, 37.989, -1.195, 0.851434, 0, 0, -0.524462, False, '2019-02-15 14:34:36'); /* Eliza du Curena */
/* @teleloc 0x2CB50111 [5.977000 37.988998 -1.195000] 0.851434 0.000000 0.000000 -0.524462 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB501A, 5000861, 0x2CB5000A, 35.0921, 43.5449, 0.055, 0.173622, 0, 0, -0.984812, False, '2020-06-20 01:10:46'); /* GSpireAttack */
/* @teleloc 0x2CB5000A [35.092098 43.544899 0.055000] 0.173622 0.000000 0.000000 -0.984812 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB501B, 5000861, 0x2CB5000D, 43.8569, 100.06, 0.055, 0.96967, 0, 0, 0.244418, False, '2020-06-20 01:10:51'); /* GSpireAttack */
/* @teleloc 0x2CB5000D [43.856899 100.059998 0.055000] 0.969670 0.000000 0.000000 0.244418 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB501C, 5000861, 0x2CB50006, 10.5759, 120.052, -0.045, 0.877915, 0, 0, 0.478817, False, '2020-06-20 01:10:55'); /* GSpireAttack */
/* @teleloc 0x2CB50006 [10.575900 120.052002 -0.045000] 0.877915 0.000000 0.000000 0.478817 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB501D, 5000861, 0x2CB5000E, 24.5261, 138.626, -0.1, -0.730365, 0, 0, 0.683057, False, '2020-06-20 01:11:19'); /* GSpireAttack */
/* @teleloc 0x2CB5000E [24.526100 138.626007 -0.100000] -0.730365 0.000000 0.000000 0.683057 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB501E, 5000861, 0x2CB50013, 60.1424, 65.7499, -0.1, 0.335924, 0, 0, 0.941889, False, '2020-06-25 20:10:54'); /* GSpireAttack */
/* @teleloc 0x2CB50013 [60.142399 65.749901 -0.100000] 0.335924 0.000000 0.000000 0.941889 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB501F, 5000861, 0x2CB5000B, 47.7512, 54.7129, 0.055, 0.593469, 0, 0, 0.804857, False, '2020-06-25 20:10:56'); /* GSpireAttack */
/* @teleloc 0x2CB5000B [47.751202 54.712898 0.055000] 0.593469 0.000000 0.000000 0.804857 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5021, 5000860, 0x2CB50005, 18.2995, 117.124, 0.055, 0.367258, 0, 0, 0.930119, False, '2020-07-03 00:15:02'); /* GspireAttack */
/* @teleloc 0x2CB50005 [18.299500 117.124001 0.055000] 0.367258 0.000000 0.000000 0.930119 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5022, 32071, 0x2CB50118, 17.5868, 30.8964, -1.195, 0.929332, 0, 0, 0.369245, False, '2022-08-07 10:14:06'); /* Valentina du Lurio */
/* @teleloc 0x2CB50118 [17.586800 30.896400 -1.195000] 0.929332 0.000000 0.000000 0.369245 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5023, 32070, 0x2CB50118, 16.2003, 29.4665, -1.195, -0.931828, 0, 0, -0.3629, False, '2022-08-07 10:14:25'); /* Caprice du Bellenesse */
/* @teleloc 0x2CB50118 [16.200300 29.466499 -1.195000] -0.931828 0.000000 0.000000 -0.362900 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5024, 51208, 0x2CB50103, 31.7229, 92.2878, 1.629, 0.415874, 0, 0, -0.909422, False, '2022-08-07 10:14:57'); /* Virindi Delegate */
/* @teleloc 0x2CB50103 [31.722900 92.287804 1.629000] 0.415874 0.000000 0.000000 -0.909422 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5025, 32068, 0x2CB50102, 41.9608, 80.02, 1.605, 0.635283, 0, 0, 0.772279, False, '2022-08-07 10:15:17'); /* Tito Brickicci */
/* @teleloc 0x2CB50102 [41.960800 80.019997 1.605000] 0.635283 0.000000 0.000000 0.772279 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5026, 10866, 0x2CB50111, 7.13677, 42.5968, -1.195, 0.0760214, 0, 0, -0.997106, False, '2022-08-07 10:15:55'); /* Mazur ibn Stounis */
/* @teleloc 0x2CB50111 [7.136770 42.596802 -1.195000] 0.076021 0.000000 0.000000 -0.997106 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5027, 28258, 0x2CB5010F, 15.6503, 36.8976, -1.195, 0.940752, 0, 0, 0.339095, False, '2022-08-07 10:16:17'); /* Balarazo */
/* @teleloc 0x2CB5010F [15.650300 36.897598 -1.195000] 0.940752 0.000000 0.000000 0.339095 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5028, 800610, 0x2CB50002, 0.113681, 34.4959, 0.055, 0.0921081, 0, 0, -0.995749, False, '2022-08-07 10:33:00'); /* Spire Mercenary Gen 1 Min */
/* @teleloc 0x2CB50002 [0.113681 34.495899 0.055000] 0.092108 0.000000 0.000000 -0.995749 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5029, 800610, 0x2CB50001, 6.73079, 13.4701, 0.055, 0.775841, 0, 0, -0.630929, False, '2022-08-07 10:33:07'); /* Spire Mercenary Gen 1 Min */
/* @teleloc 0x2CB50001 [6.730790 13.470100 0.055000] 0.775841 0.000000 0.000000 -0.630929 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB502A, 800610, 0x2CB50001, 6.77348, 21.0363, 0.055, 0.962799, 0, 0, 0.270217, False, '2022-08-07 10:33:12'); /* Spire Mercenary Gen 1 Min */
/* @teleloc 0x2CB50001 [6.773480 21.036301 0.055000] 0.962799 0.000000 0.000000 0.270217 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB502B, 800610, 0x2CB50001, 12.7745, 17.734, 0.055, 0.732665, 0, 0, -0.680589, False, '2022-08-07 10:33:14'); /* Spire Mercenary Gen 1 Min */
/* @teleloc 0x2CB50001 [12.774500 17.733999 0.055000] 0.732665 0.000000 0.000000 -0.680589 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB502C, 800610, 0x2CB5000A, 24.9068, 30.4465, 0.055, 0.926636, 0, 0, -0.37596, False, '2022-08-07 10:33:15'); /* Spire Mercenary Gen 1 Min */
/* @teleloc 0x2CB5000A [24.906799 30.446501 0.055000] 0.926636 0.000000 0.000000 -0.375960 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB502D, 800610, 0x2CB5000A, 28.4799, 40.5639, 0.055, 0.942833, 0, 0, 0.333266, False, '2022-08-07 10:33:17'); /* Spire Mercenary Gen 1 Min */
/* @teleloc 0x2CB5000A [28.479900 40.563900 0.055000] 0.942833 0.000000 0.000000 0.333266 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB502E, 800610, 0x2CB5000B, 35.0121, 53.9255, 0.055, 0.848325, 0, 0, -0.529475, False, '2022-08-07 10:33:18'); /* Spire Mercenary Gen 1 Min */
/* @teleloc 0x2CB5000B [35.012100 53.925499 0.055000] 0.848325 0.000000 0.000000 -0.529475 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB502F, 800610, 0x2CB5000B, 35.9444, 68.2733, 0.055, 0.656818, 0, 0, 0.754049, False, '2022-08-07 10:33:20'); /* Spire Mercenary Gen 1 Min */
/* @teleloc 0x2CB5000B [35.944401 68.273300 0.055000] 0.656818 0.000000 0.000000 0.754049 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5030, 800610, 0x2CB50004, 21.4154, 72.1931, 0.055, 0.952485, 0, 0, 0.304587, False, '2022-08-07 10:33:21'); /* Spire Mercenary Gen 1 Min */
/* @teleloc 0x2CB50004 [21.415400 72.193100 0.055000] 0.952485 0.000000 0.000000 0.304587 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5031, 800610, 0x2CB50004, 17.6128, 92.0006, 0.055, 0.947337, 0, 0, -0.320237, False, '2022-08-07 10:33:22'); /* Spire Mercenary Gen 1 Min */
/* @teleloc 0x2CB50004 [17.612801 92.000603 0.055000] 0.947337 0.000000 0.000000 -0.320237 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5032, 800610, 0x2CB5000D, 32.7345, 103.733, 0.055, 0.863957, 0, 0, -0.503566, False, '2022-08-07 10:33:24'); /* Spire Mercenary Gen 1 Min */
/* @teleloc 0x2CB5000D [32.734501 103.733002 0.055000] 0.863957 0.000000 0.000000 -0.503566 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x72CB5033, 800610, 0x2CB50005, 23.9052, 115.594, 0.055, 0.6867, 0, 0, 0.726941, False, '2022-08-07 10:33:26'); /* Spire Mercenary Gen 1 Min */
/* @teleloc 0x2CB50005 [23.905199 115.594002 0.055000] 0.686700 0.000000 0.000000 0.726941 */
