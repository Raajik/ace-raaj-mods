DELETE FROM `landblock_instance` WHERE `landblock` = 0xD699;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699000,   412, 0xD6990007, 3.22425, 152.64, 374.082, 0.707107, 0, 0, -0.707107, False, '2021-11-01 00:00:00'); /* Door */
/* @teleloc 0xD6990007 [3.224250 152.639999 374.082001] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699001, 42846, 0xD6990125, 12.7903, 130.7, 373.937, -0.92388, 0, 0, -0.382683, False, '2021-11-01 00:00:00'); /* Portal to Hebian-To */
/* @teleloc 0xD6990125 [12.790300 130.699997 373.937012] -0.923880 0.000000 0.000000 -0.382683 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699002,  1154, 0xD6990008, 1.5, 183, 374, 1, 0, 0, 0, False, '2021-11-01 00:00:00'); /* Linkable Monster Generator */
/* @teleloc 0xD6990008 [1.500000 183.000000 374.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance_link` (`parent_GUID`, `child_GUID`, `last_Modified`)
VALUES (0x7D699002, 0x7D699003, '2021-11-01 00:00:00') /* Armor Tinkering Warden of Enlightenment (32453) */
     , (0x7D699002, 0x7D699004, '2021-11-01 00:00:00') /* Assess Person Warden of Enlightenment (32442) */
     , (0x7D699002, 0x7D699005, '2021-11-01 00:00:00') /* Item Tinkering Warden of Enlightenment (32464) */
     , (0x7D699002, 0x7D699006, '2021-11-01 00:00:00') /* Jump Warden of Enlightenment (32466) */
     , (0x7D699002, 0x7D699007, '2021-11-01 00:00:00') /* Heavy Weapons Warden of Enlightenment (32446) */
     , (0x7D699002, 0x7D699008, '2021-11-01 00:00:00') /* Item Enchantment Warden of Enlightenment (32465) */
     , (0x7D699002, 0x7D699009, '2021-11-01 00:00:00') /* Healing Warden of Enlightenment (32463) */
     , (0x7D699002, 0x7D69900A, '2021-11-01 00:00:00') /* Fletching Warden of Enlightenment (32462) */
     , (0x7D699002, 0x7D69900B, '2021-11-01 00:00:00') /* Finesse Weapons Warden of Enlightenment (32460) */
     , (0x7D699002, 0x7D69900C, '2021-11-01 00:00:00') /* Dual Wield Warden of Enlightenment (45391) */
     , (0x7D699002, 0x7D69900D, '2021-11-01 00:00:00') /* Dirty Fighting Warden of Enlightenment (45390) */
     , (0x7D699002, 0x7D69900E, '2021-11-01 00:00:00') /* Cooking Warden of Enlightenment (32456) */
     , (0x7D699002, 0x7D69900F, '2021-11-01 00:00:00') /* Assess Creature Warden of Enlightenment (32457) */
     , (0x7D699002, 0x7D699010, '2021-11-01 00:00:00') /* Warden of Raising Coordination (44912) */
     , (0x7D699002, 0x7D699011, '2021-11-01 00:00:00') /* Deception Warden of Enlightenment (32461) */
     , (0x7D699002, 0x7D699012, '2021-11-01 00:00:00') /* Creature Enchantment Warden of Enlightenment (32458) */
     , (0x7D699002, 0x7D699013, '2021-11-01 00:00:00') /* Warden of Raising Endurance (44913) */
     , (0x7D699002, 0x7D699014, '2021-11-01 00:00:00') /* Warden of Raising Strength (44917) */
     , (0x7D699002, 0x7D699015, '2021-11-01 00:00:00') /* Warden of Lowering Self (44910) */
     , (0x7D699002, 0x7D699016, '2021-11-01 00:00:00') /* Warden of Lowering Focus (44908) */
     , (0x7D699002, 0x7D699017, '2021-11-01 00:00:00') /* Warden of Lowering Endurance (44919) */
     , (0x7D699002, 0x7D699018, '2021-11-01 00:00:00') /* Warden of Lowering Strength (44911) */
     , (0x7D699002, 0x7D699019, '2021-11-01 00:00:00') /* Warden of Lowering Quickness (44909) */
     , (0x7D699002, 0x7D69901A, '2021-11-01 00:00:00') /* Warden of Lowering Coordination (44918) */;

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699003, 32453, 0xD6990008, 1.5, 183, 374, 1, 0, 0, 0,  True, '2021-11-01 00:00:00'); /* Armor Tinkering Warden of Enlightenment */
/* @teleloc 0xD6990008 [1.500000 183.000000 374.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699004, 32442, 0xD6990008, 14.9, 174, 374, 0.707107, 0, 0, -0.707107,  True, '2021-11-01 00:00:00'); /* Assess Person Warden of Enlightenment */
/* @teleloc 0xD6990008 [14.900000 174.000000 374.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699005, 32464, 0xD6990006, 14.9, 139, 374, 0.707107, 0, 0, -0.707107,  True, '2021-11-01 00:00:00'); /* Item Tinkering Warden of Enlightenment */
/* @teleloc 0xD6990006 [14.900000 139.000000 374.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699006, 32466, 0xD6990006, 2.5, 129.027, 374, 0, 0, 0, -1,  True, '2021-11-01 00:00:00'); /* Jump Warden of Enlightenment */
/* @teleloc 0xD6990006 [2.500000 129.026993 374.000000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699007, 32446, 0xD6990006, 14.9, 142.5, 374, 0.707107, 0, 0, -0.707107,  True, '2021-11-01 00:00:00'); /* Heavy Weapons Warden of Enlightenment */
/* @teleloc 0xD6990006 [14.900000 142.500000 374.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699008, 32465, 0xD6990006, 5.5, 129, 374, 0, 0, 0, -1,  True, '2021-11-01 00:00:00'); /* Item Enchantment Warden of Enlightenment */
/* @teleloc 0xD6990006 [5.500000 129.000000 374.000000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699009, 32463, 0xD6990007, 14.9, 146, 374, 0.707107, 0, 0, -0.707107,  True, '2021-11-01 00:00:00'); /* Healing Warden of Enlightenment */
/* @teleloc 0xD6990007 [14.900000 146.000000 374.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D69900A, 32462, 0xD6990007, 14.9, 149.5, 374, 0.707107, 0, 0, -0.707107,  True, '2021-11-01 00:00:00'); /* Fletching Warden of Enlightenment */
/* @teleloc 0xD6990007 [14.900000 149.500000 374.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D69900B, 32460, 0xD6990007, 14.9, 153, 374, 0.707107, 0, 0, -0.707107,  True, '2021-11-01 00:00:00'); /* Finesse Weapons Warden of Enlightenment */
/* @teleloc 0xD6990007 [14.900000 153.000000 374.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D69900C, 45391, 0xD6990007, 14.9, 156.5, 374, 0.707107, 0, 0, -0.707107,  True, '2021-11-01 00:00:00'); /* Dual Wield Warden of Enlightenment */
/* @teleloc 0xD6990007 [14.900000 156.500000 374.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D69900D, 45390, 0xD6990007, 14.9, 160, 374, 0.707107, 0, 0, -0.707107,  True, '2021-11-01 00:00:00'); /* Dirty Fighting Warden of Enlightenment */
/* @teleloc 0xD6990007 [14.900000 160.000000 374.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D69900E, 32456, 0xD6990008, 14.9, 170.5, 374, 0.707107, 0, 0, -0.707107,  True, '2021-11-01 00:00:00'); /* Cooking Warden of Enlightenment */
/* @teleloc 0xD6990008 [14.900000 170.500000 374.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D69900F, 32457, 0xD6990008, 5.5, 183, 374, 1, 0, 0, 0,  True, '2021-11-01 00:00:00'); /* Assess Creature Warden of Enlightenment */
/* @teleloc 0xD6990008 [5.500000 183.000000 374.000000] 1.000000 0.000000 0.000000 0.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699010, 44912, 0xD6990008, 0.979768, 176.14, 374, 0.99986, 0, 0, 0.016734,  True, '2021-11-01 00:00:00'); /* Warden of Raising Coordination */
/* @teleloc 0xD6990008 [0.979768 176.139999 374.000000] 0.999860 0.000000 0.000000 0.016734 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699011, 32461, 0xD6990007, 14.9, 163.5, 374, 0.707107, 0, 0, -0.707107,  True, '2021-11-01 00:00:00'); /* Deception Warden of Enlightenment */
/* @teleloc 0xD6990007 [14.900000 163.500000 374.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699012, 32458, 0xD6990007, 14.9, 167, 374, 0.707107, 0, 0, -0.707107,  True, '2021-11-01 00:00:00'); /* Creature Enchantment Warden of Enlightenment */
/* @teleloc 0xD6990007 [14.900000 167.000000 374.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699013, 44913, 0xD6990008, 3.34752, 176.124, 374, 0.99986, 0, 0, 0.016734,  True, '2021-11-01 00:00:00'); /* Warden of Raising Endurance */
/* @teleloc 0xD6990008 [3.347520 176.123993 374.000000] 0.999860 0.000000 0.000000 0.016734 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699014, 44917, 0xD6990008, 5.68263, 176.201, 374, 0.999966, 0, 0, -0.008265,  True, '2021-11-01 00:00:00'); /* Warden of Raising Strength */
/* @teleloc 0xD6990008 [5.682630 176.201004 374.000000] 0.999966 0.000000 0.000000 -0.008265 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699015, 44910, 0xD6990007, 3.96713, 164.644, 374, 0, 0, 0, -1,  True, '2021-11-01 00:00:00'); /* Warden of Lowering Self */
/* @teleloc 0xD6990007 [3.967130 164.643997 374.000000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699016, 44908, 0xD6990007, 6.109, 164.795, 374, 0, 0, 0, -1,  True, '2021-11-01 00:00:00'); /* Warden of Lowering Focus */
/* @teleloc 0xD6990007 [6.109000 164.794998 374.000000] 0.000000 0.000000 0.000000 -1.000000 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699017, 44919, 0xD6990008, 8.385, 170.325, 374, 0.707107, 0, 0, -0.707107,  True, '2021-11-01 00:00:00'); /* Warden of Lowering Endurance */
/* @teleloc 0xD6990008 [8.385000 170.324997 374.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699018, 44911, 0xD6990008, 8.424, 172.906, 374, 0.707107, 0, 0, -0.707107,  True, '2021-11-01 00:00:00'); /* Warden of Lowering Strength */
/* @teleloc 0xD6990008 [8.424000 172.906006 374.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D699019, 44909, 0xD6990007, 7.98568, 165.56, 374, 0.461035, 0, 0, -0.887382,  True, '2021-11-01 00:00:00'); /* Warden of Lowering Quickness */
/* @teleloc 0xD6990007 [7.985680 165.559998 374.000000] 0.461035 0.000000 0.000000 -0.887382 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D69901A, 44918, 0xD6990007, 8.347, 167.776, 374, 0.707107, 0, 0, -0.707107,  True, '2021-11-01 00:00:00'); /* Warden of Lowering Coordination */
/* @teleloc 0xD6990007 [8.347000 167.776001 374.000000] 0.707107 0.000000 0.000000 -0.707107 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D69901B, 800117, 0xD6990006, 5.65526, 138.425, 374.005, -0.910631, 0, 0, -0.413222, False, '2023-05-28 12:19:53'); /* Riki the Luminance Dealer */
/* @teleloc 0xD6990006 [5.655260 138.425003 374.005005] -0.910631 0.000000 0.000000 -0.413222 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D69901C, 43398, 0xD6990007, 6.14851, 145.581, 374.006, -0.713729, 0, 0, -0.700422, False, '2023-05-28 12:20:00'); /* Nalicana */
/* @teleloc 0xD6990007 [6.148510 145.580994 374.006012] -0.713729 0.000000 0.000000 -0.700422 */

INSERT INTO `landblock_instance` (`guid`, `weenie_Class_Id`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`, `is_Link_Child`, `last_Modified`)
VALUES (0x7D69901D, 44950, 0xD6990008, 6.125362, 174.08908, 374.00626, -0.3872932, 0, 0, -0.9219566, False, '2023-09-10 17:36:38'); /* Chafulumisa */
/* @teleloc 0xD6990008 [6.125362 174.089081 374.006256] -0.387293 0.000000 0.000000 -0.921957 */
