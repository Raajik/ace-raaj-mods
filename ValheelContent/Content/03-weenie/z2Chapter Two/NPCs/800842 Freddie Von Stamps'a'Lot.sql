DELETE FROM `weenie` WHERE `class_Id` = 800842;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800842, 'Freddie Von Stamps''a''Lot', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800842,   1,         16) /* ItemType - Creature */
     , (800842,   2,         31) /* CreatureType - Human */
     , (800842,   6,         -1) /* ItemsCapacity */
     , (800842,   7,         -1) /* ContainersCapacity */
     , (800842,  16,         32) /* ItemUseable - Remote */
     , (800842,  25,        250) /* Level */
     , (800842,  27,          0) /* ArmorType - None */
     , (800842,  74,          0) /* MerchandiseItemTypes - None */
     , (800842,  75,          0) /* MerchandiseMinValue */
     , (800842,  76,     100000) /* MerchandiseMaxValue */
     , (800842,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (800842, 113,          1) /* Gender - Male */
     , (800842, 126,        125) /* VendorHappyMean */
     , (800842, 127,        125) /* VendorHappyVariance */
     , (800842, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800842, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800842, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800842,   1, True ) /* Stuck */
     , (800842,  19, False) /* Attackable */
     , (800842,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800842,   1,       5) /* HeartbeatInterval */
     , (800842,   2,       0) /* HeartbeatTimestamp */
     , (800842,   3,    0.16) /* HealthRate */
     , (800842,   4,       5) /* StaminaRate */
     , (800842,   5,       1) /* ManaRate */
     , (800842,  11,     300) /* ResetInterval */
     , (800842,  13,     0.9) /* ArmorModVsSlash */
     , (800842,  14,       1) /* ArmorModVsPierce */
     , (800842,  15,     1.1) /* ArmorModVsBludgeon */
     , (800842,  16,     0.4) /* ArmorModVsCold */
     , (800842,  17,     0.4) /* ArmorModVsFire */
     , (800842,  18,       1) /* ArmorModVsAcid */
     , (800842,  19,     0.6) /* ArmorModVsElectric */
     , (800842,  37,       1) /* BuyPrice */
     , (800842,  38,       1) /* SellPrice */
     , (800842,  54,       3) /* UseRadius */
     , (800842,  64,       1) /* ResistSlash */
     , (800842,  65,       1) /* ResistPierce */
     , (800842,  66,       1) /* ResistBludgeon */
     , (800842,  67,       1) /* ResistFire */
     , (800842,  68,       1) /* ResistCold */
     , (800842,  69,       1) /* ResistAcid */
     , (800842,  70,       1) /* ResistElectric */
     , (800842,  71,       1) /* ResistHealthBoost */
     , (800842,  72,       1) /* ResistStaminaDrain */
     , (800842,  73,       1) /* ResistStaminaBoost */
     , (800842,  74,       1) /* ResistManaDrain */
     , (800842,  75,       1) /* ResistManaBoost */
     , (800842, 104,      10) /* ObviousRadarRange */
     , (800842, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800842,   1, 'Freddie Von Stamps''a''Lot') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800842,   1,   33554433) /* Setup */
     , (800842,   2,  150994945) /* MotionTable */
     , (800842,   3,  536870913) /* SoundTable */
     , (800842,   6,   67108990) /* PaletteBase */
     , (800842,   8,  100667446) /* Icon */
     , (800842,   9,   83890483) /* EyesTexture */
     , (800842,  10,   83890538) /* NoseTexture */
     , (800842,  11,   83890617) /* MouthTexture */
     , (800842,  15,   67117080) /* HairPalette */
     , (800842,  16,   67110062) /* EyesPalette */
     , (800842,  17,   67109550) /* SkinPalette */
     , (800842,  18,   16795650) /* HeadObject */
     , (800842,  57,     801690) /* AlternateCurrency - Heavy ValHeel Empowered Key */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800842,   1, 220, 0, 0) /* Strength */
     , (800842,   2, 270, 0, 0) /* Endurance */
     , (800842,   3, 200, 0, 0) /* Quickness */
     , (800842,   4, 200, 0, 0) /* Coordination */
     , (800842,   5, 290, 0, 0) /* Focus */
     , (800842,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800842,   1,   196, 0, 0, 331) /* MaxHealth */
     , (800842,   3,   196, 0, 0, 466) /* MaxStamina */
     , (800842,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800842,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800842,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800842,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800842,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800842,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800842,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800842,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800842,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800842,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800842,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800842,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Goodbye my friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800842,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I only accept Heavy keys, tell your friends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800842,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I only accept Heavy keys, tell your friends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800842, 2, 28614,  0, 92, 0, False) /* Create Vestiri Robe with Hood (28614) for Wield */
     , (800842, 4, 800692,  0, 0, 0, False) /* Create Vhormian Missile Weapons Stamp (800692) for Shop */
     , (800842, 4, 800693,  0, 0, 0, False) /* Create Vhormian Light Weapons Stamp (800693) for Shop */
     , (800842, 4, 800694,  0, 0, 0, False) /* Create Vhormian Heavy Weapons Stamp (800694) for Shop */
     , (800842, 4, 800695,  0, 0, 0, False) /* Create Vhormian Finesse Weapons Stamp (800695) for Shop */
     , (800842, 4, 800696,  0, 0, 0, False) /* Create Vhormian Two-Handed Weapons Stamp (800696) for Shop */
     , (800842, 4, 800697,  0, 0, 0, False) /* Create Vhormian War Magic Stamp (800697) for Shop */
     , (800842, 4, 800698,  0, 0, 0, False) /* Create Vhormian Nether Magic Stamp (800698) for Shop */
     , (800842, 4, 801122,  0, 0, 0, False) /* Create Vhorma Armor Stamp of the Coat (801122) for Shop */
     , (800842, 4, 801123,  0, 0, 0, False) /* Create Vhorma Armor Stamp of the Helm (801123) for Shop */
     , (800842, 4, 801124,  0, 0, 0, False) /* Create Vhorma Armor Stamp of the Hands (801124) for Shop */
     , (800842, 4, 801125,  0, 0, 0, False) /* Create Vhorma Armor Stamp of the Feet (801125) for Shop */
     , (800842, 4, 801126,  0, 0, 0, False) /* Create Vhorma Armor Stamp of the Legs (801126) for Shop */;
