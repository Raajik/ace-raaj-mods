DELETE FROM `landblock_instance` WHERE `landblock` = 0x634C;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C025, 24476, 0x634C01B5, 94.3608, -154.372, -35.995, -0.430243, 0, 0, 0.902713, False, '2005-02-09 10:00:00'); /* Sturdy Steel Chest */
/* @teleloc 0x634C01B5 [94.360802 -154.371994 -35.994999] -0.430243 0.000000 0.000000 0.902713 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C068,  3969, 0x634C0324, 105.86, -25.7377, -11.995, -0.935901, 0, 0, -0.352264, False, '2005-02-09 10:00:00'); /* Chest */
/* @teleloc 0x634C0324 [105.860001 -25.737700 -11.995000] -0.935901 0.000000 0.000000 -0.352264 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C069,  3985, 0x634C0324, 111.27, -28.7174, -11.995, -0.410896, 0, 0, -0.911682, False, '2005-02-09 10:00:00'); /* Chest */
/* @teleloc 0x634C0324 [111.269997 -28.717400 -11.995000] -0.410896 0.000000 0.000000 -0.911682 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C06A, 804033, 0x634C010D, 90.0169, -112.704, -47.945, -0.0159761, 0, 0, -0.999872, False, '2025-12-28 17:38:49'); /* GabrielSeerGen */
/* @teleloc 0x634C010D [90.016899 -112.704002 -47.945000] -0.015976 0.000000 0.000000 -0.999872 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C06B, 24129, 0x634C0377, 46.0586, -71.5909, -5.945, 1, 0, 0, 0, False, '2025-12-29 18:15:47'); /* Linkable Monster Generator ( 2 Min.) */
/* @teleloc 0x634C0377 [46.058601 -71.590897 -5.945000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7634C06B, 0x7634C06C, '2025-12-29 18:16:56') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C06D, '2025-12-29 18:17:09') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C06E, '2025-12-29 18:17:17') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C06F, '2025-12-29 18:17:31') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C070, '2025-12-29 18:17:32') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C071, '2025-12-29 18:17:34') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C072, '2025-12-29 18:17:35') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C073, '2025-12-29 18:17:52') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C074, '2025-12-29 18:17:54') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C075, '2025-12-29 18:17:55') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C076, '2025-12-29 18:17:57') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C077, '2025-12-29 18:18:27') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C078, '2025-12-29 18:18:33') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C079, '2025-12-29 18:18:53') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C07A, '2025-12-29 18:18:57') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C07B, '2025-12-29 18:18:58') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C07C, '2025-12-29 18:19:00') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C07D, '2025-12-29 18:19:21') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C07E, '2025-12-29 18:19:23') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C07F, '2025-12-29 18:19:34') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C080, '2025-12-29 18:19:39') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C081, '2025-12-29 18:19:47') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C082, '2025-12-29 18:20:18') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C083, '2025-12-29 18:20:30') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C084, '2025-12-29 18:20:38') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C085, '2025-12-29 18:20:41') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C086, '2025-12-29 18:20:59') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C087, '2025-12-29 18:21:01') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C088, '2025-12-29 18:21:03') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C089, '2025-12-29 18:21:21') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C08A, '2025-12-29 18:21:32') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C08B, '2025-12-29 18:21:36') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C08C, '2025-12-29 18:21:39') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C08D, '2025-12-29 18:21:45') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C08E, '2025-12-29 18:21:49') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C08F, '2025-12-29 18:21:53') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C090, '2025-12-29 18:21:56') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C091, '2025-12-29 18:22:02') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C092, '2025-12-29 18:22:04') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C093, '2025-12-29 18:22:17') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C094, '2025-12-29 18:22:23') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C095, '2025-12-29 18:22:34') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C096, '2025-12-29 18:22:36') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C097, '2025-12-29 18:22:38') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C098, '2025-12-29 18:23:54') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C099, '2025-12-29 18:23:56') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C09A, '2025-12-29 18:24:01') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C09B, '2025-12-29 18:24:13') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C09C, '2025-12-29 18:24:18') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C09D, '2025-12-29 18:24:24') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C09E, '2025-12-29 18:24:33') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C09F, '2025-12-29 18:24:46') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0A0, '2025-12-29 18:24:48') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0A1, '2025-12-29 18:24:54') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0A2, '2025-12-29 18:25:04') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0A3, '2025-12-29 18:25:08') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0A4, '2025-12-29 18:26:00') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0A5, '2025-12-29 18:26:02') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0A6, '2025-12-29 18:26:09') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0A7, '2025-12-29 18:26:12') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0A8, '2025-12-29 18:27:02') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0A9, '2025-12-29 18:27:14') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0AA, '2025-12-29 18:27:30') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0AB, '2025-12-29 18:27:36') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0AC, '2025-12-29 18:27:43') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0AD, '2025-12-29 18:28:19') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0AE, '2025-12-29 18:28:24') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0AF, '2025-12-29 18:28:30') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0B0, '2025-12-29 18:28:37') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0B1, '2025-12-29 18:28:46') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0B2, '2025-12-29 18:29:00') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0B3, '2025-12-29 18:29:02') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0B4, '2025-12-29 18:29:04') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0B5, '2025-12-29 18:29:06') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0B6, '2025-12-29 18:29:20') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0B7, '2025-12-29 18:29:27') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0B8, '2025-12-29 18:29:31') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0B9, '2025-12-29 18:29:50') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0BA, '2025-12-29 18:30:02') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0BB, '2025-12-29 18:30:07') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0BC, '2025-12-29 18:30:18') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0BD, '2025-12-29 18:30:35') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0BE, '2025-12-29 18:31:02') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0BF, '2025-12-29 18:31:09') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0C0, '2025-12-29 18:31:18') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0C1, '2025-12-29 18:31:28') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0C2, '2025-12-29 18:31:37') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0C3, '2025-12-29 18:31:46') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0C4, '2025-12-29 18:32:06') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0C5, '2025-12-29 18:32:10') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0C6, '2025-12-29 18:32:16') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0C7, '2025-12-29 18:32:19') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0C8, '2025-12-29 18:32:32') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0C9, '2025-12-29 18:32:42') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0CA, '2025-12-29 18:32:47') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0CB, '2025-12-29 18:33:01') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0CC, '2025-12-29 18:33:07') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0CD, '2025-12-29 18:33:16') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0CE, '2025-12-29 18:33:18') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0CF, '2025-12-29 18:33:19') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0D0, '2025-12-29 18:33:28') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0D1, '2025-12-29 18:33:30') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0D2, '2025-12-29 18:33:31') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0D3, '2025-12-29 18:34:01') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0D4, '2025-12-29 18:34:12') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0D5, '2025-12-29 18:34:33') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0D6, '2025-12-29 18:34:36') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0D7, '2025-12-29 18:34:45') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0D8, '2025-12-29 18:34:56') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0D9, '2025-12-29 18:35:27') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0DA, '2025-12-29 18:35:35') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0DB, '2025-12-29 18:35:46') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0DC, '2025-12-29 18:37:35') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0DD, '2025-12-29 18:37:44') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0DE, '2025-12-29 18:37:49') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0DF, '2025-12-29 18:37:57') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0E0, '2025-12-29 18:38:03') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0E1, '2025-12-29 18:38:10') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0E2, '2025-12-29 18:38:13') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0E3, '2025-12-29 18:38:15') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0E4, '2025-12-29 18:38:27') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0E5, '2025-12-29 18:38:58') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0E6, '2025-12-29 18:39:02') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0E7, '2025-12-29 18:39:10') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0E8, '2025-12-29 18:39:13') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0E9, '2025-12-29 18:39:19') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0EA, '2025-12-29 18:39:24') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0EB, '2025-12-29 18:39:37') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0EC, '2025-12-29 18:39:56') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0ED, '2025-12-29 18:40:11') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0EE, '2025-12-29 18:40:15') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0EF, '2025-12-29 18:40:27') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0F0, '2025-12-29 18:40:29') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0F1, '2025-12-29 18:40:44') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0F2, '2025-12-29 18:40:46') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0F3, '2025-12-29 18:41:00') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0F4, '2025-12-29 18:41:11') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0F5, '2025-12-29 18:41:21') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0F6, '2025-12-29 18:41:27') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0F7, '2025-12-29 18:41:31') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0F8, '2025-12-29 18:41:36') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0F9, '2025-12-29 18:41:43') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0FA, '2025-12-29 18:41:44') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0FB, '2025-12-29 18:41:54') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0FC, '2025-12-29 18:41:58') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C0FD, '2025-12-29 18:42:14') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0FE, '2025-12-29 18:42:25') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C0FF, '2025-12-29 18:42:37') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C100, '2025-12-29 18:42:46') /* Tormented Virindi (804022) */
     , (0x7634C06B, 0x7634C101, '2025-12-29 18:42:58') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C102, '2025-12-29 18:43:02') /* Reanimated Virindi (804019) */
     , (0x7634C06B, 0x7634C103, '2025-12-29 18:43:18') /* Tormented Virindi (804022) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C06C, 804019, 0x634C03C3, 29.0813, -109.056, 6.0377, -0.993141, 0, 0, 0.116925,  True, '2025-12-29 18:16:56'); /* Reanimated Virindi */
/* @teleloc 0x634C03C3 [29.081301 -109.056000 6.037700] -0.993141 0.000000 0.000000 0.116925 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C06D, 804019, 0x634C03C8, 29.8707, -124.293, 6.0377, -0.993055, 0, 0, -0.117648,  True, '2025-12-29 18:17:09'); /* Reanimated Virindi */
/* @teleloc 0x634C03C8 [29.870701 -124.292999 6.037700] -0.993055 0.000000 0.000000 -0.117648 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C06E, 804019, 0x634C03C9, 25.8687, -129.861, 6.0377, -0.736046, 0, 0, 0.676931,  True, '2025-12-29 18:17:17'); /* Reanimated Virindi */
/* @teleloc 0x634C03C9 [25.868700 -129.860992 6.037700] -0.736046 0.000000 0.000000 0.676931 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C06F, 804019, 0x634C03F8, 55.3775, -120.021, 6.0377, -0.713992, 0, 0, -0.700153,  True, '2025-12-29 18:17:31'); /* Reanimated Virindi */
/* @teleloc 0x634C03F8 [55.377499 -120.021004 6.037700] -0.713992 0.000000 0.000000 -0.700153 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C070, 804019, 0x634C03E1, 53.6782, -119.988, 6.0377, -0.713992, 0, 0, -0.700153,  True, '2025-12-29 18:17:32'); /* Reanimated Virindi */
/* @teleloc 0x634C03E1 [53.678200 -119.987999 6.037700] -0.713992 0.000000 0.000000 -0.700153 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C071, 804019, 0x634C03E1, 50.7906, -119.931, 6.0377, -0.713992, 0, 0, -0.700153,  True, '2025-12-29 18:17:34'); /* Reanimated Virindi */
/* @teleloc 0x634C03E1 [50.790600 -119.931000 6.037700] -0.713992 0.000000 0.000000 -0.700153 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C072, 804019, 0x634C03E1, 48.8362, -119.893, 6.0377, -0.713992, 0, 0, -0.700153,  True, '2025-12-29 18:17:35'); /* Reanimated Virindi */
/* @teleloc 0x634C03E1 [48.836201 -119.892998 6.037700] -0.713992 0.000000 0.000000 -0.700153 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C073, 804019, 0x634C0402, 69.9902, -94.6466, 6.0377, 0.000444517, 0, 0, -1,  True, '2025-12-29 18:17:52'); /* Reanimated Virindi */
/* @teleloc 0x634C0402 [69.990196 -94.646599 6.037700] 0.000445 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C074, 804019, 0x634C0403, 69.9906, -96.1492, 6.0377, 0.000444517, 0, 0, -1,  True, '2025-12-29 18:17:54'); /* Reanimated Virindi */
/* @teleloc 0x634C0403 [69.990601 -96.149200 6.037700] 0.000445 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C075, 804019, 0x634C0403, 69.9931, -97.8712, 6.0377, 0.000444517, 0, 0, -1,  True, '2025-12-29 18:17:55'); /* Reanimated Virindi */
/* @teleloc 0x634C0403 [69.993103 -97.871201 6.037700] 0.000445 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C076, 804019, 0x634C0403, 69.9955, -100.626, 6.0377, 0.000444517, 0, 0, -1,  True, '2025-12-29 18:17:57'); /* Reanimated Virindi */
/* @teleloc 0x634C0403 [69.995499 -100.625999 6.037700] 0.000445 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C077, 804019, 0x634C03FB, 69.8086, -73.803, 6.0377, -0.0118093, 0, 0, 0.99993,  True, '2025-12-29 18:18:27'); /* Reanimated Virindi */
/* @teleloc 0x634C03FB [69.808601 -73.803001 6.037700] -0.011809 0.000000 0.000000 0.999930 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C078, 804019, 0x634C03FC, 74.9266, -69.9772, 6.0377, -0.693137, 0, 0, -0.720806,  True, '2025-12-29 18:18:33'); /* Reanimated Virindi */
/* @teleloc 0x634C03FC [74.926598 -69.977203 6.037700] -0.693137 0.000000 0.000000 -0.720806 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C079, 804019, 0x634C03F9, 73.8388, -59.9269, 6.0377, -0.719343, 0, 0, -0.694656,  True, '2025-12-29 18:18:53'); /* Reanimated Virindi */
/* @teleloc 0x634C03F9 [73.838799 -59.926899 6.037700] -0.719343 0.000000 0.000000 -0.694656 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C07A, 804019, 0x634C03F9, 72.7487, -59.9358, 6.0377, -0.701753, 0, 0, -0.71242,  True, '2025-12-29 18:18:57'); /* Reanimated Virindi */
/* @teleloc 0x634C03F9 [72.748703 -59.935799 6.037700] -0.701753 0.000000 0.000000 -0.712420 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C07B, 804019, 0x634C03F9, 71.1782, -59.9595, 6.0377, -0.701753, 0, 0, -0.71242,  True, '2025-12-29 18:18:58'); /* Reanimated Virindi */
/* @teleloc 0x634C03F9 [71.178200 -59.959499 6.037700] -0.701753 0.000000 0.000000 -0.712420 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C07C, 804019, 0x634C03F9, 69.4326, -59.9858, 6.0377, -0.701753, 0, 0, -0.71242,  True, '2025-12-29 18:19:00'); /* Reanimated Virindi */
/* @teleloc 0x634C03F9 [69.432602 -59.985802 6.037700] -0.701753 0.000000 0.000000 -0.712420 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C07D, 804019, 0x634C03E7, 60.076, -70.3155, 6.0377, -0.00142424, 0, 0, -0.999999,  True, '2025-12-29 18:19:21'); /* Reanimated Virindi */
/* @teleloc 0x634C03E7 [60.076000 -70.315498 6.037700] -0.001424 0.000000 0.000000 -0.999999 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C07E, 804019, 0x634C03E7, 60.0693, -72.6819, 6.0377, -0.00142424, 0, 0, -0.999999,  True, '2025-12-29 18:19:23'); /* Reanimated Virindi */
/* @teleloc 0x634C03E7 [60.069302 -72.681900 6.037700] -0.001424 0.000000 0.000000 -0.999999 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C07F, 804019, 0x634C03DB, 48.5201, -56.5528, 6.0377, -0.923518, 0, 0, 0.383556,  True, '2025-12-29 18:19:34'); /* Reanimated Virindi */
/* @teleloc 0x634C03DB [48.520100 -56.552799 6.037700] -0.923518 0.000000 0.000000 0.383556 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C080, 804019, 0x634C03CD, 39.5349, -54.497, 6.0377, -0.421304, 0, 0, 0.90692,  True, '2025-12-29 18:19:39'); /* Reanimated Virindi */
/* @teleloc 0x634C03CD [39.534901 -54.497002 6.037700] -0.421304 0.000000 0.000000 0.906920 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C081, 804019, 0x634C03BB, 28.9947, -56.1379, 6.0377, 0.920834, 0, 0, -0.389954,  True, '2025-12-29 18:19:47'); /* Reanimated Virindi */
/* @teleloc 0x634C03BB [28.994699 -56.137901 6.037700] 0.920834 0.000000 0.000000 -0.389954 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C082, 804022, 0x634C03A9, 21.8492, -90.1471, 6.0377, -0.703318, 0, 0, 0.710876,  True, '2025-12-29 18:20:18'); /* Tormented Virindi */
/* @teleloc 0x634C03A9 [21.849199 -90.147102 6.037700] -0.703318 0.000000 0.000000 0.710876 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C083, 804019, 0x634C0396, 1.00252, -99.2128, 0.0376999, 0.594425, 0, 0, -0.804151,  True, '2025-12-29 18:20:30'); /* Reanimated Virindi */
/* @teleloc 0x634C0396 [1.002520 -99.212799 0.037700] 0.594425 0.000000 0.000000 -0.804151 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C084, 804019, 0x634C0337, 3.04824, -80.1363, -5.9623, -0.719344, 0, 0, -0.694654,  True, '2025-12-29 18:20:38'); /* Reanimated Virindi */
/* @teleloc 0x634C0337 [3.048240 -80.136299 -5.962300] -0.719344 0.000000 0.000000 -0.694654 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C085, 804019, 0x634C0339, 5.05595, -80.106, -5.9623, -0.701754, 0, 0, -0.712419,  True, '2025-12-29 18:20:41'); /* Reanimated Virindi */
/* @teleloc 0x634C0339 [5.055950 -80.106003 -5.962300] -0.701754 0.000000 0.000000 -0.712419 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C086, 804019, 0x634C035D, 29.9538, -67.9503, -5.9623, -0.0156062, 0, 0, 0.999878,  True, '2025-12-29 18:20:59'); /* Reanimated Virindi */
/* @teleloc 0x634C035D [29.953800 -67.950302 -5.962300] -0.015606 0.000000 0.000000 0.999878 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C087, 804019, 0x634C035D, 30.0315, -70.4373, -5.9623, 0.00939299, 0, 0, 0.999956,  True, '2025-12-29 18:21:01'); /* Reanimated Virindi */
/* @teleloc 0x634C035D [30.031500 -70.437302 -5.962300] 0.009393 0.000000 0.000000 0.999956 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C088, 804019, 0x634C035D, 29.992, -72.5366, -5.9623, 0.00939299, 0, 0, 0.999956,  True, '2025-12-29 18:21:03'); /* Reanimated Virindi */
/* @teleloc 0x634C035D [29.992001 -72.536598 -5.962300] 0.009393 0.000000 0.000000 0.999956 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C089, 804022, 0x634C0358, 30.1229, -59.9512, -5.9623, 0.0242952, 0, 0, 0.999705,  True, '2025-12-29 18:21:21'); /* Tormented Virindi */
/* @teleloc 0x634C0358 [30.122900 -59.951199 -5.962300] 0.024295 0.000000 0.000000 0.999705 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C08A, 804019, 0x634C02A9, 30.3297, -79.7554, -11.9623, -0.728376, 0, 0, -0.685178,  True, '2025-12-29 18:21:32'); /* Reanimated Virindi */
/* @teleloc 0x634C02A9 [30.329700 -79.755402 -11.962300] -0.728376 0.000000 0.000000 -0.685178 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C08B, 804019, 0x634C02BE, 38.7434, -79.8489, -11.9623, -0.711021, 0, 0, -0.703171,  True, '2025-12-29 18:21:36'); /* Reanimated Virindi */
/* @teleloc 0x634C02BE [38.743401 -79.848900 -11.962300] -0.711021 0.000000 0.000000 -0.703171 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C08C, 804019, 0x634C02BE, 41.9858, -79.8849, -11.9623, -0.711021, 0, 0, -0.703171,  True, '2025-12-29 18:21:39'); /* Reanimated Virindi */
/* @teleloc 0x634C02BE [41.985802 -79.884903 -11.962300] -0.711021 0.000000 0.000000 -0.703171 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C08D, 804019, 0x634C02B9, 39.743, -69.9236, -11.9623, -0.000166727, 0, 0, 1,  True, '2025-12-29 18:21:45'); /* Reanimated Virindi */
/* @teleloc 0x634C02B9 [39.743000 -69.923599 -11.962300] -0.000167 0.000000 0.000000 1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C08E, 804019, 0x634C02C9, 49.983, -70.6448, -11.9623, 0.00657019, 0, 0, 0.999978,  True, '2025-12-29 18:21:49'); /* Reanimated Virindi */
/* @teleloc 0x634C02C9 [49.983002 -70.644798 -11.962300] 0.006570 0.000000 0.000000 0.999978 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C08F, 804019, 0x634C02D4, 59.7149, -69.9709, -11.9623, 0.678705, 0, 0, 0.734411,  True, '2025-12-29 18:21:53'); /* Reanimated Virindi */
/* @teleloc 0x634C02D4 [59.714901 -69.970901 -11.962300] 0.678705 0.000000 0.000000 0.734411 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C090, 804019, 0x634C02D4, 63.9057, -69.7516, -11.9623, -0.028998, 0, 0, 0.999579,  True, '2025-12-29 18:21:56'); /* Reanimated Virindi */
/* @teleloc 0x634C02D4 [63.905701 -69.751602 -11.962300] -0.028998 0.000000 0.000000 0.999579 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C091, 804019, 0x634C02EE, 70.2116, -79.5438, -11.9623, -0.706323, 0, 0, -0.70789,  True, '2025-12-29 18:22:02'); /* Reanimated Virindi */
/* @teleloc 0x634C02EE [70.211601 -79.543800 -11.962300] -0.706323 0.000000 0.000000 -0.707890 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C092, 804019, 0x634C02D9, 55.5865, -79.5763, -11.9623, -0.706323, 0, 0, -0.70789,  True, '2025-12-29 18:22:04'); /* Reanimated Virindi */
/* @teleloc 0x634C02D9 [55.586498 -79.576302 -11.962300] -0.706323 0.000000 0.000000 -0.707890 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C093, 804019, 0x634C037F, 63.6448, -79.929, -5.9623, 0.713852, 0, 0, -0.700297,  True, '2025-12-29 18:22:17'); /* Reanimated Virindi */
/* @teleloc 0x634C037F [63.644798 -79.929001 -5.962300] 0.713852 0.000000 0.000000 -0.700297 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C094, 804019, 0x634C037E, 60.2175, -84.7415, -5.9623, -0.99989, 0, 0, -0.0148052,  True, '2025-12-29 18:22:23'); /* Reanimated Virindi */
/* @teleloc 0x634C037E [60.217499 -84.741501 -5.962300] -0.999890 0.000000 0.000000 -0.014805 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C095, 804019, 0x634C0361, 25.8369, -90.0226, -5.9623, 0.702657, 0, 0, -0.711529,  True, '2025-12-29 18:22:34'); /* Reanimated Virindi */
/* @teleloc 0x634C0361 [25.836901 -90.022598 -5.962300] 0.702657 0.000000 0.000000 -0.711529 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C096, 804019, 0x634C0361, 27.5364, -90.0439, -5.9623, 0.702657, 0, 0, -0.711529,  True, '2025-12-29 18:22:36'); /* Reanimated Virindi */
/* @teleloc 0x634C0361 [27.536400 -90.043900 -5.962300] 0.702657 0.000000 0.000000 -0.711529 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C097, 804019, 0x634C0361, 30.9576, -90.0868, -5.9623, 0.702657, 0, 0, -0.711529,  True, '2025-12-29 18:22:38'); /* Reanimated Virindi */
/* @teleloc 0x634C0361 [30.957600 -90.086800 -5.962300] 0.702657 0.000000 0.000000 -0.711529 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C098, 804019, 0x634C0375, 46.6959, -64.1485, -5.9623, -0.0247107, 0, 0, -0.999695,  True, '2025-12-29 18:23:54'); /* Reanimated Virindi */
/* @teleloc 0x634C0375 [46.695900 -64.148499 -5.962300] -0.024711 0.000000 0.000000 -0.999695 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C099, 804019, 0x634C0369, 43.6493, -63.9978, -5.9623, -0.0247107, 0, 0, -0.999695,  True, '2025-12-29 18:23:56'); /* Reanimated Virindi */
/* @teleloc 0x634C0369 [43.649300 -63.997799 -5.962300] -0.024711 0.000000 0.000000 -0.999695 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C09A, 804019, 0x634C0375, 45.3746, -61.0959, -5.9623, -0.0381579, 0, 0, -0.999272,  True, '2025-12-29 18:24:01'); /* Reanimated Virindi */
/* @teleloc 0x634C0375 [45.374599 -61.095901 -5.962300] -0.038158 0.000000 0.000000 -0.999272 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C09B, 804019, 0x634C0343, 19.8816, -45.0047, -5.9623, 0.0152104, 0, 0, -0.999884,  True, '2025-12-29 18:24:13'); /* Reanimated Virindi */
/* @teleloc 0x634C0343 [19.881599 -45.004700 -5.962300] 0.015210 0.000000 0.000000 -0.999884 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C09C, 804019, 0x634C0350, 29.8929, -34.5882, -5.9623, 0.029259, 0, 0, 0.999572,  True, '2025-12-29 18:24:18'); /* Reanimated Virindi */
/* @teleloc 0x634C0350 [29.892900 -34.588200 -5.962300] 0.029259 0.000000 0.000000 0.999572 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C09D, 804019, 0x634C0363, 35.3474, -29.9819, -5.9623, 0.720651, 0, 0, 0.693298,  True, '2025-12-29 18:24:24'); /* Reanimated Virindi */
/* @teleloc 0x634C0363 [35.347401 -29.981899 -5.962300] 0.720651 0.000000 0.000000 0.693298 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C09E, 804019, 0x634C0371, 45.8984, -39.8003, -5.9623, -0.682822, 0, 0, -0.730585,  True, '2025-12-29 18:24:33'); /* Reanimated Virindi */
/* @teleloc 0x634C0371 [45.898399 -39.800301 -5.962300] -0.682822 0.000000 0.000000 -0.730585 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C09F, 804019, 0x634C02E9, 67.5842, -53.1166, -11.9623, 0.702414, 0, 0, 0.711768,  True, '2025-12-29 18:24:46'); /* Reanimated Virindi */
/* @teleloc 0x634C02E9 [67.584198 -53.116600 -11.962300] 0.702414 0.000000 0.000000 0.711768 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0A0, 804019, 0x634C02EA, 67.6246, -56.1728, -11.9623, 0.702414, 0, 0, 0.711768,  True, '2025-12-29 18:24:48'); /* Reanimated Virindi */
/* @teleloc 0x634C02EA [67.624603 -56.172798 -11.962300] 0.702414 0.000000 0.000000 0.711768 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0A1, 804019, 0x634C02E9, 70.0963, -54.6532, -11.9623, 0.719987, 0, 0, 0.693987,  True, '2025-12-29 18:24:54'); /* Reanimated Virindi */
/* @teleloc 0x634C02E9 [70.096298 -54.653198 -11.962300] 0.719987 0.000000 0.000000 0.693987 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0A2, 804019, 0x634C02FA, 83.518, -55.2923, -11.9623, -0.999312, 0, 0, 0.0370911,  True, '2025-12-29 18:25:04'); /* Reanimated Virindi */
/* @teleloc 0x634C02FA [83.517998 -55.292301 -11.962300] -0.999312 0.000000 0.000000 0.037091 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0A3, 804019, 0x634C02F9, 84.9038, -51.7532, -11.9623, -0.350322, 0, 0, -0.936629,  True, '2025-12-29 18:25:08'); /* Reanimated Virindi */
/* @teleloc 0x634C02F9 [84.903801 -51.753201 -11.962300] -0.350322 0.000000 0.000000 -0.936629 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0A4, 804019, 0x634C02C4, 49.6392, -40.0113, -11.9623, -0.705606, 0, 0, 0.708604,  True, '2025-12-29 18:26:00'); /* Reanimated Virindi */
/* @teleloc 0x634C02C4 [49.639198 -40.011299 -11.962300] -0.705606 0.000000 0.000000 0.708604 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0A5, 804019, 0x634C02C4, 52.4055, -40.023, -11.9623, -0.705606, 0, 0, 0.708604,  True, '2025-12-29 18:26:02'); /* Reanimated Virindi */
/* @teleloc 0x634C02C4 [52.405499 -40.022999 -11.962300] -0.705606 0.000000 0.000000 0.708604 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0A6, 804019, 0x634C02B0, 39.886, -26.4064, -11.9623, -0.00442014, 0, 0, -0.99999,  True, '2025-12-29 18:26:09'); /* Reanimated Virindi */
/* @teleloc 0x634C02B0 [39.886002 -26.406401 -11.962300] -0.004420 0.000000 0.000000 -0.999990 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0A7, 804019, 0x634C02B0, 39.8837, -28.16, -11.9623, -0.00442012, 0, 0, -0.99999,  True, '2025-12-29 18:26:12'); /* Reanimated Virindi */
/* @teleloc 0x634C02B0 [39.883701 -28.160000 -11.962300] -0.004420 0.000000 0.000000 -0.999990 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0A8, 804022, 0x634C02D2, 56.9781, -30.0725, -11.9623, -0.694722, 0, 0, 0.719279,  True, '2025-12-29 18:27:02'); /* Tormented Virindi */
/* @teleloc 0x634C02D2 [56.978100 -30.072500 -11.962300] -0.694722 0.000000 0.000000 0.719279 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0A9, 804019, 0x634C02D2, 60.5904, -30.1582, -11.9623, -0.712485, 0, 0, 0.701688,  True, '2025-12-29 18:27:14'); /* Reanimated Virindi */
/* @teleloc 0x634C02D2 [60.590401 -30.158199 -11.962300] -0.712485 0.000000 0.000000 0.701688 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0AA, 804019, 0x634C02F3, 79.9237, -6.07203, -11.9623, -0.00579282, 0, 0, -0.999983,  True, '2025-12-29 18:27:30'); /* Reanimated Virindi */
/* @teleloc 0x634C02F3 [79.923698 -6.072030 -11.962300] -0.005793 0.000000 0.000000 -0.999983 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0AB, 804019, 0x634C02FD, 90.002, -6.45286, -11.9623, 0.00378636, 0, 0, -0.999993,  True, '2025-12-29 18:27:36'); /* Reanimated Virindi */
/* @teleloc 0x634C02FD [90.001999 -6.452860 -11.962300] 0.003786 0.000000 0.000000 -0.999993 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0AC, 804019, 0x634C030D, 100.165, -10.1267, -11.9623, -0.698728, 0, 0, -0.715387,  True, '2025-12-29 18:27:43'); /* Reanimated Virindi */
/* @teleloc 0x634C030D [100.165001 -10.126700 -11.962300] -0.698728 0.000000 0.000000 -0.715387 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0AD, 804019, 0x634C0324, 106.891, -28.8489, -11.9623, -0.64185, 0, 0, -0.766831,  True, '2025-12-29 18:28:19'); /* Reanimated Virindi */
/* @teleloc 0x634C0324 [106.890999 -28.848900 -11.962300] -0.641850 0.000000 0.000000 -0.766831 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0AE, 804019, 0x634C0324, 108.42, -32.4921, -11.9623, -0.926276, 0, 0, -0.376846,  True, '2025-12-29 18:28:24'); /* Reanimated Virindi */
/* @teleloc 0x634C0324 [108.419998 -32.492100 -11.962300] -0.926276 0.000000 0.000000 -0.376846 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0AF, 804019, 0x634C0324, 112.556, -31.6093, -11.9623, -0.900723, 0, 0, -0.434394,  True, '2025-12-29 18:28:30'); /* Reanimated Virindi */
/* @teleloc 0x634C0324 [112.556000 -31.609301 -11.962300] -0.900723 0.000000 0.000000 -0.434394 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0B0, 804019, 0x634C0324, 109.655, -27.2958, -11.9623, 0.165307, 0, 0, -0.986242,  True, '2025-12-29 18:28:37'); /* Reanimated Virindi */
/* @teleloc 0x634C0324 [109.654999 -27.295799 -11.962300] 0.165307 0.000000 0.000000 -0.986242 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0B1, 804019, 0x634C0312, 100.095, -33.1096, -11.9623, -0.999973, 0, 0, 0.00739093,  True, '2025-12-29 18:28:46'); /* Reanimated Virindi */
/* @teleloc 0x634C0312 [100.095001 -33.109600 -11.962300] -0.999973 0.000000 0.000000 0.007391 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0B2, 804019, 0x634C0331, 120.063, -43.2003, -11.9623, -0.999997, 0, 0, 0.00256242,  True, '2025-12-29 18:29:00'); /* Reanimated Virindi */
/* @teleloc 0x634C0331 [120.063004 -43.200298 -11.962300] -0.999997 0.000000 0.000000 0.002562 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0B3, 804019, 0x634C0331, 120.078, -40.3007, -11.9623, -0.999997, 0, 0, 0.00256242,  True, '2025-12-29 18:29:02'); /* Reanimated Virindi */
/* @teleloc 0x634C0331 [120.078003 -40.300701 -11.962300] -0.999997 0.000000 0.000000 0.002562 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0B4, 804019, 0x634C0330, 120.105, -34.9779, -11.9623, -0.999997, 0, 0, 0.00256242,  True, '2025-12-29 18:29:04'); /* Reanimated Virindi */
/* @teleloc 0x634C0330 [120.105003 -34.977901 -11.962300] -0.999997 0.000000 0.000000 0.002562 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0B5, 804019, 0x634C0330, 120.132, -29.8579, -11.9623, -0.999997, 0, 0, 0.00256242,  True, '2025-12-29 18:29:06'); /* Reanimated Virindi */
/* @teleloc 0x634C0330 [120.132004 -29.857901 -11.962300] -0.999997 0.000000 0.000000 0.002562 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0B6, 804019, 0x634C0292, 105.837, -50.0072, -23.9623, 0.701507, 0, 0, 0.712663,  True, '2025-12-29 18:29:20'); /* Reanimated Virindi */
/* @teleloc 0x634C0292 [105.836998 -50.007198 -23.962299] 0.701507 0.000000 0.000000 0.712663 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0B7, 804019, 0x634C028E, 109.982, -34.8033, -23.9623, 0.00541082, 0, 0, 0.999985,  True, '2025-12-29 18:29:27'); /* Reanimated Virindi */
/* @teleloc 0x634C028E [109.982002 -34.803299 -23.962299] 0.005411 0.000000 0.000000 0.999985 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0B8, 804019, 0x634C028F, 109.907, -41.7493, -23.9623, 0.00541082, 0, 0, 0.999985,  True, '2025-12-29 18:29:31'); /* Reanimated Virindi */
/* @teleloc 0x634C028F [109.906998 -41.749298 -23.962299] 0.005411 0.000000 0.000000 0.999985 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0B9, 804019, 0x634C031A, 99.7429, -59.4213, -11.9623, -0.998728, 0, 0, 0.0504181,  True, '2025-12-29 18:29:50'); /* Reanimated Virindi */
/* @teleloc 0x634C031A [99.742897 -59.421299 -11.962300] -0.998728 0.000000 0.000000 0.050418 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0BA, 804019, 0x634C0274, 82.5796, -17.6754, -23.9623, -0.965013, 0, 0, 0.262204,  True, '2025-12-29 18:30:02'); /* Reanimated Virindi */
/* @teleloc 0x634C0274 [82.579597 -17.675400 -23.962299] -0.965013 0.000000 0.000000 0.262204 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0BB, 804019, 0x634C0279, 85.6617, -13.8368, -23.9623, -0.418063, 0, 0, -0.908418,  True, '2025-12-29 18:30:07'); /* Reanimated Virindi */
/* @teleloc 0x634C0279 [85.661697 -13.836800 -23.962299] -0.418063 0.000000 0.000000 -0.908418 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0BC, 804019, 0x634C027B, 86.4549, -17.4001, -23.9623, -0.900206, 0, 0, -0.435464,  True, '2025-12-29 18:30:18'); /* Reanimated Virindi */
/* @teleloc 0x634C027B [86.454903 -17.400101 -23.962299] -0.900206 0.000000 0.000000 -0.435464 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0BD, 804019, 0x634C027C, 99.8844, -0.331694, -23.9623, -0.0294376, 0, 0, 0.999567,  True, '2025-12-29 18:30:35'); /* Reanimated Virindi */
/* @teleloc 0x634C027C [99.884399 -0.331694 -23.962299] -0.029438 0.000000 0.000000 0.999567 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0BE, 804019, 0x634C021F, 56.2682, -20.0999, -29.9623, 0.702644, 0, 0, -0.711542,  True, '2025-12-29 18:31:02'); /* Reanimated Virindi */
/* @teleloc 0x634C021F [56.268200 -20.099899 -29.962299] 0.702644 0.000000 0.000000 -0.711542 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0BF, 804019, 0x634C021F, 59.8975, -24.0043, -29.9623, -0.99906, 0, 0, 0.0433468,  True, '2025-12-29 18:31:09'); /* Reanimated Virindi */
/* @teleloc 0x634C021F [59.897499 -24.004299 -29.962299] -0.999060 0.000000 0.000000 0.043347 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0C0, 804019, 0x634C0225, 71.4739, -20.0728, -29.9623, -0.705674, 0, 0, -0.708537,  True, '2025-12-29 18:31:18'); /* Reanimated Virindi */
/* @teleloc 0x634C0225 [71.473900 -20.072800 -29.962299] -0.705674 0.000000 0.000000 -0.708537 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0C1, 804019, 0x634C023B, 90.0678, -10.6271, -29.9623, -0.0247654, 0, 0, -0.999693,  True, '2025-12-29 18:31:28'); /* Reanimated Virindi */
/* @teleloc 0x634C023B [90.067802 -10.627100 -29.962299] -0.024765 0.000000 0.000000 -0.999693 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0C2, 804019, 0x634C0244, 90.0218, -29.9155, -29.9623, 0.999987, 0, 0, -0.00518248,  True, '2025-12-29 18:31:37'); /* Reanimated Virindi */
/* @teleloc 0x634C0244 [90.021797 -29.915501 -29.962299] 0.999987 0.000000 0.000000 -0.005182 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0C3, 804019, 0x634C0255, 99.2382, -19.9902, -29.9623, 0.708904, 0, 0, 0.705305,  True, '2025-12-29 18:31:46'); /* Reanimated Virindi */
/* @teleloc 0x634C0255 [99.238197 -19.990200 -29.962299] 0.708904 0.000000 0.000000 0.705305 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0C4, 804019, 0x634C01F4, 107.308, -75.7916, -35.9623, -0.81694, 0, 0, -0.576723,  True, '2025-12-29 18:32:06'); /* Reanimated Virindi */
/* @teleloc 0x634C01F4 [107.307999 -75.791603 -35.962299] -0.816940 0.000000 0.000000 -0.576723 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0C5, 804019, 0x634C01A9, 88.0916, -73.9763, -35.9623, -0.976752, 0, 0, 0.214374,  True, '2025-12-29 18:32:10'); /* Reanimated Virindi */
/* @teleloc 0x634C01A9 [88.091599 -73.976303 -35.962299] -0.976752 0.000000 0.000000 0.214374 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0C6, 804019, 0x634C0183, 76.046, -73.7494, -35.9623, -0.987634, 0, 0, 0.156776,  True, '2025-12-29 18:32:16'); /* Reanimated Virindi */
/* @teleloc 0x634C0183 [76.045998 -73.749397 -35.962299] -0.987634 0.000000 0.000000 0.156776 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0C7, 804019, 0x634C0183, 75.9546, -69.0892, -35.9623, -0.245936, 0, 0, 0.969286,  True, '2025-12-29 18:32:19'); /* Reanimated Virindi */
/* @teleloc 0x634C0183 [75.954597 -69.089203 -35.962299] -0.245936 0.000000 0.000000 0.969286 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0C8, 804019, 0x634C01CE, 95.0655, -70.5517, -35.9623, 0.13713, 0, 0, 0.990553,  True, '2025-12-29 18:32:32'); /* Reanimated Virindi */
/* @teleloc 0x634C01CE [95.065498 -70.551697 -35.962299] 0.137130 0.000000 0.000000 0.990553 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0C9, 804019, 0x634C01CB, 99.7833, -64.849, -35.9623, 0.999941, 0, 0, -0.0108652,  True, '2025-12-29 18:32:42'); /* Reanimated Virindi */
/* @teleloc 0x634C01CB [99.783302 -64.848999 -35.962299] 0.999941 0.000000 0.000000 -0.010865 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0CA, 804019, 0x634C01A5, 89.9841, -56.0537, -35.9623, 0.999964, 0, 0, -0.00844119,  True, '2025-12-29 18:32:47'); /* Reanimated Virindi */
/* @teleloc 0x634C01A5 [89.984100 -56.053699 -35.962299] 0.999964 0.000000 0.000000 -0.008441 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0CB, 804019, 0x634C011D, 90.0503, -82.3092, -41.9623, -0.99994, 0, 0, -0.0109958,  True, '2025-12-29 18:33:01'); /* Reanimated Virindi */
/* @teleloc 0x634C011D [90.050301 -82.309196 -41.962299] -0.999940 0.000000 0.000000 -0.010996 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0CC, 804019, 0x634C0109, 90.2615, -99.0414, -47.9623, 0.999444, 0, 0, 0.0333283,  True, '2025-12-29 18:33:07'); /* Reanimated Virindi */
/* @teleloc 0x634C0109 [90.261497 -99.041397 -47.962299] 0.999444 0.000000 0.000000 0.033328 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0CD, 804019, 0x634C0103, 70.0041, -114.322, -47.9623, -1, 0, 0, -0.000367134,  True, '2025-12-29 18:33:16'); /* Reanimated Virindi */
/* @teleloc 0x634C0103 [70.004097 -114.321999 -47.962299] -1.000000 0.000000 0.000000 -0.000367 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0CE, 804019, 0x634C0103, 70.0015, -110.844, -47.9623, -1, 0, 0, -0.000367134,  True, '2025-12-29 18:33:18'); /* Reanimated Virindi */
/* @teleloc 0x634C0103 [70.001503 -110.844002 -47.962299] -1.000000 0.000000 0.000000 -0.000367 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0CF, 804019, 0x634C0101, 69.9972, -104.968, -47.9623, -1, 0, 0, -0.000367134,  True, '2025-12-29 18:33:19'); /* Reanimated Virindi */
/* @teleloc 0x634C0101 [69.997200 -104.968002 -47.962299] -1.000000 0.000000 0.000000 -0.000367 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0D0, 804019, 0x634C0114, 110.086, -114.591, -47.9623, -0.999977, 0, 0, -0.00672448,  True, '2025-12-29 18:33:28'); /* Reanimated Virindi */
/* @teleloc 0x634C0114 [110.085999 -114.591003 -47.962299] -0.999977 0.000000 0.000000 -0.006724 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0D1, 804019, 0x634C0114, 110.033, -110.65, -47.9623, -0.999977, 0, 0, -0.00672448,  True, '2025-12-29 18:33:30'); /* Reanimated Virindi */
/* @teleloc 0x634C0114 [110.032997 -110.650002 -47.962299] -0.999977 0.000000 0.000000 -0.006724 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0D2, 804019, 0x634C0113, 109.951, -104.506, -47.9623, -0.999977, 0, 0, -0.00672448,  True, '2025-12-29 18:33:31'); /* Reanimated Virindi */
/* @teleloc 0x634C0113 [109.950996 -104.505997 -47.962299] -0.999977 0.000000 0.000000 -0.006724 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0D3, 804022, 0x634C010F, 98.7825, -100.024, -47.9623, -0.718437, 0, 0, -0.695592,  True, '2025-12-29 18:34:01'); /* Tormented Virindi */
/* @teleloc 0x634C010F [98.782501 -100.024002 -47.962299] -0.718437 0.000000 0.000000 -0.695592 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0D4, 804022, 0x634C0107, 80.8026, -100.122, -47.9623, -0.712407, 0, 0, 0.701767,  True, '2025-12-29 18:34:12'); /* Tormented Virindi */
/* @teleloc 0x634C0107 [80.802597 -100.122002 -47.962299] -0.712407 0.000000 0.000000 0.701767 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0D5, 804022, 0x634C010E, 87.2604, -116.957, -47.9623, 0.00216574, 0, 0, -0.999998,  True, '2025-12-29 18:34:33'); /* Tormented Virindi */
/* @teleloc 0x634C010E [87.260399 -116.957001 -47.962299] 0.002166 0.000000 0.000000 -0.999998 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0D6, 804022, 0x634C010E, 92.9537, -116.932, -47.9623, 0.00216574, 0, 0, -0.999998,  True, '2025-12-29 18:34:36'); /* Tormented Virindi */
/* @teleloc 0x634C010E [92.953697 -116.931999 -47.962299] 0.002166 0.000000 0.000000 -0.999998 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0D7, 804022, 0x634C0110, 99.2401, -119.95, -47.9623, -0.700778, 0, 0, 0.713379,  True, '2025-12-29 18:34:45'); /* Tormented Virindi */
/* @teleloc 0x634C0110 [99.240097 -119.949997 -47.962299] -0.700778 0.000000 0.000000 0.713379 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0D8, 804022, 0x634C0108, 80.7674, -119.487, -47.9623, -0.704655, 0, 0, -0.70955,  True, '2025-12-29 18:34:56'); /* Tormented Virindi */
/* @teleloc 0x634C0108 [80.767403 -119.487000 -47.962299] -0.704655 0.000000 0.000000 -0.709550 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0D9, 804019, 0x634C0267, 118.747, -9.93266, -29.9623, 0.721718, 0, 0, 0.692187,  True, '2025-12-29 18:35:27'); /* Reanimated Virindi */
/* @teleloc 0x634C0267 [118.747002 -9.932660 -29.962299] 0.721718 0.000000 0.000000 0.692187 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0DA, 804022, 0x634C026B, 120.035, -20.2163, -29.9623, -0.999937, 0, 0, 0.0111986,  True, '2025-12-29 18:35:35'); /* Tormented Virindi */
/* @teleloc 0x634C026B [120.035004 -20.216299 -29.962299] -0.999937 0.000000 0.000000 0.011199 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0DB, 804019, 0x634C0281, 99.1274, -19.9249, -23.9623, -0.720243, 0, 0, -0.693722,  True, '2025-12-29 18:35:46'); /* Reanimated Virindi */
/* @teleloc 0x634C0281 [99.127403 -19.924900 -23.962299] -0.720243 0.000000 0.000000 -0.693722 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0DC, 804019, 0x634C0118, 80.0032, -81.5009, -41.9623, -0.999965, 0, 0, 0.00835823,  True, '2025-12-29 18:37:35'); /* Reanimated Virindi */
/* @teleloc 0x634C0118 [80.003197 -81.500900 -41.962299] -0.999965 0.000000 0.000000 0.008358 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0DD, 804019, 0x634C0143, 60.3438, -100.341, -35.9623, 0.999997, 0, 0, -0.00235536,  True, '2025-12-29 18:37:44'); /* Reanimated Virindi */
/* @teleloc 0x634C0143 [60.343800 -100.341003 -35.962299] 0.999997 0.000000 0.000000 -0.002355 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0DE, 804019, 0x634C015D, 65.3732, -109.812, -35.9623, -0.735061, 0, 0, -0.678001,  True, '2025-12-29 18:37:49'); /* Reanimated Virindi */
/* @teleloc 0x634C015D [65.373199 -109.811996 -35.962299] -0.735061 0.000000 0.000000 -0.678001 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0DF, 804019, 0x634C0186, 79.8389, -104.169, -35.9623, 0.0813864, 0, 0, -0.996683,  True, '2025-12-29 18:37:57'); /* Reanimated Virindi */
/* @teleloc 0x634C0186 [79.838898 -104.168999 -35.962299] 0.081386 0.000000 0.000000 -0.996683 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0E0, 804019, 0x634C01D2, 95.4612, -110.029, -35.9623, 0.7489, 0, 0, -0.662683,  True, '2025-12-29 18:38:03'); /* Reanimated Virindi */
/* @teleloc 0x634C01D2 [95.461197 -110.028999 -35.962299] 0.748900 0.000000 0.000000 -0.662683 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0E1, 804019, 0x634C01F6, 112.607, -99.8828, -35.9623, 0.710903, 0, 0, 0.70329,  True, '2025-12-29 18:38:10'); /* Reanimated Virindi */
/* @teleloc 0x634C01F6 [112.607002 -99.882797 -35.962299] 0.710903 0.000000 0.000000 0.703290 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0E2, 804019, 0x634C01F6, 107.586, -99.8287, -35.9623, 0.710903, 0, 0, 0.70329,  True, '2025-12-29 18:38:13'); /* Reanimated Virindi */
/* @teleloc 0x634C01F6 [107.585999 -99.828697 -35.962299] 0.710903 0.000000 0.000000 0.703290 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0E3, 804019, 0x634C01D0, 101.53, -99.7636, -35.9623, 0.710903, 0, 0, 0.70329,  True, '2025-12-29 18:38:15'); /* Reanimated Virindi */
/* @teleloc 0x634C01D0 [101.529999 -99.763603 -35.962299] 0.710903 0.000000 0.000000 0.703290 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0E4, 804019, 0x634C0121, 100.049, -81.8275, -41.9623, 1, 0, 0, 0.000663239,  True, '2025-12-29 18:38:27'); /* Reanimated Virindi */
/* @teleloc 0x634C0121 [100.049004 -81.827499 -41.962299] 1.000000 0.000000 0.000000 0.000663 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0E5, 804019, 0x634C01B2, 90.896, -119.941, -35.9623, 0.709905, 0, 0, -0.704298,  True, '2025-12-29 18:38:58'); /* Reanimated Virindi */
/* @teleloc 0x634C01B2 [90.896004 -119.941002 -35.962299] 0.709905 0.000000 0.000000 -0.704298 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0E6, 804019, 0x634C018B, 79.9678, -120.699, -35.9623, 0.74926, 0, 0, 0.662276,  True, '2025-12-29 18:39:02'); /* Reanimated Virindi */
/* @teleloc 0x634C018B [79.967796 -120.698997 -35.962299] 0.749260 0.000000 0.000000 0.662276 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0E7, 804019, 0x634C01B3, 86.5943, -128.879, -35.9623, -0.383384, 0, 0, 0.923589,  True, '2025-12-29 18:39:10'); /* Reanimated Virindi */
/* @teleloc 0x634C01B3 [86.594299 -128.878998 -35.962299] -0.383384 0.000000 0.000000 0.923589 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0E8, 804019, 0x634C018D, 79.8749, -137.43, -35.9623, 0.0416066, 0, 0, 0.999134,  True, '2025-12-29 18:39:13'); /* Reanimated Virindi */
/* @teleloc 0x634C018D [79.874901 -137.429993 -35.962299] 0.041607 0.000000 0.000000 0.999134 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0E9, 804019, 0x634C01B4, 86.729, -140.206, -35.9623, -0.999046, 0, 0, 0.0436607,  True, '2025-12-29 18:39:19'); /* Reanimated Virindi */
/* @teleloc 0x634C01B4 [86.728996 -140.205994 -35.962299] -0.999046 0.000000 0.000000 0.043661 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0EA, 804019, 0x634C01B5, 88.5684, -149.692, -35.9623, 0.615025, 0, 0, -0.788507,  True, '2025-12-29 18:39:24'); /* Reanimated Virindi */
/* @teleloc 0x634C01B5 [88.568398 -149.692001 -35.962299] 0.615025 0.000000 0.000000 -0.788507 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0EB, 804019, 0x634C016A, 69.6009, -150.055, -35.9623, -0.725669, 0, 0, 0.688044,  True, '2025-12-29 18:39:37'); /* Reanimated Virindi */
/* @teleloc 0x634C016A [69.600899 -150.054993 -35.962299] -0.725669 0.000000 0.000000 0.688044 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0EC, 804022, 0x634C0133, 49.9155, -125.064, -35.9623, -0.0139723, 0, 0, 0.999902,  True, '2025-12-29 18:39:56'); /* Tormented Virindi */
/* @teleloc 0x634C0133 [49.915501 -125.064003 -35.962299] -0.013972 0.000000 0.000000 0.999902 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0ED, 804019, 0x634C0138, 49.8174, -149.534, -35.9623, -0.711698, 0, 0, 0.702485,  True, '2025-12-29 18:40:11'); /* Reanimated Virindi */
/* @teleloc 0x634C0138 [49.817402 -149.533997 -35.962299] -0.711698 0.000000 0.000000 0.702485 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0EE, 804019, 0x634C0134, 49.694, -140.062, -35.9623, -0.711698, 0, 0, 0.702485,  True, '2025-12-29 18:40:15'); /* Reanimated Virindi */
/* @teleloc 0x634C0134 [49.694000 -140.061996 -35.962299] -0.711698 0.000000 0.000000 0.702485 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0EF, 804022, 0x634C0127, 39.9479, -125.117, -35.9623, 0.0036962, 0, 0, 0.999993,  True, '2025-12-29 18:40:27'); /* Tormented Virindi */
/* @teleloc 0x634C0127 [39.947899 -125.116997 -35.962299] 0.003696 0.000000 0.000000 0.999993 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0F0, 804022, 0x634C0127, 39.9265, -128.016, -35.9623, 0.0036962, 0, 0, 0.999993,  True, '2025-12-29 18:40:29'); /* Tormented Virindi */
/* @teleloc 0x634C0127 [39.926498 -128.016006 -35.962299] 0.003696 0.000000 0.000000 0.999993 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0F1, 804022, 0x634C012F, 39.9811, -165.439, -35.9623, -0.999977, 0, 0, -0.00676712,  True, '2025-12-29 18:40:44'); /* Tormented Virindi */
/* @teleloc 0x634C012F [39.981098 -165.438995 -35.962299] -0.999977 0.000000 0.000000 -0.006767 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0F2, 804022, 0x634C012E, 39.9383, -162.273, -35.9623, -0.999977, 0, 0, -0.00676712,  True, '2025-12-29 18:40:46'); /* Tormented Virindi */
/* @teleloc 0x634C012E [39.938301 -162.272995 -35.962299] -0.999977 0.000000 0.000000 -0.006767 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0F3, 804022, 0x634C013F, 50.0657, -165.324, -35.9623, -0.999977, 0, 0, -0.00682548,  True, '2025-12-29 18:41:00'); /* Tormented Virindi */
/* @teleloc 0x634C013F [50.065701 -165.324005 -35.962299] -0.999977 0.000000 0.000000 -0.006825 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0F4, 804022, 0x634C014E, 60.0006, -174.988, -35.9623, -0.0565832, 0, 0, 0.998398,  True, '2025-12-29 18:41:11'); /* Tormented Virindi */
/* @teleloc 0x634C014E [60.000599 -174.988007 -35.962299] -0.056583 0.000000 0.000000 0.998398 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0F5, 804022, 0x634C0199, 80.4449, -189.86, -35.9623, -0.999956, 0, 0, -0.00936653,  True, '2025-12-29 18:41:21'); /* Tormented Virindi */
/* @teleloc 0x634C0199 [80.444901 -189.860001 -35.962299] -0.999956 0.000000 0.000000 -0.009367 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0F6, 804022, 0x634C01C0, 89.9476, -189.682, -35.9623, -0.999956, 0, 0, -0.00936653,  True, '2025-12-29 18:41:27'); /* Tormented Virindi */
/* @teleloc 0x634C01C0 [89.947601 -189.682007 -35.962299] -0.999956 0.000000 0.000000 -0.009367 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0F7, 804019, 0x634C01BC, 89.7887, -181.197, -35.9623, -0.999956, 0, 0, -0.00936653,  True, '2025-12-29 18:41:31'); /* Reanimated Virindi */
/* @teleloc 0x634C01BC [89.788696 -181.197006 -35.962299] -0.999956 0.000000 0.000000 -0.009367 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0F8, 804019, 0x634C0195, 80.0737, -180.054, -35.9623, -0.999956, 0, 0, -0.00936653,  True, '2025-12-29 18:41:36'); /* Reanimated Virindi */
/* @teleloc 0x634C0195 [80.073700 -180.054001 -35.962299] -0.999956 0.000000 0.000000 -0.009367 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0F9, 804019, 0x634C0178, 69.9423, -194.645, -35.9623, -0.0537841, 0, 0, 0.998553,  True, '2025-12-29 18:41:43'); /* Reanimated Virindi */
/* @teleloc 0x634C0178 [69.942299 -194.645004 -35.962299] -0.053784 0.000000 0.000000 0.998553 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0FA, 804019, 0x634C0179, 70.2668, -197.649, -35.9623, -0.0537841, 0, 0, 0.998553,  True, '2025-12-29 18:41:44'); /* Reanimated Virindi */
/* @teleloc 0x634C0179 [70.266800 -197.649002 -35.962299] -0.053784 0.000000 0.000000 0.998553 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0FB, 804019, 0x634C01EE, 99.8761, -194.761, -35.9623, -0.00757441, 0, 0, -0.999971,  True, '2025-12-29 18:41:54'); /* Reanimated Virindi */
/* @teleloc 0x634C01EE [99.876099 -194.761002 -35.962299] -0.007574 0.000000 0.000000 -0.999971 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0FC, 804019, 0x634C01EF, 99.2159, -198.229, -35.9623, -0.266803, 0, 0, -0.963751,  True, '2025-12-29 18:41:58'); /* Reanimated Virindi */
/* @teleloc 0x634C01EF [99.215897 -198.229004 -35.962299] -0.266803 0.000000 0.000000 -0.963751 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0FD, 804022, 0x634C01FB, 109.907, -174.235, -35.9623, 0.0227293, 0, 0, -0.999742,  True, '2025-12-29 18:42:14'); /* Tormented Virindi */
/* @teleloc 0x634C01FB [109.906998 -174.235001 -35.962299] 0.022729 0.000000 0.000000 -0.999742 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0FE, 804022, 0x634C0210, 120.043, -165.008, -35.9623, -0.999653, 0, 0, -0.026352,  True, '2025-12-29 18:42:25'); /* Tormented Virindi */
/* @teleloc 0x634C0210 [120.042999 -165.007996 -35.962299] -0.999653 0.000000 0.000000 -0.026352 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C0FF, 804022, 0x634C0219, 130.072, -164.942, -35.9623, -0.999974, 0, 0, -0.00721602,  True, '2025-12-29 18:42:37'); /* Tormented Virindi */
/* @teleloc 0x634C0219 [130.072006 -164.942001 -35.962299] -0.999974 0.000000 0.000000 -0.007216 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C100, 804022, 0x634C0211, 129.829, -124.663, -35.9623, -0.0155072, 0, 0, -0.99988,  True, '2025-12-29 18:42:46'); /* Tormented Virindi */
/* @teleloc 0x634C0211 [129.828995 -124.663002 -35.962299] -0.015507 0.000000 0.000000 -0.999880 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C101, 804019, 0x634C0205, 119.979, -140.048, -35.9623, -0.718413, 0, 0, -0.695617,  True, '2025-12-29 18:42:58'); /* Reanimated Virindi */
/* @teleloc 0x634C0205 [119.978996 -140.048004 -35.962299] -0.718413 0.000000 0.000000 -0.695617 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C102, 804019, 0x634C0209, 120.087, -148.932, -35.9623, -0.682749, 0, 0, -0.730653,  True, '2025-12-29 18:43:02'); /* Reanimated Virindi */
/* @teleloc 0x634C0209 [120.086998 -148.932007 -35.962299] -0.682749 0.000000 0.000000 -0.730653 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7634C103, 804022, 0x634C0201, 119.94965, -124.87518, -35.962303, -0.011992614, 0, 0, -0.99992806,  True, '2025-12-29 18:43:18'); /* Tormented Virindi */
/* @teleloc 0x634C0201 [119.949654 -124.875183 -35.962303] -0.011993 0.000000 0.000000 -0.999928 */
