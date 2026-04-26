DELETE FROM `weenie` WHERE `class_Id` = 803022;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803022, 'Settlement Armorer3', 12, '2023-05-28 04:02:44') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803022,   1,         16) /* ItemType - Creature */
     , (803022,   2,         31) /* CreatureType - Human */
     , (803022,   6,         -1) /* ItemsCapacity */
     , (803022,   7,         -1) /* ContainersCapacity */
     , (803022,   8,        120) /* Mass */
     , (803022,  16,         32) /* ItemUseable - Remote */
     , (803022,  25,          3) /* Level */
     , (803022,  27,          0) /* ArmorType - None */
     , (803022,  74,    4481568) /* MerchandiseItemTypes - VendorGrocer */
     , (803022,  75,          0) /* MerchandiseMinValue */
     , (803022,  76,    1000000) /* MerchandiseMaxValue */
     , (803022,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (803022, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803022, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803022, 146,         20) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803022,   1, True ) /* Stuck */
     , (803022,  12, True ) /* ReportCollisions */
     , (803022,  13, False) /* Ethereal */
     , (803022,  19, False) /* Attackable */
     , (803022,  39, True ) /* DealMagicalItems */
     , (803022,  41, True ) /* ReportCollisionsAsEnvironment */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803022,   1,       5) /* HeartbeatInterval */
     , (803022,   2,       0) /* HeartbeatTimestamp */
     , (803022,   3,    0.16) /* HealthRate */
     , (803022,   4,       5) /* StaminaRate */
     , (803022,   5,       1) /* ManaRate */
     , (803022,  11,     300) /* ResetInterval */
     , (803022,  13,     0.9) /* ArmorModVsSlash */
     , (803022,  14,       1) /* ArmorModVsPierce */
     , (803022,  15,     1.1) /* ArmorModVsBludgeon */
     , (803022,  16,     0.4) /* ArmorModVsCold */
     , (803022,  17,     0.4) /* ArmorModVsFire */
     , (803022,  18,       1) /* ArmorModVsAcid */
     , (803022,  19,     0.6) /* ArmorModVsElectric */
     , (803022,  37,       1) /* BuyPrice */
     , (803022,  38,     0.5) /* SellPrice */
     , (803022,  54,       3) /* UseRadius */
     , (803022,  64,       1) /* ResistSlash */
     , (803022,  65,       1) /* ResistPierce */
     , (803022,  66,       1) /* ResistBludgeon */
     , (803022,  67,       1) /* ResistFire */
     , (803022,  68,       1) /* ResistCold */
     , (803022,  69,       1) /* ResistAcid */
     , (803022,  70,       1) /* ResistElectric */
     , (803022,  71,       1) /* ResistHealthBoost */
     , (803022,  72,       1) /* ResistStaminaDrain */
     , (803022,  73,       1) /* ResistStaminaBoost */
     , (803022,  74,       1) /* ResistManaDrain */
     , (803022,  75,       1) /* ResistManaBoost */
     , (803022, 104,      10) /* ObviousRadarRange */
     , (803022, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803022,   1, 'Ascended Armorer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803022,   1, 0x02000001) /* Setup */
     , (803022,   2, 0x09000001) /* MotionTable */
     , (803022,   3, 0x20000001) /* SoundTable */
     , (803022,   4, 0x30000000) /* CombatTable */
     , (803022,   8, 0x06001036) /* Icon */
     , (803022,  57,     801690) /* AlternateCurrency - Carnage Token */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803022,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803022,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803022,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803022,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803022,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803022,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803022,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803022,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803022,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803022,   1,  20, 0, 0) /* Strength */
     , (803022,   2,  25, 0, 0) /* Endurance */
     , (803022,   3,  45, 0, 0) /* Quickness */
     , (803022,   4,  35, 0, 0) /* Coordination */
     , (803022,   5,  35, 0, 0) /* Focus */
     , (803022,   6,  25, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803022,   1,    25, 0, 0,   38) /* MaxHealth */
     , (803022,   3,    50, 0, 0,   75) /* MaxStamina */
     , (803022,   5,    20, 0, 0,   45) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803022, 2 /* Vendor */, 0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Welcome! What''s your pleasure today?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803022, 2 /* Vendor */, 0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Thank you for your business. Please return soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803022, 2 /* Vendor */, 0.8, NULL, NULL, NULL, NULL, 3 /* Sell */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'You drive a hard bargain, my friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803022, 2 /* Vendor */, 0.8, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'An excellent purchase.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803022, 2, 850012, -1, 93,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 2, 850013, -1, 93,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 2, 850014, -1, 93,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 2, 850015, -1, 93,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 2, 850016, -1, 93,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 2, 850017, -1, 93,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 2, 850018, -1, 93,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 2, 850019, -1, 93,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 2, 850020, -1, 93,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803087, -1, 93,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 850012, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 850013, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 850014, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 850015, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 850016, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 850017, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 850018, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 850019, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 850020, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803156, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803157, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803158, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803159, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803160, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803161, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803162, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803163, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803182, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803170, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803176, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803164, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803193, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */
     , (803022, 4, 803345, -1, 0,    1, False) /* Create Pack of Azure Mist (30936) for Shop */;

