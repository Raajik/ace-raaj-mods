DELETE FROM `weenie` WHERE `class_Id` = 801695;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801695, 'Carnage Token Trader', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801695,   1,         16) /* ItemType - Creature */
     , (801695,   2,         31) /* CreatureType - Human */
     , (801695,   6,         -1) /* ItemsCapacity */
     , (801695,   7,         -1) /* ContainersCapacity */
     , (801695,  16,         32) /* ItemUseable - Remote */
     , (801695,  25,        250) /* Level */
     , (801695,  27,          0) /* ArmorType - None */
     , (801695,  74,          0) /* MerchandiseItemTypes - None */
     , (801695,  75,          0) /* MerchandiseMinValue */
     , (801695,  76,     100000) /* MerchandiseMaxValue */
     , (801695,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (801695, 113,          1) /* Gender - Male */
     , (801695, 126,        125) /* VendorHappyMean */
     , (801695, 127,        125) /* VendorHappyVariance */
     , (801695, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801695, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801695, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801695,   1, True ) /* Stuck */
     , (801695,  19, False) /* Attackable */
     , (801695,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801695,   1,       5) /* HeartbeatInterval */
     , (801695,   2,       0) /* HeartbeatTimestamp */
     , (801695,   3,    0.16) /* HealthRate */
     , (801695,   4,       5) /* StaminaRate */
     , (801695,   5,       1) /* ManaRate */
     , (801695,  11,     300) /* ResetInterval */
     , (801695,  13,     0.9) /* ArmorModVsSlash */
     , (801695,  14,       1) /* ArmorModVsPierce */
     , (801695,  15,     1.1) /* ArmorModVsBludgeon */
     , (801695,  16,     0.4) /* ArmorModVsCold */
     , (801695,  17,     0.4) /* ArmorModVsFire */
     , (801695,  18,       1) /* ArmorModVsAcid */
     , (801695,  19,     0.6) /* ArmorModVsElectric */
     , (801695,  37,       1) /* BuyPrice */
     , (801695,  38,       1) /* SellPrice */
     , (801695,  54,       3) /* UseRadius */
     , (801695,  64,       1) /* ResistSlash */
     , (801695,  65,       1) /* ResistPierce */
     , (801695,  66,       1) /* ResistBludgeon */
     , (801695,  67,       1) /* ResistFire */
     , (801695,  68,       1) /* ResistCold */
     , (801695,  69,       1) /* ResistAcid */
     , (801695,  70,       1) /* ResistElectric */
     , (801695,  71,       1) /* ResistHealthBoost */
     , (801695,  72,       1) /* ResistStaminaDrain */
     , (801695,  73,       1) /* ResistStaminaBoost */
     , (801695,  74,       1) /* ResistManaDrain */
     , (801695,  75,       1) /* ResistManaBoost */
     , (801695, 104,      10) /* ObviousRadarRange */
     , (801695, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801695,   1, 'Carnage Token Trader') /* Name */
     , (801695,   5, 'Adventurer''s Haven Exchange Trader') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801695,   1,   33554433) /* Setup */
     , (801695,   2,  150994945) /* MotionTable */
     , (801695,   3,  536870913) /* SoundTable */
     , (801695,   6,   67108990) /* PaletteBase */
     , (801695,   8,  100667446) /* Icon */
     , (801695,   9,   83890483) /* EyesTexture */
     , (801695,  10,   83890538) /* NoseTexture */
     , (801695,  11,   83890617) /* MouthTexture */
     , (801695,  15,   67117080) /* HairPalette */
     , (801695,  16,   67110062) /* EyesPalette */
     , (801695,  17,   67109550) /* SkinPalette */
     , (801695,  18,   16795650) /* HeadObject */
     , (801695,  57,     801690) /* AlternateCurrency - Carnage Token */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801695,   1, 220, 0, 0) /* Strength */
     , (801695,   2, 270, 0, 0) /* Endurance */
     , (801695,   3, 200, 0, 0) /* Quickness */
     , (801695,   4, 200, 0, 0) /* Coordination */
     , (801695,   5, 290, 0, 0) /* Focus */
     , (801695,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801695,   1,   196, 0, 0, 331) /* MaxHealth */
     , (801695,   3,   196, 0, 0, 466) /* MaxStamina */
     , (801695,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801695,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801695,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801695,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801695,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801695,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801695,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801695,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801695,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801695,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801695,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801695,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Goodbye my friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801695,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'May the market be in your favor.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801695,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'May the market be in your favor.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801695, 2, 28614,  0, 90, 0, False) /* Create Vestiri Robe with Hood (28614) for Wield */
     , (801695, 4, 800112,  0, 4, 0, False) /* Create AshCoin (801690) for Shop */
     , (801695, 4, 800478,  0, 4, 0, False) /* Create AshCoin (801690) for Shop */
     , (801695, 4, 801400,  0, 4, 0, False) /* Create AshCoin (801690) for Shop */
     , (801695, 4, 801536,  0, 4, 0, False) /* Create AshCoin (801690) for Shop */
     , (801695, 4, 800850,  0, 4, 0, False) /* Create AshCoin (801690) for Shop */;
