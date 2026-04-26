DELETE FROM `weenie` WHERE `class_Id` = 802181;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802181, 'Devon', 10, '2023-04-07 09:55:57') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802181,   1,         16) /* ItemType - Creature */
     , (802181,   2,         31) /* CreatureType - Human */
     , (802181,   6,         -1) /* ItemsCapacity */
     , (802181,   7,         -1) /* ContainersCapacity */
     , (802181,  16,         32) /* ItemUseable - Remote */
     , (802181,  25,        275) /* Level */
     , (802181,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (802181,  95,          8) /* RadarBlipColor - Yellow */
     , (802181, 113,          1) /* Gender - Male */
     , (802181, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802181, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802181, 146,          0) /* XpOverride */
     , (802181, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802181,   1, True ) /* Stuck */
     , (802181,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802181,   1,       5) /* HeartbeatInterval */
     , (802181,   2,       0) /* HeartbeatTimestamp */
     , (802181,   3,       2) /* HealthRate */
     , (802181,   4,       5) /* StaminaRate */
     , (802181,   5,       1) /* ManaRate */
     , (802181,  13,       1) /* ArmorModVsSlash */
     , (802181,  14,       1) /* ArmorModVsPierce */
     , (802181,  15,       1) /* ArmorModVsBludgeon */
     , (802181,  16,       1) /* ArmorModVsCold */
     , (802181,  17,       1) /* ArmorModVsFire */
     , (802181,  18,       1) /* ArmorModVsAcid */
     , (802181,  19,       1) /* ArmorModVsElectric */
     , (802181,  31,      18) /* VisualAwarenessRange */
     , (802181,  54,       3) /* UseRadius */
     , (802181,  64,       1) /* ResistSlash */
     , (802181,  65,       1) /* ResistPierce */
     , (802181,  66,       1) /* ResistBludgeon */
     , (802181,  67,       1) /* ResistFire */
     , (802181,  68,       1) /* ResistCold */
     , (802181,  69,       1) /* ResistAcid */
     , (802181,  70,       1) /* ResistElectric */
     , (802181,  80,       2) /* AiUseMagicDelay */
     , (802181, 104,      10) /* ObviousRadarRange */
     , (802181, 122,       2) /* AiAcquireHealth */
     , (802181, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802181,   1, 'Devon') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802181,   1, 0x02000001) /* Setup */
     , (802181,   2, 0x09000001) /* MotionTable */
     , (802181,   3, 0x20000001) /* SoundTable */
     , (802181,   6, 0x0400007E) /* PaletteBase */
     , (802181,   8, 0x06001036) /* Icon */
     , (802181,  31,       1595) /* LinkedPortalOne - Abandoned Mine */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802181,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802181,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802181,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802181,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802181,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802181,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802181,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802181,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802181,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802181,   1, 290, 0, 0) /* Strength */
     , (802181,   2, 260, 0, 0) /* Endurance */
     , (802181,   3, 290, 0, 0) /* Quickness */
     , (802181,   4, 290, 0, 0) /* Coordination */
     , (802181,   5, 200, 0, 0) /* Focus */
     , (802181,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802181,   1,   196, 0, 0,  326) /* MaxHealth */
     , (802181,   3,   196, 0, 0,  456) /* MaxStamina */
     , (802181,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802181,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (802181,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (802181, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (802181, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (802181, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (802181, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (802181, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (802181, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (802181, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (802181, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (802181, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (802181, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (802181, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802181, 1 /* Refuse */, 1, 802182, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 21 /* InqQuest */, 0, 1, NULL, 'wildmushroompickup', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802181, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'wildmushroompickup', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Well done! You may carry on to Part Three of this dungeon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 22 /* StampQuest */, 0, 1, NULL, 'PartTwoDone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 31 /* EraseQuest */, 0, 1, NULL, 'wildmushroompickup', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 74 /* TakeItems */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802181, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'wildmushroompickup', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'You need to complete the previous quest. The mushrooms are amazing, by the way.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802181, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'You are a warrior of strength, no doubt! But can you best a man of mind?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 10 /* Tell */, 1, 1, NULL, 'Hidden in this room is a stick. Find it, and I shall reward you! If you are a hero of honor, you will not use any tools to help you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802181, 2,  2587,  0,14,  0.5, False) /* Create Shirt (2587) for Wield */
     , (802181, 2,  2601,  0,14,  0.5, False) /* Create Pants (2601) for Wield */
     , (802181, 2, 21150,  0,93,    1, False) /* Create Covenant Sollerets (21150) for Wield */
     , (802181, 2, 21151,  0,93,    1, False) /* Create Covenant Bracers (21151) for Wield */
     , (802181, 2, 80226,  0,93,    1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     , (802181, 2, 21153,  0,93,    1, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (802181, 2, 21154,  0,93,    1, False) /* Create Covenant Girth (21154) for Wield */
     , (802181, 2, 21155,  0,93,    1, False) /* Create Covenant Greaves (21155) for Wield */
     , (802181, 2, 21157,  0,93,    1, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (802181, 2, 21159,  0,93,    1, False) /* Create Covenant Tassets (21159) for Wield */;

