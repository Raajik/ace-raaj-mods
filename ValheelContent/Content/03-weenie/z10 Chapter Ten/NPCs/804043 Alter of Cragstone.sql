DELETE FROM `weenie` WHERE `class_Id` = 804043;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804043, 'AlterofCragstone', 10, '2025-12-29 12:20:34') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804043,   1,         16) /* ItemType - Creature */
     , (804043,   2,         31) /* CreatureType - Human */
     , (804043,   6,         -1) /* ItemsCapacity */
     , (804043,   7,         -1) /* ContainersCapacity */
     , (804043,  16,         32) /* ItemUseable - Remote */
     , (804043,  25,        275) /* Level */
     , (804043,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (804043,  95,          8) /* RadarBlipColor - Yellow */
     , (804043, 113,          1) /* Gender - Male */
     , (804043, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (804043, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (804043, 146,          0) /* XpOverride */
     , (804043, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804043,   1, True ) /* Stuck */
     , (804043,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804043,   1,       5) /* HeartbeatInterval */
     , (804043,   2,       0) /* HeartbeatTimestamp */
     , (804043,   3,       2) /* HealthRate */
     , (804043,   4,       5) /* StaminaRate */
     , (804043,   5,       1) /* ManaRate */
     , (804043,  13,       1) /* ArmorModVsSlash */
     , (804043,  14,       1) /* ArmorModVsPierce */
     , (804043,  15,       1) /* ArmorModVsBludgeon */
     , (804043,  16,       1) /* ArmorModVsCold */
     , (804043,  17,       1) /* ArmorModVsFire */
     , (804043,  18,       1) /* ArmorModVsAcid */
     , (804043,  19,       1) /* ArmorModVsElectric */
     , (804043,  31,      18) /* VisualAwarenessRange */
     , (804043,  39,       1) /* DefaultScale */
     , (804043,  54,       3) /* UseRadius */
     , (804043,  64,       1) /* ResistSlash */
     , (804043,  65,       1) /* ResistPierce */
     , (804043,  66,       1) /* ResistBludgeon */
     , (804043,  67,       1) /* ResistFire */
     , (804043,  68,       1) /* ResistCold */
     , (804043,  69,       1) /* ResistAcid */
     , (804043,  70,       1) /* ResistElectric */
     , (804043,  80,       2) /* AiUseMagicDelay */
     , (804043, 104,      10) /* ObviousRadarRange */
     , (804043, 122,       2) /* AiAcquireHealth */
     , (804043, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804043,   1, 'Alter of Cragstone') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804043,   1, 0x02000359) /* Setup */
     , (804043,   2, 0x0900002E) /* MotionTable */
     , (804043,   3, 0x20000034) /* SoundTable */
     , (804043,   8, 0x0600134F) /* Icon */
     , (804043,  25, 0x10000051) /* UseTargetSuccessAnimation - Twitch1 */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (804043,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (804043,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (804043,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (804043,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (804043,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (804043,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (804043,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (804043,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (804043,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (804043,   1, 290, 0, 0) /* Strength */
     , (804043,   2, 260, 0, 0) /* Endurance */
     , (804043,   3, 290, 0, 0) /* Quickness */
     , (804043,   4, 290, 0, 0) /* Coordination */
     , (804043,   5, 200, 0, 0) /* Focus */
     , (804043,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (804043,   1,   196, 0, 0,  326) /* MaxHealth */
     , (804043,   3,   196, 0, 0,  456) /* MaxStamina */
     , (804043,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (804043,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (804043,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (804043, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (804043, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (804043, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (804043, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (804043, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (804043, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (804043, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (804043, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (804043, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (804043, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (804043, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (804043, 1 /* Refuse */, 1, 804041, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 76 /* InqOwnsItems */, 0, 1, NULL, 'OwnsItem-804041_15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 804041, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (804043, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'OwnsItem-804041_15', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 52 /* ForceMotion */, 0, 1, 0x13000084 /* Point */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 74 /* TakeItems */, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 804041, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 52 /* ForceMotion */, 1, 1, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 18 /* DirectBroadcast */, 0, 1, NULL, 'The alter begins to hum...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 99 /* TeleportTarget */, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x02C90280 /* 0x02C90280 [120 -250 0.005] 1 0 0 0 */, 120, -250, 0.005, 1, 0, 0, 0);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (804043, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'OwnsItem-804041_15', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'You need to place 5 Seer Trophies on the alter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

