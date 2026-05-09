DELETE FROM `weenie` WHERE `class_Id` = 802185;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802185, 'Graysin', 10, '2023-03-17 05:44:03') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802185,   1,         16) /* ItemType - Creature */
     , (802185,   2,         31) /* CreatureType - Human */
     , (802185,   6,         -1) /* ItemsCapacity */
     , (802185,   7,         -1) /* ContainersCapacity */
     , (802185,  16,         32) /* ItemUseable - Remote */
     , (802185,  25,        275) /* Level */
     , (802185,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (802185,  95,          8) /* RadarBlipColor - Yellow */
     , (802185, 113,          1) /* Gender - Male */
     , (802185, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802185, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802185, 146,          0) /* XpOverride */
     , (802185, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802185,   1, True ) /* Stuck */
     , (802185,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802185,   1,       5) /* HeartbeatInterval */
     , (802185,   2,       0) /* HeartbeatTimestamp */
     , (802185,   3,       2) /* HealthRate */
     , (802185,   4,       5) /* StaminaRate */
     , (802185,   5,       1) /* ManaRate */
     , (802185,  13,       1) /* ArmorModVsSlash */
     , (802185,  14,       1) /* ArmorModVsPierce */
     , (802185,  15,       1) /* ArmorModVsBludgeon */
     , (802185,  16,       1) /* ArmorModVsCold */
     , (802185,  17,       1) /* ArmorModVsFire */
     , (802185,  18,       1) /* ArmorModVsAcid */
     , (802185,  19,       1) /* ArmorModVsElectric */
     , (802185,  31,      18) /* VisualAwarenessRange */
     , (802185,  54,       3) /* UseRadius */
     , (802185,  64,       1) /* ResistSlash */
     , (802185,  65,       1) /* ResistPierce */
     , (802185,  66,       1) /* ResistBludgeon */
     , (802185,  67,       1) /* ResistFire */
     , (802185,  68,       1) /* ResistCold */
     , (802185,  69,       1) /* ResistAcid */
     , (802185,  70,       1) /* ResistElectric */
     , (802185,  80,       2) /* AiUseMagicDelay */
     , (802185, 104,      10) /* ObviousRadarRange */
     , (802185, 122,       2) /* AiAcquireHealth */
     , (802185, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802185,   1, 'Graysin') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802185,   1,   33554433) /* Setup */
     , (802185,   2,  150994945) /* MotionTable */
     , (802185,   3,  536870913) /* SoundTable */
     , (802185,   6,   67108990) /* PaletteBase */
     , (802185,   8,  100667446) /* Icon */
     , (802185,  31,       1595) /* LinkedPortalOne - Abandoned Mine */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802185,   1, 290, 0, 0) /* Strength */
     , (802185,   2, 260, 0, 0) /* Endurance */
     , (802185,   3, 290, 0, 0) /* Quickness */
     , (802185,   4, 290, 0, 0) /* Coordination */
     , (802185,   5, 200, 0, 0) /* Focus */
     , (802185,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802185,   1,   196, 0, 0, 326) /* MaxHealth */
     , (802185,   3,   196, 0, 0, 456) /* MaxStamina */
     , (802185,   5,   196, 0, 0, 396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802185,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (802185,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (802185, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (802185, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (802185, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (802185, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (802185, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (802185, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (802185, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (802185, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (802185, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (802185, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (802185, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802185,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802185,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802185,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802185,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802185,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802185,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802185,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802185,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802185,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802185,  7 /* Use */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  21 /* InqQuest */, 0, 1, NULL, 'PrimordialMatronKilled@2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802185, 12 /* QuestSuccess */,      1, NULL, NULL, NULL, 'PrimordialMatronKilled@2', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'What a warrior and hero you are! You have done it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  10 /* Tell */, 1, 1, NULL, 'Your time in training has surely paid off.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  10 /* Tell */, 1, 1, NULL, 'You are a king-to-be no doubt!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  10 /* Tell */, 1, 1, NULL, 'Here is your reward!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  4,   3 /* Give */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802186 /* Speedrun Token */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  5,  31 /* EraseQuest */, 0, 1, NULL, 'PartTwoDone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  6,  24 /* StopEvent */, 0, 1, NULL, 'SR135Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  7,  99 /* TeleportTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 459095 /* @teleloc 0x00070157 [75.172501 -78.525902 0.005000] 0.397046 0.000000 0.000000 -0.917799 */, 75.1725, -78.5259, 0.005, 0.397046, 0, 0, -0.917799);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802185, 13 /* QuestFailure */,      1, NULL, NULL, NULL, 'PrimordialMatronKilled@2', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Your final stage is beginning. This will be the toughest. You must make way through the tunnels and kill the Olthoi Travesty.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  10 /* Tell */, 1, 1, NULL, 'Come talk to me when you are done.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802185, 2,  2587,  0, 14, 0.5, False) /* Create Shirt (2587) for Wield */
     , (802185, 2,  2601,  0, 14, 0.5, False) /* Create Pants (2601) for Wield */
     , (802185, 2, 21150,  0, 93, 1, False) /* Create Covenant Sollerets (21150) for Wield */
     , (802185, 2, 21151,  0, 93, 1, False) /* Create Covenant Bracers (21151) for Wield */
     , (802185, 2, 80226,  0, 93, 1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     , (802185, 2, 21153,  0, 93, 1, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (802185, 2, 21154,  0, 93, 1, False) /* Create Covenant Girth (21154) for Wield */
     , (802185, 2, 21155,  0, 93, 1, False) /* Create Covenant Greaves (21155) for Wield */
     , (802185, 2, 21157,  0, 93, 1, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (802185, 2, 21159,  0, 93, 1, False) /* Create Covenant Tassets (21159) for Wield */;
