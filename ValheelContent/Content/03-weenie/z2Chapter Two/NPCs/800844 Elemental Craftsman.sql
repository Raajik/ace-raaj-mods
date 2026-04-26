DELETE FROM `weenie` WHERE `class_Id` = 800844;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800844, 'Elemental Craftsman', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800844,   1,         16) /* ItemType - Creature */
     , (800844,   2,         31) /* CreatureType - Human */
     , (800844,   6,         -1) /* ItemsCapacity */
     , (800844,   7,         -1) /* ContainersCapacity */
     , (800844,  16,         32) /* ItemUseable - Remote */
     , (800844,  25,        250) /* Level */
     , (800844,  27,          0) /* ArmorType - None */
     , (800844,  74,          0) /* MerchandiseItemTypes - None */
     , (800844,  75,          0) /* MerchandiseMinValue */
     , (800844,  76,     100000) /* MerchandiseMaxValue */
     , (800844,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (800844, 113,          1) /* Gender - Male */
     , (800844, 126,        125) /* VendorHappyMean */
     , (800844, 127,        125) /* VendorHappyVariance */
     , (800844, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800844, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800844, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800844,   1, True ) /* Stuck */
     , (800844,  19, False) /* Attackable */
     , (800844,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800844,   1,       5) /* HeartbeatInterval */
     , (800844,   2,       0) /* HeartbeatTimestamp */
     , (800844,   3,    0.16) /* HealthRate */
     , (800844,   4,       5) /* StaminaRate */
     , (800844,   5,       1) /* ManaRate */
     , (800844,  11,     300) /* ResetInterval */
     , (800844,  13,     0.9) /* ArmorModVsSlash */
     , (800844,  14,       1) /* ArmorModVsPierce */
     , (800844,  15,     1.1) /* ArmorModVsBludgeon */
     , (800844,  16,     0.4) /* ArmorModVsCold */
     , (800844,  17,     0.4) /* ArmorModVsFire */
     , (800844,  18,       1) /* ArmorModVsAcid */
     , (800844,  19,     0.6) /* ArmorModVsElectric */
     , (800844,  37,       1) /* BuyPrice */
     , (800844,  38,       1) /* SellPrice */
     , (800844,  54,       3) /* UseRadius */
     , (800844,  64,       1) /* ResistSlash */
     , (800844,  65,       1) /* ResistPierce */
     , (800844,  66,       1) /* ResistBludgeon */
     , (800844,  67,       1) /* ResistFire */
     , (800844,  68,       1) /* ResistCold */
     , (800844,  69,       1) /* ResistAcid */
     , (800844,  70,       1) /* ResistElectric */
     , (800844,  71,       1) /* ResistHealthBoost */
     , (800844,  72,       1) /* ResistStaminaDrain */
     , (800844,  73,       1) /* ResistStaminaBoost */
     , (800844,  74,       1) /* ResistManaDrain */
     , (800844,  75,       1) /* ResistManaBoost */
     , (800844, 104,      10) /* ObviousRadarRange */
     , (800844, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800844,   1, 'Elemental Craftsman') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800844,   1,   33554433) /* Setup */
     , (800844,   2,  150994945) /* MotionTable */
     , (800844,   3,  536870913) /* SoundTable */
     , (800844,   6,   67108990) /* PaletteBase */
     , (800844,   8,  100667446) /* Icon */
     , (800844,   9,   83890483) /* EyesTexture */
     , (800844,  10,   83890538) /* NoseTexture */
     , (800844,  11,   83890617) /* MouthTexture */
     , (800844,  15,   67117080) /* HairPalette */
     , (800844,  16,   67110062) /* EyesPalette */
     , (800844,  17,   67109550) /* SkinPalette */
     , (800844,  18,   16795650) /* HeadObject */
     , (800844,  57,     801690) /* AlternateCurrency - Vhorma Coin */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800844,   1, 220, 0, 0) /* Strength */
     , (800844,   2, 270, 0, 0) /* Endurance */
     , (800844,   3, 200, 0, 0) /* Quickness */
     , (800844,   4, 200, 0, 0) /* Coordination */
     , (800844,   5, 290, 0, 0) /* Focus */
     , (800844,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800844,   1,   196, 0, 0, 331) /* MaxHealth */
     , (800844,   3,   196, 0, 0, 466) /* MaxStamina */
     , (800844,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800844,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800844,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800844,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800844,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800844,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800844,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800844,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800844,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800844,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800844,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Bael''Zharon favors you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800844,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'May your fierce vigor give you continued success against your enemies..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800844,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'A wise choice, chosen one.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800844,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'This should assist you in slaying your enemies.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800844, 2, 800360,  1, 92, 0, False) /* Create Tradewind's Path Breastplate (800360) for Wield */
     , (800844, 2, 800361,  1, 92, 0, False) /* Create Tradewind's Path Sleeves (800361) for Wield */
     , (800844, 2, 800362,  1, 92, 0, False) /* Create Tradewind's Path Leggings (800362) for Wield */
     , (800844, 2, 800363,  1, 92, 0, False) /* Create Tradewind's Path Kabuton (800363) for Wield */
     , (800844, 2, 800364,  1, 92, 0, False) /* Create Tradewind's Path Gauntlets (800364) for Wield */
     , (800844, 2, 800365,  1, 92, 0, False) /* Create Tradewind's Path Sollerets (800365) for Wield */
     , (800844, 4, 800725,  0, 0, 0, False) /* Create Vhorma Fire Stone (800725) for Shop */
     , (800844, 4, 800728,  0, 0, 0, False) /* Create Vhorma Frost Stone (800728) for Shop */
     , (800844, 4, 800729,  0, 0, 0, False) /* Create Vhorma Static Stone (800729) for Shop */
     , (800844, 4, 800730,  0, 0, 0, False) /* Create Vhorma Acid Stone (800730) for Shop */
     , (800844, 4, 800731,  0, 0, 0, False) /* Create Vhorma Blunt Stone (800731) for Shop */
     , (800844, 4, 800732,  0, 0, 0, False) /* Create Vhorma Slashing Stone (800732) for Shop */
     , (800844, 4, 800733,  0, 0, 0, False) /* Create Vhorma Piercing Stone (800733) for Shop */
     , (800844, 4, 800734,  0, 0, 0, False) /* Create Vhorma Nether Stone (800734) for Shop */;
