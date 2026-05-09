DELETE FROM `weenie` WHERE `class_Id` = 801551;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801551, 'Dragon Kill Counter', 10, '2022-11-01 12:54:18') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801551,   1,         16) /* ItemType - Creature */
     , (801551,   2,         31) /* CreatureType - Human */
     , (801551,   6,         -1) /* ItemsCapacity */
     , (801551,   7,         -1) /* ContainersCapacity */
     , (801551,  16,         32) /* ItemUseable - Remote */
     , (801551,  25,        275) /* Level */
     , (801551,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801551,  95,          8) /* RadarBlipColor - Yellow */
     , (801551, 113,          1) /* Gender - Male */
     , (801551, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801551, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801551, 146,          0) /* XpOverride */
     , (801551, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801551,   1, True ) /* Stuck */
     , (801551,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801551,   1,      60) /* HeartbeatInterval */
     , (801551,   2,       0) /* HeartbeatTimestamp */
     , (801551,   3,       2) /* HealthRate */
     , (801551,   4,       5) /* StaminaRate */
     , (801551,   5,       1) /* ManaRate */
     , (801551,  13,       1) /* ArmorModVsSlash */
     , (801551,  14,       1) /* ArmorModVsPierce */
     , (801551,  15,       1) /* ArmorModVsBludgeon */
     , (801551,  16,       1) /* ArmorModVsCold */
     , (801551,  17,       1) /* ArmorModVsFire */
     , (801551,  18,       1) /* ArmorModVsAcid */
     , (801551,  19,       1) /* ArmorModVsElectric */
     , (801551,  31,      18) /* VisualAwarenessRange */
     , (801551,  39,       1) /* DefaultScale */
     , (801551,  54,       3) /* UseRadius */
     , (801551,  64,       1) /* ResistSlash */
     , (801551,  65,       1) /* ResistPierce */
     , (801551,  66,       1) /* ResistBludgeon */
     , (801551,  67,       1) /* ResistFire */
     , (801551,  68,       1) /* ResistCold */
     , (801551,  69,       1) /* ResistAcid */
     , (801551,  70,       1) /* ResistElectric */
     , (801551,  80,       2) /* AiUseMagicDelay */
     , (801551, 104,      10) /* ObviousRadarRange */
     , (801551, 122,       2) /* AiAcquireHealth */
     , (801551, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801551,   1, 'Dragon Kill Counter') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801551,   1,   33554433) /* Setup */
     , (801551,   2,  150994945) /* MotionTable */
     , (801551,   3,  536870913) /* SoundTable */
     , (801551,   6,   67108990) /* PaletteBase */
     , (801551,   8,  100667446) /* Icon */
     , (801551,  31,       1595) /* LinkedPortalOne - Abandoned Mine */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801551,   1, 290, 0, 0) /* Strength */
     , (801551,   2, 260, 0, 0) /* Endurance */
     , (801551,   3, 290, 0, 0) /* Quickness */
     , (801551,   4, 290, 0, 0) /* Coordination */
     , (801551,   5, 200, 0, 0) /* Focus */
     , (801551,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801551,   1,   196, 0, 0, 326) /* MaxHealth */
     , (801551,   3,   196, 0, 0, 456) /* MaxStamina */
     , (801551,   5,   196, 0, 0, 396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801551,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (801551,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (801551, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (801551, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (801551, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (801551, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (801551, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (801551, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (801551, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (801551, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (801551, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (801551, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (801551, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801551,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801551,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801551,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801551,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801551,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801551,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801551,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801551,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801551,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801551,  7 /* Use */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  30 /* InqQuestSolves */, 0, 1, NULL, 'DragonKillerCredit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801551, 12 /* QuestSuccess */,      1, NULL, NULL, NULL, 'DragonKillerCredit', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You have confirmed %tqc Dragon Kills.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801551, 13 /* QuestFailure */,      1, NULL, NULL, NULL, 'DragonKillerCredit', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You ave not yet turned in Dragon Kill Confirm certificates.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801551, 2,  6061,  1, 86, 0, False) /* Create Gelidite Robe (6061) for Wield */;
