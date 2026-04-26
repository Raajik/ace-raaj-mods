DELETE FROM `weenie` WHERE `class_Id` = 803020;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803020, 'Hardcore Hal', 10, '2023-10-08 06:00:53') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803020,   1,         16) /* ItemType - Creature */
     , (803020,   2,         31) /* CreatureType - Human */
     , (803020,   6,         -1) /* ItemsCapacity */
     , (803020,   7,         -1) /* ContainersCapacity */
     , (803020,  16,         32) /* ItemUseable - Remote */
     , (803020,  25,        275) /* Level */
     , (803020,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (803020,  95,          8) /* RadarBlipColor - Yellow */
     , (803020, 113,          1) /* Gender - Male */
     , (803020, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803020, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803020, 146,          0) /* XpOverride */
     , (803020, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803020,   1, True ) /* Stuck */
     , (803020,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803020,   1,      60) /* HeartbeatInterval */
     , (803020,   2,       0) /* HeartbeatTimestamp */
     , (803020,   3,       2) /* HealthRate */
     , (803020,   4,       5) /* StaminaRate */
     , (803020,   5,       1) /* ManaRate */
     , (803020,  13,       1) /* ArmorModVsSlash */
     , (803020,  14,       1) /* ArmorModVsPierce */
     , (803020,  15,       1) /* ArmorModVsBludgeon */
     , (803020,  16,       1) /* ArmorModVsCold */
     , (803020,  17,       1) /* ArmorModVsFire */
     , (803020,  18,       1) /* ArmorModVsAcid */
     , (803020,  19,       1) /* ArmorModVsElectric */
     , (803020,  31,      18) /* VisualAwarenessRange */
     , (803020,  39,       1) /* DefaultScale */
     , (803020,  54,       3) /* UseRadius */
     , (803020,  64,       1) /* ResistSlash */
     , (803020,  65,       1) /* ResistPierce */
     , (803020,  66,       1) /* ResistBludgeon */
     , (803020,  67,       1) /* ResistFire */
     , (803020,  68,       1) /* ResistCold */
     , (803020,  69,       1) /* ResistAcid */
     , (803020,  70,       1) /* ResistElectric */
     , (803020,  80,       2) /* AiUseMagicDelay */
     , (803020, 104,      10) /* ObviousRadarRange */
     , (803020, 122,       2) /* AiAcquireHealth */
     , (803020, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803020,   1, 'Hardcore Hal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803020,   1, 0x02000001) /* Setup */
     , (803020,   2, 0x09000001) /* MotionTable */
     , (803020,   3, 0x20000001) /* SoundTable */
     , (803020,   6, 0x0400007E) /* PaletteBase */
     , (803020,   8, 0x06001036) /* Icon */
     , (803020,  31,       1595) /* LinkedPortalOne - Abandoned Mine */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803020,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803020,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803020,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803020,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803020,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803020,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803020,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803020,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803020,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803020,   1, 290, 0, 0) /* Strength */
     , (803020,   2, 260, 0, 0) /* Endurance */
     , (803020,   3, 290, 0, 0) /* Quickness */
     , (803020,   4, 290, 0, 0) /* Coordination */
     , (803020,   5, 200, 0, 0) /* Focus */
     , (803020,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803020,   1,   196, 0, 0,  326) /* MaxHealth */
     , (803020,   3,   196, 0, 0,  456) /* MaxStamina */
     , (803020,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803020,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (803020,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (803020, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (803020, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (803020, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (803020, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (803020, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (803020, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (803020, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (803020, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (803020, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (803020, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (803020, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803020, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 35 /* InqBoolStat */, 0, 1, NULL, '9018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9018 /* 9018 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803020, 22 /* TestSuccess */, 1, NULL, NULL, NULL, '9018', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Welcome to your very own hunting ground options!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 99 /* TeleportTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x01110100 /* 0x01110100 [-1.109242 -8.510921 0.005] -0.357401 0 0 0.933951 */, -1.109242, -8.510921, 0.005, -0.357401, 0, 0, 0.933951);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803020, 23 /* TestFailure */, 1, NULL, NULL, NULL, '9018', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'I''m sorry, I have nothing for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803020, 2,  6061,  1,80,    0, False) /* Create Gelidite Robe (6061) for Wield */;

