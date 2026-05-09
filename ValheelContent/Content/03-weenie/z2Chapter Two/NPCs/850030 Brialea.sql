DELETE FROM `weenie` WHERE `class_Id` = 850030;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850030, 'ace850030-brialea', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850030,   1,         16) /* ItemType - Creature */
     , (850030,   2,         31) /* CreatureType - Human */
     , (850030,   6,         -1) /* ItemsCapacity */
     , (850030,   7,         -1) /* ContainersCapacity */
     , (850030,  16,         32) /* ItemUseable - Remote */
     , (850030,  25,        250) /* Level */
     , (850030,  27,          0) /* ArmorType - None */
     , (850030,  74,          0) /* MerchandiseItemTypes - None */
     , (850030,  75,          0) /* MerchandiseMinValue */
     , (850030,  76,     100000) /* MerchandiseMaxValue */
     , (850030,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (850030, 113,          1) /* Gender - Male */
     , (850030, 126,        125) /* VendorHappyMean */
     , (850030, 127,        125) /* VendorHappyVariance */
     , (850030, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (850030, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (850030, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850030,   1, True ) /* Stuck */
     , (850030,  19, False) /* Attackable */
     , (850030,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850030,   1,       5) /* HeartbeatInterval */
     , (850030,   2,       0) /* HeartbeatTimestamp */
     , (850030,   3,    0.16) /* HealthRate */
     , (850030,   4,       5) /* StaminaRate */
     , (850030,   5,       1) /* ManaRate */
     , (850030,  11,     300) /* ResetInterval */
     , (850030,  13,     0.9) /* ArmorModVsSlash */
     , (850030,  14,       1) /* ArmorModVsPierce */
     , (850030,  15,     1.1) /* ArmorModVsBludgeon */
     , (850030,  16,     0.4) /* ArmorModVsCold */
     , (850030,  17,     0.4) /* ArmorModVsFire */
     , (850030,  18,       1) /* ArmorModVsAcid */
     , (850030,  19,     0.6) /* ArmorModVsElectric */
     , (850030,  37,       1) /* BuyPrice */
     , (850030,  38,       1) /* SellPrice */
     , (850030,  54,       3) /* UseRadius */
     , (850030,  64,       1) /* ResistSlash */
     , (850030,  65,       1) /* ResistPierce */
     , (850030,  66,       1) /* ResistBludgeon */
     , (850030,  67,       1) /* ResistFire */
     , (850030,  68,       1) /* ResistCold */
     , (850030,  69,       1) /* ResistAcid */
     , (850030,  70,       1) /* ResistElectric */
     , (850030,  71,       1) /* ResistHealthBoost */
     , (850030,  72,       1) /* ResistStaminaDrain */
     , (850030,  73,       1) /* ResistStaminaBoost */
     , (850030,  74,       1) /* ResistManaDrain */
     , (850030,  75,       1) /* ResistManaBoost */
     , (850030, 104,      10) /* ObviousRadarRange */
     , (850030, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850030,   1, 'Brialea') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850030,   1,   33554433) /* Setup */
     , (850030,   2,  150994945) /* MotionTable */
     , (850030,   3,  536870913) /* SoundTable */
     , (850030,   6,   67108990) /* PaletteBase */
     , (850030,   8,  100667446) /* Icon */
     , (850030,   9,   83890483) /* EyesTexture */
     , (850030,  10,   83890538) /* NoseTexture */
     , (850030,  11,   83890617) /* MouthTexture */
     , (850030,  15,   67117080) /* HairPalette */
     , (850030,  16,   67110062) /* EyesPalette */
     , (850030,  17,   67109550) /* SkinPalette */
     , (850030,  18,   16795650) /* HeadObject */
     , (850030,  57,     801690) /* AlternateCurrency - Heavy ValHeel Empowered Key */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850030,   1, 220, 0, 0) /* Strength */
     , (850030,   2, 270, 0, 0) /* Endurance */
     , (850030,   3, 200, 0, 0) /* Quickness */
     , (850030,   4, 200, 0, 0) /* Coordination */
     , (850030,   5, 290, 0, 0) /* Focus */
     , (850030,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850030,   1,   196, 0, 0, 331) /* MaxHealth */
     , (850030,   3,   196, 0, 0, 466) /* MaxStamina */
     , (850030,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850030,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (850030,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (850030,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (850030,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (850030,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (850030,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (850030,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (850030,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (850030,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850030,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850030,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Goodbye my friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850030,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I only accept Heavy keys, tell your friends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850030,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I only accept Heavy keys, tell your friends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (850030, 2,  5909, -1, 0, 0, False) /* Create Faran War Master Robe (5909) for Wield */
     , (850030, 4, 30261, -1, 0, 0, False) /* Create Dangerous Portal Device (30261) for Shop */
     , (850030, 4, 27437, -1, 0, 0, False) /* Create Dark Monolith (27437) for Shop */
     , (850030, 4, 29608, -1, 0, 0, False) /* Create Black Spawn Den Portal Device (29608) for Shop */
     , (850030, 4, 29609, -1, 0, 0, False) /* Create Citadels Portal Device (29609) for Shop */
     , (850030, 4, 29103, -1, 0, 0, False) /* Create K'nath Lair Portal (29103) for Shop */
     , (850030, 4, 29610, -1, 0, 0, False) /* Create Lesser Direlands Device (29610) for Shop */
     , (850030, 4, 29611, -1, 0, 0, False) /* Create Outland Portal Device (29611) for Shop */
     , (850030, 4, 29612, -1, 0, 0, False) /* Create Olthoi Lands Portal Device (29612) for Shop */
     , (850030, 4, 27932, -1, 0, 0, False) /* Create Portal to Izji Qo's Temple (27932) for Shop */
     , (850030, 4, 26588, -1, 0, 0, False) /* Create Portal to Kivik Lir's Temple (26588) for Shop */
     , (850030, 4, 30745, -1, 0, 0, False) /* Create Replica of a Tursh Totem (30745) for Shop */
     , (850030, 4, 27933, -1, 0, 0, False) /* Create A Carved Mosswart Statue (27933) for Shop */
     , (850030, 4, 33718, -1, 0, 0, False) /* Create Black Spear of Mukkir Strength (33718) for Shop */
     , (850030, 4, 33717, -1, 0, 0, False) /* Create Black Spear of Ruschk Protection (33717) for Shop */
     , (850030, 4, 33719, -1, 0, 0, False) /* Create Black Spear of Shadow Renewal (33719) for Shop */
     , (850030, 4, 27437, -1, 0, 0, False) /* Create Dark Monolith (27437) for Shop */
     , (850030, 4, 31755, -1, 0, 0, False) /* Create Fertilized Sundew (31755) for Shop */
     , (850030, 4, 31756, -1, 0, 0, False) /* Create Fertilized Fly Trap (31756) for Shop */
     , (850030, 4, 31757, -1, 0, 0, False) /* Create Fertilized Pitcher Plant (31757) for Shop */
     , (850030, 4, 25818, -1, 0, 0, False) /* Create Font of Jojii (25818) for Shop */
     , (850030, 4, 35807, -1, 0, 0, False) /* Create Gladiator Diemos Statue (35807) for Shop */
     , (850030, 4, 27438, -1, 0, 0, False) /* Create Head of the Homunculus (27438) for Shop */
     , (850030, 4, 34267, -1, 0, 0, False) /* Create Mystical Mug (34267) for Shop */
     , (850030, 4, 32588, -1, 0, 0, False) /* Create Repaired Shadow Stone (32588) for Shop */
     , (850030, 4, 32849, -1, 0, 0, False) /* Create Tethana Manifesto (32849) for Shop */
     , (850030, 4, 31668, -1, 0, 0, False) /* Create Tome of Blood and Bone (31668) for Shop */
     , (850030, 4, 32846, -1, 0, 0, False) /* Create Viamontian Pennant of Loyalty (32846) for Shop */
     , (850030, 4, 36702, -1, 0, 0, False) /* Create Virindi Cage (36702) for Shop */
     , (850030, 4, 30401, -1, 0, 0, False) /* Create Wallbound Niffis (30401) for Shop */;
