DELETE FROM `landblock_instance` WHERE `landblock` = 0xEAF8;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7EAF8000, 300179, 0xEAF80001, 14.6533, 8.08439, 2.055, -0.095697, 0, 0, 0.995411, False, '2023-06-19 05:33:19'); /* test building 2 */
/* @teleloc 0xEAF80001 [14.653300 8.084390 2.055000] -0.095697 0.000000 0.000000 0.995411 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7EAF8001, 802630, 0xEAF80001, 14.136793, 8.507626, 0.07411967, 0.6107891, 0, 0, 0.7917933, False, '2023-06-19 05:40:38');
/* @teleloc 0xEAF80001 [14.136793 8.507626 0.074120] 0.610789 0.000000 0.000000 0.791793 */
