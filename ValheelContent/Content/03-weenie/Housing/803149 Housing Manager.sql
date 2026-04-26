DELETE FROM `weenie` WHERE `class_Id` = 803149;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803149, 'Housing Manager', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803149,   1,         16) /* ItemType - Creature */
     , (803149,   2,         31) /* CreatureType - Human */
     , (803149,   6,         -1) /* ItemsCapacity */
     , (803149,   7,         -1) /* ContainersCapacity */
     , (803149,  16,         32) /* ItemUseable - Remote */
     , (803149,  25,        250) /* Level */
     , (803149,  27,          0) /* ArmorType - None */
     , (803149,  74,          0) /* MerchandiseItemTypes - None */
     , (803149,  75,          0) /* MerchandiseMinValue */
     , (803149,  76,     100000) /* MerchandiseMaxValue */
     , (803149,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (803149, 113,          1) /* Gender - Male */
     , (803149, 126,        125) /* VendorHappyMean */
     , (803149, 127,        125) /* VendorHappyVariance */
     , (803149, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803149, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803149, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803149,   1, True ) /* Stuck */
     , (803149,  19, False) /* Attackable */
     , (803149,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803149,   1,       5) /* HeartbeatInterval */
     , (803149,   2,       0) /* HeartbeatTimestamp */
     , (803149,   3,    0.16) /* HealthRate */
     , (803149,   4,       5) /* StaminaRate */
     , (803149,   5,       1) /* ManaRate */
     , (803149,  11,     300) /* ResetInterval */
     , (803149,  13,     0.9) /* ArmorModVsSlash */
     , (803149,  14,       1) /* ArmorModVsPierce */
     , (803149,  15,     1.1) /* ArmorModVsBludgeon */
     , (803149,  16,     0.4) /* ArmorModVsCold */
     , (803149,  17,     0.4) /* ArmorModVsFire */
     , (803149,  18,       1) /* ArmorModVsAcid */
     , (803149,  19,     0.6) /* ArmorModVsElectric */
     , (803149,  37,       1) /* BuyPrice */
     , (803149,  38,       1) /* SellPrice */
     , (803149,  54,       3) /* UseRadius */
     , (803149,  64,       1) /* ResistSlash */
     , (803149,  65,       1) /* ResistPierce */
     , (803149,  66,       1) /* ResistBludgeon */
     , (803149,  67,       1) /* ResistFire */
     , (803149,  68,       1) /* ResistCold */
     , (803149,  69,       1) /* ResistAcid */
     , (803149,  70,       1) /* ResistElectric */
     , (803149,  71,       1) /* ResistHealthBoost */
     , (803149,  72,       1) /* ResistStaminaDrain */
     , (803149,  73,       1) /* ResistStaminaBoost */
     , (803149,  74,       1) /* ResistManaDrain */
     , (803149,  75,       1) /* ResistManaBoost */
     , (803149, 104,      10) /* ObviousRadarRange */
     , (803149, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803149,   1, 'Housing Manager') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803149,   1,   33554433) /* Setup */
     , (803149,   2,  150994945) /* MotionTable */
     , (803149,   3,  536870913) /* SoundTable */
     , (803149,   6,   67108990) /* PaletteBase */
     , (803149,   8,  100667446) /* Icon */
     , (803149,   9,   83890483) /* EyesTexture */
     , (803149,  10,   83890538) /* NoseTexture */
     , (803149,  11,   83890617) /* MouthTexture */
     , (803149,  15,   67117080) /* HairPalette */
     , (803149,  16,   67110062) /* EyesPalette */
     , (803149,  17,   67109550) /* SkinPalette */
     , (803149,  18,   16795650) /* HeadObject */
     , (803149,  57,     801690) /* AlternateCurrency - AshCoin */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803149,   1, 220, 0, 0) /* Strength */
     , (803149,   2, 270, 0, 0) /* Endurance */
     , (803149,   3, 200, 0, 0) /* Quickness */
     , (803149,   4, 200, 0, 0) /* Coordination */
     , (803149,   5, 290, 0, 0) /* Focus */
     , (803149,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803149,   1,   196, 0, 0, 331) /* MaxHealth */
     , (803149,   3,   196, 0, 0, 466) /* MaxStamina */
     , (803149,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803149,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803149,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803149,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803149,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803149,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803149,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803149,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803149,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803149,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803149,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome to my shop, I have some goodies to help you get the perfect home!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803149,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Peace be with you, warrior.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803149,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Ah! A great choice!.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803149,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'A finer selection cuold not have been made!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803149, 2, 29542,  1, 0, 0, False) /* Create Enscorcelled Robe (29542) for Wield */
     , (803149, 4, 11710,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  9511,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4, 45875,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  8425,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  9413,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  14772,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  12235,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  11370,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  8426,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  4234,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  4230,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  4229,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  4224,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  4222,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  3709,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  3700,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  3698,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  3675,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  3674,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803149, 4,  0511,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */;
