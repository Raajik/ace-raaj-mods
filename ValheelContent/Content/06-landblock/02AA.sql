DELETE FROM `landblock_instance` WHERE `landblock` = 0x02AA;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA023,  2131, 0x02AA01CF, 100, -220, 24.005, -0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0x02AA01CF [100.000000 -220.000000 24.004999] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA024,  7562, 0x02AA01CF, 101.346, -218.677, 24.005, -0.78162, 0, 0, 0.623755, False, '2005-02-09 10:00:00'); /* Magic trap */
/* @teleloc 0x02AA01CF [101.346001 -218.677002 24.004999] -0.781620 0.000000 0.000000 0.623755 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x702AA024, 0x702AA023, '2005-02-09 10:00:00') /* Pressure Plate (2131) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA026,  2131, 0x02AA01D4, 100, -240, 24.005, 0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0x02AA01D4 [100.000000 -240.000000 24.004999] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA027,  7562, 0x02AA01D4, 101.245, -240.084, 24.005, -0.997875, 0, 0, 0.065158, False, '2005-02-09 10:00:00'); /* Magic trap */
/* @teleloc 0x02AA01D4 [101.245003 -240.084000 24.004999] -0.997875 0.000000 0.000000 0.065158 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x702AA027, 0x702AA026, '2005-02-09 10:00:00') /* Pressure Plate (2131) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA028, 801875, 0x02AA0245, 78.9133, -440.241, 30.055, 0.698959, 0, 0, -0.715161, False, '2023-01-12 07:47:11'); /* AerliteGen2 */
/* @teleloc 0x02AA0245 [78.913300 -440.240997 30.055000] 0.698959 0.000000 0.000000 -0.715161 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA029, 801875, 0x02AA024B, 99.0033, -440.04, 30.055, 0.685857, 0, 0, -0.727736, False, '2023-01-12 07:54:56'); /* AerliteGen2 */
/* @teleloc 0x02AA024B [99.003304 -440.040009 30.055000] 0.685857 0.000000 0.000000 -0.727736 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA02A, 801875, 0x02AA0244, 80.2274, -410.312, 30.055, 0.688904, 0, 0, 0.724853, False, '2023-01-12 07:55:02'); /* AerliteGen2 */
/* @teleloc 0x02AA0244 [80.227402 -410.312012 30.055000] 0.688904 0.000000 0.000000 0.724853 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA02B, 801875, 0x02AA0242, 80.1681, -390.504, 30.055, 0.999694, 0, 0, -0.0247259, False, '2023-01-12 07:55:03'); /* AerliteGen2 */
/* @teleloc 0x02AA0242 [80.168098 -390.503998 30.055000] 0.999694 0.000000 0.000000 -0.024726 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA02C, 801875, 0x02AA020F, 19.6334, -391.808, 30.055, -0.0520234, 0, 0, 0.998646, False, '2023-01-12 07:55:12'); /* AerliteGen2 */
/* @teleloc 0x02AA020F [19.633400 -391.808014 30.055000] -0.052023 0.000000 0.000000 0.998646 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA02D, 801875, 0x02AA0211, 19.753, -408.889, 30.055, 0.0262542, 0, 0, 0.999655, False, '2023-01-12 07:55:14'); /* AerliteGen2 */
/* @teleloc 0x02AA0211 [19.753000 -408.889008 30.055000] 0.026254 0.000000 0.000000 0.999655 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA02E, 801875, 0x02AA0209, -0.214527, -440.23, 30.055, 0.0465034, 0, 0, 0.998918, False, '2023-01-12 07:55:18'); /* AerliteGen2 */
/* @teleloc 0x02AA0209 [-0.214527 -440.230011 30.055000] 0.046503 0.000000 0.000000 0.998918 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA02F, 801875, 0x02AA0212, 20.9446, -440.081, 30.055, -0.703614, 0, 0, 0.710583, False, '2023-01-12 07:55:21'); /* AerliteGen2 */
/* @teleloc 0x02AA0212 [20.944599 -440.080994 30.055000] -0.703614 0.000000 0.000000 0.710583 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA030, 801875, 0x02AA01B9, 50.2435, -290.83, 24.055, -0.999733, 0, 0, 0.0231052, False, '2023-01-12 07:55:41'); /* AerliteGen2 */
/* @teleloc 0x02AA01B9 [50.243500 -290.829987 24.055000] -0.999733 0.000000 0.000000 0.023105 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA031, 801875, 0x02AA01B9, 50.2799, -290.043, 24.055, 0.00231093, 0, 0, 0.999997, False, '2023-01-12 07:55:43'); /* AerliteGen2 */
/* @teleloc 0x02AA01B9 [50.279900 -290.042999 24.055000] 0.002311 0.000000 0.000000 0.999997 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA032, 801875, 0x02AA0228, 49.8368, -368.826, 30.055, 0.00231091, 0, 0, 0.999997, False, '2023-01-12 07:55:52'); /* AerliteGen2 */
/* @teleloc 0x02AA0228 [49.836800 -368.825989 30.055000] 0.002311 0.000000 0.000000 0.999997 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA033, 801875, 0x02AA0227, 50.4717, -360.154, 30.055, 0.00231091, 0, 0, 0.999997, False, '2023-01-12 07:55:54'); /* AerliteGen2 */
/* @teleloc 0x02AA0227 [50.471699 -360.153992 30.055000] 0.002311 0.000000 0.000000 0.999997 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA034, 801875, 0x02AA0226, 50.4963, -354.841, 30.055, 0.00231091, 0, 0, 0.999997, False, '2023-01-12 07:55:55'); /* AerliteGen2 */
/* @teleloc 0x02AA0226 [50.496300 -354.841003 30.055000] 0.002311 0.000000 0.000000 0.999997 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA035, 801875, 0x02AA01C3, 80.2976, -230.009, 24.055, -0.7171, 0, 0, 0.69697, False, '2023-01-12 07:56:11'); /* AerliteGen2 */
/* @teleloc 0x02AA01C3 [80.297600 -230.009003 24.055000] -0.717100 0.000000 0.000000 0.696970 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA036, 801875, 0x02AA01CA, 85.5033, -230.578, 24.055, -0.7171, 0, 0, 0.69697, False, '2023-01-12 07:56:12'); /* AerliteGen2 */
/* @teleloc 0x02AA01CA [85.503304 -230.578003 24.055000] -0.717100 0.000000 0.000000 0.696970 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA037, 801875, 0x02AA01D1, 95.3113, -230.299, 24.055, -0.7171, 0, 0, 0.69697, False, '2023-01-12 07:56:13'); /* AerliteGen2 */
/* @teleloc 0x02AA01D1 [95.311302 -230.298996 24.055000] -0.717100 0.000000 0.000000 0.696970 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA038, 801875, 0x02AA01DF, 149.453, -229.711, 24.055, -0.7171, 0, 0, 0.69697, False, '2023-01-12 08:02:04'); /* AerliteGen2 */
/* @teleloc 0x02AA01DF [149.453003 -229.710999 24.055000] -0.717100 0.000000 0.000000 0.696970 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA039, 801875, 0x02AA01E8, 159.907, -213.685, 24.055, -0.99988, 0, 0, -0.0154591, False, '2023-01-12 08:07:12'); /* AerliteGen2 */
/* @teleloc 0x02AA01E8 [159.906998 -213.684998 24.055000] -0.999880 0.000000 0.000000 -0.015459 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA03A, 801875, 0x02AA01D9, 139.671, -213.713, 24.055, -0.997152, 0, 0, -0.0754183, False, '2023-01-12 08:07:16'); /* AerliteGen2 */
/* @teleloc 0x02AA01D9 [139.671005 -213.712997 24.055000] -0.997152 0.000000 0.000000 -0.075418 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA03B, 801875, 0x02AA01E5, 151.453, -271.511, 24.055, 0.819231, 0, 0, -0.573464, False, '2023-01-12 08:07:23'); /* AerliteGen2 */
/* @teleloc 0x02AA01E5 [151.453003 -271.510986 24.055000] 0.819231 0.000000 0.000000 -0.573464 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA03C, 801875, 0x02AA01F2, 180.248, -277.776, 24.055, 0.042778, 0, 0, -0.999085, False, '2023-01-12 08:07:26'); /* AerliteGen2 */
/* @teleloc 0x02AA01F2 [180.248001 -277.776001 24.055000] 0.042778 0.000000 0.000000 -0.999085 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA03D, 801875, 0x02AA0201, 197.166, -281.139, 24.055, 0.678806, 0, 0, -0.734318, False, '2023-01-12 08:07:28'); /* AerliteGen2 */
/* @teleloc 0x02AA0201 [197.166000 -281.139008 24.055000] 0.678806 0.000000 0.000000 -0.734318 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA03E, 801875, 0x02AA01FB, 191.257, -270.124, 24.055, 0.963897, 0, 0, 0.266275, False, '2023-01-12 08:07:30'); /* AerliteGen2 */
/* @teleloc 0x02AA01FB [191.257004 -270.123993 24.055000] 0.963897 0.000000 0.000000 0.266275 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA03F, 801875, 0x02AA019D, 259.834, -209.774, 12.055, -0.999804, 0, 0, -0.0198114, False, '2023-01-12 08:07:53'); /* AerliteGen2 */
/* @teleloc 0x02AA019D [259.834015 -209.774002 12.055000] -0.999804 0.000000 0.000000 -0.019811 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA040, 801875, 0x02AA0197, 259.415, -191.048, 12.055, -0.998881, 0, 0, 0.0472874, False, '2023-01-12 08:07:59'); /* AerliteGen2 */
/* @teleloc 0x02AA0197 [259.415009 -191.048004 12.055000] -0.998881 0.000000 0.000000 0.047287 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA041, 801875, 0x02AA013F, 259.841, -109.35, 0.055, -0.999986, 0, 0, -0.0053223, False, '2023-01-12 08:08:08'); /* AerliteGen2 */
/* @teleloc 0x02AA013F [259.841003 -109.349998 0.055000] -0.999986 0.000000 0.000000 -0.005322 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA042, 801875, 0x02AA013F, 259.841, -109.342, 0.055, -0.999986, 0, 0, -0.0053223, False, '2023-01-12 08:08:13'); /* AerliteGen2 */
/* @teleloc 0x02AA013F [259.841003 -109.342003 0.055000] -0.999986 0.000000 0.000000 -0.005322 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA043, 801875, 0x02AA015D, 310.168, -110.653, 0.055, 0.0134909, 0, 0, 0.999909, False, '2023-01-12 08:08:21'); /* AerliteGen2 */
/* @teleloc 0x02AA015D [310.167999 -110.653000 0.055000] 0.013491 0.000000 0.000000 0.999909 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA044, 801875, 0x02AA0167, 309.041, -160.796, 0.055, -0.0647674, 0, 0, 0.9979, False, '2023-01-12 08:08:26'); /* AerliteGen2 */
/* @teleloc 0x02AA0167 [309.040985 -160.796005 0.055000] -0.064767 0.000000 0.000000 0.997900 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA045, 801875, 0x02AA0151, 310.15, -60.3707, 0.055, -0.997086, 0, 0, 0.0762914, False, '2023-01-12 08:08:37'); /* AerliteGen2 */
/* @teleloc 0x02AA0151 [310.149994 -60.370701 0.055000] -0.997086 0.000000 0.000000 0.076291 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA046, 801875, 0x02AA0157, 309.729, -90.2312, 0.055, 0.0219448, 0, 0, -0.999759, False, '2023-01-12 08:08:43'); /* AerliteGen2 */
/* @teleloc 0x02AA0157 [309.729004 -90.231201 0.055000] 0.021945 0.000000 0.000000 -0.999759 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA047, 801875, 0x02AA0163, 309.855, -128.808, 0.055, -0.999392, 0, 0, 0.0348775, False, '2023-01-12 08:08:53'); /* AerliteGen2 */
/* @teleloc 0x02AA0163 [309.855011 -128.807999 0.055000] -0.999392 0.000000 0.000000 0.034878 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA048, 801875, 0x02AA0115, 209.894, -128.741, 0.055, -0.742165, 0, 0, -0.670218, False, '2023-01-12 08:09:06'); /* AerliteGen2 */
/* @teleloc 0x02AA0115 [209.893997 -128.740997 0.055000] -0.742165 0.000000 0.000000 -0.670218 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA049, 801875, 0x02AA0109, 209.954, -89.5266, 0.055, -0.999826, 0, 0, -0.0186571, False, '2023-01-12 08:09:11'); /* AerliteGen2 */
/* @teleloc 0x02AA0109 [209.953995 -89.526604 0.055000] -0.999826 0.000000 0.000000 -0.018657 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA04A, 801875, 0x02AA0103, 209.575, -63.5424, 0.055, -0.999972, 0, 0, -0.00747179, False, '2023-01-12 08:09:17'); /* AerliteGen2 */
/* @teleloc 0x02AA0103 [209.574997 -63.542400 0.055000] -0.999972 0.000000 0.000000 -0.007472 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA04B, 801875, 0x02AA010F, 210.084, -111.232, 0.055, -0.0576419, 0, 0, -0.998337, False, '2023-01-12 08:09:23'); /* AerliteGen2 */
/* @teleloc 0x02AA010F [210.084000 -111.232002 0.055000] -0.057642 0.000000 0.000000 -0.998337 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA04C, 801875, 0x02AA0119, 210.127, -159.68, 0.055, 0.999953, 0, 0, 0.00970661, False, '2023-01-12 08:09:28'); /* AerliteGen2 */
/* @teleloc 0x02AA0119 [210.126999 -159.679993 0.055000] 0.999953 0.000000 0.000000 0.009707 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA04D, 801875, 0x02AA013A, 260.02, -70.6606, 0.055, 0.999966, 0, 0, 0.00819422, False, '2023-01-12 08:09:52'); /* AerliteGen2 */
/* @teleloc 0x02AA013A [260.019989 -70.660599 0.055000] 0.999966 0.000000 0.000000 0.008194 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA04E, 801870, 0x02AA0134, 259.706, -51.217, 0.005, 0.997769, 0, 0, -0.066756, False, '2023-01-12 08:09:57');
/* @teleloc 0x02AA0134 [259.705994 -51.216999 0.005000] 0.997769 0.000000 0.000000 -0.066756 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA04F, 801870, 0x02AA0128, 260.156, -0.574555, 0.005, 0.405184, 0, 0, 0.914235, False, '2023-01-12 08:10:06');
/* @teleloc 0x02AA0128 [260.156006 -0.574555 0.005000] 0.405184 0.000000 0.000000 0.914235 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA050, 801875, 0x02AA011A, 220.883, -30.1293, 0.055, 0.70782, 0, 0, 0.706393, False, '2023-01-12 08:10:16'); /* AerliteGen2 */
/* @teleloc 0x02AA011A [220.882996 -30.129299 0.055000] 0.707820 0.000000 0.000000 0.706393 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA051, 801875, 0x02AA014D, 298.505, -29.5439, 0.055, -0.709204, 0, 0, 0.705004, False, '2023-01-12 08:10:24'); /* AerliteGen2 */
/* @teleloc 0x02AA014D [298.505005 -29.543900 0.055000] -0.709204 0.000000 0.000000 0.705004 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA052, 801875, 0x02AA012E, 259.923, -29.4596, 0.055, -0.00509173, 0, 0, 0.999987, False, '2023-01-12 08:10:35'); /* AerliteGen2 */
/* @teleloc 0x02AA012E [259.923004 -29.459600 0.055000] -0.005092 0.000000 0.000000 0.999987 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA053, 801875, 0x02AA0134, 260.684, -49.9406, 0.055, -0.00509173, 0, 0, 0.999987, False, '2023-01-12 08:10:43'); /* AerliteGen2 */
/* @teleloc 0x02AA0134 [260.683990 -49.940601 0.055000] -0.005092 0.000000 0.000000 0.999987 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA054, 803040, 0x02AA01B9, 50.3319, -294.955, 24.055, 1, 0, 0, 5.95175E-08, False, '2023-10-30 05:21:13');
/* @teleloc 0x02AA01B9 [50.331902 -294.954987 24.055000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702AA055, 803040, 0x02AA013E, 260.13446, -104.008484, 0.054999996, 0.99997896, 0, 0, 0.006487027, False, '2023-10-30 05:21:50');
/* @teleloc 0x02AA013E [260.134460 -104.008484 0.055000] 0.999979 0.000000 0.000000 0.006487 */
