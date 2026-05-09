DELETE FROM `weenie` WHERE `class_Id` = 803114;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803114, 'AllTheSnow', 10, '2023-12-14 11:44:24') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803114,   1,        128) /* ItemType - Creature */
     , (803114,   5,        400) /* EncumbranceVal */
     , (803114,   6,         -1) /* ItemsCapacity */
     , (803114,   7,         -1) /* ContainersCapacity */
     , (803114,  16,          0) /* ItemUseable - Remote */
     , (803114,  19,          0) /* Value */
     , (803114,  93,       1044) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803114,   1, True ) /* Stuck */
     , (803114,  11, True ) /* IgnoreCollisions */
     , (803114,  12, True ) /* ReportCollisions */
     , (803114,  14, True ) /* GravityStatus */
     , (803114,  19, False) /* Attackable */
     , (803114,  41, True ) /* ReportCollisionsAsEnvironment */
     , (803114,  42, True ) /* AllowEdgeSlide */
     , (803114,  52, True ) /* AiImmobile */
     , (803114,  79, True ) /* AiAcceptEverything */
     , (803114,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (803114,  83, True ) /* NpcLooksLikeObject */
     , (803114, 118, True ) /* NeverAttack */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803114,  1,       30) /* Heartbeat */
     , (803114,  39,     1.4) /* DefaultScale */
     , (803114,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803114,   1, 'Snow Pyre') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803114,   1, 0x02001660) /* Setup */
     , (803114,   2, 0x090001BA) /* MotionTable */
     , (803114,   8, 0x0600371A) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803114,   1,  10, 0, 0) /* Strength */
     , (803114,   2,  10, 0, 0) /* Endurance */
     , (803114,   3,  10, 0, 0) /* Quickness */
     , (803114,   4,  10, 0, 0) /* Coordination */
     , (803114,   5,  10, 0, 0) /* Focus */
     , (803114,   6,  10, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803114,   1,     0, 0, 0,    0) /* MaxHealth */
     , (803114,   3,     0, 0, 0,    0) /* MaxStamina */
     , (803114,   5,     0, 0, 0,    0) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803114, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

