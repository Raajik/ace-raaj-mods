DELETE FROM `landblock_instance` WHERE `landblock` = 0x0183;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183000,  1760, 0x01830100, 111.073, -12.994, -11.9975, -0.179017, 0, 0, -0.983846,  True, '2005-02-09 10:00:00'); /* Skeleton Warrior */
/* @teleloc 0x01830100 [111.072998 -12.994000 -11.997500] -0.179017 0.000000 0.000000 -0.983846 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183004,  1154, 0x01830115, 120, -20, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Linkable Monster Generator */
/* @teleloc 0x01830115 [120.000000 -20.000000 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x70183004, 0x70183000, '2005-02-09 10:00:00') /* Skeleton Warrior (1760) */
     , (0x70183004, 0x70183007, '2005-02-09 10:00:00') /* Skeleton (1759) */
     , (0x70183004, 0x7018300D, '2005-02-09 10:00:00') /* Skeleton Captain (1761) */
     , (0x70183004, 0x70183011, '2005-02-09 10:00:00') /* Skeleton Warrior (1760) */
     , (0x70183004, 0x70183039, '2005-02-09 10:00:00') /* Skeleton Warrior (1760) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183007,  1759, 0x01830120, 118.799, -31.3453, -11.9975, -0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Skeleton */
/* @teleloc 0x01830120 [118.799004 -31.345301 -11.997500] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018300D,  1761, 0x0183012B, 127.112, -8.32577, -11.9975, -0.180519, 0, 0, -0.983572,  True, '2005-02-09 10:00:00'); /* Skeleton Captain */
/* @teleloc 0x0183012B [127.112000 -8.325770 -11.997500] -0.180519 0.000000 0.000000 -0.983572 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183011,  1760, 0x01830131, 130, -20, -11.9975, 0, 0, 0, -1,  True, '2005-02-09 10:00:00'); /* Skeleton Warrior */
/* @teleloc 0x01830131 [130.000000 -20.000000 -11.997500] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183036,  1212, 0x018301E2, 92.9698, -20.8843, 0, 0.709494, 0, 0, -0.704711, False, '2005-02-09 10:00:00'); /* Old Sign */
/* @teleloc 0x018301E2 [92.969803 -20.884300 0.000000] 0.709494 0.000000 0.000000 -0.704711 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183039,  1760, 0x018301EC, 89.9875, -46.1596, -0.868438, 1, 0, 0, 0,  True, '2005-02-09 10:00:00'); /* Skeleton Warrior */
/* @teleloc 0x018301EC [89.987503 -46.159599 -0.868438] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018303A, 801868, 0x018301A9, 60, -19.203, 0.055, 1, 0, 0, 0, False, '2023-01-12 06:42:15'); /* MordantGen1 */
/* @teleloc 0x018301A9 [60.000000 -19.202999 0.055000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018303B, 801868, 0x018301E2, 88.7677, -19.6333, 0.055, 0.28311, 0, 0, -0.959087, False, '2023-01-12 06:42:30'); /* MordantGen1 */
/* @teleloc 0x018301E2 [88.767700 -19.633301 0.055000] 0.283110 0.000000 0.000000 -0.959087 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018303C, 801868, 0x01830213, 99.2151, -26.3921, 0.055, 0.757482, 0, 0, -0.652856, False, '2023-01-12 06:42:31'); /* MordantGen1 */
/* @teleloc 0x01830213 [99.215103 -26.392099 0.055000] 0.757482 0.000000 0.000000 -0.652856 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018303D, 801868, 0x0183022D, 110.247, -12.241, 0.055, 0.924133, 0, 0, 0.38207, False, '2023-01-12 06:42:34'); /* MordantGen1 */
/* @teleloc 0x0183022D [110.247002 -12.241000 0.055000] 0.924133 0.000000 0.000000 0.382070 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018303E, 801868, 0x0183022A, 110.935, 0.664166, 0.055, 0.816012, 0, 0, 0.578035, False, '2023-01-12 06:42:37'); /* MordantGen1 */
/* @teleloc 0x0183022A [110.934998 0.664166 0.055000] 0.816012 0.000000 0.000000 0.578035 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018303F, 801868, 0x01830251, 121.795, -10.7531, 0.055, 0.72691, 0, 0, 0.686733, False, '2023-01-12 06:42:41'); /* MordantGen1 */
/* @teleloc 0x01830251 [121.794998 -10.753100 0.055000] 0.726910 0.000000 0.000000 0.686733 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183040, 801868, 0x01830254, 119.581, -19.4255, 0.055, -0.692228, 0, 0, 0.721678, False, '2023-01-12 06:42:44'); /* MordantGen1 */
/* @teleloc 0x01830254 [119.581001 -19.425501 0.055000] -0.692228 0.000000 0.000000 0.721678 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183041, 801868, 0x01830269, 131.707, -70.4575, 0.055, 0.714993, 0, 0, 0.699132, False, '2023-01-12 06:42:54'); /* MordantGen1 */
/* @teleloc 0x01830269 [131.707001 -70.457497 0.055000] 0.714993 0.000000 0.000000 0.699132 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183042, 801868, 0x01830173, 70.8881, -70.2641, -5.945, 0.742468, 0, 0, 0.669882, False, '2023-01-12 06:43:02'); /* MordantGen1 */
/* @teleloc 0x01830173 [70.888100 -70.264099 -5.945000] 0.742468 0.000000 0.000000 0.669882 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183043, 801868, 0x0183016D, 58.4478, -70.2694, -5.945, -0.697948, 0, 0, 0.716148, False, '2023-01-12 06:43:07'); /* MordantGen1 */
/* @teleloc 0x0183016D [58.447800 -70.269402 -5.945000] -0.697948 0.000000 0.000000 0.716148 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183044, 801868, 0x018301D8, 79.8794, -41.0275, 0.055, -0.999996, 0, 0, 0.00264734, False, '2023-01-12 06:43:12'); /* MordantGen1 */
/* @teleloc 0x018301D8 [79.879402 -41.027500 0.055000] -0.999996 0.000000 0.000000 0.002647 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183049, 801868, 0x01830196, 40.5932, -39.8684, 0.055, 0.739678, 0, 0, 0.672961, False, '2023-01-12 06:43:27'); /* MordantGen1 */
/* @teleloc 0x01830196 [40.593201 -39.868401 0.055000] 0.739678 0.000000 0.000000 0.672961 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018304A, 801868, 0x0183015F, 30.9813, -40.0373, -5.945, 0.140958, 0, 0, 0.990016, False, '2023-01-12 06:43:35'); /* MordantGen1 */
/* @teleloc 0x0183015F [30.981300 -40.037300 -5.945000] 0.140958 0.000000 0.000000 0.990016 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018304B, 801868, 0x0183015B, 17.275, -49.549, -5.945, 0.748745, 0, 0, 0.662858, False, '2023-01-12 06:43:37'); /* MordantGen1 */
/* @teleloc 0x0183015B [17.275000 -49.549000 -5.945000] 0.748745 0.000000 0.000000 0.662858 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018304C, 801868, 0x01830154, 19.2424, -34.1779, -5.945, 0.995847, 0, 0, -0.091048, False, '2023-01-12 06:43:38'); /* MordantGen1 */
/* @teleloc 0x01830154 [19.242399 -34.177898 -5.945000] 0.995847 0.000000 0.000000 -0.091048 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018304D, 801868, 0x01830136, 4.46649, -29.1589, -5.945, 0.685929, 0, 0, 0.727668, False, '2023-01-12 06:43:40'); /* MordantGen1 */
/* @teleloc 0x01830136 [4.466490 -29.158899 -5.945000] 0.685929 0.000000 0.000000 0.727668 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018304E, 801868, 0x0183013D, -0.80297, -46.311, -5.945, -0.12749, 0, 0, 0.99184, False, '2023-01-12 06:43:42'); /* MordantGen1 */
/* @teleloc 0x0183013D [-0.802970 -46.311001 -5.945000] -0.127490 0.000000 0.000000 0.991840 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018304F, 801868, 0x0183014B, 9.36172, -40.5512, -5.945, -0.924889, 0, 0, 0.380237, False, '2023-01-12 06:43:45'); /* MordantGen1 */
/* @teleloc 0x0183014B [9.361720 -40.551201 -5.945000] -0.924889 0.000000 0.000000 0.380237 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183050, 801868, 0x0183014B, 9.91627, -39.9908, -5.945, -0.924889, 0, 0, 0.380237, False, '2023-01-12 06:43:45'); /* MordantGen1 */
/* @teleloc 0x0183014B [9.916270 -39.990799 -5.945000] -0.924889 0.000000 0.000000 0.380237 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183051, 801868, 0x0183014B, 9.91627, -39.9908, -5.945, -0.924889, 0, 0, 0.380237, False, '2023-01-12 06:43:46'); /* MordantGen1 */
/* @teleloc 0x0183014B [9.916270 -39.990799 -5.945000] -0.924889 0.000000 0.000000 0.380237 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183052, 801868, 0x0183015C, 29.2492, -29.5989, -5.945, 0.659096, 0, 0, 0.752059, False, '2023-01-12 06:44:06'); /* MordantGen1 */
/* @teleloc 0x0183015C [29.249201 -29.598900 -5.945000] 0.659096 0.000000 0.000000 0.752059 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183053, 801868, 0x01830121, 119.28, -40.3993, -11.945, 0.998705, 0, 0, -0.050868, False, '2023-01-12 06:44:36'); /* MordantGen1 */
/* @teleloc 0x01830121 [119.279999 -40.399300 -11.945000] 0.998705 0.000000 0.000000 -0.050868 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183054, 801868, 0x01830118, 119.866, -19.9848, -11.945, -0.440916, 0, 0, 0.897549, False, '2023-01-12 06:45:06'); /* MordantGen1 */
/* @teleloc 0x01830118 [119.865997 -19.984800 -11.945000] -0.440916 0.000000 0.000000 0.897549 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183055, 801868, 0x01830132, 128.269, -28.6995, -11.945, -0.422495, 0, 0, 0.906365, False, '2023-01-12 06:45:07'); /* MordantGen1 */
/* @teleloc 0x01830132 [128.268997 -28.699499 -11.945000] -0.422495 0.000000 0.000000 0.906365 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183056, 801868, 0x0183012B, 129.736, -11.6408, -11.945, -0.995482, 0, 0, -0.0949543, False, '2023-01-12 06:45:10'); /* MordantGen1 */
/* @teleloc 0x0183012B [129.735992 -11.640800 -11.945000] -0.995482 0.000000 0.000000 -0.094954 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183057, 801868, 0x01830100, 111.941, -10.0249, -11.945, -0.714119, 0, 0, -0.700025, False, '2023-01-12 06:45:12'); /* MordantGen1 */
/* @teleloc 0x01830100 [111.941002 -10.024900 -11.945000] -0.714119 0.000000 0.000000 -0.700025 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183058, 801868, 0x01830107, 109.859, -28.4524, -11.945, 0.0782817, 0, 0, -0.996931, False, '2023-01-12 06:45:18'); /* MordantGen1 */
/* @teleloc 0x01830107 [109.859001 -28.452400 -11.945000] 0.078282 0.000000 0.000000 -0.996931 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x70183059, 803040, 0x01830220, 101.249, -70.3686, 0.055, 0.997555, 0, 0, 0.0698868, False, '2023-10-30 05:19:00');
/* @teleloc 0x01830220 [101.249001 -70.368599 0.055000] 0.997555 0.000000 0.000000 0.069887 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018305A, 803040, 0x018301E6, 92.72407, -26.684717, 0.054999996, 0.79360366, 0, 0, 0.60843503, False, '2023-10-30 05:19:11');
/* @teleloc 0x018301E6 [92.724068 -26.684717 0.055000] 0.793604 0.000000 0.000000 0.608435 */
