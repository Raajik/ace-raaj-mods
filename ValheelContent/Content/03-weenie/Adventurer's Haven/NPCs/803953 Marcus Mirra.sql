DELETE FROM `weenie` WHERE `class_Id` = 803953;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803953, 'Foolproof Mirra Vendor', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803953,   1,         16) /* ItemType - Creature */
     , (803953,   2,         31) /* CreatureType - Human */
     , (803953,   6,         -1) /* ItemsCapacity */
     , (803953,   7,         -1) /* ContainersCapacity */
     , (803953,  16,         32) /* ItemUseable - Remote */
     , (803953,  25,        350) /* Level */
     , (803953,  27,          0) /* ArmorType - None */
     , (803953,  74,          0) /* MerchandiseItemTypes - None */
     , (803953,  75,          0) /* MerchandiseMinValue */
     , (803953,  76,     100000) /* MerchandiseMaxValue */
     , (803953,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (803953, 113,          1) /* Gender - Male */
     , (803953, 126,        125) /* VendorHappyMean */
     , (803953, 127,        125) /* VendorHappyVariance */
     , (803953, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803953, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803953, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803953,   1, True ) /* Stuck */
     , (803953,  19, False) /* Attackable */
     , (803953,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803953,   1,       5) /* HeartbeatInterval */
     , (803953,   2,       0) /* HeartbeatTimestamp */
     , (803953,   3,    0.16) /* HealthRate */
     , (803953,   4,       5) /* StaminaRate */
     , (803953,   5,       1) /* ManaRate */
     , (803953,  11,     300) /* ResetInterval */
     , (803953,  13,     0.9) /* ArmorModVsSlash */
     , (803953,  14,       1) /* ArmorModVsPierce */
     , (803953,  15,     1.1) /* ArmorModVsBludgeon */
     , (803953,  16,     0.4) /* ArmorModVsCold */
     , (803953,  17,     0.4) /* ArmorModVsFire */
     , (803953,  18,       1) /* ArmorModVsAcid */
     , (803953,  19,     0.6) /* ArmorModVsElectric */
     , (803953,  37,       1) /* BuyPrice */
     , (803953,  38,     0.5) /* SellPrice */
     , (803953,  54,       3) /* UseRadius */
     , (803953,  64,       1) /* ResistSlash */
     , (803953,  65,       1) /* ResistPierce */
     , (803953,  66,       1) /* ResistBludgeon */
     , (803953,  67,       1) /* ResistFire */
     , (803953,  68,       1) /* ResistCold */
     , (803953,  69,       1) /* ResistAcid */
     , (803953,  70,       1) /* ResistElectric */
     , (803953,  71,       1) /* ResistHealthBoost */
     , (803953,  72,       1) /* ResistStaminaDrain */
     , (803953,  73,       1) /* ResistStaminaBoost */
     , (803953,  74,       1) /* ResistManaDrain */
     , (803953,  75,       1) /* ResistManaBoost */
     , (803953, 104,      10) /* ObviousRadarRange */
     , (803953, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803953,   1, 'Marcus Mirra') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803953,   1,   33554433) /* Setup */
     , (803953,   2,  150994945) /* MotionTable */
     , (803953,   3,  536870913) /* SoundTable */
     , (803953,   6,   67108990) /* PaletteBase */
     , (803953,   8,  100667446) /* Icon */
     , (803953,   9,   83890483) /* EyesTexture */
     , (803953,  10,   83890538) /* NoseTexture */
     , (803953,  11,   83890617) /* MouthTexture */
     , (803953,  15,   67117080) /* HairPalette */
     , (803953,  16,   67110062) /* EyesPalette */
     , (803953,  17,   67109550) /* SkinPalette */
     , (803953,  18,   16795650) /* HeadObject */
     , (803953,  57,     803342) /* AlternateCurrency - AshCoin */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803953,   1, 220, 0, 0) /* Strength */
     , (803953,   2, 270, 0, 0) /* Endurance */
     , (803953,   3, 200, 0, 0) /* Quickness */
     , (803953,   4, 200, 0, 0) /* Coordination */
     , (803953,   5, 290, 0, 0) /* Focus */
     , (803953,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803953,   1,   196, 0, 0, 331) /* MaxHealth */
     , (803953,   3,   196, 0, 0, 466) /* MaxStamina */
     , (803953,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803953,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803953,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803953,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803953,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803953,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803953,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803953,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803953,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803953,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803953,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome! I sell Foolproof Mirra!.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803953,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I hope you got what you needed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803953,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You have made a wise choice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803953,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Enjoy the splendors of your hard work!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803953, 2, 28614,  0, 14, 0, False) /* Create Vestiri Robe with Hood (28614) for Wield */
     , (803953, 4, 803950,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Velvet (801258) for Shop */
     , (803953, 4, 803951,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Sapphire (801259) for Shop */
     , (803953, 4, 803952,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Ruby (801260) for Shop */
     , (803953, 4, 803957,  0, 4, 0, False) /* Create Infinite Sealed Bag of Salvaged Ruby (801260) for Shop */;
