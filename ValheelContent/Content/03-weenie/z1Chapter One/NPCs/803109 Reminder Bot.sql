DELETE FROM `weenie` WHERE `class_Id` = 803109;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803109, 'Reminder Bot', 10, '2023-12-12 06:04:03') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803109,   1,         16) /* ItemType - Creature */
     , (803109,   2,         31) /* CreatureType - Human */
     , (803109,   6,         -1) /* ItemsCapacity */
     , (803109,   7,         -1) /* ContainersCapacity */
     , (803109,  16,         32) /* ItemUseable - Remote */
     , (803109,  25,       6000) /* Level */
     , (803109,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (803109,  95,          8) /* RadarBlipColor - Yellow */
     , (803109, 113,          1) /* Gender - Male */
     , (803109, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803109, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803109, 146,          0) /* XpOverride */
     , (803109, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803109,   1, True ) /* Stuck */
     , (803109,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803109,   1,    3600) /* HeartbeatInterval */
     , (803109,   2,       0) /* HeartbeatTimestamp */
     , (803109,   3,       2) /* HealthRate */
     , (803109,   4,       5) /* StaminaRate */
     , (803109,   5,       1) /* ManaRate */
     , (803109,  13,       1) /* ArmorModVsSlash */
     , (803109,  14,       1) /* ArmorModVsPierce */
     , (803109,  15,       1) /* ArmorModVsBludgeon */
     , (803109,  16,       1) /* ArmorModVsCold */
     , (803109,  17,       1) /* ArmorModVsFire */
     , (803109,  18,       1) /* ArmorModVsAcid */
     , (803109,  19,       1) /* ArmorModVsElectric */
     , (803109,  31,      18) /* VisualAwarenessRange */
     , (803109,  39,       1) /* DefaultScale */
     , (803109,  54,       3) /* UseRadius */
     , (803109,  64,       1) /* ResistSlash */
     , (803109,  65,       1) /* ResistPierce */
     , (803109,  66,       1) /* ResistBludgeon */
     , (803109,  67,       1) /* ResistFire */
     , (803109,  68,       1) /* ResistCold */
     , (803109,  69,       1) /* ResistAcid */
     , (803109,  70,       1) /* ResistElectric */
     , (803109,  80,       2) /* AiUseMagicDelay */
     , (803109, 104,      10) /* ObviousRadarRange */
     , (803109, 122,       2) /* AiAcquireHealth */
     , (803109, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803109,   1, 'Reminder Bot') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803109,   1, 0x02000001) /* Setup */
     , (803109,   2, 0x09000001) /* MotionTable */
     , (803109,   3, 0x20000001) /* SoundTable */
     , (803109,   6, 0x0400007E) /* PaletteBase */
     , (803109,   8, 0x06001036) /* Icon */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803109,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803109,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803109,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803109,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803109,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803109,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803109,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803109,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803109,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803109,   1, 290, 0, 0) /* Strength */
     , (803109,   2, 260, 0, 0) /* Endurance */
     , (803109,   3, 290, 0, 0) /* Quickness */
     , (803109,   4, 290, 0, 0) /* Coordination */
     , (803109,   5, 200, 0, 0) /* Focus */
     , (803109,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803109,   1,   196, 0, 0,  326) /* MaxHealth */
     , (803109,   3,   196, 0, 0,  456) /* MaxStamina */
     , (803109,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803109,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (803109,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (803109, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (803109, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (803109, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (803109, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (803109, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (803109, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (803109, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (803109, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (803109, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (803109, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (803109, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803109, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 16 /* WorldBroadcast */, 0, 1, NULL, '***REMINDER*** -- ValHeel will have down time this FRIDAY to transition to a new IP Address!! Don''t forget!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803109, 2, 29542,  1,90,    0, False) /* Create Enscorcelled Robe (29542) for Wield */;

