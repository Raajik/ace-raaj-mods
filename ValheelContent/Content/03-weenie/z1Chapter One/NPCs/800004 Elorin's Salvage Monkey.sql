DELETE FROM `weenie` WHERE `class_Id` = 800004;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800004, 'salvagemonkey', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800004,   1,         16) /* ItemType - Creature */
     , (800004,   2,         31) /* CreatureType - Human */
     , (800004,   6,         -1) /* ItemsCapacity */
     , (800004,   7,         -1) /* ContainersCapacity */
     , (800004,   8,        120) /* Mass */
     , (800004,  16,         32) /* ItemUseable - Remote */
     , (800004,  25,        300) /* Level */
     , (800004,  27,          0) /* ArmorType - None */
     , (800004,  74, 1208248231) /* MerchandiseItemTypes - VendorShopKeep */
     , (800004,  75,          0) /* MerchandiseMinValue */
     , (800004,  76,    1000000) /* MerchandiseMaxValue */
     , (800004,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (800004, 113,          1) /* Gender - Male */
     , (800004, 126,        125) /* VendorHappyMean */
     , (800004, 127,        125) /* VendorHappyVariance */
     , (800004, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800004, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800004, 146,         72) /* XpOverride */
     , (800004, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800004,   1, True ) /* Stuck */
     , (800004,  11, True ) /* IgnoreCollisions */
     , (800004,  12, True ) /* ReportCollisions */
     , (800004,  13, False) /* Ethereal */
     , (800004,  14, True ) /* GravityStatus */
     , (800004,  19, False) /* Attackable */
     , (800004,  39, True ) /* DealMagicalItems */
     , (800004,  41, True ) /* ReportCollisionsAsEnvironment */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800004,   1,       5) /* HeartbeatInterval */
     , (800004,   2,       0) /* HeartbeatTimestamp */
     , (800004,   3,    0.16) /* HealthRate */
     , (800004,   4,       5) /* StaminaRate */
     , (800004,   5,       1) /* ManaRate */
     , (800004,  11,     300) /* ResetInterval */
     , (800004,  13,     0.9) /* ArmorModVsSlash */
     , (800004,  14,       1) /* ArmorModVsPierce */
     , (800004,  15,     1.1) /* ArmorModVsBludgeon */
     , (800004,  16,     0.4) /* ArmorModVsCold */
     , (800004,  17,     0.4) /* ArmorModVsFire */
     , (800004,  18,       1) /* ArmorModVsAcid */
     , (800004,  19,     0.6) /* ArmorModVsElectric */
     , (800004,  37,       1) /* BuyPrice */
     , (800004,  38,       1) /* SellPrice */
     , (800004,  54,       5) /* UseRadius */
     , (800004,  64,       1) /* ResistSlash */
     , (800004,  65,       1) /* ResistPierce */
     , (800004,  66,       1) /* ResistBludgeon */
     , (800004,  67,       1) /* ResistFire */
     , (800004,  68,       1) /* ResistCold */
     , (800004,  69,       1) /* ResistAcid */
     , (800004,  70,       1) /* ResistElectric */
     , (800004,  71,       1) /* ResistHealthBoost */
     , (800004,  72,       1) /* ResistStaminaDrain */
     , (800004,  73,       1) /* ResistStaminaBoost */
     , (800004,  74,       1) /* ResistManaDrain */
     , (800004,  75,       1) /* ResistManaBoost */
     , (800004, 104,      10) /* ObviousRadarRange */
     , (800004, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800004,   1, 'Elorin''s Salvage Monkey') /* Name */
     , (800004,   3, 'Male') /* Sex */
     , (800004,   4, 'Aluvian') /* HeritageGroup */
     , (800004,   5, 'Shopkeeper') /* Template */
     , (800004,  24, 'Holtburg') /* TownName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800004,   1,   33554433) /* Setup */
     , (800004,   2,  150994945) /* MotionTable */
     , (800004,   3,  536870913) /* SoundTable */
     , (800004,   4,  805306368) /* CombatTable */
     , (800004,   6,   67108990) /* PaletteBase */
     , (800004,   8,  100667446) /* Icon */
     , (800004,   9,   83890445) /* EyesTexture */
     , (800004,  10,   83890560) /* NoseTexture */
     , (800004,  11,   83890632) /* MouthTexture */
     , (800004,  15,   67116995) /* HairPalette */
     , (800004,  16,   67110064) /* EyesPalette */
     , (800004,  17,   67109560) /* SkinPalette */
     , (800004,  57,      20630) /* AlternateCurrency - Trade Note (250,000) */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800004,   1,  20, 0, 0) /* Strength */
     , (800004,   2,  60, 0, 0) /* Endurance */
     , (800004,   3,  65, 0, 0) /* Quickness */
     , (800004,   4,  60, 0, 0) /* Coordination */
     , (800004,   5,  30, 0, 0) /* Focus */
     , (800004,   6,  20, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800004,   1,     0, 0, 0, 30) /* MaxHealth */
     , (800004,   3,     0, 0, 0, 60) /* MaxStamina */
     , (800004,   5,     0, 0, 0, 20) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800004,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800004,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800004,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800004,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800004,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800004,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800004,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800004,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800004,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800004,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome! What''s your pleasure today?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800004,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Thank you for your business. Please return soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800004,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 3 /* Sell */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You drive a hard bargain, my friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800004,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'An excellent purchase.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800004,  2 /* Vendor */,  0.125, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 318767239 /* Wave */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800004,  2 /* Vendor */,   0.25, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 318767229 /* BowDeep */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800004,  2 /* Vendor */,  0.375, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 318767238 /* Shrug */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800004,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 318767235 /* Nod */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800004, 2,  5909, -1, 0, 0, False) /* Create Faran War Master Robe (5909) for Wield */
     , (800004, 4, 800448, -1, 0, 0, False) /* Create Pack of Trading Cards (800448) for Shop */
     , (800004, 4, 800649, -1, 0, 0, False) /* Create Prismatic+ Pack of Trading Cards (800649) for Shop */
     , (800004, 4, 36575, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Opal (36575) for Shop */
     , (800004, 4, 36565, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Green Garnet (36565) for Shop */
     , (800004, 4, 36564, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Granite (36564) for Shop */
     , (800004, 4, 36569, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Velvet (36569) for Shop */
     , (800004, 4, 36567, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Mahogany (36567) for Shop */
     , (800004, 4, 36563, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Brass (36563) for Shop */
     , (800004, 4, 36566, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Iron (36566) for Shop */
     , (800004, 4, 36568, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Steel (36568) for Shop */
     , (800004, 4, 41767, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Diamond (41767) for Shop */
     , (800004, 4, 41768, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Gromnie Hide (41768) for Shop */
     , (800004, 4, 41769, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Pyreal (41769) for Shop */
     , (800004, 4, 41770, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Ruby (41770) for Shop */
     , (800004, 4, 36619, -1, 0, 0, False) /* Create Foolproof (36619) for Shop */
     , (800004, 4, 36620, -1, 0, 0, False) /* Create Foolproof (36620) for Shop */
     , (800004, 4, 36621, -1, 0, 0, False) /* Create Foolproof (36621) for Shop */
     , (800004, 4, 36622, -1, 0, 0, False) /* Create Foolproof (36622) for Shop */
     , (800004, 4, 36623, -1, 0, 0, False) /* Create Foolproof (36623) for Shop */
     , (800004, 4, 36624, -1, 0, 0, False) /* Create Foolproof (36624) for Shop */
     , (800004, 4, 36625, -1, 0, 0, False) /* Create Foolproof (36625) for Shop */
     , (800004, 4, 36626, -1, 0, 0, False) /* Create Foolproof (36626) for Shop */
     , (800004, 4, 36627, -1, 0, 0, False) /* Create Foolproof (36627) for Shop */
     , (800004, 4, 36628, -1, 0, 0, False) /* Create Foolproof (36628) for Shop */
     , (800004, 4, 54000, -1, 0, 0, False) /* Create Foolproof (54000) for Shop */
     , (800004, 4, 30082, -1, 0, 0, False) /* Create Perennial Thananim Dye (30082) for Shop */
     , (800004, 4, 30083, -1, 0, 0, False) /* Create Perennial Colban Dye (30083) for Shop */
     , (800004, 4, 30084, -1, 0, 0, False) /* Create Perennial Botched Dye (30084) for Shop */
     , (800004, 4, 30085, -1, 0, 0, False) /* Create Perennial Verdalim Dye (30085) for Shop */
     , (800004, 4, 30086, -1, 0, 0, False) /* Create Perennial Hennacin Dye (30086) for Shop */
     , (800004, 4, 30087, -1, 0, 0, False) /* Create Perennial Berimphur Dye (30087) for Shop */
     , (800004, 4, 30088, -1, 0, 0, False) /* Create Perennial Lapyan Dye (30088) for Shop */
     , (800004, 4, 30089, -1, 0, 0, False) /* Create Perennial Minalim Dye (30089) for Shop */
     , (800004, 4, 30090, -1, 0, 0, False) /* Create Perennial Relanim Dye (30090) for Shop */
     , (800004, 4, 30091, -1, 0, 0, False) /* Create Perennial Argenory Dye (30091) for Shop */
     , (800004, 4, 1000100, -1, 0, 0, False) /* Create Gold Dye (1000100) for Shop */
     , (800004, 4, 36636, -1, 0, 0, False) /* Create Foolproof (36636) for Shop */
     , (800004, 4, 801642, -1, 0, 0, False) /* Create Major Item Tinkering Armeture Certificate (801642) for Shop */
     , (800004, 4, 40605, -1, 0, 0, False) /* Create Armor Upgrade Kit Containment Gem (40605) for Shop */
     , (800004, 4, 41917, -1, 0, 0, False) /* Create Weapon Upgrade Kit Containment Gem (41917) for Shop */
     , (800004, 4, 801429, -1, 0, 0, False) /* Create Prismatic+ Card Pack Note (801429) for Shop */
     , (800004, 4, 801665, -1, 0, 0, False) /* Create Kloud's Diner Delivery Box (801665) for Shop */;
