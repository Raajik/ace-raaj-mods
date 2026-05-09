DELETE FROM `landblock_instance` WHERE `landblock` = 0x3F31;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x73F31005, 16919, 0x3F310000, 37.8891, 182.571, 0, -0.735802, 0, 0, -0.677197, False, '2021-11-01 00:00:00'); /* Pedestal Weak Spot */
/* @teleloc 0x3F310000 [37.889099 182.570999 0.000000] -0.735802 0.000000 0.000000 -0.677197 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x73F31008, 19457, 0x3F310000, 42.147, 182.014, 7, 0.998907, 0, 0, -0.04674, False, '2021-11-01 00:00:00'); /* Fireworks Generator */
/* @teleloc 0x3F310000 [42.146999 182.014008 7.000000] 0.998907 0.000000 0.000000 -0.046740 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x73F3100B, 19203, 0x3F310000, 42.1727, 182.226, 6.82, -0.999223, 0, 0, 0.039405, False, '2021-11-01 00:00:00'); /* Nullified Statue of a Shadow */
/* @teleloc 0x3F310000 [42.172699 182.225998 6.820000] -0.999223 0.000000 0.000000 0.039405 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x73F3100C, 19715, 0x3F310100, 54.5726, 181.332, -5.195, -0.658079, 0, 0, 0.752949, False, '2021-11-01 00:00:00'); /* Colossus Foundry Portal */
/* @teleloc 0x3F310100 [54.572601 181.332001 -5.195000] -0.658079 0.000000 0.000000 0.752949 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x73F3100D, 23631, 0x3F310000, 65.964, 123.254, 159.889, -0.999891, 0, 0, 0.014744, False, '2021-11-01 00:00:00'); /* April 2003 Raining Mad Cows Gen */
/* @teleloc 0x3F310000 [65.963997 123.253998 159.889008] -0.999891 0.000000 0.000000 0.014744 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x73F3100E, 24212, 0x3F310103, 42.6759, 106.041, -0.295, -0.97225, 0, 0, -0.233944,  True, '2021-11-01 00:00:00'); /* Caelis Renning */
/* @teleloc 0x3F310103 [42.675900 106.041000 -0.295000] -0.972250 0.000000 0.000000 -0.233944 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x73F3100F, 24214, 0x3F310103, 36.2207, 105.113, -0.295, 0.999908, 0, 0, -0.013594,  True, '2021-11-01 00:00:00'); /* Aun Teverea */
/* @teleloc 0x3F310103 [36.220699 105.112999 -0.295000] 0.999908 0.000000 0.000000 -0.013594 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x73F31010, 24213, 0x3F310104, 30.7789, 105.119, -0.29, 0.898006, 0, 0, -0.439984,  True, '2021-11-01 00:00:00'); /* Kreavon */
/* @teleloc 0x3F310104 [30.778900 105.119003 -0.290000] 0.898006 0.000000 0.000000 -0.439984 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x73F31011,  7923, 0x3F310104, 35.5471, 108.16, -0.295, 0.697279, 0, 0, 0.7168, False, '2021-11-01 00:00:00'); /* Linkable Monster Generator ( 3 Min.) */
/* @teleloc 0x3F310104 [35.547100 108.160004 -0.295000] 0.697279 0.000000 0.000000 0.716800 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x73F31011, 0x73F3100E, '2021-11-01 00:00:00') /* Caelis Renning (24212) */
     , (0x73F31011, 0x73F3100F, '2021-11-01 00:00:00') /* Aun Teverea (24214) */
     , (0x73F31011, 0x73F31010, '2021-11-01 00:00:00') /* Kreavon (24213) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x73F31012, 24221, 0x3F310000, 67.2259, 182.241, 1.18674, 0.178722, 0, 0, -0.9839, False, '2021-11-01 00:00:00'); /* Wai Jhou */
/* @teleloc 0x3F310000 [67.225899 182.240997 1.186740] 0.178722 0.000000 0.000000 -0.983900 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x73F31013,   720, 0x3F310000, 83.5733, 92.8925, 0, -0.623795, 0, 0, -0.781588, False, '2021-11-01 00:00:00'); /* Sliding Door */
/* @teleloc 0x3F310000 [83.573303 92.892502 0.000000] -0.623795 0.000000 0.000000 -0.781588 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x73F3101D, 42852, 0x3F310017, 59.6393, 165.407, 0.098001, 0.977911, 0, 0, 0.209023, False, '2021-11-01 00:00:00'); /* Portal to Town Network */
/* @teleloc 0x3F310017 [59.639301 165.406998 0.098001] 0.977911 0.000000 0.000000 0.209023 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x73F3101F, 27806, 0x3F310010, 46.7358, 182.116, -0.0950001, -0.656981, 0, 0, 0.753907, False, '2023-09-24 19:25:46'); /* Lighthouse Hermit */
/* @teleloc 0x3F310010 [46.735802 182.115997 -0.095000] -0.656981 0.000000 0.000000 0.753907 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x73F31020, 803139, 0x3F310028, 96.80306, 175.35712, 7.430875, -0.8190387, 0, 0, 0.57373834, False, '2024-01-05 09:51:37');
/* @teleloc 0x3F310028 [96.803062 175.357117 7.430875] -0.819039 0.000000 0.000000 0.573738 */
