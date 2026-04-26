DELETE FROM `weenie` WHERE `class_Id` = 801616;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801616, 'Infinite Salvage Vendor', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801616,   1,         16) /* ItemType - Creature */
     , (801616,   2,         31) /* CreatureType - Human */
     , (801616,   6,         -1) /* ItemsCapacity */
     , (801616,   7,         -1) /* ContainersCapacity */
     , (801616,  16,         32) /* ItemUseable - Remote */
     , (801616,  25,        350) /* Level */
     , (801616,  27,          0) /* ArmorType - None */
     , (801616,  74,          0) /* MerchandiseItemTypes - None */
     , (801616,  75,          0) /* MerchandiseMinValue */
     , (801616,  76,     100000) /* MerchandiseMaxValue */
     , (801616,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (801616, 113,          1) /* Gender - Male */
     , (801616, 126,        125) /* VendorHappyMean */
     , (801616, 127,        125) /* VendorHappyVariance */
     , (801616, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801616, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801616, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801616,   1, True ) /* Stuck */
     , (801616,  19, False) /* Attackable */
     , (801616,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801616,   1,       5) /* HeartbeatInterval */
     , (801616,   2,       0) /* HeartbeatTimestamp */
     , (801616,   3,    0.16) /* HealthRate */
     , (801616,   4,       5) /* StaminaRate */
     , (801616,   5,       1) /* ManaRate */
     , (801616,  11,     300) /* ResetInterval */
     , (801616,  13,     0.9) /* ArmorModVsSlash */
     , (801616,  14,       1) /* ArmorModVsPierce */
     , (801616,  15,     1.1) /* ArmorModVsBludgeon */
     , (801616,  16,     0.4) /* ArmorModVsCold */
     , (801616,  17,     0.4) /* ArmorModVsFire */
     , (801616,  18,       1) /* ArmorModVsAcid */
     , (801616,  19,     0.6) /* ArmorModVsElectric */
     , (801616,  37,       1) /* BuyPrice */
     , (801616,  38,       1) /* SellPrice */
     , (801616,  54,       3) /* UseRadius */
     , (801616,  64,       1) /* ResistSlash */
     , (801616,  65,       1) /* ResistPierce */
     , (801616,  66,       1) /* ResistBludgeon */
     , (801616,  67,       1) /* ResistFire */
     , (801616,  68,       1) /* ResistCold */
     , (801616,  69,       1) /* ResistAcid */
     , (801616,  70,       1) /* ResistElectric */
     , (801616,  71,       1) /* ResistHealthBoost */
     , (801616,  72,       1) /* ResistStaminaDrain */
     , (801616,  73,       1) /* ResistStaminaBoost */
     , (801616,  74,       1) /* ResistManaDrain */
     , (801616,  75,       1) /* ResistManaBoost */
     , (801616, 104,      10) /* ObviousRadarRange */
     , (801616, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801616,   1, 'Infinite Salvage Vendor') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801616,   1, 0x02000001) /* Setup */
     , (801616,   2, 0x09000001) /* MotionTable */
     , (801616,   3, 0x20000001) /* SoundTable */
     , (801616,   6, 0x0400007E) /* PaletteBase */
     , (801616,   8, 0x06001036) /* Icon */
     , (801616,   9, 0x05001133) /* EyesTexture */
     , (801616,  10, 0x0500116A) /* NoseTexture */
     , (801616,  11, 0x050011B9) /* MouthTexture */
     , (801616,  15, 0x04002018) /* HairPalette */
     , (801616,  16, 0x040004AE) /* EyesPalette */
     , (801616,  17, 0x040002AE) /* SkinPalette */
     , (801616,  18, 0x01004802) /* HeadObject */
     , (801616,  57,     801599) /* AlternateCurrency - Attuned Nightmare Stone */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801616,   1, 220, 0, 0) /* Strength */
     , (801616,   2, 270, 0, 0) /* Endurance */
     , (801616,   3, 200, 0, 0) /* Quickness */
     , (801616,   4, 200, 0, 0) /* Coordination */
     , (801616,   5, 290, 0, 0) /* Focus */
     , (801616,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801616,   1,   196, 0, 0, 331) /* MaxHealth */
     , (801616,   3,   196, 0, 0, 466) /* MaxStamina */
     , (801616,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801616,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801616,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801616,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801616,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801616,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801616,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801616,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801616,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801616,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801616,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome! I sell currency notes!.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801616,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I hope you got what you needed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801616,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You have made a wise choice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801616,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Enjoy the splendors of your hard work!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801616, 2,  28614,  0, 90, 0, False) /* Create Robe for Wield */
     , (801616, 4, 801601,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (801616, 4, 801602,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (801616, 4, 801603,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (801616, 4, 801604,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (801616, 4, 801605,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (801616, 4, 801606,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (801616, 4, 801607,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (801616, 4, 801608,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (801616, 4, 801609,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (801616, 4, 801610,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (801616, 4, 801611,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (801616, 4, 801612,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (801616, 4, 801613,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (801616, 4, 801614,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (801616, 4, 801615,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */;
