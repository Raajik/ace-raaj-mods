DELETE FROM `landblock_instance` WHERE `landblock` = 0x72C9;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9001,  7924, 0x72C9001C, 86, 91, 79.1772, 0.866025, 0, 0, -0.5, False, '2022-08-03 04:23:55'); /* Linkable Monster Generator ( 5 Min.) */
/* @teleloc 0x72C9001C [86.000000 91.000000 79.177200] 0.866025 0.000000 0.000000 -0.500000 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x772C9001, 0x772C9015, '2022-08-03 04:23:55') /* Sclavus Guard (39480) */
     , (0x772C9001, 0x772C903F, '2022-08-03 04:23:55') /* Sclavus Guard (39480) */
     , (0x772C9001, 0x772C9040, '2022-08-03 04:23:55') /* Sclavus Guard (39480) */
     , (0x772C9001, 0x772C9041, '2022-08-03 04:23:55') /* Moarsman Guard (39479) */
     , (0x772C9001, 0x772C9042, '2022-08-03 04:23:55') /* Moarsman Guard (39479) */
     , (0x772C9001, 0x772C9043, '2022-08-03 04:23:55') /* Moarsman Guard (39479) */
     , (0x772C9001, 0x772C9044, '2022-08-03 04:23:55') /* Moarsman Guard (39479) */
     , (0x772C9001, 0x772C9045, '2022-08-03 04:23:55') /* Sclavus Guard (39480) */
     , (0x772C9001, 0x772C9046, '2022-08-03 04:23:55') /* Sclavus Guard (39480) */
     , (0x772C9001, 0x772C9047, '2022-08-03 04:23:55') /* Moarsman Guard (39479) */
     , (0x772C9001, 0x772C9048, '2022-08-03 04:23:55') /* Moarsman Guard (39479) */
     , (0x772C9001, 0x772C9073, '2022-08-03 04:23:55') /* Moarsman Guard (39479) */
     , (0x772C9001, 0x772C9074, '2022-08-03 04:23:55') /* Falatacot Guard (39481) */
     , (0x772C9001, 0x772C9075, '2022-08-03 04:23:55') /* Moarsman Guard (39479) */
     , (0x772C9001, 0x772C9076, '2022-08-03 04:23:55') /* Moarsman Guard (39479) */
     , (0x772C9001, 0x772C909B, '2022-08-03 04:23:55') /* Sclavus Guard (39480) */
     , (0x772C9001, 0x772C909C, '2022-08-03 04:23:55') /* Sclavus Guard (39480) */
     , (0x772C9001, 0x772C909D, '2022-08-03 04:23:55') /* Moarsman Guard (39479) */
     , (0x772C9001, 0x772C909E, '2022-08-03 04:23:55') /* Moarsman Guard (39479) */
     , (0x772C9001, 0x772C909F, '2022-08-03 04:23:55') /* Moarsman Guard (39479) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9015, 39480, 0x72C90028, 116.71, 191.796, 78, 0.013751, 0, 0, -0.999906,  True, '2022-08-03 04:23:55'); /* Sclavus Guard */
/* @teleloc 0x72C90028 [116.709999 191.796005 78.000000] 0.013751 0.000000 0.000000 -0.999906 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C903F, 39480, 0x72C90001, 15.302, 17.1047, 77.4254, -0.862073, 0, 0, 0.506784,  True, '2022-08-03 04:23:55'); /* Sclavus Guard */
/* @teleloc 0x72C90001 [15.302000 17.104700 77.425400] -0.862073 0.000000 0.000000 0.506784 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9040, 39480, 0x72C90001, 11.3695, 11.4181, 77.0525, -0.830503, 0, 0, 0.557015,  True, '2022-08-03 04:23:55'); /* Sclavus Guard */
/* @teleloc 0x72C90001 [11.369500 11.418100 77.052498] -0.830503 0.000000 0.000000 0.557015 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9041, 39479, 0x72C90001, 7.69756, 21.1858, 77.7721, -0.328632, 0, 0, -0.944458,  True, '2022-08-03 04:23:55'); /* Moarsman Guard */
/* @teleloc 0x72C90001 [7.697560 21.185801 77.772102] -0.328632 0.000000 0.000000 -0.944458 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9042, 39479, 0x72C90001, 12.3592, 4.51181, 76.9767, 0.140547, 0, 0, -0.990074,  True, '2022-08-03 04:23:55'); /* Moarsman Guard */
/* @teleloc 0x72C90001 [12.359200 4.511810 76.976700] 0.140547 0.000000 0.000000 -0.990074 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9043, 39479, 0x72C90001, 0.589569, 10.171, 77.9575, -0.779674, 0, 0, -0.626186,  True, '2022-08-03 04:23:55'); /* Moarsman Guard */
/* @teleloc 0x72C90001 [0.589569 10.171000 77.957497] -0.779674 0.000000 0.000000 -0.626186 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9044, 39479, 0x72C90001, 11.075, 9.70383, 77.0837, -0.589244, 0, 0, -0.807955,  True, '2022-08-03 04:23:55'); /* Moarsman Guard */
/* @teleloc 0x72C90001 [11.075000 9.703830 77.083702] -0.589244 0.000000 0.000000 -0.807955 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9045, 39480, 0x72C90001, 18.5317, 7.2455, 76.6038, -0.68083, 0, 0, 0.732442,  True, '2022-08-03 04:23:55'); /* Sclavus Guard */
/* @teleloc 0x72C90001 [18.531700 7.245500 76.603798] -0.680830 0.000000 0.000000 0.732442 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9046, 39480, 0x72C90001, 16.3857, 19.4698, 77.6225, 0.281437, 0, 0, 0.95958,  True, '2022-08-03 04:23:55'); /* Sclavus Guard */
/* @teleloc 0x72C90001 [16.385700 19.469801 77.622498] 0.281437 0.000000 0.000000 0.959580 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9047, 39479, 0x72C90001, 17.9639, 17.4933, 77.4644, 0.999364, 0, 0, 0.03567,  True, '2022-08-03 04:23:55'); /* Moarsman Guard */
/* @teleloc 0x72C90001 [17.963900 17.493299 77.464401] 0.999364 0.000000 0.000000 0.035670 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9048, 39479, 0x72C90001, 8.03306, 2.32598, 77.3372, -0.04015, 0, 0, -0.999194,  True, '2022-08-03 04:23:55'); /* Moarsman Guard */
/* @teleloc 0x72C90001 [8.033060 2.325980 77.337196] -0.040150 0.000000 0.000000 -0.999194 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9073, 39479, 0x72C90028, 116.328, 189.686, 78.0066, 0.010936, 0, 0, -0.99994,  True, '2022-08-03 04:23:55'); /* Moarsman Guard */
/* @teleloc 0x72C90028 [116.328003 189.686005 78.006599] 0.010936 0.000000 0.000000 -0.999940 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9074, 39481, 0x72C90027, 107.037, 166.391, 78.0082, -0.014058, 0, 0, -0.999901,  True, '2022-08-03 04:23:55'); /* Falatacot Guard */
/* @teleloc 0x72C90027 [107.037003 166.391006 78.008202] -0.014058 0.000000 0.000000 -0.999901 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9075, 39479, 0x72C90039, 182.38, 6.99618, 80.9862, 0.898056, 0, 0, -0.439881,  True, '2022-08-03 04:23:55'); /* Moarsman Guard */
/* @teleloc 0x72C90039 [182.380005 6.996180 80.986198] 0.898056 0.000000 0.000000 -0.439881 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C9076, 39479, 0x72C90039, 172.478, 3.29411, 79.0275, -0.91964, 0, 0, -0.392763,  True, '2022-08-03 04:23:55'); /* Moarsman Guard */
/* @teleloc 0x72C90039 [172.477997 3.294110 79.027496] -0.919640 0.000000 0.000000 -0.392763 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C909B, 39480, 0x72C90001, 1.63666, 5.08789, 77.8636, 0.928009, 0, 0, -0.372557,  True, '2022-08-03 04:23:55'); /* Sclavus Guard */
/* @teleloc 0x72C90001 [1.636660 5.087890 77.863602] 0.928009 0.000000 0.000000 -0.372557 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C909C, 39480, 0x72C90001, 0.043549, 0.297904, 77.9964, 0.927336, 0, 0, -0.374231,  True, '2022-08-03 04:23:55'); /* Sclavus Guard */
/* @teleloc 0x72C90001 [0.043549 0.297904 77.996399] 0.927336 0.000000 0.000000 -0.374231 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C909D, 39479, 0x72C90001, 0.253571, 6.60896, 77.9855, 0.921854, 0, 0, -0.387537,  True, '2022-08-03 04:23:55'); /* Moarsman Guard */
/* @teleloc 0x72C90001 [0.253571 6.608960 77.985497] 0.921854 0.000000 0.000000 -0.387537 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C909E, 39479, 0x72C90001, 0.038742, 21.248, 78.0034, 0.975373, 0, 0, -0.220564,  True, '2022-08-03 04:23:55'); /* Moarsman Guard */
/* @teleloc 0x72C90001 [0.038742 21.247999 78.003403] 0.975373 0.000000 0.000000 -0.220564 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C909F, 39479, 0x72C90001, 0.033173, 3.57433, 78.0038, 0.929444, 0, 0, -0.368964,  True, '2022-08-03 04:23:55'); /* Moarsman Guard */
/* @teleloc 0x72C90001 [0.033173 3.574330 78.003799] 0.929444 0.000000 0.000000 -0.368964 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90A4, 88317, 0x72C90024, 97.1975, 95.7511, 79.9552, -0.349074, 0, 0, -0.937095, False, '2022-08-03 04:23:55'); /* Summoning Tthuun Start Generator */
/* @teleloc 0x72C90024 [97.197502 95.751099 79.955200] -0.349074 0.000000 0.000000 -0.937095 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90A5, 88323, 0x72C90024, 97.1975, 95.7511, 79.9552, -0.349074, 0, 0, -0.937095, False, '2022-08-03 04:23:55'); /* Summoning Tthuun Finale Generator */
/* @teleloc 0x72C90024 [97.197502 95.751099 79.955200] -0.349074 0.000000 0.000000 -0.937095 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90A6, 88319, 0x72C90024, 97.1975, 95.7511, 79.9552, -0.349074, 0, 0, -0.937095, False, '2022-08-03 04:23:55'); /* Summoning Tthuun Generator */
/* @teleloc 0x72C90024 [97.197502 95.751099 79.955200] -0.349074 0.000000 0.000000 -0.937095 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90A8, 802462, 0x72C90033, 166.639, 48.6277, 78.055, -0.999966, 0, 0, 0.00822922, False, '2023-08-07 05:11:18'); /* ashenlugiangen */
/* @teleloc 0x72C90033 [166.639008 48.627701 78.055000] -0.999966 0.000000 0.000000 0.008229 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90A9, 802462, 0x72C90035, 167.425, 96.3335, 78.055, -0.999966, 0, 0, 0.00822922, False, '2023-08-07 05:11:21'); /* ashenlugiangen */
/* @teleloc 0x72C90035 [167.425003 96.333504 78.055000] -0.999966 0.000000 0.000000 0.008229 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90AC, 802462, 0x72C90010, 47.2574, 169.552, 80.128, -0.780091, 0, 0, -0.625666, False, '2023-08-07 05:11:35'); /* ashenlugiangen */
/* @teleloc 0x72C90010 [47.257401 169.552002 80.127998] -0.780091 0.000000 0.000000 -0.625666 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90AE, 802462, 0x72C90003, 14.051, 65.8001, 78.8841, -0.0585151, 0, 0, -0.998287, False, '2023-08-07 05:11:44'); /* ashenlugiangen */
/* @teleloc 0x72C90003 [14.051000 65.800102 78.884102] -0.058515 0.000000 0.000000 -0.998287 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90AF, 802462, 0x72C90001, 5.82305, 18.3743, 77.5862, -0.613202, 0, 0, 0.789926, False, '2023-08-07 05:12:04'); /* ashenlugiangen */
/* @teleloc 0x72C90001 [5.823050 18.374300 77.586197] -0.613202 0.000000 0.000000 0.789926 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90B0, 802462, 0x72C90011, 60.8454, 12.4628, 79.9779, -0.740542, 0, 0, 0.67201, False, '2023-08-07 05:12:09'); /* ashenlugiangen */
/* @teleloc 0x72C90011 [60.845402 12.462800 79.977898] -0.740542 0.000000 0.000000 0.672010 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90B1, 802462, 0x72C90022, 110.868, 27.2874, 78.055, -0.80902, 0, 0, 0.587782, False, '2023-08-07 05:12:13'); /* ashenlugiangen */
/* @teleloc 0x72C90022 [110.867996 27.287399 78.055000] -0.809020 0.000000 0.000000 0.587782 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90B2, 802462, 0x72C90023, 110.661, 66.7116, 78.055, -0.962936, 0, 0, -0.269729, False, '2023-08-07 05:12:16'); /* ashenlugiangen */
/* @teleloc 0x72C90023 [110.661003 66.711601 78.055000] -0.962936 0.000000 0.000000 -0.269729 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90B3, 802462, 0x72C9001D, 84.5907, 109.443, 78.055, -0.962936, 0, 0, -0.269729, False, '2023-08-07 05:12:20'); /* ashenlugiangen */
/* @teleloc 0x72C9001D [84.590698 109.443001 78.055000] -0.962936 0.000000 0.000000 -0.269729 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90B6, 802588, 0x72C9003B, 179.926, 49.1554, 80.0426, 0.997524, 0, 0, 0.0703211, False, '2023-08-07 05:15:41'); /* GlisteningNodeGen */
/* @teleloc 0x72C9003B [179.925995 49.155399 80.042603] 0.997524 0.000000 0.000000 0.070321 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90B7, 802588, 0x72C9002E, 143.966, 133.223, 78.055, 0.956482, 0, 0, 0.291793, False, '2023-08-07 05:15:47'); /* GlisteningNodeGen */
/* @teleloc 0x72C9002E [143.966003 133.223007 78.055000] 0.956482 0.000000 0.000000 0.291793 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90B9, 802588, 0x72C9000E, 47.8337, 127.961, 78.055, 0.485895, 0, 0, 0.874017, False, '2023-08-07 05:16:09'); /* GlisteningNodeGen */
/* @teleloc 0x72C9000E [47.833698 127.960999 78.055000] 0.485895 0.000000 0.000000 0.874017 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90BA, 802462, 0x72C9002D, 123.619, 98.9399, 78.056, -0.653968, 0, 0, 0.756522, False, '2024-04-15 01:27:41'); /* ashenlugiangen */
/* @teleloc 0x72C9002D [123.619003 98.939903 78.056000] -0.653968 0.000000 0.000000 0.756522 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90BF, 802462, 0x72C90029, 131.622, 11.7918, 81.1081, -0.998604, 0, 0, 0.0528182, False, '2024-04-16 10:58:30'); /* ashenlugiangen */
/* @teleloc 0x72C90029 [131.621994 11.791800 81.108101] -0.998604 0.000000 0.000000 0.052818 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90C2, 802462, 0x72C9000E, 42.0501, 127.491, 78.056, 0.948656, 0, 0, 0.31631, False, '2024-04-16 10:58:54'); /* ashenlugiangen */
/* @teleloc 0x72C9000E [42.050098 127.490997 78.056000] 0.948656 0.000000 0.000000 0.316310 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90C4, 802462, 0x72C90017, 64.4849, 165.598, 78.4821, 0.400632, 0, 0, -0.916239, False, '2024-04-16 10:59:01'); /* ashenlugiangen */
/* @teleloc 0x72C90017 [64.484901 165.598007 78.482101] 0.400632 0.000000 0.000000 -0.916239 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90C5, 802462, 0x72C90016, 64.4782, 133.621, 78.056, -0.887368, 0, 0, -0.461062, False, '2024-04-16 10:59:04'); /* ashenlugiangen */
/* @teleloc 0x72C90016 [64.478203 133.621002 78.056000] -0.887368 0.000000 0.000000 -0.461062 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90C6, 802588, 0x72C90023, 118.282, 69.0541, 78.056, -0.84617, 0, 0, -0.532914, False, '2024-04-21 20:18:35'); /* GlisteningNodeGen */
/* @teleloc 0x72C90023 [118.281998 69.054100 78.056000] -0.846170 0.000000 0.000000 -0.532914 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90C7, 802588, 0x72C9000D, 30.3047, 103.593, 78.056, -0.935843, 0, 0, -0.352417, False, '2024-04-21 20:18:44'); /* GlisteningNodeGen */
/* @teleloc 0x72C9000D [30.304701 103.593002 78.056000] -0.935843 0.000000 0.000000 -0.352417 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90C8, 802462, 0x72C90003, 14.2482, 55.0689, 79.0922, -0.992586, 0, 0, -0.121544, False, '2024-04-21 20:19:42'); /* ashenlugiangen */
/* @teleloc 0x72C90003 [14.248200 55.068901 79.092201] -0.992586 0.000000 0.000000 -0.121544 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90C9, 802462, 0x72C90007, 13.1927, 162.767, 74.9282, -0.990771, 0, 0, 0.135544, False, '2024-04-21 20:19:51'); /* ashenlugiangen */
/* @teleloc 0x72C90007 [13.192700 162.766998 74.928200] -0.990771 0.000000 0.000000 0.135544 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90CA, 802462, 0x72C90037, 145.311, 166.823, 78.0672, -0.838228, 0, 0, 0.54532, False, '2024-04-21 20:20:03'); /* ashenlugiangen */
/* @teleloc 0x72C90037 [145.311005 166.822998 78.067200] -0.838228 0.000000 0.000000 0.545320 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x772C90CB, 802462, 0x72C9003F, 181.414, 162.027, 80.6761, -0.589991, 0, 0, 0.80741, False, '2024-04-21 20:20:06'); /* ashenlugiangen */
/* @teleloc 0x72C9003F [181.414001 162.026993 80.676102] -0.589991 0.000000 0.000000 0.807410 */
