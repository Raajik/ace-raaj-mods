DELETE FROM `weenie` WHERE `class_Id` = 801902;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801902, 'Arramora Fort Guard', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801902,   1,         16) /* ItemType - Creature */
     , (801902,   2,         51) /* CreatureType - Empyrean */
     , (801902,   6,         -1) /* ItemsCapacity */
     , (801902,   7,         -1) /* ContainersCapacity */
     , (801902,  16,         32) /* ItemUseable - Remote */
     , (801902,  25,        710) /* Level */
     , (801902,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801902,  95,          8) /* RadarBlipColor - Yellow */
     , (801902, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801902, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801902,   1, True ) /* Stuck */
     , (801902,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801902,  39,     1.2) /* DefaultScale */
     , (801902,  54,       3) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801902,   1, 'Arramora Fort Guard') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801902,   1,   33557117) /* Setup */
     , (801902,   2,  150994954) /* MotionTable */
     , (801902,   3,  536870931) /* SoundTable */
     , (801902,   4,  805306380) /* CombatTable */
     , (801902,   6,   67113280) /* PaletteBase */
     , (801902,   7,  268436193) /* ClothingBase */
     , (801902,   8,  100671756) /* Icon */
     , (801902,  22,  872415270) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801902,   1, 400, 0, 0) /* Strength */
     , (801902,   2, 610, 0, 0) /* Endurance */
     , (801902,   3, 100, 0, 0) /* Quickness */
     , (801902,   4, 300, 0, 0) /* Coordination */
     , (801902,   5, 500, 0, 0) /* Focus */
     , (801902,   6, 600, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801902,   1,   495, 0, 0, 800) /* MaxHealth */
     , (801902,   3,   390, 0, 0, 1000) /* MaxStamina */
     , (801902,   5,  4400, 0, 0, 5000) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801902,  7 /* Use */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Hello, brave warrior.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
