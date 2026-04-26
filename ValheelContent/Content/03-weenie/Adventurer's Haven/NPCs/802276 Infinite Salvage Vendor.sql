DELETE FROM `weenie` WHERE `class_Id` = 802276;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802276, 'Infinite Salvage Vendor2', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802276,   1,         16) /* ItemType - Creature */
     , (802276,   2,         31) /* CreatureType - Human */
     , (802276,   6,         -1) /* ItemsCapacity */
     , (802276,   7,         -1) /* ContainersCapacity */
     , (802276,  16,         32) /* ItemUseable - Remote */
     , (802276,  25,        350) /* Level */
     , (802276,  27,          0) /* ArmorType - None */
     , (802276,  74,          0) /* MerchandiseItemTypes - None */
     , (802276,  75,          0) /* MerchandiseMinValue */
     , (802276,  76,     100000) /* MerchandiseMaxValue */
     , (802276,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (802276, 113,          1) /* Gender - Male */
     , (802276, 126,        125) /* VendorHappyMean */
     , (802276, 127,        125) /* VendorHappyVariance */
     , (802276, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802276, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802276, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802276,   1, True ) /* Stuck */
     , (802276,  19, False) /* Attackable */
     , (802276,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802276,   1,       5) /* HeartbeatInterval */
     , (802276,   2,       0) /* HeartbeatTimestamp */
     , (802276,   3,    0.16) /* HealthRate */
     , (802276,   4,       5) /* StaminaRate */
     , (802276,   5,       1) /* ManaRate */
     , (802276,  11,     300) /* ResetInterval */
     , (802276,  13,     0.9) /* ArmorModVsSlash */
     , (802276,  14,       1) /* ArmorModVsPierce */
     , (802276,  15,     1.1) /* ArmorModVsBludgeon */
     , (802276,  16,     0.4) /* ArmorModVsCold */
     , (802276,  17,     0.4) /* ArmorModVsFire */
     , (802276,  18,       1) /* ArmorModVsAcid */
     , (802276,  19,     0.6) /* ArmorModVsElectric */
     , (802276,  37,       1) /* BuyPrice */
     , (802276,  38,       1) /* SellPrice */
     , (802276,  54,       3) /* UseRadius */
     , (802276,  64,       1) /* ResistSlash */
     , (802276,  65,       1) /* ResistPierce */
     , (802276,  66,       1) /* ResistBludgeon */
     , (802276,  67,       1) /* ResistFire */
     , (802276,  68,       1) /* ResistCold */
     , (802276,  69,       1) /* ResistAcid */
     , (802276,  70,       1) /* ResistElectric */
     , (802276,  71,       1) /* ResistHealthBoost */
     , (802276,  72,       1) /* ResistStaminaDrain */
     , (802276,  73,       1) /* ResistStaminaBoost */
     , (802276,  74,       1) /* ResistManaDrain */
     , (802276,  75,       1) /* ResistManaBoost */
     , (802276, 104,      10) /* ObviousRadarRange */
     , (802276, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802276,   1, 'Infinite Salvage Vendor') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802276,   1, 0x02000001) /* Setup */
     , (802276,   2, 0x09000001) /* MotionTable */
     , (802276,   3, 0x20000001) /* SoundTable */
     , (802276,   6, 0x0400007E) /* PaletteBase */
     , (802276,   8, 0x06001036) /* Icon */
     , (802276,   9, 0x05001133) /* EyesTexture */
     , (802276,  10, 0x0500116A) /* NoseTexture */
     , (802276,  11, 0x050011B9) /* MouthTexture */
     , (802276,  15, 0x04002018) /* HairPalette */
     , (802276,  16, 0x040004AE) /* EyesPalette */
     , (802276,  17, 0x040002AE) /* SkinPalette */
     , (802276,  18, 0x01004802) /* HeadObject */
     , (802276,  57,     801690) /* AlternateCurrency - Attuned Nightmare Stone */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802276,   1, 220, 0, 0) /* Strength */
     , (802276,   2, 270, 0, 0) /* Endurance */
     , (802276,   3, 200, 0, 0) /* Quickness */
     , (802276,   4, 200, 0, 0) /* Coordination */
     , (802276,   5, 290, 0, 0) /* Focus */
     , (802276,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802276,   1,   196, 0, 0, 331) /* MaxHealth */
     , (802276,   3,   196, 0, 0, 466) /* MaxStamina */
     , (802276,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802276,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802276,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802276,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802276,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802276,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802276,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802276,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802276,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802276,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802276,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome! I sell currency notes!.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802276,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I hope you got what you needed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802276,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You have made a wise choice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802276,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Enjoy the splendors of your hard work!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802276, 2,  28614,  0, 90, 0, False) /* Create Robe for Wield */
     , (802276, 4, 801258,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (802276, 4, 801259,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (802276, 4, 801260,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (802276, 4, 801261,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (802276, 4, 801262,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (802276, 4, 801263,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (802276, 4, 801264,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (802276, 4, 801265,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (802276, 4, 801266,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (802276, 4, 801267,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (802276, 4, 801268,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (802276, 4, 801269,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (802276, 4, 802277,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */
     , (802276, 4, 802811,  0, 4, 0, False) /* Create Vhorma Coin Note for Shop */;
