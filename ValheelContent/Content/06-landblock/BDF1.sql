DELETE FROM `landblock_instance` WHERE `landblock` = 0xBDF1;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1000,   412, 0xBDF10105, 106.24, 108.05, 42.07, 0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0xBDF10105 [106.239998 108.050003 42.070000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF100A,  7385, 0xBDF10000, 73.6265, 133.228, 58.0596, -0.999759, 0, 0, -0.021967, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [73.626503 133.227997 58.059601] -0.999759 0.000000 0.000000 -0.021967 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF100A, 0x7BDF1062, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1017,  7625, 0xBDF10000, 165.006, 5.22524, -0.003625, 0.704269, 0, 0, -0.709933,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [165.005997 5.225240 -0.003625] 0.704269 0.000000 0.000000 -0.709933 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1018,  7625, 0xBDF10000, 149.153, 16.4643, 0.30625, -0.999941, 0, 0, 0.010827,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [149.153000 16.464300 0.306250] -0.999941 0.000000 0.000000 0.010827 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1019,  7625, 0xBDF10000, 115.469, 10.0156, 0.19925, -0.99998, 0, 0, -0.006326,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [115.469002 10.015600 0.199250] -0.999980 0.000000 0.000000 -0.006326 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF101A,  7625, 0xBDF10000, 173.726, 33.3824, 0.09, -0.718663, 0, 0, -0.695359,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [173.725998 33.382401 0.090000] -0.718663 0.000000 0.000000 -0.695359 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF101B,  7625, 0xBDF10000, 185.324, 17.477, 0.054625, 0.671564, 0, 0, -0.740947,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [185.324005 17.476999 0.054625] 0.671564 0.000000 0.000000 -0.740947 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF101C,  7625, 0xBDF10000, 161.778, 18.7389, 0.27725, 0.704269, 0, 0, -0.709933,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [161.778000 18.738899 0.277250] 0.704269 0.000000 0.000000 -0.709933 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF101D,  7625, 0xBDF10000, 128.219, 15.718, 0.319625, -0.999941, 0, 0, 0.010827,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [128.218994 15.718000 0.319625] -0.999941 0.000000 0.000000 0.010827 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF101E,  7625, 0xBDF10000, 173.673, 19.0297, 0.161625, 0.696716, 0, 0, -0.717347,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [173.673004 19.029699 0.161625] 0.696716 0.000000 0.000000 -0.717347 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF101F,  7625, 0xBDF10000, 183.125, 41.2114, 0.023125, -0.718663, 0, 0, -0.695359,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [183.125000 41.211399 0.023125] -0.718663 0.000000 0.000000 -0.695359 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1020,  7625, 0xBDF10000, 138.359, 5.23359, 0.11675, -0.999941, 0, 0, 0.010827,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [138.358994 5.233590 0.116750] -0.999941 0.000000 0.000000 0.010827 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1021,  7625, 0xBDF10000, 162.693, 29.5562, 0.09, 0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [162.692993 29.556200 0.090000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1022,  7625, 0xBDF10000, 183.694, 66.058, 0.197, -0.035445, 0, 0, -0.999372,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [183.694000 66.057999 0.197000] -0.035445 0.000000 0.000000 -0.999372 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1023,  7625, 0xBDF10000, 178.931, 5.75244, 0.081, 0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [178.931000 5.752440 0.081000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1024,  7625, 0xBDF10000, 183.516, 27.4518, 0.11675, -0.718663, 0, 0, -0.695359,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [183.516006 27.451799 0.116750] -0.718663 0.000000 0.000000 -0.695359 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1025,  7625, 0xBDF10000, 152.019, 3.79126, 0.130125, 0.704269, 0, 0, -0.709933,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [152.018997 3.791260 0.130125] 0.704269 0.000000 0.000000 -0.709933 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1026,  7625, 0xBDF10000, 177.484, 52.4493, 0.052125, -0.030532, 0, 0, -0.999534,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [177.483994 52.449299 0.052125] -0.030532 0.000000 0.000000 -0.999534 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1027,  7625, 0xBDF10000, 191.599, 57.1285, 0.076625, -0.010452, 0, 0, -0.999945,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [191.598999 57.128502 0.076625] -0.010452 0.000000 0.000000 -0.999945 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1028,  7385, 0xBDF10000, 132.266, 54.823, 57.4979, -0.003664, 0, 0, 0.999993, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [132.266006 54.823002 57.497898] -0.003664 0.000000 0.000000 0.999993 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1028, 0x7BDF1019, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1029,  7383, 0xBDF10000, 132.859, 54.8495, 57.7295, 0.024069, 0, 0, 0.99971, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [132.858994 54.849499 57.729500] 0.024069 0.000000 0.000000 0.999710 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1029, 0x7BDF101D, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF102A,  7389, 0xBDF10000, 133.337, 54.8434, 57.6493, -0.014407, 0, 0, 0.999896, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [133.337006 54.843399 57.649300] -0.014407 0.000000 0.000000 0.999896 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF102A, 0x7BDF1020, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF102B,  7387, 0xBDF10000, 133.843, 54.8424, 57.6702, -0.014407, 0, 0, 0.999896, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [133.843002 54.842400 57.670200] -0.014407 0.000000 0.000000 0.999896 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF102B, 0x7BDF1018, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF102C,  7385, 0xBDF10000, 135.489, 54.7737, 57.4979, -0.003664, 0, 0, 0.999993, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [135.488998 54.773701 57.497898] -0.003664 0.000000 0.000000 0.999993 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF102C, 0x7BDF1025, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF102D,  7383, 0xBDF10000, 135.948, 54.7645, 57.7295, 0.024069, 0, 0, 0.99971, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [135.947998 54.764500 57.729500] 0.024069 0.000000 0.000000 0.999710 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF102D, 0x7BDF101C, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF102E,  7389, 0xBDF10000, 136.411, 54.6916, 57.6493, -0.014407, 0, 0, 0.999896, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [136.410995 54.691601 57.649300] -0.014407 0.000000 0.000000 0.999896 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF102E, 0x7BDF1017, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF102F,  7387, 0xBDF10000, 136.863, 54.6923, 57.6702, -0.014407, 0, 0, 0.999896, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [136.863007 54.692299 57.670200] -0.014407 0.000000 0.000000 0.999896 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF102F, 0x7BDF1021, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1030,  7385, 0xBDF10000, 139.3, 54.6594, 57.4979, -0.003664, 0, 0, 0.999993, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [139.300003 54.659401 57.497898] -0.003664 0.000000 0.000000 0.999993 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1030, 0x7BDF1023, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1031,  7383, 0xBDF10000, 139.789, 54.7426, 57.7295, 0.024069, 0, 0, 0.99971, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [139.789001 54.742599 57.729500] 0.024069 0.000000 0.000000 0.999710 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1031, 0x7BDF101E, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1032,  7389, 0xBDF10000, 140.159, 54.6869, 57.6493, -0.014407, 0, 0, 0.999896, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [140.158997 54.686901 57.649300] -0.014407 0.000000 0.000000 0.999896 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1032, 0x7BDF101A, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1033,  7387, 0xBDF10000, 140.652, 54.7127, 57.6702, -0.014407, 0, 0, 0.999896, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [140.651993 54.712700 57.670200] -0.014407 0.000000 0.000000 0.999896 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1033, 0x7BDF101B, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1034,  7385, 0xBDF10000, 141.716, 55.7549, 57.4979, -0.003664, 0, 0, 0.999993, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [141.716003 55.754902 57.497898] -0.003664 0.000000 0.000000 0.999993 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1034, 0x7BDF1024, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1035,  7383, 0xBDF10000, 141.777, 56.1951, 57.7295, 0.024069, 0, 0, 0.99971, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [141.776993 56.195099 57.729500] 0.024069 0.000000 0.000000 0.999710 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1035, 0x7BDF101F, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1036,  7389, 0xBDF10000, 141.772, 56.6221, 57.6493, -0.014407, 0, 0, 0.999896, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [141.772003 56.622101 57.649300] -0.014407 0.000000 0.000000 0.999896 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1036, 0x7BDF1026, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1037,  7387, 0xBDF10000, 141.752, 57.052, 57.6702, -0.014407, 0, 0, 0.999896, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [141.751999 57.051998 57.670200] -0.014407 0.000000 0.000000 0.999896 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1037, 0x7BDF1027, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1038,  7385, 0xBDF10000, 141.816, 58.9386, 57.4979, -0.003664, 0, 0, 0.999993, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [141.815994 58.938599 57.497898] -0.003664 0.000000 0.000000 0.999993 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1038, 0x7BDF1022, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1039,  7625, 0xBDF10000, 100.965, 7.36145, -0.003625, 0.999701, 0, 0, -0.024467,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [100.964996 7.361450 -0.003625] 0.999701 0.000000 0.000000 -0.024467 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF103A,  7625, 0xBDF10000, 89.7878, 18.2162, -0.001375, 0.999875, 0, 0, -0.015837,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [89.787804 18.216200 -0.001375] 0.999875 0.000000 0.000000 -0.015837 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF103B,  7625, 0xBDF10000, 82.5633, 4.0409, -0.04375, 0.999875, 0, 0, -0.015837,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [82.563301 4.040900 -0.043750] 0.999875 0.000000 0.000000 -0.015837 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF103C,  7625, 0xBDF10000, 76.0461, 16.5013, 0.025375, 0.999875, 0, 0, -0.015837,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [76.046097 16.501301 0.025375] 0.999875 0.000000 0.000000 -0.015837 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF103D,  7625, 0xBDF10000, 65.0148, 6.53739, -0.0705, 0.999875, 0, 0, -0.015837,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [65.014801 6.537390 -0.070500] 0.999875 0.000000 0.000000 -0.015837 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF103E,  7625, 0xBDF10000, 54.387, 31.662, -0.084, 1, 0, 0, 0,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [54.387001 31.662001 -0.084000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF103F,  7625, 0xBDF10000, 58.4607, 18.371, -0.030375, 0.999992, 0, 0, -0.00387,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [58.460701 18.371000 -0.030375] 0.999992 0.000000 0.000000 -0.003870 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1040,  7625, 0xBDF10000, 51.5062, 8.09469, -0.083875, 0.999992, 0, 0, -0.00387,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [51.506199 8.094690 -0.083875] 0.999992 0.000000 0.000000 -0.003870 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1041,  7625, 0xBDF10000, 43.1351, 19.5079, -0.079125, 0.999992, 0, 0, -0.00387,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [43.135101 19.507900 -0.079125] 0.999992 0.000000 0.000000 -0.003870 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1042,  7625, 0xBDF10000, 37.7001, 8.95619, 0.001125, 0.999992, 0, 0, -0.00387,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [37.700100 8.956190 0.001125] 0.999992 0.000000 0.000000 -0.003870 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1043,  7625, 0xBDF10000, 29.268, 29.5935, 0.0365, 0.999992, 0, 0, -0.00387,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [29.268000 29.593500 0.036500] 0.999992 0.000000 0.000000 -0.003870 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1044,  7625, 0xBDF10000, 40.6046, 38.6877, 0.119, 0.999992, 0, 0, -0.00387,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [40.604599 38.687698 0.119000] 0.999992 0.000000 0.000000 -0.003870 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1045,  7625, 0xBDF10000, 29.2795, 52.0941, -0.030375, 0.999992, 0, 0, -0.00387,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [29.279499 52.094101 -0.030375] 0.999992 0.000000 0.000000 -0.003870 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1046,  7625, 0xBDF10000, 41.2969, 64.7176, 0.105625, 0.999992, 0, 0, -0.00387,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [41.296902 64.717598 0.105625] 0.999992 0.000000 0.000000 -0.003870 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1047,  7625, 0xBDF10000, 30.0295, 68.1414, 0.00975, 0.999992, 0, 0, -0.00387,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [30.029499 68.141403 0.009750] 0.999992 0.000000 0.000000 -0.003870 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1048,  7385, 0xBDF10000, 82.5364, 54.7828, 56.8214, -0.124643, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [82.536400 54.782799 56.821400] -0.124643 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1048, 0x7BDF103C, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1049,  7383, 0xBDF10000, 83.3784, 54.747, 56.9016, -0.124643, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [83.378403 54.747002 56.901600] -0.124643 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1049, 0x7BDF103B, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF104A,  7389, 0xBDF10000, 84.152, 54.7453, 57.0621, -0.124643, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [84.152000 54.745300 57.062099] -0.124643 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF104A, 0x7BDF103A, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF104B,  7387, 0xBDF10000, 84.7198, 54.7206, 57.1872, -0.124641, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [84.719803 54.720600 57.187199] -0.124641 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF104B, 0x7BDF1039, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF104C,  7387, 0xBDF10000, 80.6428, 54.5188, 57.1872, -0.124641, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [80.642799 54.518799 57.187199] -0.124641 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF104C, 0x7BDF103D, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF104D,  7389, 0xBDF10000, 79.9808, 54.5824, 57.0621, -0.124643, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [79.980797 54.582401 57.062099] -0.124643 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF104D, 0x7BDF103E, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF104E,  7383, 0xBDF10000, 79.261, 54.558, 56.9016, -0.124643, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [79.261002 54.557999 56.901600] -0.124643 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF104E, 0x7BDF103F, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF104F,  7385, 0xBDF10000, 78.4995, 54.5816, 56.8214, -0.124643, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [78.499496 54.581600 56.821400] -0.124643 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF104F, 0x7BDF1040, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1050,  7387, 0xBDF10000, 76.2073, 54.5527, 57.1872, -0.124641, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [76.207298 54.552700 57.187199] -0.124641 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1050, 0x7BDF1041, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1051,  7389, 0xBDF10000, 75.6146, 54.5636, 57.0621, -0.124643, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [75.614601 54.563599 57.062099] -0.124643 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1051, 0x7BDF1042, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1052,  7383, 0xBDF10000, 74.9824, 54.4338, 56.9016, -0.124643, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [74.982399 54.433800 56.901600] -0.124643 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1052, 0x7BDF1043, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1053,  7385, 0xBDF10000, 74.2873, 54.485, 56.8214, -0.124643, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [74.287300 54.485001 56.821400] -0.124643 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1053, 0x7BDF1044, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1054,  7387, 0xBDF10000, 74.0535, 56.4864, 57.1872, -0.124641, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [74.053497 56.486401 57.187199] -0.124641 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1054, 0x7BDF1045, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1055,  7389, 0xBDF10000, 74.0933, 57.1747, 57.0621, -0.124643, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [74.093300 57.174702 57.062099] -0.124643 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1055, 0x7BDF1046, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1056,  7383, 0xBDF10000, 74.1024, 57.8565, 56.9016, -0.124643, 0, 0, -0.992202, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [74.102402 57.856499 56.901600] -0.124643 0.000000 0.000000 -0.992202 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1056, 0x7BDF1047, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1057,  7385, 0xBDF10000, 83.1492, 137.592, 58.0596, -0.999759, 0, 0, -0.021967, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [83.149200 137.591995 58.059601] -0.999759 0.000000 0.000000 -0.021967 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1057, 0x7BDF1065, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1058,  7387, 0xBDF10000, 82.4501, 137.812, 57.9259, -0.999759, 0, 0, -0.021967, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [82.450104 137.811996 57.925900] -0.999759 0.000000 0.000000 -0.021967 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1058, 0x7BDF1064, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1059,  7389, 0xBDF10000, 81.6867, 137.817, 57.966, -0.999759, 0, 0, -0.021967, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [81.686699 137.817001 57.966000] -0.999759 0.000000 0.000000 -0.021967 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1059, 0x7BDF1063, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF105A,  7383, 0xBDF10000, 76.3216, 138.171, 57.9125, -0.999759, 0, 0, -0.021967, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [76.321602 138.171005 57.912498] -0.999759 0.000000 0.000000 -0.021967 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF105A, 0x7BDF106F, '2005-02-09 10:00:00') /* Pressure Plate (2131) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF105C,  7625, 0xBDF10000, 29.4278, 127.67, 0.049875, 0.003273, 0, 0, 0.999995,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [29.427799 127.669998 0.049875] 0.003273 0.000000 0.000000 0.999995 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF105D,  7625, 0xBDF10000, 37.4193, 138.124, 0.14575, 0.003273, 0, 0, 0.999995,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [37.419300 138.123993 0.145750] 0.003273 0.000000 0.000000 0.999995 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF105E,  7625, 0xBDF10000, 27.3248, 151.867, 0.076625, 0.003273, 0, 0, 0.999995,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [27.324800 151.867004 0.076625] 0.003273 0.000000 0.000000 0.999995 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF105F,  7625, 0xBDF10000, 42.3302, 159.879, -0.001375, 0.003273, 0, 0, 0.999995,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [42.330200 159.878998 -0.001375] 0.003273 0.000000 0.000000 0.999995 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1060,  7625, 0xBDF10000, 30.2918, 172.549, 0.049875, 0.005056, 0, 0, 0.999987,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [30.291800 172.548996 0.049875] 0.005056 0.000000 0.000000 0.999987 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1061,  7625, 0xBDF10000, 41.9324, 181.671, 0.105625, 0.005056, 0, 0, 0.999987,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [41.932400 181.671005 0.105625] 0.005056 0.000000 0.000000 0.999987 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1062,  7625, 0xBDF10000, 41.2864, 115.737, -0.01475, 0.005056, 0, 0, 0.999987,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [41.286400 115.737000 -0.014750] 0.005056 0.000000 0.000000 0.999987 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1063,  7625, 0xBDF10000, 76.562, 172.786, 9.183, 0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [76.561996 172.785995 9.183000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1064,  7625, 0xBDF10000, 90.8291, 172.581, 10.3376, -0.691236, 0, 0, 0.722629,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [90.829102 172.580994 10.337600] -0.691236 0.000000 0.000000 0.722629 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1065,  7625, 0xBDF10000, 84.1883, 186.113, 10.9843, -0.999977, 0, 0, 0.006851,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [84.188301 186.113007 10.984300] -0.999977 0.000000 0.000000 0.006851 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1066,  7625, 0xBDF10000, 120.985, 139.781, 30.005, 0.002721, 0, 0, 0.999996,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [120.985001 139.781006 30.004999] 0.002721 0.000000 0.000000 0.999996 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1067,  7625, 0xBDF10000, 149.197, 173.383, -0.028125, 0.712659, 0, 0, -0.701511,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [149.197006 173.382996 -0.028125] 0.712659 0.000000 0.000000 -0.701511 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1068,  2131, 0xBDF10000, 142.716, 142.886, 30.005, 0, 0, 0, -1,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [142.716003 142.886002 30.004999] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1069,  2131, 0xBDF10000, 141.502, 140.438, 30.005, 0, 0, 0, -1,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [141.501999 140.438004 30.004999] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF106A,  7389, 0xBDF10000, 142.119, 137.938, 57.9392, 0.399259, 0, 0, 0.916838, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [142.119003 137.938004 57.939201] 0.399259 0.000000 0.000000 0.916838 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF106A, 0x7BDF1068, '2005-02-09 10:00:00') /* Pressure Plate (2131) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF106B,  7383, 0xBDF10000, 141.33, 138.101, 58.0864, 0.399259, 0, 0, 0.916838, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [141.330002 138.100998 58.086399] 0.399259 0.000000 0.000000 0.916838 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF106B, 0x7BDF1069, '2005-02-09 10:00:00') /* Pressure Plate (2131) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF106C,  7387, 0xBDF10000, 142.716, 136.862, 58.18, 0.399259, 0, 0, 0.916838, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [142.716003 136.862000 58.180000] 0.399259 0.000000 0.000000 0.916838 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF106C, 0x7BDF1067, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF106D,  7385, 0xBDF10000, 140.247, 138.006, 58.073, 0.399259, 0, 0, 0.916838, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [140.246994 138.005997 58.073002] 0.399259 0.000000 0.000000 0.916838 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF106D, 0x7BDF1066, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF106E,  2131, 0xBDF10000, 73.1569, 142.791, 30.005, -0.706585, 0, 0, -0.707628,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [73.156898 142.791000 30.004999] -0.706585 0.000000 0.000000 -0.707628 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF106F,  2131, 0xBDF10000, 74.1858, 140.337, 30.0069, -0.706585, 0, 0, -0.707628,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0xBDF10000 [74.185799 140.337006 30.006901] -0.706585 0.000000 0.000000 -0.707628 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1070,  7383, 0xBDF10000, 75.9064, 137.846, 57.9125, -0.999759, 0, 0, -0.021967, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [75.906403 137.845993 57.912498] -0.999759 0.000000 0.000000 -0.021967 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1070, 0x7BDF106E, '2005-02-09 10:00:00') /* Pressure Plate (2131) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1071,  7385, 0xBDF10000, 73.7734, 136.14, 58.0596, -0.999759, 0, 0, -0.021967, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [73.773399 136.139999 58.059601] -0.999759 0.000000 0.000000 -0.021967 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1071, 0x7BDF105E, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1072,  7387, 0xBDF10000, 74.1174, 137.176, 57.9259, -0.999759, 0, 0, -0.021967, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [74.117401 137.175995 57.925900] -0.999759 0.000000 0.000000 -0.021967 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1072, 0x7BDF1060, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1073,  7389, 0xBDF10000, 74.5649, 137.456, 57.966, -0.999759, 0, 0, -0.021967, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [74.564903 137.455994 57.966000] -0.999759 0.000000 0.000000 -0.021967 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1073, 0x7BDF1061, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1074,  7383, 0xBDF10000, 73.7828, 136.747, 57.9125, -0.999759, 0, 0, -0.021967, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [73.782799 136.746994 57.912498] -0.999759 0.000000 0.000000 -0.021967 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1074, 0x7BDF105F, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1075,  7387, 0xBDF10000, 73.8061, 134.592, 57.9259, -0.999759, 0, 0, -0.021967, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [73.806099 134.591995 57.925900] -0.999759 0.000000 0.000000 -0.021967 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1075, 0x7BDF105D, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7BDF1076,  7389, 0xBDF10000, 73.7039, 133.829, 57.966, -0.999759, 0, 0, -0.021967, False, '2005-02-09 10:00:00'); /* Empyrean magical defense battery */
/* @teleloc 0xBDF10000 [73.703903 133.828995 57.966000] -0.999759 0.000000 0.000000 -0.021967 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7BDF1076, 0x7BDF105C, '2005-02-09 10:00:00') /* Pressure Plate (7625) */;
