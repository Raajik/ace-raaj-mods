DELETE FROM `landblock_instance` WHERE `landblock` = 0x02EC;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC049,  4452, 0x02EC02C5, 50, -50, 6.005, 0, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x02EC02C5 [50.000000 -50.000000 6.005000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC04C,  2180, 0x02EC02CB, 50.001, -65.248, 6.005, 0, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x02EC02CB [50.000999 -65.248001 6.005000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x702EC04C, 0x702EC04D, '2005-02-09 10:00:00') /* Pressure Plate (2131) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC04D,  2131, 0x02EC02CB, 50.0267, -66.7632, 6.005, 1, 0, 0, 0,  True, '2005-02-09 10:00:00'); /* Pressure Plate */
/* @teleloc 0x02EC02CB [50.026699 -66.763199 6.005000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC057,  4452, 0x02EC0327, 260, -50, 6.005, 0, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x02EC0327 [260.000000 -50.000000 6.005000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC07B, 801837, 0x02EC0329, 259.993, -60.1726, 6.055, 0.0199082, 0, 0, -0.999802, False, '2023-01-04 19:00:14'); /* ShadowElfinGen */
/* @teleloc 0x02EC0329 [259.993011 -60.172600 6.055000] 0.019908 0.000000 0.000000 -0.999802 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC07C, 801837, 0x02EC027E, 230.921, -100.173, 0.055, -0.983941, 0, 0, -0.178497, False, '2023-01-04 19:01:11'); /* ShadowElfinGen */
/* @teleloc 0x02EC027E [230.921005 -100.172997 0.055000] -0.983941 0.000000 0.000000 -0.178497 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC07D, 801837, 0x02EC0283, 238.752, -109.905, 0.0775511, -0.442571, 0, 0, 0.896733, False, '2023-01-04 19:01:13'); /* ShadowElfinGen */
/* @teleloc 0x02EC0283 [238.751999 -109.904999 0.077551] -0.442571 0.000000 0.000000 0.896733 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC07E, 801837, 0x02EC0275, 210.161, -109.95, 0.055, -0.706557, 0, 0, -0.707656, False, '2023-01-04 19:01:19'); /* ShadowElfinGen */
/* @teleloc 0x02EC0275 [210.160995 -109.949997 0.055000] -0.706557 0.000000 0.000000 -0.707656 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC07F, 801837, 0x02EC026B, 198.643, -110.343, 0.055, -0.774144, 0, 0, -0.633009, False, '2023-01-04 19:01:22'); /* ShadowElfinGen */
/* @teleloc 0x02EC026B [198.643005 -110.343002 0.055000] -0.774144 0.000000 0.000000 -0.633009 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC080, 801837, 0x02EC0218, 180.325, -110.243, -5.945, -0.101605, 0, 0, -0.994825, False, '2023-01-04 19:01:25'); /* ShadowElfinGen */
/* @teleloc 0x02EC0218 [180.324997 -110.242996 -5.945000] -0.101605 0.000000 0.000000 -0.994825 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC081, 801837, 0x02EC0227, 209.255, -110.503, -5.945, 0.78466, 0, 0, 0.619926, False, '2023-01-04 19:01:30'); /* ShadowElfinGen */
/* @teleloc 0x02EC0227 [209.255005 -110.502998 -5.945000] 0.784660 0.000000 0.000000 0.619926 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC082, 801837, 0x02EC014B, 176.301, -99.4549, -11.945, 0.646571, 0, 0, 0.762854, False, '2023-01-04 19:01:50'); /* ShadowElfinGen */
/* @teleloc 0x02EC014B [176.300995 -99.454903 -11.945000] 0.646571 0.000000 0.000000 0.762854 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC083, 801837, 0x02EC0145, 169.324, -106.05, -11.945, -0.0608709, 0, 0, 0.998146, False, '2023-01-04 19:01:51'); /* ShadowElfinGen */
/* @teleloc 0x02EC0145 [169.324005 -106.050003 -11.945000] -0.060871 0.000000 0.000000 0.998146 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC084, 801837, 0x02EC0152, 180.699, -123.338, -11.945, -0.257778, 0, 0, 0.966204, False, '2023-01-04 19:01:52'); /* ShadowElfinGen */
/* @teleloc 0x02EC0152 [180.699005 -123.337997 -11.945000] -0.257778 0.000000 0.000000 0.966204 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC085, 801837, 0x02EC0149, 174.568, -131.674, -11.945, 0.792348, 0, 0, 0.61007, False, '2023-01-04 19:01:54'); /* ShadowElfinGen */
/* @teleloc 0x02EC0149 [174.567993 -131.673996 -11.945000] 0.792348 0.000000 0.000000 0.610070 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC086, 801837, 0x02EC013B, 159.211, -121.172, -11.945, 0.996784, 0, 0, 0.080132, False, '2023-01-04 19:01:55'); /* ShadowElfinGen */
/* @teleloc 0x02EC013B [159.210999 -121.171997 -11.945000] 0.996784 0.000000 0.000000 0.080132 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC087, 801837, 0x02EC0137, 160.939, -110.372, -11.945, 0.996784, 0, 0, 0.0801319, False, '2023-01-04 19:01:56'); /* ShadowElfinGen */
/* @teleloc 0x02EC0137 [160.938995 -110.372002 -11.945000] 0.996784 0.000000 0.000000 0.080132 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC088, 801837, 0x02EC0134, 159.708, -102.885, -11.945, 0.991917, 0, 0, 0.12689, False, '2023-01-04 19:01:57'); /* ShadowElfinGen */
/* @teleloc 0x02EC0134 [159.707993 -102.885002 -11.945000] 0.991917 0.000000 0.000000 0.126890 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC089, 801837, 0x02EC011C, 140.781, -100.08, -11.945, 0.522929, 0, 0, 0.852376, False, '2023-01-04 19:01:58'); /* ShadowElfinGen */
/* @teleloc 0x02EC011C [140.781006 -100.080002 -11.945000] 0.522929 0.000000 0.000000 0.852376 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC08A, 801837, 0x02EC011F, 138.83, -106.045, -11.945, -0.0960214, 0, 0, 0.995379, False, '2023-01-04 19:01:59'); /* ShadowElfinGen */
/* @teleloc 0x02EC011F [138.830002 -106.044998 -11.945000] -0.096021 0.000000 0.000000 0.995379 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC08B, 801837, 0x02EC0123, 140.961, -121.713, -11.945, 0.0448597, 0, 0, 0.998993, False, '2023-01-04 19:02:00'); /* ShadowElfinGen */
/* @teleloc 0x02EC0123 [140.960999 -121.712997 -11.945000] 0.044860 0.000000 0.000000 0.998993 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC08C, 801837, 0x02EC0127, 140.555, -126.228, -11.945, 0.0448597, 0, 0, 0.998993, False, '2023-01-04 19:02:01'); /* ShadowElfinGen */
/* @teleloc 0x02EC0127 [140.554993 -126.227997 -11.945000] 0.044860 0.000000 0.000000 0.998993 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC08D, 801837, 0x02EC01F8, 150.29, -120.536, -5.945, -0.727986, 0, 0, 0.685592, False, '2023-01-04 19:02:06'); /* ShadowElfinGen */
/* @teleloc 0x02EC01F8 [150.289993 -120.536003 -5.945000] -0.727986 0.000000 0.000000 0.685592 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC08E, 801837, 0x02EC0202, 161.94, -119.543, -5.945, -0.727986, 0, 0, 0.685592, False, '2023-01-04 19:02:08'); /* ShadowElfinGen */
/* @teleloc 0x02EC0202 [161.940002 -119.542999 -5.945000] -0.727986 0.000000 0.000000 0.685592 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC08F, 801837, 0x02EC020D, 170.728, -121.463, -5.945, -0.238254, 0, 0, 0.971203, False, '2023-01-04 19:02:09'); /* ShadowElfinGen */
/* @teleloc 0x02EC020D [170.727997 -121.462997 -5.945000] -0.238254 0.000000 0.000000 0.971203 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC090, 801837, 0x02EC0212, 169.79, -137.729, -5.945, 0.0906499, 0, 0, 0.995883, False, '2023-01-04 19:02:11'); /* ShadowElfinGen */
/* @teleloc 0x02EC0212 [169.789993 -137.729004 -5.945000] 0.090650 0.000000 0.000000 0.995883 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC091, 801837, 0x02EC01EF, 142.674, -139.69, -5.945, 0.730807, 0, 0, 0.682584, False, '2023-01-04 19:02:13'); /* ShadowElfinGen */
/* @teleloc 0x02EC01EF [142.673996 -139.690002 -5.945000] 0.730807 0.000000 0.000000 0.682584 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC092, 801837, 0x02EC01EC, 138.118, -132.48, -5.945, 1, 0, 0, -0.000942738, False, '2023-01-04 19:02:14'); /* ShadowElfinGen */
/* @teleloc 0x02EC01EC [138.117996 -132.479996 -5.945000] 1.000000 0.000000 0.000000 -0.000943 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC093, 801837, 0x02EC01D7, 132.1, -128.091, -5.945, 0.680893, 0, 0, 0.732383, False, '2023-01-04 19:02:15'); /* ShadowElfinGen */
/* @teleloc 0x02EC01D7 [132.100006 -128.091003 -5.945000] 0.680893 0.000000 0.000000 0.732383 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC094, 801837, 0x02EC0254, 124.914, -108.432, 0.055, 0.718075, 0, 0, 0.695966, False, '2023-01-04 19:02:17'); /* ShadowElfinGen */
/* @teleloc 0x02EC0254 [124.914001 -108.431999 0.055000] 0.718075 0.000000 0.000000 0.695966 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC095, 801837, 0x02EC0263, 139.849, -124.61, 0.055, -0.990407, 0, 0, 0.138185, False, '2023-01-04 19:02:21'); /* ShadowElfinGen */
/* @teleloc 0x02EC0263 [139.848999 -124.610001 0.055000] -0.990407 0.000000 0.000000 0.138185 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC096, 801837, 0x02EC025F, 140.728, -102.563, 0.055, -0.989727, 0, 0, -0.142969, False, '2023-01-04 19:02:23'); /* ShadowElfinGen */
/* @teleloc 0x02EC025F [140.727997 -102.563004 0.055000] -0.989727 0.000000 0.000000 -0.142969 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC097, 801837, 0x02EC024D, 112.741, -99.946, 0.055, -0.624975, 0, 0, -0.780644, False, '2023-01-04 19:02:25'); /* ShadowElfinGen */
/* @teleloc 0x02EC024D [112.740997 -99.945999 0.055000] -0.624975 0.000000 0.000000 -0.780644 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC098, 801837, 0x02EC019E, 109.75, -118.641, -5.945, 0.421047, 0, 0, -0.907039, False, '2023-01-04 19:02:29'); /* ShadowElfinGen */
/* @teleloc 0x02EC019E [109.750000 -118.640999 -5.945000] 0.421047 0.000000 0.000000 -0.907039 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC099, 801837, 0x02EC018F, 102.326, -119.788, -5.945, -0.742541, 0, 0, -0.6698, False, '2023-01-04 19:02:35'); /* ShadowElfinGen */
/* @teleloc 0x02EC018F [102.325996 -119.788002 -5.945000] -0.742541 0.000000 0.000000 -0.669800 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC09A, 801837, 0x02EC018A, 99.4921, -103.85, -5.945, -0.999833, 0, 0, 0.0182954, False, '2023-01-04 19:02:37'); /* ShadowElfinGen */
/* @teleloc 0x02EC018A [99.492104 -103.849998 -5.945000] -0.999833 0.000000 0.000000 0.018295 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC09B, 801837, 0x02EC0186, 99.8417, -94.298, -5.945, -0.999833, 0, 0, 0.0182954, False, '2023-01-04 19:02:38'); /* ShadowElfinGen */
/* @teleloc 0x02EC0186 [99.841698 -94.297997 -5.945000] -0.999833 0.000000 0.000000 0.018295 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC09C, 801837, 0x02EC0182, 100.176, -84.3136, -5.945, -0.999181, 0, 0, -0.040461, False, '2023-01-04 19:02:38'); /* ShadowElfinGen */
/* @teleloc 0x02EC0182 [100.176003 -84.313599 -5.945000] -0.999181 0.000000 0.000000 -0.040461 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC09D, 801837, 0x02EC017B, 89.2731, -78.7413, -5.945, -0.631944, 0, 0, -0.775014, False, '2023-01-04 19:02:39'); /* ShadowElfinGen */
/* @teleloc 0x02EC017B [89.273102 -78.741302 -5.945000] -0.631944 0.000000 0.000000 -0.775014 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC09E, 801837, 0x02EC016B, 70.8184, -85.6261, -5.945, -0.0728025, 0, 0, -0.997346, False, '2023-01-04 19:02:41'); /* ShadowElfinGen */
/* @teleloc 0x02EC016B [70.818398 -85.626099 -5.945000] -0.072802 0.000000 0.000000 -0.997346 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC09F, 801837, 0x02EC0157, 52.4033, -91.0972, -5.945, -0.526746, 0, 0, -0.850023, False, '2023-01-04 19:02:43'); /* ShadowElfinGen */
/* @teleloc 0x02EC0157 [52.403301 -91.097198 -5.945000] -0.526746 0.000000 0.000000 -0.850023 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0A0, 801837, 0x02EC015A, 49.3035, -97.3056, -5.945, 0.103254, 0, 0, -0.994655, False, '2023-01-04 19:02:44'); /* ShadowElfinGen */
/* @teleloc 0x02EC015A [49.303501 -97.305603 -5.945000] 0.103254 0.000000 0.000000 -0.994655 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0A1, 801837, 0x02EC0162, 61.7431, -107.226, -5.945, -0.0258494, 0, 0, -0.999666, False, '2023-01-04 19:02:45'); /* ShadowElfinGen */
/* @teleloc 0x02EC0162 [61.743099 -107.225998 -5.945000] -0.025849 0.000000 0.000000 -0.999666 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0A2, 801837, 0x02EC0103, 40.537, -110.028, -11.945, -0.710242, 0, 0, -0.703957, False, '2023-01-04 19:02:47'); /* ShadowElfinGen */
/* @teleloc 0x02EC0103 [40.536999 -110.028000 -11.945000] -0.710242 0.000000 0.000000 -0.703957 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0A3, 801837, 0x02EC010F, 60.4451, -109.816, -11.945, -0.666954, 0, 0, 0.745099, False, '2023-01-04 19:02:53'); /* ShadowElfinGen */
/* @teleloc 0x02EC010F [60.445099 -109.816002 -11.945000] -0.666954 0.000000 0.000000 0.745099 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0A4, 801837, 0x02EC0178, 80.8358, -106.71, -5.945, -0.996091, 0, 0, 0.0883317, False, '2023-01-04 19:02:55'); /* ShadowElfinGen */
/* @teleloc 0x02EC0178 [80.835800 -106.709999 -5.945000] -0.996091 0.000000 0.000000 0.088332 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0A5, 801837, 0x02EC0243, 61.9486, -100.866, 0.055, -0.667393, 0, 0, -0.744706, False, '2023-01-04 19:02:58'); /* ShadowElfinGen */
/* @teleloc 0x02EC0243 [61.948601 -100.865997 0.055000] -0.667393 0.000000 0.000000 -0.744706 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0A6, 801837, 0x02EC0239, 49.1777, -100.643, 0.055, -0.996601, 0, 0, 0.0823831, False, '2023-01-04 19:03:01'); /* ShadowElfinGen */
/* @teleloc 0x02EC0239 [49.177700 -100.642998 0.055000] -0.996601 0.000000 0.000000 0.082383 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0A7, 801837, 0x02EC022F, 21.0887, -100.813, 0.055, -0.649419, 0, 0, -0.760431, False, '2023-01-04 19:03:07'); /* ShadowElfinGen */
/* @teleloc 0x02EC022F [21.088699 -100.813004 0.055000] -0.649419 0.000000 0.000000 -0.760431 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0A8, 801837, 0x02EC0234, 29.0947, -108.478, 0.055, 0.296668, 0, 0, -0.954981, False, '2023-01-04 19:03:09'); /* ShadowElfinGen */
/* @teleloc 0x02EC0234 [29.094700 -108.477997 0.055000] 0.296668 0.000000 0.000000 -0.954981 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0A9, 801837, 0x02EC02C7, 54.9247, -59.1671, 6.055, 0.999549, 0, 0, -0.0300411, False, '2023-01-04 19:03:34'); /* ShadowElfinGen */
/* @teleloc 0x02EC02C7 [54.924702 -59.167099 6.055000] 0.999549 0.000000 0.000000 -0.030041 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0AA, 801837, 0x02EC02AF, 44.1669, -59.0586, 6.055, 0.999987, 0, 0, -0.00504562, False, '2023-01-04 19:03:37'); /* ShadowElfinGen */
/* @teleloc 0x02EC02AF [44.166901 -59.058601 6.055000] 0.999987 0.000000 0.000000 -0.005046 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0AB, 801837, 0x02EC02E3, 70.5509, -50.1135, 6.055, 0.77517, 0, 0, 0.631753, False, '2023-01-04 19:04:12'); /* ShadowElfinGen */
/* @teleloc 0x02EC02E3 [70.550903 -50.113499 6.055000] 0.775170 0.000000 0.000000 0.631753 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0AC, 801837, 0x02EC029C, 29.896, -50.2472, 6.055, 0.549184, 0, 0, 0.835701, False, '2023-01-04 19:04:16'); /* ShadowElfinGen */
/* @teleloc 0x02EC029C [29.896000 -50.247200 6.055000] 0.549184 0.000000 0.000000 0.835701 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0AD, 801837, 0x02EC02C1, 50.2851, -45.3729, 6.055, -0.999744, 0, 0, -0.0226267, False, '2023-01-04 19:04:21'); /* ShadowElfinGen */
/* @teleloc 0x02EC02C1 [50.285099 -45.372898 6.055000] -0.999744 0.000000 0.000000 -0.022627 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0AE, 801837, 0x02EC02A8, 39.584, -42.9928, 6.055, 0.547123, 0, 0, -0.837052, False, '2023-01-04 19:04:36'); /* ShadowElfinGen */
/* @teleloc 0x02EC02A8 [39.584000 -42.992802 6.055000] 0.547123 0.000000 0.000000 -0.837052 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0AF, 801837, 0x02EC02D7, 60.2056, -43.5621, 6.055, 0.698252, 0, 0, -0.715852, False, '2023-01-04 19:04:39'); /* ShadowElfinGen */
/* @teleloc 0x02EC02D7 [60.205601 -43.562099 6.055000] 0.698252 0.000000 0.000000 -0.715852 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0B0, 801837, 0x02EC02E6, 78.7316, -61.8589, 6.055, 0.356884, 0, 0, -0.934149, False, '2023-01-04 19:04:42'); /* ShadowElfinGen */
/* @teleloc 0x02EC02E6 [78.731598 -61.858898 6.055000] 0.356884 0.000000 0.000000 -0.934149 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0B1, 801837, 0x02EC028D, 21.6903, -62.068, 6.055, 0.328477, 0, 0, 0.944512, False, '2023-01-04 19:04:49'); /* ShadowElfinGen */
/* @teleloc 0x02EC028D [21.690300 -62.068001 6.055000] 0.328477 0.000000 0.000000 0.944512 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0B2, 801837, 0x02EC0375, 49.7507, -54.7554, 12.055, -0.0494064, 0, 0, -0.998779, False, '2023-01-04 19:05:03'); /* ShadowElfinGen */
/* @teleloc 0x02EC0375 [49.750702 -54.755402 12.055000] -0.049406 0.000000 0.000000 -0.998779 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0B3, 801839, 0x02EC02BC, 49.9201, -33.7118, 6.055, -0.00915679, 0, 0, -0.999958, False, '2023-01-04 19:10:46'); /* BigShadowElfinGen */
/* @teleloc 0x02EC02BC [49.920101 -33.711800 6.055000] -0.009157 0.000000 0.000000 -0.999958 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0B4, 803040, 0x02EC027E, 234.762, -104.985, 3.05279, 0.237149, 0, 0, -0.971473, False, '2023-10-30 05:09:28');
/* @teleloc 0x02EC027E [234.761993 -104.985001 3.052790] 0.237149 0.000000 0.000000 -0.971473 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0B5, 803040, 0x02EC0130, 148.278, -119.414, -11.945, 0.783188, 0, 0, 0.621786, False, '2023-10-30 05:09:51');
/* @teleloc 0x02EC0130 [148.278000 -119.414001 -11.945000] 0.783188 0.000000 0.000000 0.621786 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x702EC0B6, 803040, 0x02EC0232, 25.669645, -104.71719, 2.6330464, -0.48070043, 0, 0, -0.8768849, False, '2023-10-30 05:11:05');
/* @teleloc 0x02EC0232 [25.669645 -104.717194 2.633046] -0.480700 0.000000 0.000000 -0.876885 */
