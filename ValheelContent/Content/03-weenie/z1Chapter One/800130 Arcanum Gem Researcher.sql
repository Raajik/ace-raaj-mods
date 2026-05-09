DELETE FROM `weenie` WHERE `class_Id` = 800130;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800130, 'attunedstoneconverter', 10, '2022-11-28 08:51:24') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800130,   1,         16) /* ItemType - Creature */
     , (800130,   2,         31) /* CreatureType - Human */
     , (800130,   6,         -1) /* ItemsCapacity */
     , (800130,   7,         -1) /* ContainersCapacity */
     , (800130,   8,        120) /* Mass */
     , (800130,  16,         32) /* ItemUseable - Remote */
     , (800130,  25,        275) /* Level */
     , (800130,  27,          0) /* ArmorType - None */
     , (800130,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (800130,  95,          8) /* RadarBlipColor - Yellow */
     , (800130, 113,          1) /* Gender - Male */
     , (800130, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800130, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800130,   1, True ) /* Stuck */
     , (800130,   8, True ) /* AllowGive */
     , (800130,  12, True ) /* ReportCollisions */
     , (800130,  13, False) /* Ethereal */
     , (800130,  19, False) /* Attackable */
     , (800130,  41, True ) /* ReportCollisionsAsEnvironment */
     , (800130,  42, True ) /* AllowEdgeSlide */
     , (800130,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800130,   1,       5) /* HeartbeatInterval */
     , (800130,   2,       0) /* HeartbeatTimestamp */
     , (800130,   3,    0.16) /* HealthRate */
     , (800130,   4,       5) /* StaminaRate */
     , (800130,   5,       1) /* ManaRate */
     , (800130,  11,     300) /* ResetInterval */
     , (800130,  12,     0.5) /* Shade */
     , (800130,  13,     0.9) /* ArmorModVsSlash */
     , (800130,  14,       1) /* ArmorModVsPierce */
     , (800130,  15,     1.1) /* ArmorModVsBludgeon */
     , (800130,  16,     0.4) /* ArmorModVsCold */
     , (800130,  17,     0.4) /* ArmorModVsFire */
     , (800130,  18,       1) /* ArmorModVsAcid */
     , (800130,  19,     0.6) /* ArmorModVsElectric */
     , (800130,  54,       3) /* UseRadius */
     , (800130,  64,       1) /* ResistSlash */
     , (800130,  65,       1) /* ResistPierce */
     , (800130,  66,       1) /* ResistBludgeon */
     , (800130,  67,       1) /* ResistFire */
     , (800130,  68,       1) /* ResistCold */
     , (800130,  69,       1) /* ResistAcid */
     , (800130,  70,       1) /* ResistElectric */
     , (800130,  71,       1) /* ResistHealthBoost */
     , (800130,  72,       1) /* ResistStaminaDrain */
     , (800130,  73,       1) /* ResistStaminaBoost */
     , (800130,  74,       1) /* ResistManaDrain */
     , (800130,  75,       1) /* ResistManaBoost */
     , (800130, 104,      10) /* ObviousRadarRange */
     , (800130, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800130,   1, 'Arcanum Gem Researcher') /* Name */
     , (800130,   3, 'Female') /* Sex */
     , (800130,   4, 'Aluvian') /* HeritageGroup */
     , (800130,   5, 'Academic') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800130,   1, 0x02000001) /* Setup */
     , (800130,   2, 0x09000001) /* MotionTable */
     , (800130,   3, 0x20000001) /* SoundTable */
     , (800130,   4, 0x30000000) /* CombatTable */
     , (800130,   8, 0x06001036) /* Icon */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800130,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800130,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800130,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800130,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800130,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800130,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800130,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800130,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800130,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800130,   1, 500, 0, 0) /* Strength */
     , (800130,   2, 460, 0, 0) /* Endurance */
     , (800130,   3, 450, 0, 0) /* Quickness */
     , (800130,   4, 520, 0, 0) /* Coordination */
     , (800130,   5, 350, 0, 0) /* Focus */
     , (800130,   6, 370, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800130,   1,   500, 0, 0,  730) /* MaxHealth */
     , (800130,   3,   500, 0, 0,  960) /* MaxStamina */
     , (800130,   5,   540, 0, 0,  910) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800130,  6, 0, 2, 0, 200, 0,1603.000244140625) /* MeleeDefense        Trained */
     , (800130,  7, 0, 2, 0, 200, 0,1603.000244140625) /* MissileDefense      Trained */
     , (800130, 13, 0, 2, 0,   2, 0,1603.000244140625) /* UnarmedCombat       Trained */
     , (800130, 46, 0, 3, 0, 600, 0, 0) /* FinesseWeapons      Specialized */
     , (800130, 49, 0, 3, 0, 600, 0, 0) /* DualWield           Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800130, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Gems hold energies that we have yet to understand. The Omega Sapphire is my favorite. It is said that it gives people the power to not only get people in touch with their inner memories, but also give them the power to manipulate others! Do you have any cool gems for me?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800130, 6 /* Give */, 1, 800036, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'This stone... it has so much hidden power! Allow me to unlock it for you. Now take it to Thorid the Dark. He lurks in the shadows of Ayan Buqar. He will inlay it into a weapon of your choice. It may take several stones to get the power you desire.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 800037, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800130, 2, 30832,  1, 0,    0, False) /* Create Doppelganger Robe (30832) for Wield */;

