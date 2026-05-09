DELETE FROM `weenie` WHERE `class_Id` = 801888;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801888, 'Merril', 10, '2023-01-14 02:28:36') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801888,   1,         16) /* ItemType - Creature */
     , (801888,   2,         31) /* CreatureType - Human */
     , (801888,   3,          9) /* PaletteTemplate - Grey */
     , (801888,   6,         -1) /* ItemsCapacity */
     , (801888,   7,         -1) /* ContainersCapacity */
     , (801888,   8,        120) /* Mass */
     , (801888,  16,         32) /* ItemUseable - Remote */
     , (801888,  25,        501) /* Level */
     , (801888,  27,          0) /* ArmorType - None */
     , (801888,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801888,  95,          8) /* RadarBlipColor - Yellow */
     , (801888, 113,          1) /* Gender - Male */
     , (801888, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801888, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801888, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801888,   1, True ) /* Stuck */
     , (801888,   8, True ) /* AllowGive */
     , (801888,  12, True ) /* ReportCollisions */
     , (801888,  13, False) /* Ethereal */
     , (801888,  19, False) /* Attackable */
     , (801888,  41, True ) /* ReportCollisionsAsEnvironment */
     , (801888,  42, True ) /* AllowEdgeSlide */
     , (801888,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801888,   3,    0.16) /* HealthRate */
     , (801888,   4,       5) /* StaminaRate */
     , (801888,   5,       1) /* ManaRate */
     , (801888,  12,       1) /* Shade */
     , (801888,  13,     0.9) /* ArmorModVsSlash */
     , (801888,  14,       1) /* ArmorModVsPierce */
     , (801888,  15,     1.1) /* ArmorModVsBludgeon */
     , (801888,  16,     0.4) /* ArmorModVsCold */
     , (801888,  17,     0.4) /* ArmorModVsFire */
     , (801888,  18,       1) /* ArmorModVsAcid */
     , (801888,  19,     0.6) /* ArmorModVsElectric */
     , (801888,  54,       3) /* UseRadius */
     , (801888,  64,       1) /* ResistSlash */
     , (801888,  65,       1) /* ResistPierce */
     , (801888,  66,       1) /* ResistBludgeon */
     , (801888,  67,       1) /* ResistFire */
     , (801888,  68,       1) /* ResistCold */
     , (801888,  69,       1) /* ResistAcid */
     , (801888,  70,       1) /* ResistElectric */
     , (801888,  71,       1) /* ResistHealthBoost */
     , (801888,  72,       1) /* ResistStaminaDrain */
     , (801888,  73,       1) /* ResistStaminaBoost */
     , (801888,  74,       1) /* ResistManaDrain */
     , (801888,  75,       1) /* ResistManaBoost */
     , (801888, 104,      10) /* ObviousRadarRange */
     , (801888, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801888,   1, 'Merril') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801888,   1, 0x02000001) /* Setup */
     , (801888,   2, 0x09000001) /* MotionTable */
     , (801888,   3, 0x20000001) /* SoundTable */
     , (801888,   4, 0x30000000) /* CombatTable */
     , (801888,   6, 0x0400007E) /* PaletteBase */
     , (801888,   8, 0x06000FF1) /* Icon */
     , (801888,  31,       4910) /* LinkedPortalOne - Mattekar Cave */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801888,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801888,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801888,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801888,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801888,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801888,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801888,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801888,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801888,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801888,   1,1000, 0, 0) /* Strength */
     , (801888,   2,1000, 0, 0) /* Endurance */
     , (801888,   3,1000, 0, 0) /* Quickness */
     , (801888,   4,1000, 0, 0) /* Coordination */
     , (801888,   5,1000, 0, 0) /* Focus */
     , (801888,   6,1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801888,   1,    10, 0, 0,100000) /* MaxHealth */
     , (801888,   3,    10, 0, 0,100000) /* MaxStamina */
     , (801888,   5,    10, 0, 0,100000) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801888, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'P10Daily@12-999999_4', NULL, 12, 999999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801888, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'P10Daily@12-999999_4', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +2500 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 31 /* EraseQuest */, 0, 1, NULL, 'P10Daily', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 10 /* Tell */, 0, 1, NULL, 'Well done friend! Enjoy your Reputation Bonus!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801888, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'P10Daily@12-999999_4', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Complete all of the Prestige Level 10 - 24 Kill Tasks.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801888, 2, 28046,  0,93,  0.7, False) /* Create Aerfalle's Supreme Pallium (28046) for Wield */
     , (801888, 2,    82,  0,88,  0.7, False) /* Create Platemail Leggings (82) for Wield */
     , (801888, 2,   107,  0,88,  0.7, False) /* Create Sollerets (107) for Wield */
     , (801888, 2,   127,  0,85,    0, False) /* Create Pants (127) for Wield */
     , (801888, 2,   130,  0,85,    0, False) /* Create Shirt (130) for Wield */;

