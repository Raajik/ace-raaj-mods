DELETE FROM `weenie` WHERE `class_Id` = 803524;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803524, 'Operative Vendor', 12, '2023-02-17 08:30:53') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803524,   1,         16) /* ItemType - Creature */
     , (803524,   2,         31) /* CreatureType - Human */
     , (803524,   6,         -1) /* ItemsCapacity */
     , (803524,   7,         -1) /* ContainersCapacity */
     , (803524,   8,        120) /* Mass */
     , (803524,  16,         32) /* ItemUseable - Remote */
     , (803524,  25,        300) /* Level */
     , (803524,  27,          0) /* ArmorType - None */
     , (803524,  74,          2) /* MerchandiseItemTypes - Armor */
     , (803524,  75,          0) /* MerchandiseMinValue */
     , (803524,  76,    1000000) /* MerchandiseMaxValue */
     , (803524,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (803524, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803524, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803524, 146,         20) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803524,   1, True ) /* Stuck */
     , (803524,  12, True ) /* ReportCollisions */
     , (803524,  13, False) /* Ethereal */
     , (803524,  19, False) /* Attackable */
     , (803524,  39, True ) /* DealMagicalItems */
     , (803524,  41, True ) /* ReportCollisionsAsEnvironment */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803524,   1,       5) /* HeartbeatInterval */
     , (803524,   2,       0) /* HeartbeatTimestamp */
     , (803524,   3,    0.16) /* HealthRate */
     , (803524,   4,       5) /* StaminaRate */
     , (803524,   5,       1) /* ManaRate */
     , (803524,  11,     300) /* ResetInterval */
     , (803524,  13,     0.9) /* ArmorModVsSlash */
     , (803524,  14,       1) /* ArmorModVsPierce */
     , (803524,  15,     1.1) /* ArmorModVsBludgeon */
     , (803524,  16,     0.4) /* ArmorModVsCold */
     , (803524,  17,     0.4) /* ArmorModVsFire */
     , (803524,  18,       1) /* ArmorModVsAcid */
     , (803524,  19,     0.6) /* ArmorModVsElectric */
     , (803524,  37,       1) /* BuyPrice */
     , (803524,  38,       1) /* SellPrice */
     , (803524,  54,       3) /* UseRadius */
     , (803524,  64,       1) /* ResistSlash */
     , (803524,  65,       1) /* ResistPierce */
     , (803524,  66,       1) /* ResistBludgeon */
     , (803524,  67,       1) /* ResistFire */
     , (803524,  68,       1) /* ResistCold */
     , (803524,  69,       1) /* ResistAcid */
     , (803524,  70,       1) /* ResistElectric */
     , (803524,  71,       1) /* ResistHealthBoost */
     , (803524,  72,       1) /* ResistStaminaDrain */
     , (803524,  73,       1) /* ResistStaminaBoost */
     , (803524,  74,       1) /* ResistManaDrain */
     , (803524,  75,       1) /* ResistManaBoost */
     , (803524, 104,      10) /* ObviousRadarRange */
     , (803524, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803524,   1, 'Operative Vendor') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803524,   1, 0x02001909) /* Setup */
     , (803524,   2, 0x09000001) /* MotionTable */
     , (803524,   3, 0x200000D3) /* SoundTable */
     , (803524,   4, 0x30000000) /* CombatTable */
     , (803524,   8, 0x06006A75) /* Icon */
     , (803524,  22, 0x34000025) /* PhysicsEffectTable */
     , (803524,  57,     802810) /* AlternateCurrency - AshCoin */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803524,   1,  20, 0, 0) /* Strength */
     , (803524,   2,  25, 0, 0) /* Endurance */
     , (803524,   3,  45, 0, 0) /* Quickness */
     , (803524,   4,  35, 0, 0) /* Coordination */
     , (803524,   5,  35, 0, 0) /* Focus */
     , (803524,   6,  25, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803524,   1,    25, 0, 0, 38) /* MaxHealth */
     , (803524,   3,    50, 0, 0, 75) /* MaxStamina */
     , (803524,   5,    20, 0, 0, 45) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803524,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803524,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803524,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803524,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803524,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803524,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803524,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803524,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803524,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803524,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome! What''s your pleasure today?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803524,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Thank you for your business. Please return soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803524,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 3 /* Sell */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You drive a hard bargain, my friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803524,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'An excellent purchase.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803524, 2, 26007,  0, 88, 0.67, False) /* Create Gelidite Robe (26007) for Wield */
     , (803524, 2,   127,  0, 7, 0.33, False) /* Create Pants (127) for Wield */
     , (803524, 2,   132,  0, 18, 1, False) /* Create Shoes (132) for Wield */
     , (803524, 2,   118,  0, 8, 0, False) /* Create Cap (118) for Wield */
     , (803524, 2, 10696,  0, 9, 0.5, False) /* Create Apron (10696) for Wield */
     , (803524, 4, 803546, -1, 0, 1, False) /* Create Tank Pet for Shop */
     , (803524, 4, 803548, -1, 0, 1, False) /* Create Tank Pet for Shop */
     , (803524, 4, 803550, -1, 0, 1, False) /* Create Tank Pet for Shop */
     , (803524, 4, 803570, -1, 0, 1, False) /* Create Class Jewelry for Shop */
     , (803524, 4, 803571, -1, 0, 1, False) /* Create Class Jewelry for Shop */
     , (803524, 4, 803572, -1, 0, 1, False) /* Create Class Jewelry for Shop */
     , (803524, 4, 803025, -1, 0, 1, False) /* Create Gem of Prestige for Shop */
     , (803524, 4, 803797, -1, 0, 1, False) /* Create Gem of Prestige for Shop */
     , (803524, 4, 803798, -1, 0, 1, False) /* Create Gem of Prestige for Shop */
     , (803524, 4, 803799, -1, 0, 1, False) /* Create Gem of Prestige for Shop */
     , (803524, 4, 803800, -1, 0, 1, False) /* Create Gem of Prestige for Shop */
     , (803524, 4, 803801, -1, 0, 1, False) /* Create Gem of Prestige for Shop */
     , (803524, 4, 803802, -1, 0, 1, False) /* Create Gem of Prestige for Shop */
     , (803524, 4, 803803, -1, 0, 1, False) /* Create Gem of Prestige for Shop */
     , (803524, 4, 803804, -1, 0, 1, False) /* Create Gem of Prestige for Shop */
     , (803524, 4, 803805, -1, 0, 1, False) /* Create Gem of Prestige for Shop */;
