DELETE FROM `weenie` WHERE `class_Id` = 802616;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802616, 'ElementalCraftsman2', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802616,   1,         16) /* ItemType - Creature */
     , (802616,   2,         31) /* CreatureType - Human */
     , (802616,   6,         -1) /* ItemsCapacity */
     , (802616,   7,         -1) /* ContainersCapacity */
     , (802616,  16,         32) /* ItemUseable - Remote */
     , (802616,  25,        250) /* Level */
     , (802616,  27,          0) /* ArmorType - None */
     , (802616,  74,          0) /* MerchandiseItemTypes - None */
     , (802616,  75,          0) /* MerchandiseMinValue */
     , (802616,  76,     100000) /* MerchandiseMaxValue */
     , (802616,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (802616, 113,          1) /* Gender - Male */
     , (802616, 126,        125) /* VendorHappyMean */
     , (802616, 127,        125) /* VendorHappyVariance */
     , (802616, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802616, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802616, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802616,   1, True ) /* Stuck */
     , (802616,  19, False) /* Attackable */
     , (802616,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802616,   1,       5) /* HeartbeatInterval */
     , (802616,   2,       0) /* HeartbeatTimestamp */
     , (802616,   3,    0.16) /* HealthRate */
     , (802616,   4,       5) /* StaminaRate */
     , (802616,   5,       1) /* ManaRate */
     , (802616,  11,     300) /* ResetInterval */
     , (802616,  13,     0.9) /* ArmorModVsSlash */
     , (802616,  14,       1) /* ArmorModVsPierce */
     , (802616,  15,     1.1) /* ArmorModVsBludgeon */
     , (802616,  16,     0.4) /* ArmorModVsCold */
     , (802616,  17,     0.4) /* ArmorModVsFire */
     , (802616,  18,       1) /* ArmorModVsAcid */
     , (802616,  19,     0.6) /* ArmorModVsElectric */
     , (802616,  37,       1) /* BuyPrice */
     , (802616,  38,       1) /* SellPrice */
     , (802616,  54,       3) /* UseRadius */
     , (802616,  64,       1) /* ResistSlash */
     , (802616,  65,       1) /* ResistPierce */
     , (802616,  66,       1) /* ResistBludgeon */
     , (802616,  67,       1) /* ResistFire */
     , (802616,  68,       1) /* ResistCold */
     , (802616,  69,       1) /* ResistAcid */
     , (802616,  70,       1) /* ResistElectric */
     , (802616,  71,       1) /* ResistHealthBoost */
     , (802616,  72,       1) /* ResistStaminaDrain */
     , (802616,  73,       1) /* ResistStaminaBoost */
     , (802616,  74,       1) /* ResistManaDrain */
     , (802616,  75,       1) /* ResistManaBoost */
     , (802616, 104,      10) /* ObviousRadarRange */
     , (802616, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802616,   1, 'Elemental Craftsman') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802616,   1,   33554433) /* Setup */
     , (802616,   2,  150994945) /* MotionTable */
     , (802616,   3,  536870913) /* SoundTable */
     , (802616,   6,   67108990) /* PaletteBase */
     , (802616,   8,  100667446) /* Icon */
     , (802616,   9,   83890483) /* EyesTexture */
     , (802616,  10,   83890538) /* NoseTexture */
     , (802616,  11,   83890617) /* MouthTexture */
     , (802616,  15,   67117080) /* HairPalette */
     , (802616,  16,   67110062) /* EyesPalette */
     , (802616,  17,   67109550) /* SkinPalette */
     , (802616,  18,   16795650) /* HeadObject */
     , (802616,  57,     801275) /* AlternateCurrency - Heavy ValHeel Empowered Key */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802616,   1, 220, 0, 0) /* Strength */
     , (802616,   2, 270, 0, 0) /* Endurance */
     , (802616,   3, 200, 0, 0) /* Quickness */
     , (802616,   4, 200, 0, 0) /* Coordination */
     , (802616,   5, 290, 0, 0) /* Focus */
     , (802616,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802616,   1,   196, 0, 0, 331) /* MaxHealth */
     , (802616,   3,   196, 0, 0, 466) /* MaxStamina */
     , (802616,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802616,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802616,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802616,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802616,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802616,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802616,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802616,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802616,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802616,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802616,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802616,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Goodbye my friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802616,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I only accept Heavy keys, tell your friends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802616,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I only accept Heavy keys, tell your friends.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802616, 2, 28614,  0, 92, 0, False) /* Create Vestiri Robe with Hood (28614) for Wield */
     , (802616, 4, 800725,  0, 0, 0, False) /* Create BZ Touched Two Handed Spear for Shop */
     , (802616, 4, 800728,  0, 0, 0, False) /* Create BZ Touched Two Handed Spear for Shop */
     , (802616, 4, 800729,  0, 0, 0, False) /* Create BZ Touched Two Handed Spear for Shop */
     , (802616, 4, 800730,  0, 0, 0, False) /* Create BZ Touched Two Handed Spear for Shop */
     , (802616, 4, 800731,  0, 0, 0, False) /* Create BZ Touched Two Handed Spear for Shop */
     , (802616, 4, 800732,  0, 0, 0, False) /* Create BZ Touched Two Handed Spear for Shop */
     , (802616, 4, 800733,  0, 0, 0, False) /* Create BZ Touched Two Handed Spear for Shop */
     , (802616, 4, 800734,  0, 0, 0, False) /* Create BZ Touched Two Handed Spear for Shop */;
