DELETE FROM `weenie` WHERE `class_Id` = 802355;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802355, 'Supporter Item Vendor', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802355,   1,         16) /* ItemType - Creature */
     , (802355,   2,         31) /* CreatureType - Human */
     , (802355,   6,         -1) /* ItemsCapacity */
     , (802355,   7,         -1) /* ContainersCapacity */
     , (802355,  16,         32) /* ItemUseable - Remote */
     , (802355,  25,        350) /* Level */
     , (802355,  27,          0) /* ArmorType - None */
     , (802355,  74,          0) /* MerchandiseItemTypes - None */
     , (802355,  75,          0) /* MerchandiseMinValue */
     , (802355,  76,     100000) /* MerchandiseMaxValue */
     , (802355,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (802355, 113,          1) /* Gender - Male */
     , (802355, 126,        125) /* VendorHappyMean */
     , (802355, 127,        125) /* VendorHappyVariance */
     , (802355, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802355, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802355, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802355,   1, True ) /* Stuck */
     , (802355,  19, False) /* Attackable */
     , (802355,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802355,   1,       5) /* HeartbeatInterval */
     , (802355,   2,       0) /* HeartbeatTimestamp */
     , (802355,   3,    0.16) /* HealthRate */
     , (802355,   4,       5) /* StaminaRate */
     , (802355,   5,       1) /* ManaRate */
     , (802355,  11,     300) /* ResetInterval */
     , (802355,  13,     0.9) /* ArmorModVsSlash */
     , (802355,  14,       1) /* ArmorModVsPierce */
     , (802355,  15,     1.1) /* ArmorModVsBludgeon */
     , (802355,  16,     0.4) /* ArmorModVsCold */
     , (802355,  17,     0.4) /* ArmorModVsFire */
     , (802355,  18,       1) /* ArmorModVsAcid */
     , (802355,  19,     0.6) /* ArmorModVsElectric */
     , (802355,  37,       1) /* BuyPrice */
     , (802355,  38,    0.75) /* SellPrice */
     , (802355,  54,       3) /* UseRadius */
     , (802355,  64,       1) /* ResistSlash */
     , (802355,  65,       1) /* ResistPierce */
     , (802355,  66,       1) /* ResistBludgeon */
     , (802355,  67,       1) /* ResistFire */
     , (802355,  68,       1) /* ResistCold */
     , (802355,  69,       1) /* ResistAcid */
     , (802355,  70,       1) /* ResistElectric */
     , (802355,  71,       1) /* ResistHealthBoost */
     , (802355,  72,       1) /* ResistStaminaDrain */
     , (802355,  73,       1) /* ResistStaminaBoost */
     , (802355,  74,       1) /* ResistManaDrain */
     , (802355,  75,       1) /* ResistManaBoost */
     , (802355, 104,      10) /* ObviousRadarRange */
     , (802355, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802355,   1, 'Lounge Item Vendor') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802355,   1,   33554433) /* Setup */
     , (802355,   2,  150994945) /* MotionTable */
     , (802355,   3,  536870913) /* SoundTable */
     , (802355,   6,   67108990) /* PaletteBase */
     , (802355,   8,  100667446) /* Icon */
     , (802355,   9,   83890483) /* EyesTexture */
     , (802355,  10,   83890538) /* NoseTexture */
     , (802355,  11,   83890617) /* MouthTexture */
     , (802355,  15,   67117080) /* HairPalette */
     , (802355,  16,   67110062) /* EyesPalette */
     , (802355,  17,   67109550) /* SkinPalette */
     , (802355,  18,   16795650) /* HeadObject */
     , (802355,  57,     801690) /* AlternateCurrency - AshCoin */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802355,   1, 220, 0, 0) /* Strength */
     , (802355,   2, 270, 0, 0) /* Endurance */
     , (802355,   3, 200, 0, 0) /* Quickness */
     , (802355,   4, 200, 0, 0) /* Coordination */
     , (802355,   5, 290, 0, 0) /* Focus */
     , (802355,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802355,   1,   196, 0, 0, 331) /* MaxHealth */
     , (802355,   3,   196, 0, 0, 466) /* MaxStamina */
     , (802355,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802355,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802355,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802355,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802355,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802355,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802355,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802355,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802355,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802355,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802355,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome! I sell currency notes!.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802355,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I hope you got what you needed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802355,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You have made a wise choice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802355,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Enjoy the splendors of your hard work!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802355, 2, 28614,  0, 90, 0, False) /* Create Vestiri Robe with Hood (28614) for Wield */
     , (802355, 4, 801258,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Velvet (801258) for Shop */
     , (802355, 4, 801259,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Sapphire (801259) for Shop */
     , (802355, 4, 801260,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Ruby (801260) for Shop */
     , (802355, 4, 801261,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Pyreal (801261) for Shop */
     , (802355, 4, 801262,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Diamond (801262) for Shop */
     , (802355, 4, 801263,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Amber (801263) for Shop */
     , (802355, 4, 801264,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Opal (801264) for Shop */
     , (802355, 4, 801265,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Green Garnet (801265) for Shop */
     , (802355, 4, 801266,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Brass (801266) for Shop */
     , (802355, 4, 801267,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Granite (801267) for Shop */
     , (802355, 4, 801268,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Iron (801268) for Shop */
     , (802355, 4, 801269,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Mahogany (801269) for Shop */
     , (802355, 4, 802277,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Steel (802277) for Shop */
     , (802355, 4, 802315,  0, 4, 0, False) /* Create Heavy Living Proto Key (802315) for Shop */
     , (802355, 4, 802316,  0, 4, 0, False) /* Create Durable Living Proto Key (802316) for Shop */
     , (802355, 4, 802317,  0, 4, 0, False) /* Create Mega Living Proto Key (802317) for Shop */
     , (802355, 4, 802318,  0, 4, 0, False) /* Create Ultra Living Proto Key (802318) for Shop */
     , (802355, 4, 802753,  0, 4, 0, False) /* Create Cloak of Independence for Shop */
     , (802355, 4, 803042,  0, 4, 0, False) /* Create Kilgars Box for Shop */
     , (802355, 4, 803194,  0, 4, 0, False) /* Create Kilgars Box for Shop */;
