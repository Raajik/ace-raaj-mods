DELETE FROM `weenie` WHERE `class_Id` = 800497;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800497, 'Guardian of New Vhorma', 10, '2023-02-19 11:35:44') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800497,   1,         16) /* ItemType - Creature */
     , (800497,   6,         -1) /* ItemsCapacity */
     , (800497,   7,         -1) /* ContainersCapacity */
     , (800497,  16,         32) /* ItemUseable - Remote */
     , (800497,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (800497,  95,          8) /* RadarBlipColor - Yellow */
     , (800497, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800497,   1, True ) /* Stuck */
     , (800497,   8, True ) /* AllowGive */
     , (800497,  11, True ) /* IgnoreCollisions */
     , (800497,  12, True ) /* ReportCollisions */
     , (800497,  13, False) /* Ethereal */
     , (800497,  14, True ) /* GravityStatus */
     , (800497,  19, False) /* Attackable */
     , (800497,  41, True ) /* ReportCollisionsAsEnvironment */
     , (800497,  52, True ) /* AiImmobile */
     , (800497,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (800497,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800497,  39,     1.6) /* DefaultScale */
     , (800497,  54,     0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800497,   1, 'Guardian of New Vhorma') /* Name */
     , (800497,  14, 'This statues use remains a mystery.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800497,   1, 0x020016C9) /* Setup */
     , (800497,   2, 0x090000E6) /* MotionTable */
     , (800497,   3, 0x2000008C) /* SoundTable */
     , (800497,   7, 0x100006C4) /* ClothingBase */
     , (800497,   8, 0x06002B2E) /* Icon */
     , (800497,  31,     800496) /* LinkedPortalOne - New Vhorma */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800497, 6 /* Give */, 1, 800426, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have been granted passage to New Vhorma. You may use the portal in Adventurer''s Haven if you need to get back.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 22 /* StampQuest */, 0, 1, NULL, 'AccessToNewVhorma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 99 /* TeleportTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xF1DA0033 /* 0xF1DA0033 [163.562 70.9545 0.005] -0.76653 0 0 0.642208 */, 163.562, 70.9545, 0.005, -0.76653, 0, 0, 0.642208);
