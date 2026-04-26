DELETE FROM `weenie` WHERE `class_Id` = 300182;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300182, 'newvhormalifestone', 25, '2024-05-17 05:46:49') /* LifeStone */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300182,   1,  268435456) /* ItemType - LifeStone */
     , (300182,  16,         32) /* ItemUseable - Remote */
     , (300182,  93,         16) /* PhysicsState - IgnoreCollisions, Gravity */
     , (300182, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300182,   1, True ) /* Stuck */
     , (300182,  12, True ) /* ReportCollisions */
     , (300182,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300182,  39,     2.6) /* DefaultScale */
     , (300182,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300182,   1, 'New Vhorma Lifestone') /* Name */
     , (300182,  14, 'Use this item to set your resurrection point.') /* Use */
     , (300182,  18, 'You have attuned your spirit to this Lifestone. You will resurrect here after you die.') /* UseMessage */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300182,   1, 0x020008FC) /* Setup */
     , (300182,   2, 0x090000A3) /* MotionTable */
     , (300182,   3, 0x20000059) /* SoundTable */
     , (300182,   8, 0x06003163) /* Icon */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (300182, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 63 /* SetSanctuaryPosition */, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xF2DA0003 /* 0xF2DA0003 [11.923505 49.92701 0.005] 0.07249 0 0 0.997369 */, 11.923505, 49.92701, 0.005, 0.07249, 0, 0, 0.997369);

