DELETE FROM `weenie` WHERE `class_Id` = 800386;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800386, 'Tradewind''s Path Armorer', 10, '2022-06-05 07:12:46') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800386,   1,         16) /* ItemType - Creature */
     , (800386,   2,         31) /* CreatureType - Human */
     , (800386,   6,         -1) /* ItemsCapacity */
     , (800386,   7,         -1) /* ContainersCapacity */
     , (800386,   8,        120) /* Mass */
     , (800386,  16,         32) /* ItemUseable - Remote */
     , (800386,  25,        275) /* Level */
     , (800386,  27,          0) /* ArmorType - None */
     , (800386,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (800386,  95,          8) /* RadarBlipColor - Yellow */
     , (800386, 113,          1) /* Gender - Male */
     , (800386, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800386, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800386,   1, True ) /* Stuck */
     , (800386,   8, True ) /* AllowGive */
     , (800386,  12, True ) /* ReportCollisions */
     , (800386,  13, False) /* Ethereal */
     , (800386,  19, False) /* Attackable */
     , (800386,  41, True ) /* ReportCollisionsAsEnvironment */
     , (800386,  42, True ) /* AllowEdgeSlide */
     , (800386,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800386,   1,       5) /* HeartbeatInterval */
     , (800386,   2,       0) /* HeartbeatTimestamp */
     , (800386,   3,    0.16) /* HealthRate */
     , (800386,   4,       5) /* StaminaRate */
     , (800386,   5,       1) /* ManaRate */
     , (800386,  11,     300) /* ResetInterval */
     , (800386,  12,     0.5) /* Shade */
     , (800386,  13,     0.9) /* ArmorModVsSlash */
     , (800386,  14,       1) /* ArmorModVsPierce */
     , (800386,  15,     1.1) /* ArmorModVsBludgeon */
     , (800386,  16,     0.4) /* ArmorModVsCold */
     , (800386,  17,     0.4) /* ArmorModVsFire */
     , (800386,  18,       1) /* ArmorModVsAcid */
     , (800386,  19,     0.6) /* ArmorModVsElectric */
     , (800386,  54,       3) /* UseRadius */
     , (800386,  64,       1) /* ResistSlash */
     , (800386,  65,       1) /* ResistPierce */
     , (800386,  66,       1) /* ResistBludgeon */
     , (800386,  67,       1) /* ResistFire */
     , (800386,  68,       1) /* ResistCold */
     , (800386,  69,       1) /* ResistAcid */
     , (800386,  70,       1) /* ResistElectric */
     , (800386,  71,       1) /* ResistHealthBoost */
     , (800386,  72,       1) /* ResistStaminaDrain */
     , (800386,  73,       1) /* ResistStaminaBoost */
     , (800386,  74,       1) /* ResistManaDrain */
     , (800386,  75,       1) /* ResistManaBoost */
     , (800386, 104,      10) /* ObviousRadarRange */
     , (800386, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800386,   1, 'Tradewind''s Path Armorer') /* Name */
     , (800386,   3, 'Female') /* Sex */
     , (800386,   4, 'Aluvian') /* HeritageGroup */
     , (800386,   5, 'Academic') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800386,   1,   33554433) /* Setup */
     , (800386,   2,  150994945) /* MotionTable */
     , (800386,   3,  536870913) /* SoundTable */
     , (800386,   4,  805306368) /* CombatTable */
     , (800386,   8,  100667446) /* Icon */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800386,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800386,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800386,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800386,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800386,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800386,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800386,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800386,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800386,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800386,   1, 500, 0, 0) /* Strength */
     , (800386,   2, 460, 0, 0) /* Endurance */
     , (800386,   3, 450, 0, 0) /* Quickness */
     , (800386,   4, 520, 0, 0) /* Coordination */
     , (800386,   5, 350, 0, 0) /* Focus */
     , (800386,   6, 370, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800386,   1,   500, 0, 0,  730) /* MaxHealth */
     , (800386,   3,   500, 0, 0,  960) /* MaxStamina */
     , (800386,   5,   540, 0, 0,  910) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800386,  6, 0, 2, 0, 200, 0,1603.000244140625) /* MeleeDefense        Trained */
     , (800386,  7, 0, 2, 0, 200, 0,1603.000244140625) /* MissileDefense      Trained */
     , (800386, 13, 0, 2, 0,   2, 0,1603.000244140625) /* UnarmedCombat       Trained */
     , (800386, 46, 0, 3, 0, 600, 0, 0) /* FinesseWeapons      Specialized */
     , (800386, 49, 0, 3, 0, 600, 0, 0) /* DualWield           Specialized */;
	 
	 INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800386, 5 /* HeartBeat */, 0.01, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 5 /* Motion */, 0, 1, 0x13000090 /* YawnStretch */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800386,  6 /* Give */,      1, 800385 /* BZ Champion Medal */, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  10 /* Tell */, 0, 0, NULL, 'This stone... it has so much hidden power! Allow me to unlock it for you. Now take it to Thorid the Dark. He lurks in the shadows of Ayan Buqar. He will inlay it into a weapon of your choice. It may take several stones to get the power you desire.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,   3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0 /* Undef */, 800360 /* Trade Note (10,000) */, 1, 0 /* Undef */, 0, False, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  4,   3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0 /* Undef */, 800361 /* Trade Note (10,000) */, 1, 0 /* Undef */, 0, False, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  5,   3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0 /* Undef */, 800362 /* Trade Note (10,000) */, 1, 0 /* Undef */, 0, False, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  6,   3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0 /* Undef */, 800363 /* Trade Note (10,000) */, 1, 0 /* Undef */, 0, False, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  7,   3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0 /* Undef */, 800364 /* Trade Note (10,000) */, 1, 0 /* Undef */, 0, False, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  8,   3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0 /* Undef */, 800365 /* Trade Note (10,000) */, 1, 0 /* Undef */, 0, False, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  9,   3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0 /* Undef */, 800366 /* Trade Note (10,000) */, 1, 0 /* Undef */, 0, False, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800386, 2, 800360,  1, 90,    0.3, False) /* Create TP Gear for Wield */
     , (800386, 2, 800361,  1, 90,    0.3, False) /* Create TP Gear for Wield */
     , (800386, 2, 800362,  1, 90,    0.3, False) /* Create TP Gear for Wield */
     , (800386, 2, 800363,  1, 90,    0.3, False) /* Create TP Gear for Wield */
     , (800386, 2, 800364,  1, 90,    0.3, False) /* Create TP Gear for Wield */
     , (800386, 2, 800365,  1, 90,    0.3, False) /* Create TP Gear for Wield */;