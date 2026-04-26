DELETE FROM `weenie` WHERE `class_Id` = 803330;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803330, 'Thulk Drakinblood', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803330,   1,         16) /* ItemType - Creature */
     , (803330,   2,         31) /* CreatureType - Human */
     , (803330,   6,         -1) /* ItemsCapacity */
     , (803330,   7,         -1) /* ContainersCapacity */
     , (803330,  16,         32) /* ItemUseable - Remote */
     , (803330,  25,        250) /* Level */
     , (803330,  27,          0) /* ArmorType - None */
     , (803330,  74,          0) /* MerchandiseItemTypes - None */
     , (803330,  75,          0) /* MerchandiseMinValue */
     , (803330,  76,     100000) /* MerchandiseMaxValue */
     , (803330,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (803330, 113,          1) /* Gender - Male */
     , (803330, 126,        125) /* VendorHappyMean */
     , (803330, 127,        125) /* VendorHappyVariance */
     , (803330, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803330, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803330,   1, True ) /* Stuck */
     , (803330,  19, False) /* Attackable */
     , (803330,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803330,   1,       5) /* HeartbeatInterval */
     , (803330,   2,       0) /* HeartbeatTimestamp */
     , (803330,   3,    0.16) /* HealthRate */
     , (803330,   4,       5) /* StaminaRate */
     , (803330,   5,       1) /* ManaRate */
     , (803330,  11,     300) /* ResetInterval */
     , (803330,  13,     0.9) /* ArmorModVsSlash */
     , (803330,  14,       1) /* ArmorModVsPierce */
     , (803330,  15,     1.1) /* ArmorModVsBludgeon */
     , (803330,  16,     0.4) /* ArmorModVsCold */
     , (803330,  17,     0.4) /* ArmorModVsFire */
     , (803330,  18,       1) /* ArmorModVsAcid */
     , (803330,  19,     0.6) /* ArmorModVsElectric */
     , (803330,  37,       1) /* BuyPrice */
     , (803330,  38,       1) /* SellPrice */
     , (803330,  54,       3) /* UseRadius */
     , (803330,  64,       1) /* ResistSlash */
     , (803330,  65,       1) /* ResistPierce */
     , (803330,  66,       1) /* ResistBludgeon */
     , (803330,  67,       1) /* ResistFire */
     , (803330,  68,       1) /* ResistCold */
     , (803330,  69,       1) /* ResistAcid */
     , (803330,  70,       1) /* ResistElectric */
     , (803330,  71,       1) /* ResistHealthBoost */
     , (803330,  72,       1) /* ResistStaminaDrain */
     , (803330,  73,       1) /* ResistStaminaBoost */
     , (803330,  74,       1) /* ResistManaDrain */
     , (803330,  75,       1) /* ResistManaBoost */
     , (803330, 104,      10) /* ObviousRadarRange */
     , (803330, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803330,   1, 'Thulk Drakinblood') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803330,   1,   33554433) /* Setup */
     , (803330,   2,  150994945) /* MotionTable */
     , (803330,   3,  536870913) /* SoundTable */
     , (803330,   6,   67108990) /* PaletteBase */
     , (803330,   8,  100667446) /* Icon */
     , (803330,   9,   83890483) /* EyesTexture */
     , (803330,  10,   83890538) /* NoseTexture */
     , (803330,  11,   83890617) /* MouthTexture */
     , (803330,  15,   67117080) /* HairPalette */
     , (803330,  16,   67110062) /* EyesPalette */
     , (803330,  17,   67109550) /* SkinPalette */
     , (803330,  18,   16795650) /* HeadObject */
     , (803330,  57,     803254) /* AlternateCurrency - Scalemarks */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803330,   1, 220, 0, 0) /* Strength */
     , (803330,   2, 270, 0, 0) /* Endurance */
     , (803330,   3, 200, 0, 0) /* Quickness */
     , (803330,   4, 200, 0, 0) /* Coordination */
     , (803330,   5, 290, 0, 0) /* Focus */
     , (803330,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803330,   1,   196, 0, 0, 331) /* MaxHealth */
     , (803330,   3,   196, 0, 0, 466) /* MaxStamina */
     , (803330,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803330,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803330,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803330,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803330,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803330,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803330,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803330,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803330,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803330,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803330,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Aki'' Tuk thern ti amin.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803330,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Aerbek naut kin theil.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803330,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Ourbth thein glin thuk taki nauv.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803330,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Ker ''thunth.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803330, 2, 803287,  0, 93, 0.2, False) /* Create Olthoi Amuli Leggings (37201) for Wield */
     , (803330, 2, 803288,  0, 93, 0.2, False) /* Create Olthoi Amuli Sollerets (37208) for Wield */
     , (803330, 2, 803289,  0, 93, 0.2, False) /* Create Olthoi Celdon Sleeves (37205) for Wield */
     , (803330, 2, 803290,  0, 93, 0.2, False) /* Create Olthoi Celdon Breastplate (37214) for Wield */
     , (803330, 2, 803291,  0, 93, 0, False) /* Create Platemail Gauntlets (57) for Wield */
     , (803330, 2, 803292,  0, 93, 0, False) /* Create Shirt (2587) for Wield */
     , (803330, 2, 803293,  0, 93, 0, False) /* Create Pantaloons (2600) for Wield */
     , (803330, 2, 803294,  0, 90, 0, False) /* Create Blunt Bow (29239) for Wield */
     , (803330, 2, 803295,  0, 90, 0, False) /* Create Blunt Bow (29239) for Wield */
     , (803330, 4, 803287,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803330, 4, 803288,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803330, 4, 803289,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803330, 4, 803290,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803330, 4, 803291,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803330, 4, 803292,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803330, 4, 803293,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803330, 4, 803294,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */
     , (803330, 4, 803295,  0, 4, 0, False) /* Create Wrapped Bundle of Arramoran Arrowshafts (802270) for Shop */;
