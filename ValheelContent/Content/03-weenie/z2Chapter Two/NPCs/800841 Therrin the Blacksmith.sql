DELETE FROM `weenie` WHERE `class_Id` = 800841;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800841, 'Therrin the Blacksmith', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800841,   1,         16) /* ItemType - Creature */
     , (800841,   2,         31) /* CreatureType - Human */
     , (800841,   6,         -1) /* ItemsCapacity */
     , (800841,   7,         -1) /* ContainersCapacity */
     , (800841,  16,         32) /* ItemUseable - Remote */
     , (800841,  25,        250) /* Level */
     , (800841,  27,          0) /* ArmorType - None */
     , (800841,  74,          0) /* MerchandiseItemTypes - None */
     , (800841,  75,          0) /* MerchandiseMinValue */
     , (800841,  76,     100000) /* MerchandiseMaxValue */
     , (800841,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (800841, 113,          1) /* Gender - Male */
     , (800841, 126,        125) /* VendorHappyMean */
     , (800841, 127,        125) /* VendorHappyVariance */
     , (800841, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800841, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800841, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800841,   1, True ) /* Stuck */
     , (800841,  19, False) /* Attackable */
     , (800841,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800841,   1,       5) /* HeartbeatInterval */
     , (800841,   2,       0) /* HeartbeatTimestamp */
     , (800841,   3,    0.16) /* HealthRate */
     , (800841,   4,       5) /* StaminaRate */
     , (800841,   5,       1) /* ManaRate */
     , (800841,  11,     300) /* ResetInterval */
     , (800841,  13,     0.9) /* ArmorModVsSlash */
     , (800841,  14,       1) /* ArmorModVsPierce */
     , (800841,  15,     1.1) /* ArmorModVsBludgeon */
     , (800841,  16,     0.4) /* ArmorModVsCold */
     , (800841,  17,     0.4) /* ArmorModVsFire */
     , (800841,  18,       1) /* ArmorModVsAcid */
     , (800841,  19,     0.6) /* ArmorModVsElectric */
     , (800841,  37,       1) /* BuyPrice */
     , (800841,  38,       1) /* SellPrice */
     , (800841,  54,       3) /* UseRadius */
     , (800841,  64,       1) /* ResistSlash */
     , (800841,  65,       1) /* ResistPierce */
     , (800841,  66,       1) /* ResistBludgeon */
     , (800841,  67,       1) /* ResistFire */
     , (800841,  68,       1) /* ResistCold */
     , (800841,  69,       1) /* ResistAcid */
     , (800841,  70,       1) /* ResistElectric */
     , (800841,  71,       1) /* ResistHealthBoost */
     , (800841,  72,       1) /* ResistStaminaDrain */
     , (800841,  73,       1) /* ResistStaminaBoost */
     , (800841,  74,       1) /* ResistManaDrain */
     , (800841,  75,       1) /* ResistManaBoost */
     , (800841, 104,      10) /* ObviousRadarRange */
     , (800841, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800841,   1, 'Therrin the Blacksmith') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800841,   1,   33554433) /* Setup */
     , (800841,   2,  150994945) /* MotionTable */
     , (800841,   3,  536870913) /* SoundTable */
     , (800841,   6,   67108990) /* PaletteBase */
     , (800841,   8,  100667446) /* Icon */
     , (800841,   9,   83890483) /* EyesTexture */
     , (800841,  10,   83890538) /* NoseTexture */
     , (800841,  11,   83890617) /* MouthTexture */
     , (800841,  15,   67117080) /* HairPalette */
     , (800841,  16,   67110062) /* EyesPalette */
     , (800841,  17,   67109550) /* SkinPalette */
     , (800841,  18,   16795650) /* HeadObject */
     , (800841,  57,     801690) /* AlternateCurrency - Heavy ValHeel Empowered Key */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800841,   1, 220, 0, 0) /* Strength */
     , (800841,   2, 270, 0, 0) /* Endurance */
     , (800841,   3, 200, 0, 0) /* Quickness */
     , (800841,   4, 200, 0, 0) /* Coordination */
     , (800841,   5, 290, 0, 0) /* Focus */
     , (800841,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800841,   1,   196, 0, 0, 331) /* MaxHealth */
     , (800841,   3,   196, 0, 0, 466) /* MaxStamina */
     , (800841,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800841,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800841,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800841,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800841,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800841,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800841,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800841,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800841,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800841,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800841,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800841,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Goodbye my friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800841,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I only accept Heavy keys, tell your friends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800841,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I only accept Heavy keys, tell your friends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800841, 2, 28614,  0, 92, 0, False) /* Create Vestiri Robe with Hood (28614) for Wield */
     , (800841, 4, 53338,  0, 0, 0, False) /* Create Scroll of Cassius' Ring of Fire II (53338) for Shop */
     , (800841, 4, 53341,  0, 0, 0, False) /* Create Scroll of Eye of the Storm II (53341) for Shop */
     , (800841, 4, 53336,  0, 0, 0, False) /* Create Scroll of Searing Disc II (53336) for Shop */
     , (800841, 4, 53337,  0, 0, 0, False) /* Create Scroll of Horizon's Blades II (53337) for Shop */
     , (800841, 4, 53340,  0, 0, 0, False) /* Create Scroll of Halo of Frost II (53340) for Shop */
     , (800841, 4, 53335,  0, 0, 0, False) /* Create Scroll of Clouded Soul II (53335) for Shop */
     , (800841, 4, 53342,  0, 0, 0, False) /* Create Scroll of Tectonic Rifts II (53342) for Shop */
     , (800841, 4, 53339,  0, 0, 0, False) /* Create Scroll of Nuhmudira's Spines II (53339) for Shop */;
