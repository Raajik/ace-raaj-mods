DELETE FROM `weenie` WHERE `class_Id` = 802274;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802274, 'Gavin TrueShot', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802274,   1,         16) /* ItemType - Creature */
     , (802274,   2,         31) /* CreatureType - Human */
     , (802274,   6,         -1) /* ItemsCapacity */
     , (802274,   7,         -1) /* ContainersCapacity */
     , (802274,  16,         32) /* ItemUseable - Remote */
     , (802274,  25,        250) /* Level */
     , (802274,  27,          0) /* ArmorType - None */
     , (802274,  74,          0) /* MerchandiseItemTypes - None */
     , (802274,  75,          0) /* MerchandiseMinValue */
     , (802274,  76,     100000) /* MerchandiseMaxValue */
     , (802274,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (802274, 113,          1) /* Gender - Male */
     , (802274, 126,        125) /* VendorHappyMean */
     , (802274, 127,        125) /* VendorHappyVariance */
     , (802274, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802274, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802274, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802274,   1, True ) /* Stuck */
     , (802274,  19, False) /* Attackable */
     , (802274,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802274,   1,       5) /* HeartbeatInterval */
     , (802274,   2,       0) /* HeartbeatTimestamp */
     , (802274,   3,    0.16) /* HealthRate */
     , (802274,   4,       5) /* StaminaRate */
     , (802274,   5,       1) /* ManaRate */
     , (802274,  11,     300) /* ResetInterval */
     , (802274,  13,     0.9) /* ArmorModVsSlash */
     , (802274,  14,       1) /* ArmorModVsPierce */
     , (802274,  15,     1.1) /* ArmorModVsBludgeon */
     , (802274,  16,     0.4) /* ArmorModVsCold */
     , (802274,  17,     0.4) /* ArmorModVsFire */
     , (802274,  18,       1) /* ArmorModVsAcid */
     , (802274,  19,     0.6) /* ArmorModVsElectric */
     , (802274,  37,       1) /* BuyPrice */
     , (802274,  38,       1) /* SellPrice */
     , (802274,  54,       3) /* UseRadius */
     , (802274,  64,       1) /* ResistSlash */
     , (802274,  65,       1) /* ResistPierce */
     , (802274,  66,       1) /* ResistBludgeon */
     , (802274,  67,       1) /* ResistFire */
     , (802274,  68,       1) /* ResistCold */
     , (802274,  69,       1) /* ResistAcid */
     , (802274,  70,       1) /* ResistElectric */
     , (802274,  71,       1) /* ResistHealthBoost */
     , (802274,  72,       1) /* ResistStaminaDrain */
     , (802274,  73,       1) /* ResistStaminaBoost */
     , (802274,  74,       1) /* ResistManaDrain */
     , (802274,  75,       1) /* ResistManaBoost */
     , (802274, 104,      10) /* ObviousRadarRange */
     , (802274, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802274,   1, 'Gavin TrueShot') /* Name */
     , (802274,   5, 'Fletching Master.') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802274,   1,   33554433) /* Setup */
     , (802274,   2,  150994945) /* MotionTable */
     , (802274,   3,  536870913) /* SoundTable */
     , (802274,   6,   67108990) /* PaletteBase */
     , (802274,   8,  100667446) /* Icon */
     , (802274,   9,   83890483) /* EyesTexture */
     , (802274,  10,   83890538) /* NoseTexture */
     , (802274,  11,   83890617) /* MouthTexture */
     , (802274,  15,   67117080) /* HairPalette */
     , (802274,  16,   67110062) /* EyesPalette */
     , (802274,  17,   67109550) /* SkinPalette */
     , (802274,  18,   16795650) /* HeadObject */
     , (802274,  57,     801690) /* AlternateCurrency - AshCoin */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802274,   1, 220, 0, 0) /* Strength */
     , (802274,   2, 270, 0, 0) /* Endurance */
     , (802274,   3, 200, 0, 0) /* Quickness */
     , (802274,   4, 200, 0, 0) /* Coordination */
     , (802274,   5, 290, 0, 0) /* Focus */
     , (802274,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802274,   1,   196, 0, 0, 331) /* MaxHealth */
     , (802274,   3,   196, 0, 0, 466) /* MaxStamina */
     , (802274,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802274,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802274,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802274,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802274,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802274,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802274,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802274,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802274,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802274,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802274,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'What brings you to me today? Asheron did huh? Well let''s have a look at what you have brought me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802274,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'As long as Asheron trusts you, as do I.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802274,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You''ve chosen a great weapon to work with. May it serve you well.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802274,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'A great choice has been made. Rid the land of these awful virindi!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802274, 2, 37201,  0, 93, 0.2, False) /* Create Olthoi Amuli Leggings (37201) for Wield */
     , (802274, 2, 37208,  0, 93, 0.2, False) /* Create Olthoi Amuli Sollerets (37208) for Wield */
     , (802274, 2, 37205,  0, 93, 0.2, False) /* Create Olthoi Celdon Sleeves (37205) for Wield */
     , (802274, 2, 37214,  0, 93, 0.2, False) /* Create Olthoi Celdon Breastplate (37214) for Wield */
     , (802274, 2,    57,  0, 93, 0, False) /* Create Platemail Gauntlets (57) for Wield */
     , (802274, 2,  2587,  0, 93, 0, False) /* Create Shirt (2587) for Wield */
     , (802274, 2,  2600,  0, 93, 0, False) /* Create Pantaloons (2600) for Wield */
     , (802274, 2, 29239,  0, 90, 0, False) /* Create Blunt Bow (29239) for Wield */
     , (802274, 4, 803042,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (802274, 4, 803194,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (802274, 4, 803303,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (802274, 4, 803305,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (802274, 4, 803346,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (802274, 4, 300444,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */;
