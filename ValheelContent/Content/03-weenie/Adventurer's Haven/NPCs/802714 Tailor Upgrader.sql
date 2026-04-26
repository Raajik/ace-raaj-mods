DELETE FROM `weenie` WHERE `class_Id` = 802714;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802714, 'Tailor Upgrader', 12, '2024-07-03 06:06:05') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802714,   1,         16) /* ItemType - Creature */
     , (802714,   2,         31) /* CreatureType - Human */
     , (802714,   6,         -1) /* ItemsCapacity */
     , (802714,   7,         -1) /* ContainersCapacity */
     , (802714,   8,        120) /* Mass */
     , (802714,  16,         32) /* ItemUseable - Remote */
     , (802714,  25,        300) /* Level */
     , (802714,  27,          0) /* ArmorType - None */
     , (802714,  74,          2) /* MerchandiseItemTypes - Armor */
     , (802714,  75,          0) /* MerchandiseMinValue */
     , (802714,  76,    1000000) /* MerchandiseMaxValue */
     , (802714,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (802714, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802714, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802714, 146,         20) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802714,   1, True ) /* Stuck */
     , (802714,  12, True ) /* ReportCollisions */
     , (802714,  13, False) /* Ethereal */
     , (802714,  19, False) /* Attackable */
     , (802714,  39, True ) /* DealMagicalItems */
     , (802714,  41, True ) /* ReportCollisionsAsEnvironment */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802714,   1,       5) /* HeartbeatInterval */
     , (802714,   2,       0) /* HeartbeatTimestamp */
     , (802714,   3,    0.16) /* HealthRate */
     , (802714,   4,       5) /* StaminaRate */
     , (802714,   5,       1) /* ManaRate */
     , (802714,  11,     300) /* ResetInterval */
     , (802714,  13,     0.9) /* ArmorModVsSlash */
     , (802714,  14,       1) /* ArmorModVsPierce */
     , (802714,  15,     1.1) /* ArmorModVsBludgeon */
     , (802714,  16,     0.4) /* ArmorModVsCold */
     , (802714,  17,     0.4) /* ArmorModVsFire */
     , (802714,  18,       1) /* ArmorModVsAcid */
     , (802714,  19,     0.6) /* ArmorModVsElectric */
     , (802714,  37,       1) /* BuyPrice */
     , (802714,  38,       0) /* SellPrice */
     , (802714,  54,       3) /* UseRadius */
     , (802714,  64,       1) /* ResistSlash */
     , (802714,  65,       1) /* ResistPierce */
     , (802714,  66,       1) /* ResistBludgeon */
     , (802714,  67,       1) /* ResistFire */
     , (802714,  68,       1) /* ResistCold */
     , (802714,  69,       1) /* ResistAcid */
     , (802714,  70,       1) /* ResistElectric */
     , (802714,  71,       1) /* ResistHealthBoost */
     , (802714,  72,       1) /* ResistStaminaDrain */
     , (802714,  73,       1) /* ResistStaminaBoost */
     , (802714,  74,       1) /* ResistManaDrain */
     , (802714,  75,       1) /* ResistManaBoost */
     , (802714, 104,      10) /* ObviousRadarRange */
     , (802714, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802714,   1, 'Tailor Vendor') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802714,   1, 0x02000001) /* Setup */
     , (802714,   2, 0x09000001) /* MotionTable */
     , (802714,   3, 0x20000001) /* SoundTable */
     , (802714,   4, 0x30000000) /* CombatTable */
     , (802714,   8, 0x06001036) /* Icon */
     , (802714,  57,      20630) /* AlternateCurrency - AshCoin */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802714,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802714,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802714,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802714,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802714,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802714,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802714,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802714,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802714,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802714,   1,  20, 0, 0) /* Strength */
     , (802714,   2,  25, 0, 0) /* Endurance */
     , (802714,   3,  45, 0, 0) /* Quickness */
     , (802714,   4,  35, 0, 0) /* Coordination */
     , (802714,   5,  35, 0, 0) /* Focus */
     , (802714,   6,  25, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802714,   1,    25, 0, 0,   38) /* MaxHealth */
     , (802714,   3,    50, 0, 0,   75) /* MaxStamina */
     , (802714,   5,    20, 0, 0,   45) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802714, 2 /* Vendor */, 0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Welcome! What''s your pleasure today?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802714, 2 /* Vendor */, 0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Thank you for your business. Please return soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802714, 2 /* Vendor */, 0.8, NULL, NULL, NULL, NULL, 3 /* Sell */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'You drive a hard bargain, my friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802714, 2 /* Vendor */, 0.8, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'An excellent purchase.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802714, 2, 26007,  0,88, 0.67, False) /* Create Gelidite Robe (26007) for Wield */
     , (802714, 2,   127,  0, 7, 0.33, False) /* Create Pants (127) for Wield */
     , (802714, 2,   132,  0,18,    1, False) /* Create Shoes (132) for Wield */
     , (802714, 2,   118,  0, 8,    0, False) /* Create Cap (118) for Wield */
     , (802714, 2, 10696,  0, 9,  0.5, False) /* Create Apron (10696) for Wield */
     , (802714, 4, 32148, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 30702, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 30705, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 30703, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 30704, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36948, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 37111, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 37112, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 37113, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36747, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36748, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36749, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 41199, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 41197, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 41198, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 41200, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 41201, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33584, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33585, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33586, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33587, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33588, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33579, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33580, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33581, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33582, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33583, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33574, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33575, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33576, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33577, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33578, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 46551, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 46552, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 46553, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 46345, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 46615, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33973, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33975, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33976, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33977, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 46643, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23930, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23931, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23932, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23936, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23937, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23938, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23942, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23943, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23944, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23949, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23950, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23951, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23946, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23947, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23948, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23933, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23934, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23935, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23939, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23940, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23941, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23952, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23953, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23954, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 31751, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 31322, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 26498, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 26499, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 26500, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 30262, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 30263, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 30264, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 26501, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 26502, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 26503, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 27128, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 27129, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 27130, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 27912, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 27913, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 27914, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28337, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28338, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28339, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 27909, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 27910, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 27911, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 29514, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 29521, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 29528, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 29535, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 29545, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28144, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28151, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6801, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6799, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6802, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6800, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6797, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6804, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6803, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6798, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6805, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 49901, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 49905, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 49909, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 49913, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 49917, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 49921, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 49925, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 49929, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 49933, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28256, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  5893, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23097, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12019, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32756, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32757, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32888, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32889, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32765, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32759, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32761, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32762, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32760, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32763, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32764, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25336, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28154, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28155, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28157, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23591, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28158, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 34255, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  8204, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12214, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 22017, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25338, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 34217, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25525, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 10701, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  3707, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  8206, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  3715, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12212, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 22015, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28159, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28160, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28161, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  9247, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  8205, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 22016, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25526, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25522, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28156, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 34143, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 34214, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25337, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 34100, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 34142, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 34144, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28150, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  8663, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12213, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  8153, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25335, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32151, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 11998, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 22014, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 27761, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 43197, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 30645, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 31363, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 29818, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 31394, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 21372, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 26004, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36174, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 29058, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33104, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33888, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33889, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 14594, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12138, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33887, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 27652, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  4981, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12139, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 24180, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 21373, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 35857, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 24260, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32300, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 40801, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12252, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 23945, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 30881, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  8787, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25956, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25955, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25954, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  1518, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 31510, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 34218, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 24261, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 24262, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 35938, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 38083, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36048, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32149, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 22014, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 40801, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 52201, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  9623, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28069, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 39027, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 39028, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 39029, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36352, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36357, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25702, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  8148, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28862, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28863, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  9622, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25553, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28864, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36354, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 14932, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12206, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  8149, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32168, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25557, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 34025, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  9624, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32165, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32157, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32158, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12207, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25554, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32156, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 34217, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 34026, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28865, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25555, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  8150, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36355, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 40801, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32159, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32161, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 51856, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 51855, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 51854, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 51859, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 51858, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 51857, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33825, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12208, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25556, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12209, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 34027, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  8151, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32162, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32167, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32166, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 22883, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 22887, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 42667, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  8152, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32163, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36358, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36356, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36353, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12210, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32160, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36048, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32149, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12211, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28858, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28859, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 22024, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32154, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 43241, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28866, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 29544, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 22018, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28869, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28861, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28868, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28860, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 22019, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 22020, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 27889, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 22021, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32155, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 43242, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  9393, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 33202, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 22550, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  9240, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 28143, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12126, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 35180, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25812, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12156, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25528, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 25842, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 29543, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 36719, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32152, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 30832, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 29544, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 12268, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 26010, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 44446, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 44445, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 44444, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 27407, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 32927, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 48919, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 44006, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6600, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6606, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6594, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6615, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6603, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6609, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6597, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6618, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  6612, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 51868, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 52193, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4, 24174, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,803729, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,803730, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  8806, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  2628, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  2629, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  2630, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  2631, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  2632, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  2633, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  25811, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  25843, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38463, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38464, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38465, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38466, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38467, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38468, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38469, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38470, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38471, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38472, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38473, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38474, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38475, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38476, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38477, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38478, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38479, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38480, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38481, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38482, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38483, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38484, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38485, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38486, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38487, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38488, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  38489, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  25703, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  31987, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  31988, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  31989, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  31990, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  31991, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  31992, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  31993, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  31994, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  31995, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802714, 4,  31996, -1, 0,    1, False) /* Create Compacted Mirra Powder (802287) for Shop */;

