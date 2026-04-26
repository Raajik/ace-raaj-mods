DELETE FROM `landblock_instance` WHERE `landblock` = 0x018B;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B00C,  3645, 0x018B0109, 67.6217, -109.169, -17.8339, 0, 0, 0, -1,  True, '2005-02-09 10:00:00'); /* Tibri's Fire Spear */
/* @teleloc 0x018B0109 [67.621696 -109.168999 -17.833900] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B01F,  1929, 0x018B0135, 118.809, -124.099, -12, 0, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Chest */
/* @teleloc 0x018B0135 [118.808998 -124.098999 -12.000000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B026,  1946, 0x018B013C, 125.697, -118.828, -12, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Chest */
/* @teleloc 0x018B013C [125.696999 -118.828003 -12.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B038,  5085, 0x018B0109, 68.6784, -108.938, -17.9878, 0, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Linkable Item Gen - 25 seconds */
/* @teleloc 0x018B0109 [68.678398 -108.938004 -17.987801] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7018B038, 0x7018B00C, '2005-02-09 10:00:00') /* Tibri's Fire Spear (3645) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B03C, 801824, 0x018B0181, 28.4921, -20.0592, 0.055, -0.734159, 0, 0, -0.678977, False, '2023-01-03 05:52:12'); /* AustereGen3 */
/* @teleloc 0x018B0181 [28.492100 -20.059200 0.055000] -0.734159 0.000000 0.000000 -0.678977 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B03D, 801824, 0x018B0176, 19.4783, -18.6339, 0.055, -0.996485, 0, 0, -0.0837704, False, '2023-01-03 05:52:18'); /* AustereGen3 */
/* @teleloc 0x018B0176 [19.478300 -18.633900 0.055000] -0.996485 0.000000 0.000000 -0.083770 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B03E, 801824, 0x018B0172, 19.6938, -11.9577, 0.055, -0.99987, 0, 0, 0.0161306, False, '2023-01-03 05:52:20'); /* AustereGen3 */
/* @teleloc 0x018B0172 [19.693800 -11.957700 0.055000] -0.999870 0.000000 0.000000 0.016131 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B03F, 801824, 0x018B0167, 9.72988, -11.4062, 0.055, -0.541946, 0, 0, -0.840413, False, '2023-01-03 05:52:22'); /* AustereGen3 */
/* @teleloc 0x018B0167 [9.729880 -11.406200 0.055000] -0.541946 0.000000 0.000000 -0.840413 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B040, 801824, 0x018B016A, 11.1473, -19.5116, 0.055, -0.0866347, 0, 0, -0.99624, False, '2023-01-03 05:52:24'); /* AustereGen3 */
/* @teleloc 0x018B016A [11.147300 -19.511600 0.055000] -0.086635 0.000000 0.000000 -0.996240 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B041, 801824, 0x018B0166, 2.19012, -30.2227, 0.055, -0.702634, 0, 0, -0.711551, False, '2023-01-03 05:52:26'); /* AustereGen3 */
/* @teleloc 0x018B0166 [2.190120 -30.222700 0.055000] -0.702634 0.000000 0.000000 -0.711551 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B042, 801824, 0x018B017B, 18.4206, -30.6518, 0.055, 0.714889, 0, 0, -0.699237, False, '2023-01-03 05:52:29'); /* AustereGen3 */
/* @teleloc 0x018B017B [18.420601 -30.651800 0.055000] 0.714889 0.000000 0.000000 -0.699237 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B043, 801824, 0x018B0124, 95.2461, -32.1792, -11.945, 0.206357, 0, 0, -0.978477, False, '2023-01-03 05:52:40'); /* AustereGen3 */
/* @teleloc 0x018B0124 [95.246101 -32.179199 -11.945000] 0.206357 0.000000 0.000000 -0.978477 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B044, 801824, 0x018B0125, 95.8881, -40.0185, -11.945, -0.0272196, 0, 0, -0.999629, False, '2023-01-03 05:52:41'); /* AustereGen3 */
/* @teleloc 0x018B0125 [95.888100 -40.018501 -11.945000] -0.027220 0.000000 0.000000 -0.999629 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B045, 801824, 0x018B0126, 102.195, -46.0286, -11.0954, 0.338001, 0, 0, -0.941146, False, '2023-01-03 05:52:43'); /* AustereGen3 */
/* @teleloc 0x018B0126 [102.195000 -46.028599 -11.095400] 0.338001 0.000000 0.000000 -0.941146 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B046, 801824, 0x018B0129, 108.67, -53.7961, -11.7196, 0.293396, 0, 0, -0.955991, False, '2023-01-03 05:52:44'); /* AustereGen3 */
/* @teleloc 0x018B0129 [108.669998 -53.796101 -11.719600] 0.293396 0.000000 0.000000 -0.955991 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B047, 801824, 0x018B012F, 116.641, -63.2762, -11.945, 0.418275, 0, 0, -0.90832, False, '2023-01-03 05:52:47'); /* AustereGen3 */
/* @teleloc 0x018B012F [116.640999 -63.276199 -11.945000] 0.418275 0.000000 0.000000 -0.908320 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B048, 801824, 0x018B0130, 124.374, -69.8925, -11.9297, 0.418275, 0, 0, -0.90832, False, '2023-01-03 05:52:49'); /* AustereGen3 */
/* @teleloc 0x018B0130 [124.374001 -69.892502 -11.929700] 0.418275 0.000000 0.000000 -0.908320 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B049, 801824, 0x018B0137, 130.869, -78.3622, -11.945, 0.102263, 0, 0, -0.994757, False, '2023-01-03 05:52:50'); /* AustereGen3 */
/* @teleloc 0x018B0137 [130.869003 -78.362198 -11.945000] 0.102263 0.000000 0.000000 -0.994757 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B04A, 801824, 0x018B0138, 134.837, -89.0089, -11.945, 0.102263, 0, 0, -0.994757, False, '2023-01-03 05:52:52'); /* AustereGen3 */
/* @teleloc 0x018B0138 [134.837006 -89.008904 -11.945000] 0.102263 0.000000 0.000000 -0.994757 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B04B, 801824, 0x018B0138, 126.068, -94.167, -11.945, -0.385961, 0, 0, -0.922515, False, '2023-01-03 05:52:56'); /* AustereGen3 */
/* @teleloc 0x018B0138 [126.068001 -94.167000 -11.945000] -0.385961 0.000000 0.000000 -0.922515 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B04C, 801824, 0x018B0131, 116.301, -93.9353, -11.945, -0.866762, 0, 0, -0.498722, False, '2023-01-03 05:52:58'); /* AustereGen3 */
/* @teleloc 0x018B0131 [116.301003 -93.935303 -11.945000] -0.866762 0.000000 0.000000 -0.498722 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B04D, 801824, 0x018B012D, 108.272, -90.1166, -10.8281, -0.999206, 0, 0, -0.0398374, False, '2023-01-03 05:53:00'); /* AustereGen3 */
/* @teleloc 0x018B012D [108.272003 -90.116600 -10.828100] -0.999206 0.000000 0.000000 -0.039837 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B04E, 801824, 0x018B0128, 104.269, -79.5704, -11.945, -0.815676, 0, 0, -0.578509, False, '2023-01-03 05:53:02'); /* AustereGen3 */
/* @teleloc 0x018B0128 [104.268997 -79.570396 -11.945000] -0.815676 0.000000 0.000000 -0.578509 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B04F, 801824, 0x018B0127, 99.1917, -73.6351, -11.945, -0.933109, 0, 0, -0.359594, False, '2023-01-03 05:53:04'); /* AustereGen3 */
/* @teleloc 0x018B0127 [99.191704 -73.635101 -11.945000] -0.933109 0.000000 0.000000 -0.359594 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B050, 801824, 0x018B0123, 91.6898, -69.2715, -11.945, -0.834331, 0, 0, -0.551263, False, '2023-01-03 05:53:06'); /* AustereGen3 */
/* @teleloc 0x018B0123 [91.689796 -69.271500 -11.945000] -0.834331 0.000000 0.000000 -0.551263 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B051, 801824, 0x018B011E, 83.4728, -67.9771, -11.945, -0.727788, 0, 0, -0.685802, False, '2023-01-03 05:53:07'); /* AustereGen3 */
/* @teleloc 0x018B011E [83.472801 -67.977097 -11.945000] -0.727788 0.000000 0.000000 -0.685802 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B052, 801824, 0x018B011D, 77.1899, -62.76, -11.4534, -0.77253, 0, 0, -0.634979, False, '2023-01-03 05:53:09'); /* AustereGen3 */
/* @teleloc 0x018B011D [77.189903 -62.759998 -11.453400] -0.772530 0.000000 0.000000 -0.634979 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B053, 801824, 0x018B0118, 71.6378, -68.3385, -11.945, -0.208696, 0, 0, -0.97798, False, '2023-01-03 05:53:11'); /* AustereGen3 */
/* @teleloc 0x018B0118 [71.637802 -68.338501 -11.945000] -0.208696 0.000000 0.000000 -0.977980 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B054, 801824, 0x018B0103, 59.6971, -91.4287, -17.945, -0.0108007, 0, 0, -0.999942, False, '2023-01-03 05:53:21'); /* AustereGen3 */
/* @teleloc 0x018B0103 [59.697102 -91.428703 -17.945000] -0.010801 0.000000 0.000000 -0.999942 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B055, 801824, 0x018B0108, 66.5833, -98.7546, -17.945, 0.328506, 0, 0, -0.944502, False, '2023-01-03 05:53:22'); /* AustereGen3 */
/* @teleloc 0x018B0108 [66.583298 -98.754601 -17.945000] 0.328506 0.000000 0.000000 -0.944502 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B056, 801824, 0x018B0106, 63.0592, -106.418, -17.945, -0.159739, 0, 0, -0.987159, False, '2023-01-03 05:53:25'); /* AustereGen3 */
/* @teleloc 0x018B0106 [63.059200 -106.417999 -17.945000] -0.159739 0.000000 0.000000 -0.987159 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B057, 801824, 0x018B0109, 67.8946, -108.201, -17.945, 0.390299, 0, 0, -0.920688, False, '2023-01-03 05:53:31'); /* AustereGen3 */
/* @teleloc 0x018B0109 [67.894600 -108.200996 -17.945000] 0.390299 0.000000 0.000000 -0.920688 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B058, 801824, 0x018B0199, 50.009, -42.3301, 0.055, -0.0369015, 0, 0, -0.999319, False, '2023-01-03 05:53:49'); /* AustereGen3 */
/* @teleloc 0x018B0199 [50.008999 -42.330101 0.055000] -0.036902 0.000000 0.000000 -0.999319 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B059, 801824, 0x018B01A2, 53.1512, -60.1667, 0.055, 0.6605, 0, 0, -0.750826, False, '2023-01-03 05:53:53'); /* AustereGen3 */
/* @teleloc 0x018B01A2 [53.151199 -60.166698 0.055000] 0.660500 0.000000 0.000000 -0.750826 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B05A, 801824, 0x018B01BB, 69.3968, -64.3611, 0.055, 0.999972, 0, 0, -0.00752179, False, '2023-01-03 05:53:56'); /* AustereGen3 */
/* @teleloc 0x018B01BB [69.396797 -64.361099 0.055000] 0.999972 0.000000 0.000000 -0.007522 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B05B, 801824, 0x018B01C3, 77.6271, -49.4916, 0.055, 0.790254, 0, 0, -0.61278, False, '2023-01-03 05:53:58'); /* AustereGen3 */
/* @teleloc 0x018B01C3 [77.627098 -49.491600 0.055000] 0.790254 0.000000 0.000000 -0.612780 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B05C, 803040, 0x018B0172, 19.6211, -14.289, 0.055, -0.925222, 0, 0, -0.379425, False, '2023-10-30 05:01:16');
/* @teleloc 0x018B0172 [19.621099 -14.289000 0.055000] -0.925222 0.000000 0.000000 -0.379425 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B05D, 803040, 0x018B0127, 96.3668, -70.9365, -11.945, 0.557975, 0, 0, -0.829858, False, '2023-10-30 05:01:31');
/* @teleloc 0x018B0127 [96.366798 -70.936501 -11.945000] 0.557975 0.000000 0.000000 -0.829858 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7018B05E, 803040, 0x018B0129, 109.15882, -54.86892, -11.369427, 0.9666112, 0, 0, 0.25624746, False, '2023-10-30 05:01:40');
/* @teleloc 0x018B0129 [109.158821 -54.868919 -11.369427] 0.966611 0.000000 0.000000 0.256247 */
