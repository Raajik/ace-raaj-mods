DELETE FROM `weenie` WHERE `class_Id` = 801075;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801075, 'Ethereal Infusion Grandmaster', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801075,   1,         16) /* ItemType - Creature */
     , (801075,   2,         31) /* CreatureType - Human */
     , (801075,   6,         -1) /* ItemsCapacity */
     , (801075,   7,         -1) /* ContainersCapacity */
     , (801075,  16,         32) /* ItemUseable - Remote */
     , (801075,  25,        250) /* Level */
     , (801075,  27,          0) /* ArmorType - None */
     , (801075,  74,          0) /* MerchandiseItemTypes - None */
     , (801075,  75,          0) /* MerchandiseMinValue */
     , (801075,  76,     100000) /* MerchandiseMaxValue */
     , (801075,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (801075, 113,          1) /* Gender - Male */
     , (801075, 126,        125) /* VendorHappyMean */
     , (801075, 127,        125) /* VendorHappyVariance */
     , (801075, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801075, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801075, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801075,   1, True ) /* Stuck */
     , (801075,  19, False) /* Attackable */
     , (801075,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801075,   1,       5) /* HeartbeatInterval */
     , (801075,   2,       0) /* HeartbeatTimestamp */
     , (801075,   3,    0.16) /* HealthRate */
     , (801075,   4,       5) /* StaminaRate */
     , (801075,   5,       1) /* ManaRate */
     , (801075,  11,     300) /* ResetInterval */
     , (801075,  13,     0.9) /* ArmorModVsSlash */
     , (801075,  14,       1) /* ArmorModVsPierce */
     , (801075,  15,     1.1) /* ArmorModVsBludgeon */
     , (801075,  16,     0.4) /* ArmorModVsCold */
     , (801075,  17,     0.4) /* ArmorModVsFire */
     , (801075,  18,       1) /* ArmorModVsAcid */
     , (801075,  19,     0.6) /* ArmorModVsElectric */
     , (801075,  37,       1) /* BuyPrice */
     , (801075,  38,       1) /* SellPrice */
     , (801075,  54,       3) /* UseRadius */
     , (801075,  64,       1) /* ResistSlash */
     , (801075,  65,       1) /* ResistPierce */
     , (801075,  66,       1) /* ResistBludgeon */
     , (801075,  67,       1) /* ResistFire */
     , (801075,  68,       1) /* ResistCold */
     , (801075,  69,       1) /* ResistAcid */
     , (801075,  70,       1) /* ResistElectric */
     , (801075,  71,       1) /* ResistHealthBoost */
     , (801075,  72,       1) /* ResistStaminaDrain */
     , (801075,  73,       1) /* ResistStaminaBoost */
     , (801075,  74,       1) /* ResistManaDrain */
     , (801075,  75,       1) /* ResistManaBoost */
     , (801075, 104,      10) /* ObviousRadarRange */
     , (801075, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801075,   1, 'Ethereal Infusion Grandmaster') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801075,   1,   33554433) /* Setup */
     , (801075,   2,  150994945) /* MotionTable */
     , (801075,   3,  536870913) /* SoundTable */
     , (801075,   6,   67108990) /* PaletteBase */
     , (801075,   8,  100667446) /* Icon */
     , (801075,   9,   83890483) /* EyesTexture */
     , (801075,  10,   83890538) /* NoseTexture */
     , (801075,  11,   83890617) /* MouthTexture */
     , (801075,  15,   67117080) /* HairPalette */
     , (801075,  16,   67110062) /* EyesPalette */
     , (801075,  17,   67109550) /* SkinPalette */
     , (801075,  18,   16795650) /* HeadObject */
     , (801075,  57,     801690) /* AlternateCurrency - Heavy ValHeel Empowered Key */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801075,   1, 220, 0, 0) /* Strength */
     , (801075,   2, 270, 0, 0) /* Endurance */
     , (801075,   3, 200, 0, 0) /* Quickness */
     , (801075,   4, 200, 0, 0) /* Coordination */
     , (801075,   5, 290, 0, 0) /* Focus */
     , (801075,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801075,   1,   196, 0, 0, 331) /* MaxHealth */
     , (801075,   3,   196, 0, 0, 466) /* MaxStamina */
     , (801075,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801075,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801075,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801075,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801075,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801075,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801075,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801075,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801075,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801075,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801075,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801075,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Goodbye my friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801075,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I only accept Heavy keys, tell your friends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801075,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I only accept Heavy keys, tell your friends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801075, 2,  5909, -1, 0, 0, False) /* Create Faran War Master Robe (5909) for Wield */
     , (801075, 4, 801003,  0, 86, 0, False) /* Create Soldiers Infusion Gem (801003) for Shop */
     , (801075, 4, 801004,  0, 86, 0, False) /* Create Adepts Infusion Gem (801004) for Shop */
     , (801075, 4, 801005,  0, 86, 0, False) /* Create Archers Infusion Gem (801005) for Shop */
     , (801075, 4, 801006,  0, 86, 0, False) /* Create Defenders Infusion Gem (801006) for Shop */
     , (801075, 4, 801007,  0, 86, 0, False) /* Create Tinkers Infusion Gem (801007) for Shop */
     , (801075, 4, 801008,  0, 86, 0, False) /* Create Crafters Infusion Gem (801008) for Shop */
     , (801075, 4, 801009,  0, 86, 0, False) /* Create Hearty Infusion Gem (801009) for Shop */
     , (801075, 4, 801010,  0, 86, 0, False) /* Create Dextrous Infusion Gem (801010) for Shop */
     , (801075, 4, 801011,  0, 86, 0, False) /* Create Wise Infusion Gem (801011) for Shop */
     , (801075, 4, 801012,  0, 86, 0, False) /* Create Swift Infusion Gem (801012) for Shop */
     , (801075, 4, 801013,  0, 86, 0, False) /* Create Hardened Infusion Gem (801013) for Shop */
     , (801075, 4, 801014,  0, 86, 0, False) /* Create Reinforced Infusion Gem (801014) for Shop */;
