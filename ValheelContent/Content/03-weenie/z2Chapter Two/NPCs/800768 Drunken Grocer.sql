DELETE FROM `weenie` WHERE `class_Id` = 800768;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800768, 'Drunken Grocer', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800768,   1,         16) /* ItemType - Creature */
     , (800768,   2,         31) /* CreatureType - Human */
     , (800768,   6,         -1) /* ItemsCapacity */
     , (800768,   7,         -1) /* ContainersCapacity */
     , (800768,  16,         32) /* ItemUseable - Remote */
     , (800768,  25,        250) /* Level */
     , (800768,  27,          0) /* ArmorType - None */
     , (800768,  74,          0) /* MerchandiseItemTypes - None */
     , (800768,  75,          0) /* MerchandiseMinValue */
     , (800768,  76,     100000) /* MerchandiseMaxValue */
     , (800768,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (800768, 113,          1) /* Gender - Male */
     , (800768, 126,        125) /* VendorHappyMean */
     , (800768, 127,        125) /* VendorHappyVariance */
     , (800768, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800768, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800768, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800768,   1, True ) /* Stuck */
     , (800768,  19, False) /* Attackable */
     , (800768,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800768,   1,       5) /* HeartbeatInterval */
     , (800768,   2,       0) /* HeartbeatTimestamp */
     , (800768,   3,    0.16) /* HealthRate */
     , (800768,   4,       5) /* StaminaRate */
     , (800768,   5,       1) /* ManaRate */
     , (800768,  11,     300) /* ResetInterval */
     , (800768,  13,     0.9) /* ArmorModVsSlash */
     , (800768,  14,       1) /* ArmorModVsPierce */
     , (800768,  15,     1.1) /* ArmorModVsBludgeon */
     , (800768,  16,     0.4) /* ArmorModVsCold */
     , (800768,  17,     0.4) /* ArmorModVsFire */
     , (800768,  18,       1) /* ArmorModVsAcid */
     , (800768,  19,     0.6) /* ArmorModVsElectric */
     , (800768,  37,       1) /* BuyPrice */
     , (800768,  38,       1) /* SellPrice */
     , (800768,  54,       3) /* UseRadius */
     , (800768,  64,       1) /* ResistSlash */
     , (800768,  65,       1) /* ResistPierce */
     , (800768,  66,       1) /* ResistBludgeon */
     , (800768,  67,       1) /* ResistFire */
     , (800768,  68,       1) /* ResistCold */
     , (800768,  69,       1) /* ResistAcid */
     , (800768,  70,       1) /* ResistElectric */
     , (800768,  71,       1) /* ResistHealthBoost */
     , (800768,  72,       1) /* ResistStaminaDrain */
     , (800768,  73,       1) /* ResistStaminaBoost */
     , (800768,  74,       1) /* ResistManaDrain */
     , (800768,  75,       1) /* ResistManaBoost */
     , (800768, 104,      10) /* ObviousRadarRange */
     , (800768, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800768,   1, 'Drunken Grocer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800768,   1,   33554433) /* Setup */
     , (800768,   2,  150994945) /* MotionTable */
     , (800768,   3,  536870913) /* SoundTable */
     , (800768,   6,   67108990) /* PaletteBase */
     , (800768,   8,  100667446) /* Icon */
     , (800768,   9,   83890483) /* EyesTexture */
     , (800768,  10,   83890538) /* NoseTexture */
     , (800768,  11,   83890617) /* MouthTexture */
     , (800768,  15,   67117080) /* HairPalette */
     , (800768,  16,   67110062) /* EyesPalette */
     , (800768,  17,   67109550) /* SkinPalette */
     , (800768,  18,   16795650) /* HeadObject */
     , (800768,  57,     801690) /* AlternateCurrency - Vhorma Coin */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800768,   1, 220, 0, 0) /* Strength */
     , (800768,   2, 270, 0, 0) /* Endurance */
     , (800768,   3, 200, 0, 0) /* Quickness */
     , (800768,   4, 200, 0, 0) /* Coordination */
     , (800768,   5, 290, 0, 0) /* Focus */
     , (800768,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800768,   1,   196, 0, 0, 331) /* MaxHealth */
     , (800768,   3,   196, 0, 0, 466) /* MaxStamina */
     , (800768,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800768,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800768,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800768,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800768,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800768,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800768,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800768,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800768,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800768,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800768,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800768,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Goodbye my friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800768,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I only accept Heavy keys, tell your friends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800768,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I only accept Heavy keys, tell your friends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800768, 2,  5909, -1, 0, 0, False) /* Create Faran War Master Robe (5909) for Wield */
     , (800768, 4, 28842, -1, 0, 0, False) /* Create Essence of Cave Penguin (28842) for Shop */
     , (800768, 4, 28843, -1, 0, 0, False) /* Create Cave Penguin Cake (28843) for Shop */
     , (800768, 4, 52700, -1, 0, 0, False) /* Create Honeyed Life Mead (52700) for Shop */
     , (800768, 4, 52701, -1, 0, 0, False) /* Create Honeyed Mana Mead (52701) for Shop */
     , (800768, 4, 52703, -1, 0, 0, False) /* Create Honeyed Vigor Mead (52703) for Shop */;
