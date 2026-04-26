DELETE FROM `weenie` WHERE `class_Id` = 800060;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800060, 'Messenger of Dereth', 10, '2024-04-03 09:59:33') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800060,   1,         16) /* ItemType - Creature */
     , (800060,   2,         31) /* CreatureType - Human */
     , (800060,   6,         -1) /* ItemsCapacity */
     , (800060,   7,         -1) /* ContainersCapacity */
     , (800060,  16,         32) /* ItemUseable - Remote */
     , (800060,  25,        275) /* Level */
     , (800060,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (800060,  95,          8) /* RadarBlipColor - Yellow */
     , (800060, 113,          1) /* Gender - Male */
     , (800060, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800060, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800060, 146,          0) /* XpOverride */
     , (800060, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800060,   1, True ) /* Stuck */
     , (800060,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800060,   1,       5) /* HeartbeatInterval */
     , (800060,   2,       0) /* HeartbeatTimestamp */
     , (800060,   3,       2) /* HealthRate */
     , (800060,   4,       5) /* StaminaRate */
     , (800060,   5,       1) /* ManaRate */
     , (800060,  13,       1) /* ArmorModVsSlash */
     , (800060,  14,       1) /* ArmorModVsPierce */
     , (800060,  15,       1) /* ArmorModVsBludgeon */
     , (800060,  16,       1) /* ArmorModVsCold */
     , (800060,  17,       1) /* ArmorModVsFire */
     , (800060,  18,       1) /* ArmorModVsAcid */
     , (800060,  19,       1) /* ArmorModVsElectric */
     , (800060,  31,      18) /* VisualAwarenessRange */
     , (800060,  54,       3) /* UseRadius */
     , (800060,  64,       1) /* ResistSlash */
     , (800060,  65,       1) /* ResistPierce */
     , (800060,  66,       1) /* ResistBludgeon */
     , (800060,  67,       1) /* ResistFire */
     , (800060,  68,       1) /* ResistCold */
     , (800060,  69,       1) /* ResistAcid */
     , (800060,  70,       1) /* ResistElectric */
     , (800060,  80,       2) /* AiUseMagicDelay */
     , (800060, 104,      10) /* ObviousRadarRange */
     , (800060, 122,       2) /* AiAcquireHealth */
     , (800060, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800060,   1, 'Messenger of Dereth') /* Name */
     , (800060,   5, 'A Royal Messenger') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800060,   1, 0x02000001) /* Setup */
     , (800060,   2, 0x09000001) /* MotionTable */
     , (800060,   3, 0x20000001) /* SoundTable */
     , (800060,   6, 0x0400007E) /* PaletteBase */
     , (800060,   8, 0x06001036) /* Icon */
     , (800060,  31,     803449) /* LinkedPortalOne */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800060,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800060,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800060,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800060,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800060,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800060,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800060,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800060,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800060,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800060,   1, 290, 0, 0) /* Strength */
     , (800060,   2, 260, 0, 0) /* Endurance */
     , (800060,   3, 290, 0, 0) /* Quickness */
     , (800060,   4, 290, 0, 0) /* Coordination */
     , (800060,   5, 200, 0, 0) /* Focus */
     , (800060,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800060,   1,   196, 0, 0,  326) /* MaxHealth */
     , (800060,   3,   196, 0, 0,  456) /* MaxStamina */
     , (800060,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800060,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (800060,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (800060, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (800060, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (800060, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (800060, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (800060, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (800060, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (800060, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (800060, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (800060, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (800060, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (800060, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800060, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 21 /* InqQuest */, 0, 1, NULL, 'ChapterOneStarted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800060, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'ChapterOneStarted', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'It is an honor to guard this town. The memories it brings back.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800060, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'ChapterOneStarted', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 36 /* InqIntStat */, 0, 1, NULL, 'Level_275-10001_2', NULL, 275, 10001, NULL, NULL, NULL, NULL, 25 /* Level */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800060, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'Level_275-10001_2', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 5 /* Motion */, 0, 1, 0x1300008A /* Salute */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 10 /* Tell */, 0.5, 1, NULL, 'Greetings traveler. Dereth is under siege! We need your help to fight against the plague that haunts us.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 10 /* Tell */, 3, 1, NULL, 'As far as we have been able to find, the infection started in the Abandoned Mines.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 10 /* Tell */, 3, 1, NULL, 'Go quickly to speak with Asheron at his Castle. He will know what to do!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 14 /* CastSpell */, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 157 /* Summon Primary Portal I */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 5, 22 /* StampQuest */, 0, 1, NULL, 'ChapterOneStarted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800060, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'Level_275-10001_2', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'You must be level 275 or higher to start this quest line.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800060, 2, 24611,  1, 0,    0, False) /* Create Sword of Lost Light (24611) for Wield */
     , (800060, 2, 42717,  1, 0,    0, False) /* Create Shield of Borelean's Royal Guard (42717) for Wield */
     , (800060, 2,  2587,  0,14,  0.5, False) /* Create Shirt (2587) for Wield */
     , (800060, 2,  2601,  0,14,  0.5, False) /* Create Pants (2601) for Wield */
     , (800060, 2, 21150,  0,93,    1, False) /* Create Covenant Sollerets (21150) for Wield */
     , (800060, 2, 21151,  0,93,    1, False) /* Create Covenant Bracers (21151) for Wield */
     , (800060, 2, 80226,  0,93,    1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     , (800060, 2, 21153,  0,93,    1, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (800060, 2, 21154,  0,93,    1, False) /* Create Covenant Girth (21154) for Wield */
     , (800060, 2, 21155,  0,93,    1, False) /* Create Covenant Greaves (21155) for Wield */
     , (800060, 2, 21156,  0,93,    1, False) /* Create Covenant Helm (21156) for Wield */
     , (800060, 2, 21157,  0,93,    1, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (800060, 2, 21159,  0,93,    1, False) /* Create Covenant Tassets (21159) for Wield */;

