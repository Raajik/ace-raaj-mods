DELETE FROM `weenie` WHERE `class_Id` = 603501;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (603501, 'ace603501-arcanumhistorianassistant', 10, '2022-06-03 01:49:29') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (603501,   1,         16) /* ItemType - Creature */
     , (603501,   2,         31) /* CreatureType - Human */
     , (603501,   6,         -1) /* ItemsCapacity */
     , (603501,   7,         -1) /* ContainersCapacity */
     , (603501,   8,        120) /* Mass */
     , (603501,  16,         32) /* ItemUseable - Remote */
     , (603501,  25,         75) /* Level */
     , (603501,  27,          0) /* ArmorType - None */
     , (603501,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (603501,  95,          8) /* RadarBlipColor - Yellow */
     , (603501, 113,          1) /* Gender */
     , (603501, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (603501, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (603501, 146,      17763) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (603501,   1, True ) /* Stuck */
     , (603501,   8, False) /* AllowGive */
     , (603501,  12, True ) /* ReportCollisions */
     , (603501,  13, False) /* Ethereal */
     , (603501,  19, False) /* Attackable */
     , (603501,  41, True ) /* ReportCollisionsAsEnvironment */
     , (603501,  42, True ) /* AllowEdgeSlide */
     , (603501,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (603501,   1,       5) /* HeartbeatInterval */
     , (603501,   2,       0) /* HeartbeatTimestamp */
     , (603501,   3,    0.16) /* HealthRate */
     , (603501,   4,       5) /* StaminaRate */
     , (603501,   5,       1) /* ManaRate */
     , (603501,  11,     300) /* ResetInterval */
     , (603501,  12,     0.5) /* Shade */
     , (603501,  13,     0.9) /* ArmorModVsSlash */
     , (603501,  14,       1) /* ArmorModVsPierce */
     , (603501,  15,     1.1) /* ArmorModVsBludgeon */
     , (603501,  16,     0.4) /* ArmorModVsCold */
     , (603501,  17,     0.4) /* ArmorModVsFire */
     , (603501,  18,       1) /* ArmorModVsAcid */
     , (603501,  19,     0.6) /* ArmorModVsElectric */
	 , (603501,  39,     0.9) /* DefaultScale */
     , (603501,  54,       3) /* UseRadius */
     , (603501,  64,       1) /* ResistSlash */
     , (603501,  65,       1) /* ResistPierce */
     , (603501,  66,       1) /* ResistBludgeon */
     , (603501,  67,       1) /* ResistFire */
     , (603501,  68,       1) /* ResistCold */
     , (603501,  69,       1) /* ResistAcid */
     , (603501,  70,       1) /* ResistElectric */
     , (603501,  71,       1) /* ResistHealthBoost */
     , (603501,  72,       1) /* ResistStaminaDrain */
     , (603501,  73,       1) /* ResistStaminaBoost */
     , (603501,  74,       1) /* ResistManaDrain */
     , (603501,  75,       1) /* ResistManaBoost */
     , (603501, 104,      10) /* ObviousRadarRange */
     , (603501, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (603501,   1, 'Arcanum Historian Assistant') /* Name */
     , (603501,   3, 'Male') /* Sex */
     , (603501,   4, 'Aluvian') /* HeritageGroup */
     , (603501,   5, 'Assistant') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (603501,   1,   33554433) /* Setup */
     , (603501,   2,  150994945) /* MotionTable */
     , (603501,   3,  536870913) /* SoundTable */
     , (603501,   4,  805306368) /* CombatTable */
     , (603501,   8,  100667446) /* Icon */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (603501,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (603501,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (603501,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (603501,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (603501,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (603501,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (603501,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (603501,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (603501,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (603501,   1, 500, 0, 0) /* Strength */
     , (603501,   2, 460, 0, 0) /* Endurance */
     , (603501,   3, 450, 0, 0) /* Quickness */
     , (603501,   4, 520, 0, 0) /* Coordination */
     , (603501,   5, 350, 0, 0) /* Focus */
     , (603501,   6, 370, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (603501,   1,   500, 0, 0,  730) /* MaxHealth */
     , (603501,   3,   500, 0, 0,  960) /* MaxStamina */
     , (603501,   5,   540, 0, 0,  910) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (603501,  6, 0, 2, 0, 200, 0,1603.000244140625) /* MeleeDefense        Trained */
     , (603501,  7, 0, 2, 0, 200, 0,1603.000244140625) /* MissileDefense      Trained */
     , (603501, 13, 0, 2, 0,   2, 0,1603.000244140625) /* UnarmedCombat       Trained */
     , (603501, 46, 0, 3, 0, 600, 0, 0) /* FinesseWeapons      Specialized */
     , (603501, 49, 0, 3, 0, 600, 0, 0) /* DualWield           Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (603501, 5 /* HeartBeat */, 0.01, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 5 /* Motion */, 0, 1, 0x13000090 /* YawnStretch */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (603501, 5 /* HeartBeat */, 0.115, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 11 /* Turn */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (603501, 2, 30832,  1, 0,    0, False) /* Create Doppelganger Robe (30832) for Wield */;
