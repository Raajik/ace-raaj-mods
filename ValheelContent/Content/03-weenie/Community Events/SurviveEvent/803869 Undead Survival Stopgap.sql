DELETE FROM `weenie` WHERE `class_Id` = 803869;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803869, 'Undead Survival Stopgap', 10, '2024-07-23 02:35:10') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803869,   1,         16) /* ItemType - Creature */
     , (803869,   2,         31) /* CreatureType - Human */
     , (803869,   6,         -1) /* ItemsCapacity */
     , (803869,   7,         -1) /* ContainersCapacity */
     , (803869,   8,        120) /* Mass */
     , (803869,  16,         32) /* ItemUseable - Remote */
     , (803869,  25,         15) /* Level */
     , (803869,  27,          0) /* ArmorType - None */
     , (803869,  93,    6292508) /* PhysicsState - Ethereal, ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (803869,  95,          8) /* RadarBlipColor - Yellow */
     , (803869, 133,          0) /* ShowableOnRadar - Undefined */
     , (803869, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803869, 146,        307) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803869,   1, True ) /* Stuck */
     , (803869,   8, True ) /* AllowGive */
     , (803869,  12, True ) /* ReportCollisions */
     , (803869,  13, True ) /* Ethereal */
     , (803869,  18, True ) /* Visibility */
     , (803869,  19, False) /* Attackable */
     , (803869,  41, True ) /* ReportCollisionsAsEnvironment */
     , (803869,  42, True ) /* AllowEdgeSlide */
     , (803869,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803869,   1,       5) /* HeartbeatInterval */
     , (803869,   2,       0) /* HeartbeatTimestamp */
     , (803869,   3,    0.16) /* HealthRate */
     , (803869,   4,       5) /* StaminaRate */
     , (803869,   5,       1) /* ManaRate */
     , (803869,  13,     0.9) /* ArmorModVsSlash */
     , (803869,  14,       1) /* ArmorModVsPierce */
     , (803869,  15,     1.1) /* ArmorModVsBludgeon */
     , (803869,  16,     0.4) /* ArmorModVsCold */
     , (803869,  17,     0.4) /* ArmorModVsFire */
     , (803869,  18,       1) /* ArmorModVsAcid */
     , (803869,  19,     0.6) /* ArmorModVsElectric */
     , (803869,  54,       3) /* UseRadius */
     , (803869,  64,       1) /* ResistSlash */
     , (803869,  65,       1) /* ResistPierce */
     , (803869,  66,       1) /* ResistBludgeon */
     , (803869,  67,       1) /* ResistFire */
     , (803869,  68,       1) /* ResistCold */
     , (803869,  69,       1) /* ResistAcid */
     , (803869,  70,       1) /* ResistElectric */
     , (803869,  71,       1) /* ResistHealthBoost */
     , (803869,  72,       1) /* ResistStaminaDrain */
     , (803869,  73,       1) /* ResistStaminaBoost */
     , (803869,  74,       1) /* ResistManaDrain */
     , (803869,  75,       1) /* ResistManaBoost */
     , (803869, 104,      10) /* ObviousRadarRange */
     , (803869, 125,       1) /* ResistHealthDrain */
     , (803869, 131,       1) /* EmotePriority */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803869,   1, 'Undead Survival Stopgap') /* Name */
     , (803869,   3, 'Male') /* Sex */
     , (803869,   4, 'Sho') /* HeritageGroup */
     , (803869,   5, 'Stopgap') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803869,   1, 0x02000001) /* Setup */
     , (803869,   2, 0x09000001) /* MotionTable */
     , (803869,   3, 0x20000001) /* SoundTable */
     , (803869,   4, 0x30000000) /* CombatTable */
     , (803869,   8, 0x06001036) /* Icon */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803869,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803869,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803869,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803869,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803869,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803869,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803869,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803869,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803869,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803869,   1,  90, 0, 0) /* Strength */
     , (803869,   2, 100, 0, 0) /* Endurance */
     , (803869,   3,  75, 0, 0) /* Quickness */
     , (803869,   4, 120, 0, 0) /* Coordination */
     , (803869,   5, 140, 0, 0) /* Focus */
     , (803869,   6, 130, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803869,   1,    10, 0, 0,   60) /* MaxHealth */
     , (803869,   3,    10, 0, 0,  110) /* MaxStamina */
     , (803869,   5,    10, 0, 0,  140) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803869,  6, 0, 2, 0,   1, 0,633.3804321289062) /* MeleeDefense        Trained */
     , (803869,  7, 0, 2, 0,   1, 0,633.3804321289062) /* MissileDefense      Trained */
     , (803869, 13, 0, 2, 0,   1, 0,633.3804321289062) /* UnarmedCombat       Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803869, 9 /* Generation */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 23 /* StartEvent */, 0, 1, NULL, 'Round1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 24 /* StopEvent */, 10800, 1, NULL, 'Round1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 24 /* StopEvent */, 0, 1, NULL, 'Round2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 24 /* StopEvent */, 0, 1, NULL, 'Round3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 24 /* StopEvent */, 0, 1, NULL, 'Round4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 5, 24 /* StopEvent */, 0, 1, NULL, 'Round5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 6, 24 /* StopEvent */, 0, 1, NULL, 'Round6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 7, 24 /* StopEvent */, 0, 1, NULL, 'Round7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 8, 24 /* StopEvent */, 0, 1, NULL, 'Round8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 9, 24 /* StopEvent */, 0, 1, NULL, 'Round9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 10, 24 /* StopEvent */, 0, 1, NULL, 'Round10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 11, 16 /* WorldBroadcast */, 0, 1, NULL, 'Undead Survival has been going for 3 hours! Automatic reset has engaged!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

