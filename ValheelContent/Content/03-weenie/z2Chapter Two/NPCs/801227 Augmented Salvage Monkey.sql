DELETE FROM `weenie` WHERE `class_Id` = 801227;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801227, 'Augmented Salvage Monkey', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801227,   1,         16) /* ItemType - Creature */
     , (801227,   2,         31) /* CreatureType - Human */
     , (801227,   6,         -1) /* ItemsCapacity */
     , (801227,   7,         -1) /* ContainersCapacity */
     , (801227,  16,         32) /* ItemUseable - Remote */
     , (801227,  25,        250) /* Level */
     , (801227,  27,          0) /* ArmorType - None */
     , (801227,  74,          0) /* MerchandiseItemTypes - None */
     , (801227,  75,          0) /* MerchandiseMinValue */
     , (801227,  76,     100000) /* MerchandiseMaxValue */
     , (801227,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (801227, 113,          1) /* Gender - Male */
     , (801227, 126,        125) /* VendorHappyMean */
     , (801227, 127,        125) /* VendorHappyVariance */
     , (801227, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801227, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801227, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801227,   1, True ) /* Stuck */
     , (801227,  19, False) /* Attackable */
     , (801227,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801227,   1,       5) /* HeartbeatInterval */
     , (801227,   2,       0) /* HeartbeatTimestamp */
     , (801227,   3,    0.16) /* HealthRate */
     , (801227,   4,       5) /* StaminaRate */
     , (801227,   5,       1) /* ManaRate */
     , (801227,  11,     300) /* ResetInterval */
     , (801227,  13,     0.9) /* ArmorModVsSlash */
     , (801227,  14,       1) /* ArmorModVsPierce */
     , (801227,  15,     1.1) /* ArmorModVsBludgeon */
     , (801227,  16,     0.4) /* ArmorModVsCold */
     , (801227,  17,     0.4) /* ArmorModVsFire */
     , (801227,  18,       1) /* ArmorModVsAcid */
     , (801227,  19,     0.6) /* ArmorModVsElectric */
     , (801227,  37,       1) /* BuyPrice */
     , (801227,  38,       1) /* SellPrice */
     , (801227,  54,       3) /* UseRadius */
     , (801227,  64,       1) /* ResistSlash */
     , (801227,  65,       1) /* ResistPierce */
     , (801227,  66,       1) /* ResistBludgeon */
     , (801227,  67,       1) /* ResistFire */
     , (801227,  68,       1) /* ResistCold */
     , (801227,  69,       1) /* ResistAcid */
     , (801227,  70,       1) /* ResistElectric */
     , (801227,  71,       1) /* ResistHealthBoost */
     , (801227,  72,       1) /* ResistStaminaDrain */
     , (801227,  73,       1) /* ResistStaminaBoost */
     , (801227,  74,       1) /* ResistManaDrain */
     , (801227,  75,       1) /* ResistManaBoost */
     , (801227, 104,      10) /* ObviousRadarRange */
     , (801227, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801227,   1, 'Augmented Salvage Monkey') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801227,   1,   33554433) /* Setup */
     , (801227,   2,  150994945) /* MotionTable */
     , (801227,   3,  536870913) /* SoundTable */
     , (801227,   6,   67108990) /* PaletteBase */
     , (801227,   8,  100667446) /* Icon */
     , (801227,   9,   83890483) /* EyesTexture */
     , (801227,  10,   83890538) /* NoseTexture */
     , (801227,  11,   83890617) /* MouthTexture */
     , (801227,  15,   67117080) /* HairPalette */
     , (801227,  16,   67110062) /* EyesPalette */
     , (801227,  17,   67109550) /* SkinPalette */
     , (801227,  18,   16795650) /* HeadObject */
     , (801227,  57,     801690) /* AlternateCurrency - Heavy ValHeel Empowered Key */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801227,   1, 220, 0, 0) /* Strength */
     , (801227,   2, 270, 0, 0) /* Endurance */
     , (801227,   3, 200, 0, 0) /* Quickness */
     , (801227,   4, 200, 0, 0) /* Coordination */
     , (801227,   5, 290, 0, 0) /* Focus */
     , (801227,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801227,   1,   196, 0, 0, 331) /* MaxHealth */
     , (801227,   3,   196, 0, 0, 466) /* MaxStamina */
     , (801227,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801227,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801227,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801227,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801227,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801227,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801227,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801227,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801227,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801227,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801227,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801227,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Goodbye my friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801227,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I only accept Heavy keys, tell your friends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801227,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I only accept Heavy keys, tell your friends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801227, 2,  5909, -1, 0, 0, False) /* Create Faran War Master Robe (5909) for Wield */
     , (801227, 4, 41769, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Pyreal (41769) for Shop */
     , (801227, 4, 41766, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Amber (41766) for Shop */
     , (801227, 4, 41768, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Gromnie Hide (41768) for Shop */
     , (801227, 4, 41767, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Diamond (41767) for Shop */
     , (801227, 4, 41770, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Ruby (41770) for Shop */
     , (801227, 4, 41771, -1, 0, 0, False) /* Create Sealed Bag of Salvaged Sapphire (41771) for Shop */
     , (801227, 4, 800649, -1, 0, 0, False) /* Create Prismatic+ Pack of Trading Cards (800649) for Shop */
     , (801227, 4, 801428, -1, 0, 0, False) /* Create Prismatic+ Card Pack Note (801428) for Shop */
     , (801227, 4, 300168, -1, 0, 0, False) /* Create Prismatic+ Card Pack Note (801428) for Shop */;
