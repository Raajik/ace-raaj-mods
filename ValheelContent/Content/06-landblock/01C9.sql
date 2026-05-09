DELETE FROM `landblock_instance` WHERE `landblock` = 0x01C9;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9010,   912, 0x01C90152, 3.18877, -156.604, -29.9823, 0.940474, 0, 0, -0.339867, False, '2005-02-09 10:00:00'); /* Revenant Generator */
/* @teleloc 0x01C90152 [3.188770 -156.604004 -29.982300] 0.940474 0.000000 0.000000 -0.339867 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9011,  1524, 0x01C90164, 60.1648, -43.1649, -29.945, 0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Undead Miner */
/* @teleloc 0x01C90164 [60.164799 -43.164902 -29.945000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9012,  1154, 0x01C90164, 63.5041, -43.706, -29.9878, 0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Linkable Monster Generator */
/* @teleloc 0x01C90164 [63.504101 -43.706001 -29.987801] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x701C9012, 0x701C9011, '2005-02-09 10:00:00') /* Undead Miner (1524) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9013,  1524, 0x01C90165, 60.2056, -47.1412, -29.945, -0.317822, 0, 0, -0.94815,  True, '2005-02-09 10:00:00'); /* Undead Miner */
/* @teleloc 0x01C90165 [60.205601 -47.141201 -29.945000] -0.317822 0.000000 0.000000 -0.948150 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9014,  1524, 0x01C90165, 63.7257, -46.1751, -29.945, 0.998207, 0, 0, -0.059851,  True, '2005-02-09 10:00:00'); /* Undead Miner */
/* @teleloc 0x01C90165 [63.725700 -46.175098 -29.945000] 0.998207 0.000000 0.000000 -0.059851 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9015,  1154, 0x01C90165, 60.3436, -50.0192, -29.9878, 0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Linkable Monster Generator */
/* @teleloc 0x01C90165 [60.343601 -50.019199 -29.987801] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x701C9015, 0x701C9013, '2005-02-09 10:00:00') /* Undead Miner (1524) */
     , (0x701C9015, 0x701C9014, '2005-02-09 10:00:00') /* Undead Miner (1524) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9016,  1524, 0x01C90184, 30.0136, -100.023, -23.9925, 0.992612, 0, 0, -0.121328,  True, '2005-02-09 10:00:00'); /* Undead Miner */
/* @teleloc 0x01C90184 [30.013599 -100.023003 -23.992500] 0.992612 0.000000 0.000000 -0.121328 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9017,  1154, 0x01C90184, 29.1709, -100.743, -24, -0.879025, 0, 0, -0.476775, False, '2005-02-09 10:00:00'); /* Linkable Monster Generator */
/* @teleloc 0x01C90184 [29.170900 -100.742996 -24.000000] -0.879025 0.000000 0.000000 -0.476775 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x701C9017, 0x701C9016, '2005-02-09 10:00:00') /* Undead Miner (1524) */
     , (0x701C9017, 0x701C9018, '2005-02-09 10:00:00') /* Undead Miner (1524) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9018,  1524, 0x01C90187, 29.9636, -95.5291, -23.95, 0.398949, 0, 0, -0.916973,  True, '2005-02-09 10:00:00'); /* Undead Miner */
/* @teleloc 0x01C90187 [29.963600 -95.529099 -23.950001] 0.398949 0.000000 0.000000 -0.916973 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9019,   422, 0x01C901B7, 80.8367, -99.5223, -24, 0.276476, 0, 0, -0.961021, False, '2005-02-09 10:00:00'); /* Item Shield Generator */
/* @teleloc 0x01C901B7 [80.836700 -99.522301 -24.000000] 0.276476 0.000000 0.000000 -0.961021 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C901A,   419, 0x01C901B7, 79.9582, -98.5506, -24, 0, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Item Clothing Generator */
/* @teleloc 0x01C901B7 [79.958199 -98.550598 -24.000000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C901E,  1524, 0x01C901D1, 62.7258, -79.8553, -5.9925, 0.707107, 0, 0, -0.707107,  True, '2005-02-09 10:00:00'); /* Undead Miner */
/* @teleloc 0x01C901D1 [62.725800 -79.855301 -5.992500] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C901F,  1154, 0x01C901D1, 60, -80, -6, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Linkable Monster Generator */
/* @teleloc 0x01C901D1 [60.000000 -80.000000 -6.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x701C901F, 0x701C901E, '2005-02-09 10:00:00') /* Undead Miner (1524) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9020,  1296, 0x01C901D3, 60, -119.022, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x01C901D3 [60.000000 -119.022003 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9021,   911, 0x01C901D4, 61.7723, -130.078, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Lich Generator */
/* @teleloc 0x01C901D4 [61.772301 -130.078003 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9022,   568, 0x01C901D6, 60, -125.25, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x01C901D6 [60.000000 -125.250000 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C902A,   171, 0x01C901F0, 123.63, -6.71824, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Vat */
/* @teleloc 0x01C901F0 [123.629997 -6.718240 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9035,  1297, 0x01C90204, 140, -85.25, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x01C90204 [140.000000 -85.250000 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9036,   890, 0x01C90205, 142.059, -102.42, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Banderling Raver Generator */
/* @teleloc 0x01C90205 [142.059006 -102.419998 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9037,   890, 0x01C90205, 138.336, -101.072, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Banderling Raver Generator */
/* @teleloc 0x01C90205 [138.335999 -101.071999 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9038,   568, 0x01C90207, 140, -95.25, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x01C90207 [140.000000 -95.250000 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9039,   951, 0x01C90212, 150, -80, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Banderling Guard Generator */
/* @teleloc 0x01C90212 [150.000000 -80.000000 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C903A,  1459, 0x01C90213, 152.595, -88.6069, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Food Stamina Gen */
/* @teleloc 0x01C90213 [152.595001 -88.606903 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C903B,  1459, 0x01C90213, 147.313, -88.1321, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Food Stamina Gen */
/* @teleloc 0x01C90213 [147.313004 -88.132103 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C903C,  1459, 0x01C90213, 150.037, -90.3582, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Food Stamina Gen */
/* @teleloc 0x01C90213 [150.037003 -90.358200 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C903D,   568, 0x01C90215, 150, -85.25, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x01C90215 [150.000000 -85.250000 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C903E,   889, 0x01C90216, 159.046, 1.05984, -6, 0.660985, 0, 0, -0.7504, False, '2005-02-09 10:00:00'); /* Banderling Generator */
/* @teleloc 0x01C90216 [159.046005 1.059840 -6.000000] 0.660985 0.000000 0.000000 -0.750400 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C903F,  1479, 0x01C90216, 163.159, 2.39948, -6, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Banderling Food Generator */
/* @teleloc 0x01C90216 [163.158997 2.399480 -6.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9040,  1460, 0x01C90216, 156.892, -0.506393, -6, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Food Heal Gen */
/* @teleloc 0x01C90216 [156.891998 -0.506393 -6.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9041,   420, 0x01C90216, 156.883, 1.1591, -6, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Item Food Generator */
/* @teleloc 0x01C90216 [156.882996 1.159100 -6.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9042,   951, 0x01C90216, 164.128, -2.4184, -6, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Banderling Guard Generator */
/* @teleloc 0x01C90216 [164.128006 -2.418400 -6.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9043,  4021, 0x01C90216, 156.988, -2.25576, -6, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Valuable Alu. Warrior Generator */
/* @teleloc 0x01C90216 [156.988007 -2.255760 -6.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9044,   951, 0x01C9021F, 168.591, -20.515, -6, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Banderling Guard Generator */
/* @teleloc 0x01C9021F [168.591003 -20.514999 -6.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9045,   952, 0x01C90223, 171.431, -79.0236, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Banderling Raider Generator */
/* @teleloc 0x01C90223 [171.431000 -79.023598 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9046,   952, 0x01C90223, 168.074, -78.0338, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Banderling Raider Generator */
/* @teleloc 0x01C90223 [168.074005 -78.033798 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9047,  1037, 0x01C90223, 172.421, -82.6735, -6, 1, 0, 0, 0, False, '2005-02-09 10:00:00'); /* Item Sword Generator */
/* @teleloc 0x01C90223 [172.421005 -82.673500 -6.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9048,   951, 0x01C90227, 180.061, -18.3637, -6, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Banderling Guard Generator */
/* @teleloc 0x01C90227 [180.061005 -18.363701 -6.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9049,   419, 0x01C90228, 175.977, -29.2953, -6, -0.707107, 0, 0, -0.707107, False, '2005-02-09 10:00:00'); /* Item Clothing Generator */
/* @teleloc 0x01C90228 [175.977005 -29.295300 -6.000000] -0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C904B,   568, 0x01C90233, 80, -24.75, 0, 0, 0, 0, -1, False, '2005-02-09 10:00:00'); /* Door */
/* @teleloc 0x01C90233 [80.000000 -24.750000 0.000000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C950F, 24579, 0x01C901D1, 58.397, -80.08, -5.995, 0.69667, 0, 0, -0.717392, False, '2019-07-27 14:14:00'); /* Candeth Keep Portal */
/* @teleloc 0x01C901D1 [58.396999 -80.080002 -5.995000] 0.696670 0.000000 0.000000 -0.717392 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9510,  8497, 0x01C90231, 79.8031, -19.0138, -0.063, 0.012472, 0, 0, 0.999922, False, '2020-05-31 12:07:04'); /* Jungle Shadows */
/* @teleloc 0x01C90231 [79.803101 -19.013800 -0.063000] 0.012472 0.000000 0.000000 0.999922 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9511, 87951, 0x01C9023A, 93.5164, -35.5367, -0.063, 0.925153, 0, 0, -0.379595, False, '2022-06-07 11:23:59'); /* Graveyard */
/* @teleloc 0x01C9023A [93.516403 -35.536701 -0.063000] 0.925153 0.000000 0.000000 -0.379595 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9514, 35293, 0x01C90239, 88.0912, -31.8474, 0.055, 0.92983, 0, 0, -0.36799, False, '2022-06-07 11:33:50'); /* Asheron's Castle */
/* @teleloc 0x01C90239 [88.091202 -31.847401 0.055000] 0.929830 0.000000 0.000000 -0.367990 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9517,  1102, 0x01C90239, 85.4226, -28.4445, -0.063, 0.906502, 0, 0, -0.422201, False, '2022-06-07 11:35:01'); /* Bandit Castle Portal */
/* @teleloc 0x01C90239 [85.422600 -28.444500 -0.063000] 0.906502 0.000000 0.000000 -0.422201 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9519, 30058, 0x01C9023B, 85.4326, -52.3097, -0.063, 0.346715, 0, 0, -0.937971, False, '2022-06-07 11:40:50'); /* Augmentation Realm Main Level */
/* @teleloc 0x01C9023B [85.432602 -52.309700 -0.063000] 0.346715 0.000000 0.000000 -0.937971 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C951A, 5000348, 0x01C9022D, 66.357, -30.2835, -0.063, -0.699083, 0, 0, -0.71504, False, '2022-06-07 11:48:33'); /* Withered */
/* @teleloc 0x01C9022D [66.357002 -30.283501 -0.063000] -0.699083 0.000000 0.000000 -0.715040 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C951C, 10796, 0x01C9022E, 66.357, -40.3195, -0.063, -0.719565, 0, 0, -0.694425, False, '2022-06-07 11:49:19'); /* Singularity Bore */
/* @teleloc 0x01C9022E [66.357002 -40.319500 -0.063000] -0.719565 0.000000 0.000000 -0.694425 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C951D, 30971, 0x01C9022F, 67.4178, -45.2922, -0.063, -0.509269, 0, 0, -0.860607, False, '2022-06-07 11:50:01'); /* Path of the Blind */
/* @teleloc 0x01C9022F [67.417801 -45.292198 -0.063000] -0.509269 0.000000 0.000000 -0.860607 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C951E, 28808, 0x01C90236, 75.8481, -52.5956, -0.063, -0.098593, 0, 0, -0.995128, False, '2022-06-07 11:50:41'); /* Insatiable Vault */
/* @teleloc 0x01C90236 [75.848099 -52.595600 -0.063000] -0.098593 0.000000 0.000000 -0.995128 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C951F, 31315, 0x01C9022F, 71.0824, -49.1633, -0.063, -0.376519, 0, 0, -0.926409, False, '2022-06-07 11:51:01'); /* Creepy Canyons */
/* @teleloc 0x01C9022F [71.082397 -49.163300 -0.063000] -0.376519 0.000000 0.000000 -0.926409 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9521, 300022, 0x01C9013D, 94.5135, -154.495, -41.995, 0.726025, 0, 0, 0.687668, False, '2022-06-07 12:35:02'); /* Milena the Captive */
/* @teleloc 0x01C9013D [94.513496 -154.494995 -41.994999] 0.726025 0.000000 0.000000 0.687668 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9523, 800001, 0x01C90115, 90.1914, -201.822, -71.945, 0.702352, 0, 0, 0.71183, False, '2022-06-07 12:36:08'); /* Lich Camp Generator */
/* @teleloc 0x01C90115 [90.191399 -201.822006 -71.945000] 0.702352 0.000000 0.000000 0.711830 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9527, 800001, 0x01C90112, 90.2808, -167.492, -71.945, 0.714167, 0, 0, -0.699975, False, '2022-06-07 12:36:17'); /* Lich Camp Generator */
/* @teleloc 0x01C90112 [90.280800 -167.492004 -71.945000] 0.714167 0.000000 0.000000 -0.699975 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9528, 800001, 0x01C9011B, 97.064, -169.801, -71.945, 0.440982, 0, 0, -0.897516, False, '2022-06-07 12:36:19'); /* Lich Camp Generator */
/* @teleloc 0x01C9011B [97.064003 -169.800995 -71.945000] 0.440982 0.000000 0.000000 -0.897516 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9533, 800001, 0x01C9010B, 78.4087, -190.66, -71.945, -0.999311, 0, 0, 0.037104, False, '2022-06-07 12:37:53'); /* Lich Camp Generator */
/* @teleloc 0x01C9010B [78.408699 -190.660004 -71.945000] -0.999311 0.000000 0.000000 0.037104 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9534, 800001, 0x01C9010A, 78.4269, -180.361, -71.945, -0.999022, 0, 0, -0.044214, False, '2022-06-07 12:37:55'); /* Lich Camp Generator */
/* @teleloc 0x01C9010A [78.426903 -180.360992 -71.945000] -0.999022 0.000000 0.000000 -0.044214 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9535, 800001, 0x01C9011C, 102.33, -180.443, -71.945, 0.001198, 0, 0, 0.999999, False, '2022-06-07 12:38:00'); /* Lich Camp Generator */
/* @teleloc 0x01C9011C [102.330002 -180.442993 -71.945000] 0.001198 0.000000 0.000000 0.999999 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9536, 800001, 0x01C9011D, 102.127, -189.507, -71.945, -0.054236, 0, 0, 0.998528, False, '2022-06-07 12:38:02'); /* Lich Camp Generator */
/* @teleloc 0x01C9011D [102.126999 -189.507004 -71.945000] -0.054236 0.000000 0.000000 0.998528 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9537, 800001, 0x01C90114, 94.1979, -191.936, -71.945, 0.689181, 0, 0, 0.724589, False, '2022-06-07 12:38:09'); /* Lich Camp Generator */
/* @teleloc 0x01C90114 [94.197899 -191.936005 -71.945000] 0.689181 0.000000 0.000000 0.724589 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9538, 800001, 0x01C90114, 85.9386, -192.35, -71.945, 0.741537, 0, 0, 0.670912, False, '2022-06-07 12:38:10'); /* Lich Camp Generator */
/* @teleloc 0x01C90114 [85.938599 -192.350006 -71.945000] 0.741537 0.000000 0.000000 0.670912 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9539, 800001, 0x01C90112, 85.814, -174.759, -71.945, 0.697994, 0, 0, -0.716103, False, '2022-06-07 12:38:14'); /* Lich Camp Generator */
/* @teleloc 0x01C90112 [85.814003 -174.759003 -71.945000] 0.697994 0.000000 0.000000 -0.716103 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C953A, 800001, 0x01C9011C, 95.2788, -175.001, -71.945, 0.697994, 0, 0, -0.716103, False, '2022-06-07 12:38:16'); /* Lich Camp Generator */
/* @teleloc 0x01C9011C [95.278801 -175.001007 -71.945000] 0.697994 0.000000 0.000000 -0.716103 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C953C, 22615, 0x01C90237, 80.1103, -55.8116, 0.0475, -0.017064, 0, 0, -0.999854, False, '2022-06-09 15:02:10'); /* Portcullis */
/* @teleloc 0x01C90237 [80.110298 -55.811600 0.047500] -0.017064 0.000000 0.000000 -0.999854 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C953E, 24579, 0x01C90234, 75.114, -26.357, -0.063, 0.999826, 0, 0, -0.0186689, False, '2022-06-11 14:35:07'); /* Candeth Keep Portal */
/* @teleloc 0x01C90234 [75.113998 -26.357000 -0.063000] 0.999826 0.000000 0.000000 -0.018669 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C953F, 22011, 0x01C9022D, 69.6127, -26.357, -0.063, 0.063621, 0, 0, -0.997974, False, '2022-06-17 14:27:32'); /* Olthoi Arcade */
/* @teleloc 0x01C9022D [69.612701 -26.357000 -0.063000] 0.063621 0.000000 0.000000 -0.997974 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9540, 800159, 0x01C90235, 76.7738, -40.3678, 0.00825, 0.999845, 0, 0, 0.0175796, False, '2022-06-18 21:18:55'); /* Guardian of Carnage */
/* @teleloc 0x01C90235 [76.773804 -40.367802 0.008250] 0.999845 0.000000 0.000000 0.017580 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9542,   509, 0x01C90235, 79.8564, -40.174, 0, -0.172014, 0, 0, -0.985094, False, '2022-09-12 05:36:20'); /* Life Stone */
/* @teleloc 0x01C90235 [79.856400 -40.174000 0.000000] -0.172014 0.000000 0.000000 -0.985094 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9555,  7608, 0x01C901E3, 89.9431, -76.6499, -6.063, 0.999567, 0, 0, -0.0294271, False, '2023-01-31 18:27:19'); /* Lugian Mines Portal */
/* @teleloc 0x01C901E3 [89.943100 -76.649902 -6.063000] 0.999567 0.000000 0.000000 -0.029427 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9556,  7941, 0x01C901E3, 93.643, -79.5563, -6.063, 0.702472, 0, 0, -0.711711, False, '2023-01-31 18:27:32'); /* Fenmalain Vestibule Portal */
/* @teleloc 0x01C901E3 [93.642998 -79.556297 -6.063000] 0.702472 0.000000 0.000000 -0.711711 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9557,  7291, 0x01C901E9, 98.3852, -83.5339, -6.063, 0.915193, 0, 0, 0.403016, False, '2023-01-31 18:27:49'); /* Halls of Metos */
/* @teleloc 0x01C901E9 [98.385201 -83.533897 -6.063000] 0.915193 0.000000 0.000000 0.403016 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9558, 42174, 0x01C901E9, 103.114, -78.4208, -6.0504, 0.915193, 0, 0, 0.403016, False, '2023-01-31 18:27:58'); /* Tumerok Camps */
/* @teleloc 0x01C901E9 [103.113998 -78.420799 -6.050400] 0.915193 0.000000 0.000000 0.403016 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C955C, 802191, 0x01C9023A, 91.9752, -44.7702, -0.063, 0.498888, 0, 0, -0.866666, False, '2023-03-16 10:00:05'); /* Egg Orchards */
/* @teleloc 0x01C9023A [91.975197 -44.770199 -0.063000] 0.498888 0.000000 0.000000 -0.866666 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C955E, 802350, 0x01C90235, 79.7508, -40.1167, 0.055, 0.346961, 0, 0, -0.93788, False, '2023-04-08 06:22:12'); /* ColoredEggGen */
/* @teleloc 0x01C90235 [79.750801 -40.116699 0.055000] 0.346961 0.000000 0.000000 -0.937880 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C955F, 30660, 0x01C901F9, 123.643, -87.1917, -6.063, 0.663192, 0, 0, -0.748449, False, '2023-05-23 07:48:39'); /* War Room */
/* @teleloc 0x01C901F9 [123.642998 -87.191704 -6.063000] 0.663192 0.000000 0.000000 -0.748449 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9560,  4203, 0x01C901F8, 120.862, -82.7809, -6.063, 0.927465, 0, 0, -0.37391, False, '2023-05-23 07:48:47'); /* Walled Portals */
/* @teleloc 0x01C901F8 [120.862000 -82.780899 -6.063000] 0.927465 0.000000 0.000000 -0.373910 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9561,  1119, 0x01C901F8, 116.485, -78.4038, -6.063, 0.927465, 0, 0, -0.37391, False, '2023-05-23 07:48:55'); /* Accursed Halls Portal */
/* @teleloc 0x01C901F8 [116.485001 -78.403801 -6.063000] 0.927465 0.000000 0.000000 -0.373910 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9562,  4147, 0x01C901EE, 113.643, -71.8886, -6.063, 0.678718, 0, 0, -0.734399, False, '2023-05-25 07:19:16'); /* Ridge Tower */
/* @teleloc 0x01C901EE [113.642998 -71.888603 -6.063000] 0.678718 0.000000 0.000000 -0.734399 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9563,  1087, 0x01C901EE, 113.643, -66.7513, -6.063, 0.696864, 0, 0, -0.717203, False, '2023-05-25 07:19:25'); /* Outside Accursed Halls Portal */
/* @teleloc 0x01C901EE [113.642998 -66.751297 -6.063000] 0.696864 0.000000 0.000000 -0.717203 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9564, 28823, 0x01C9022E, 66.357, -35.2206, -0.063, -0.722555, 0, 0, -0.691313, False, '2023-10-01 16:10:55'); /* Abayar's Study */
/* @teleloc 0x01C9022E [66.357002 -35.220600 -0.063000] -0.722555 0.000000 0.000000 -0.691313 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9565, 34508, 0x01C901F1, 119.677, -22.8213, -5.945, 0.999646, 0, 0, -0.0265975, False, '2023-10-14 06:21:01'); /* The Colosseum */
/* @teleloc 0x01C901F1 [119.677002 -22.821301 -5.945000] 0.999646 0.000000 0.000000 -0.026597 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9566, 803302, 0x01C901EF, 110.266, -83.9144, -6.0504, 0.0184381, 0, 0, -0.99983, False, '2024-02-02 23:53:24'); /* Tusker Haven */
/* @teleloc 0x01C901EF [110.265999 -83.914398 -6.050400] 0.018438 0.000000 0.000000 -0.999830 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9567, 22615, 0x01C901FA, 133.657, -39.8676, -5.9525, 0.707107, 0, 0, -0.707107, False, '2024-04-12 22:25:48'); /* Portcullis */
/* @teleloc 0x01C901FA [133.656998 -39.867599 -5.952500] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x701C9568, 803484, 0x01C901FE, 130.186, -72.8363, -6.063, 0.0130784, 0, 0, -0.999914, False, '2024-04-12 22:27:45'); /* Elemental Planes */
/* @teleloc 0x01C901FE [130.186005 -72.836304 -6.063000] 0.013078 0.000000 0.000000 -0.999914 */
