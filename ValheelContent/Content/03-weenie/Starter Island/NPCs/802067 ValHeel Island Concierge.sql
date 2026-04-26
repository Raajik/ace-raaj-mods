DELETE FROM `weenie` WHERE `class_Id` = 802067;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802067, 'ValHeelIslandConcierge', 10, '2023-02-22 08:48:45') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802067,   1,         16) /* ItemType - Creature */
     , (802067,   2,         31) /* CreatureType - Human */
     , (802067,   6,         -1) /* ItemsCapacity */
     , (802067,   7,         -1) /* ContainersCapacity */
     , (802067,  16,         32) /* ItemUseable - Remote */
     , (802067,  25,        275) /* Level */
     , (802067,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (802067,  95,          8) /* RadarBlipColor - Yellow */
     , (802067, 113,          1) /* Gender - Male */
     , (802067, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802067, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802067, 146,          0) /* XpOverride */
     , (802067, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802067,   1, True ) /* Stuck */
     , (802067,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802067,   1,      60) /* HeartbeatInterval */
     , (802067,   2,       0) /* HeartbeatTimestamp */
     , (802067,   3,       2) /* HealthRate */
     , (802067,   4,       5) /* StaminaRate */
     , (802067,   5,       1) /* ManaRate */
     , (802067,  13,       1) /* ArmorModVsSlash */
     , (802067,  14,       1) /* ArmorModVsPierce */
     , (802067,  15,       1) /* ArmorModVsBludgeon */
     , (802067,  16,       1) /* ArmorModVsCold */
     , (802067,  17,       1) /* ArmorModVsFire */
     , (802067,  18,       1) /* ArmorModVsAcid */
     , (802067,  19,       1) /* ArmorModVsElectric */
     , (802067,  31,      18) /* VisualAwarenessRange */
     , (802067,  39,       1) /* DefaultScale */
     , (802067,  54,       3) /* UseRadius */
     , (802067,  64,       1) /* ResistSlash */
     , (802067,  65,       1) /* ResistPierce */
     , (802067,  66,       1) /* ResistBludgeon */
     , (802067,  67,       1) /* ResistFire */
     , (802067,  68,       1) /* ResistCold */
     , (802067,  69,       1) /* ResistAcid */
     , (802067,  70,       1) /* ResistElectric */
     , (802067,  80,       2) /* AiUseMagicDelay */
     , (802067, 104,      10) /* ObviousRadarRange */
     , (802067, 122,       2) /* AiAcquireHealth */
     , (802067, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802067,   1, 'ValHeel Island Concierge') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802067,   1, 0x02000001) /* Setup */
     , (802067,   2, 0x09000001) /* MotionTable */
     , (802067,   3, 0x20000001) /* SoundTable */
     , (802067,   6, 0x0400007E) /* PaletteBase */
     , (802067,   8, 0x06001036) /* Icon */
     , (802067,  31,       1595) /* LinkedPortalOne - Abandoned Mine */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802067,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802067,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802067,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802067,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802067,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802067,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802067,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802067,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802067,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802067,   1, 290, 0, 0) /* Strength */
     , (802067,   2, 260, 0, 0) /* Endurance */
     , (802067,   3, 290, 0, 0) /* Quickness */
     , (802067,   4, 290, 0, 0) /* Coordination */
     , (802067,   5, 200, 0, 0) /* Focus */
     , (802067,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802067,   1,   196, 0, 0,  326) /* MaxHealth */
     , (802067,   3,   196, 0, 0,  456) /* MaxStamina */
     , (802067,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802067,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (802067,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (802067, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (802067, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (802067, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (802067, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (802067, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (802067, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (802067, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (802067, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (802067, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (802067, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (802067, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802067, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 36 /* InqIntStat */, 0, 1, NULL, 'Level_180', NULL, 180, 2147483647, NULL, NULL, NULL, NULL, 25 /* Level */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802067, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'Level_180', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'You are too powerful to access ValHeel Island.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802067, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'Level_180', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Safe travels my friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 99 /* TeleportTarget */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xF3A70024 /* 0xF3A70024 [108.023 74.6841 62.005] -0.999976 0 0 -0.006875 */, 108.023, 74.6841, 62.005, -0.999976, 0, 0, -0.006875);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802067, 2,  6061,  1,88,    0, False) /* Create Gelidite Robe (6061) for Wield */;

