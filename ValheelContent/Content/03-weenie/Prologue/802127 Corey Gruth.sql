DELETE FROM `weenie` WHERE `class_Id` = 802127;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802127, 'Corey Gruth', 10, '2023-03-09 02:43:58') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802127,   1,         16) /* ItemType - Creature */
     , (802127,   2,         31) /* CreatureType - Human */
     , (802127,   6,         -1) /* ItemsCapacity */
     , (802127,   7,         -1) /* ContainersCapacity */
     , (802127,   8,        120) /* Mass */
     , (802127,  16,         32) /* ItemUseable - Remote */
     , (802127,  25,        275) /* Level */
     , (802127,  27,          0) /* ArmorType - None */
     , (802127,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (802127,  95,          8) /* RadarBlipColor - Yellow */
     , (802127, 113,          2) /* Gender */
     , (802127, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802127, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802127, 146,      17763) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802127,   1, True ) /* Stuck */
     , (802127,   8, False) /* AllowGive */
     , (802127,  12, True ) /* ReportCollisions */
     , (802127,  13, False) /* Ethereal */
     , (802127,  19, False) /* Attackable */
     , (802127,  41, True ) /* ReportCollisionsAsEnvironment */
     , (802127,  42, True ) /* AllowEdgeSlide */
     , (802127,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802127,   1,       5) /* HeartbeatInterval */
     , (802127,   2,       0) /* HeartbeatTimestamp */
     , (802127,   3,    0.16) /* HealthRate */
     , (802127,   4,       5) /* StaminaRate */
     , (802127,   5,       1) /* ManaRate */
     , (802127,  11,     300) /* ResetInterval */
     , (802127,  12,     0.5) /* Shade */
     , (802127,  13,     0.9) /* ArmorModVsSlash */
     , (802127,  14,       1) /* ArmorModVsPierce */
     , (802127,  15,     1.1) /* ArmorModVsBludgeon */
     , (802127,  16,     0.4) /* ArmorModVsCold */
     , (802127,  17,     0.4) /* ArmorModVsFire */
     , (802127,  18,       1) /* ArmorModVsAcid */
     , (802127,  19,     0.6) /* ArmorModVsElectric */
     , (802127,  54,       3) /* UseRadius */
     , (802127,  64,       1) /* ResistSlash */
     , (802127,  65,       1) /* ResistPierce */
     , (802127,  66,       1) /* ResistBludgeon */
     , (802127,  67,       1) /* ResistFire */
     , (802127,  68,       1) /* ResistCold */
     , (802127,  69,       1) /* ResistAcid */
     , (802127,  70,       1) /* ResistElectric */
     , (802127,  71,       1) /* ResistHealthBoost */
     , (802127,  72,       1) /* ResistStaminaDrain */
     , (802127,  73,       1) /* ResistStaminaBoost */
     , (802127,  74,       1) /* ResistManaDrain */
     , (802127,  75,       1) /* ResistManaBoost */
     , (802127, 104,      10) /* ObviousRadarRange */
     , (802127, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802127,   1, 'Corey Gruth') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802127,   1, 0x02000001) /* Setup */
     , (802127,   2, 0x09000001) /* MotionTable */
     , (802127,   3, 0x20000001) /* SoundTable */
     , (802127,   4, 0x30000000) /* CombatTable */
     , (802127,   8, 0x06001036) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802127,   1, 500, 0, 0) /* Strength */
     , (802127,   2, 460, 0, 0) /* Endurance */
     , (802127,   3, 450, 0, 0) /* Quickness */
     , (802127,   4, 520, 0, 0) /* Coordination */
     , (802127,   5, 350, 0, 0) /* Focus */
     , (802127,   6, 370, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802127,   1,   500, 0, 0,  730) /* MaxHealth */
     , (802127,   3,   500, 0, 0,  960) /* MaxStamina */
     , (802127,   5,   540, 0, 0,  910) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802127, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 21 /* InqQuest */, 0, 1, NULL, 'CoreyDone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802127, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'CoreyDone', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'You are a strong warrior, keep it up!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802127, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'CoreyDone', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 21 /* InqQuest */, 0, 1, NULL, 'ObsidianDone2@2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802127, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'ObsidianDone2@2', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Welcome to Holtburg. Your journey to level 275 will be a tough one, but we can help.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 10 /* Tell */, 2, 1, NULL, 'Head down the hill and speak to Pete Brighteyes to start the next step of your journey.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 22 /* StampQuest */, 0, 1, NULL, 'CoreyDone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802127, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'ObsidianDone2@2', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'You need to complete the quests on Obsidian Bridge to continue.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802127, 2,  2587,  0,14,    1, False) /* Create Shirt (2587) for Wield */
     , (802127, 2,  2601,  0,14,    1, False) /* Create Pants (2601) for Wield */
     , (802127, 2, 33950,  0,80,    1, False) /* Create Enhanced Robe of the Tundra (33950) for Wield */;

