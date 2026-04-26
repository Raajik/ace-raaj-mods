DELETE FROM `weenie` WHERE `class_Id` = 802602;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802602, 'AHLifestone', 25, '2024-05-17 05:41:50') /* LifeStone */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802602,   1,  268435456) /* ItemType - LifeStone */
     , (802602,   3,         83) /* PaletteTemplate - Amber */
     , (802602,  16,         32) /* ItemUseable - Remote */
     , (802602,  93,       1040) /* PhysicsState - IgnoreCollisions, Gravity */
     , (802602, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802602,   1, True ) /* Stuck */
     , (802602,  12, False) /* ReportCollisions */
     , (802602,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802602,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802602,   1, 'Adventurer''s Haven Lifestone') /* Name */
     , (802602,  14, 'Use this item to set your resurrection point.') /* Use */
     , (802602,  18, 'You have attuned your spirit to this Lifestone. You will resurrect here after you die.') /* UseMessage */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802602,   1, 0x020004B6) /* Setup */
     , (802602,   2, 0x09000070) /* MotionTable */
     , (802602,   3, 0x20000034) /* SoundTable */
     , (802602,   6, 0x04000BEF) /* PaletteBase */
     , (802602,   7, 0x10000113) /* ClothingBase */
     , (802602,   8, 0x060019B1) /* Icon */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802602, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have decided to entrust this Lifestone as your sanctuary of choice. This lifestone stands empowered with the Essence of Tichun, a once great warrior.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 63 /* SetSanctuaryPosition */, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x01AC011F /* 0x01AC011F [42.269848 -19.976442 0.005] 0.705322 0 0 -0.708887 */, 42.269848, -19.976442, 0.005, 0.705322, 0, 0, -0.708887);

