DELETE FROM `weenie` WHERE `class_Id` = 803344;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803344, 'Mirra Agent Manufacturer', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803344,   1,         16) /* ItemType - Creature */
     , (803344,   2,         31) /* CreatureType - Human */
     , (803344,   6,         -1) /* ItemsCapacity */
     , (803344,   7,         -1) /* ContainersCapacity */
     , (803344,  16,         32) /* ItemUseable - Remote */
     , (803344,  25,        350) /* Level */
     , (803344,  27,          0) /* ArmorType - None */
     , (803344,  74,          0) /* MerchandiseItemTypes - None */
     , (803344,  75,          0) /* MerchandiseMinValue */
     , (803344,  76,     100000) /* MerchandiseMaxValue */
     , (803344,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (803344, 113,          1) /* Gender - Male */
     , (803344, 126,        125) /* VendorHappyMean */
     , (803344, 127,        125) /* VendorHappyVariance */
     , (803344, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803344, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803344, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803344,   1, True ) /* Stuck */
     , (803344,  19, False) /* Attackable */
     , (803344,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803344,   1,       5) /* HeartbeatInterval */
     , (803344,   2,       0) /* HeartbeatTimestamp */
     , (803344,   3,    0.16) /* HealthRate */
     , (803344,   4,       5) /* StaminaRate */
     , (803344,   5,       1) /* ManaRate */
     , (803344,  11,     300) /* ResetInterval */
     , (803344,  13,     0.9) /* ArmorModVsSlash */
     , (803344,  14,       1) /* ArmorModVsPierce */
     , (803344,  15,     1.1) /* ArmorModVsBludgeon */
     , (803344,  16,     0.4) /* ArmorModVsCold */
     , (803344,  17,     0.4) /* ArmorModVsFire */
     , (803344,  18,       1) /* ArmorModVsAcid */
     , (803344,  19,     0.6) /* ArmorModVsElectric */
     , (803344,  37,       1) /* BuyPrice */
     , (803344,  38,       1) /* SellPrice */
     , (803344,  54,       3) /* UseRadius */
     , (803344,  64,       1) /* ResistSlash */
     , (803344,  65,       1) /* ResistPierce */
     , (803344,  66,       1) /* ResistBludgeon */
     , (803344,  67,       1) /* ResistFire */
     , (803344,  68,       1) /* ResistCold */
     , (803344,  69,       1) /* ResistAcid */
     , (803344,  70,       1) /* ResistElectric */
     , (803344,  71,       1) /* ResistHealthBoost */
     , (803344,  72,       1) /* ResistStaminaDrain */
     , (803344,  73,       1) /* ResistStaminaBoost */
     , (803344,  74,       1) /* ResistManaDrain */
     , (803344,  75,       1) /* ResistManaBoost */
     , (803344, 104,      10) /* ObviousRadarRange */
     , (803344, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803344,   1, 'Mirra Agent Manufacturer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803344,   1,   33554433) /* Setup */
     , (803344,   2,  150994945) /* MotionTable */
     , (803344,   3,  536870913) /* SoundTable */
     , (803344,   6,   67108990) /* PaletteBase */
     , (803344,   8,  100667446) /* Icon */
     , (803344,   9,   83890483) /* EyesTexture */
     , (803344,  10,   83890538) /* NoseTexture */
     , (803344,  11,   83890617) /* MouthTexture */
     , (803344,  15,   67117080) /* HairPalette */
     , (803344,  16,   67110062) /* EyesPalette */
     , (803344,  17,   67109550) /* SkinPalette */
     , (803344,  18,   16795650) /* HeadObject */
     , (803344,  57,     803342) /* AlternateCurrency - AshCoin */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803344,   1, 220, 0, 0) /* Strength */
     , (803344,   2, 270, 0, 0) /* Endurance */
     , (803344,   3, 200, 0, 0) /* Quickness */
     , (803344,   4, 200, 0, 0) /* Coordination */
     , (803344,   5, 290, 0, 0) /* Focus */
     , (803344,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803344,   1,   196, 0, 0, 331) /* MaxHealth */
     , (803344,   3,   196, 0, 0, 466) /* MaxStamina */
     , (803344,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803344,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803344,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803344,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803344,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803344,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803344,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803344,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803344,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803344,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803344,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803344,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I hope you got what you needed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803344,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You have made a wise choice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803344,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Enjoy the splendors of your hard work!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803344, 2, 28614,  0, 90, 0, False) /* Create Vestiri Robe with Hood (28614) for Wield */
     , (803344, 4, 803338,  0, 4, 0, False) /* Create Mirra Agent of Power for Shop */
     , (803344, 4, 803339,  0, 4, 0, False) /* Create Mirra Agent of the Spirit for Shop */
     , (803344, 4, 803340,  0, 4, 0, False) /* Create Mirra Agent of the Archer for Shop */
     , (803344, 4, 803341,  0, 4, 0, False) /* Create Mirra Agent of the Defender for Shop */;
