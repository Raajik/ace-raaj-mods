DELETE FROM `weenie` WHERE `class_Id` = 800387;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800387, 'Tradewind''s Path Weaponsmith', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800387,   1,         16) /* ItemType - Creature */
     , (800387,   2,         31) /* CreatureType - Human */
     , (800387,   6,         -1) /* ItemsCapacity */
     , (800387,   7,         -1) /* ContainersCapacity */
     , (800387,  16,         32) /* ItemUseable - Remote */
     , (800387,  25,        250) /* Level */
     , (800387,  27,          0) /* ArmorType - None */
     , (800387,  74,          0) /* MerchandiseItemTypes - None */
     , (800387,  75,          0) /* MerchandiseMinValue */
     , (800387,  76,     100000) /* MerchandiseMaxValue */
     , (800387,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (800387, 113,          1) /* Gender - Male */
     , (800387, 126,        125) /* VendorHappyMean */
     , (800387, 127,        125) /* VendorHappyVariance */
     , (800387, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800387, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800387, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800387,   1, True ) /* Stuck */
     , (800387,  19, False) /* Attackable */
     , (800387,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800387,   1,       5) /* HeartbeatInterval */
     , (800387,   2,       0) /* HeartbeatTimestamp */
     , (800387,   3,    0.16) /* HealthRate */
     , (800387,   4,       5) /* StaminaRate */
     , (800387,   5,       1) /* ManaRate */
     , (800387,  11,     300) /* ResetInterval */
     , (800387,  13,     0.9) /* ArmorModVsSlash */
     , (800387,  14,       1) /* ArmorModVsPierce */
     , (800387,  15,     1.1) /* ArmorModVsBludgeon */
     , (800387,  16,     0.4) /* ArmorModVsCold */
     , (800387,  17,     0.4) /* ArmorModVsFire */
     , (800387,  18,       1) /* ArmorModVsAcid */
     , (800387,  19,     0.6) /* ArmorModVsElectric */
     , (800387,  37,       1) /* BuyPrice */
     , (800387,  38,       0) /* SellPrice */
     , (800387,  54,       3) /* UseRadius */
     , (800387,  64,       1) /* ResistSlash */
     , (800387,  65,       1) /* ResistPierce */
     , (800387,  66,       1) /* ResistBludgeon */
     , (800387,  67,       1) /* ResistFire */
     , (800387,  68,       1) /* ResistCold */
     , (800387,  69,       1) /* ResistAcid */
     , (800387,  70,       1) /* ResistElectric */
     , (800387,  71,       1) /* ResistHealthBoost */
     , (800387,  72,       1) /* ResistStaminaDrain */
     , (800387,  73,       1) /* ResistStaminaBoost */
     , (800387,  74,       1) /* ResistManaDrain */
     , (800387,  75,       1) /* ResistManaBoost */
     , (800387, 104,      10) /* ObviousRadarRange */
     , (800387, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800387,   1, 'Tradewind''s Path Omni-Vendor') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800387,   1,   33554433) /* Setup */
     , (800387,   2,  150994945) /* MotionTable */
     , (800387,   3,  536870913) /* SoundTable */
     , (800387,   6,   67108990) /* PaletteBase */
     , (800387,   8,  100667446) /* Icon */
     , (800387,   9,   83890483) /* EyesTexture */
     , (800387,  10,   83890538) /* NoseTexture */
     , (800387,  11,   83890617) /* MouthTexture */
     , (800387,  15,   67117080) /* HairPalette */
     , (800387,  16,   67110062) /* EyesPalette */
     , (800387,  17,   67109550) /* SkinPalette */
     , (800387,  18,   16795650) /* HeadObject */
     , (800387,  57,     803939) /* AlternateCurrency - Heavy ValHeel Empowered Key */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800387,   1, 5000, 0, 0) /* Strength */
     , (800387,   2, 5000, 0, 0) /* Endurance */
     , (800387,   3, 5000, 0, 0) /* Quickness */
     , (800387,   4, 5000, 0, 0) /* Coordination */
     , (800387,   5, 5000, 0, 0) /* Focus */
     , (800387,   6, 5000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800387,   1,   500000, 0, 0, 500000) /* MaxHealth */
     , (800387,   3,   500000, 0, 0, 500000) /* MaxStamina */
     , (800387,   5,   500000, 0, 0, 500000) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800387,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800387,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800387,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800387,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800387,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800387,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800387,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800387,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800387,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800387,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Surviving is only half the battle...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800387,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I hope to see you again, if you can manage to stay alive.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800387,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You will not regret your purchase.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800387,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Do not lose this...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800387, 2,  26007, -1,  0, 0, False) /* Create Vestiri Robe with Hood (28614) for Wield */
	 , (800387, 4, 803883,  0, 39, 0, False) /* Create BZ Touched Sword for Shop */
	 , (800387, 4, 803884,  0, 39, 0, False) /* Create BZ Touched Axe for Shop */
	 , (800387, 4, 803885,  0, 39, 0, False) /* Create BZ Touched Bow for Shop */
	 , (800387, 4, 803886,  0, 39, 0, False) /* Create BZ Touched Sword for Shop */
	 , (800387, 4, 803887,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803888,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803889,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803890,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803891,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803892,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803893,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803894,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803895,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803896,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803897,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803898,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803899,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803900,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803901,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803902,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803903,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803904,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803905,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803906,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803907,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803908,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803909,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803910,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803911,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803912,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803913,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803914,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803915,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803916,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803917,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803918,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803919,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803920,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803921,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803922,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803923,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803924,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803925,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803926,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803927,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803928,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803929,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803930,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803931,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803932,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803933,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803934,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803935,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803936,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */
	 , (800387, 4, 803937,  0, 39, 0, False) /* Create BZ Touched Wand for Shop */;
