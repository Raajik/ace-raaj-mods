DELETE FROM `weenie` WHERE `class_Id` = 802161;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802161, 'RynthidArmsDealer', 12, '2023-02-17 08:30:53') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802161,   1,         16) /* ItemType - Creature */
     , (802161,   2,         31) /* CreatureType - Human */
     , (802161,   6,         -1) /* ItemsCapacity */
     , (802161,   7,         -1) /* ContainersCapacity */
     , (802161,   8,        120) /* Mass */
     , (802161,  16,         32) /* ItemUseable - Remote */
     , (802161,  25,          3) /* Level */
     , (802161,  27,          0) /* ArmorType - None */
     , (802161,  74,    4481568) /* MerchandiseItemTypes - VendorGrocer */
     , (802161,  75,          0) /* MerchandiseMinValue */
     , (802161,  76,    1000000) /* MerchandiseMaxValue */
     , (802161,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (802161, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802161, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802161, 146,         20) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802161,   1, True ) /* Stuck */
     , (802161,  12, True ) /* ReportCollisions */
     , (802161,  13, False) /* Ethereal */
     , (802161,  19, False) /* Attackable */
     , (802161,  39, True ) /* DealMagicalItems */
     , (802161,  41, True ) /* ReportCollisionsAsEnvironment */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802161,   1,       5) /* HeartbeatInterval */
     , (802161,   2,       0) /* HeartbeatTimestamp */
     , (802161,   3,    0.16) /* HealthRate */
     , (802161,   4,       5) /* StaminaRate */
     , (802161,   5,       1) /* ManaRate */
     , (802161,  11,     300) /* ResetInterval */
     , (802161,  13,     0.9) /* ArmorModVsSlash */
     , (802161,  14,       1) /* ArmorModVsPierce */
     , (802161,  15,     1.1) /* ArmorModVsBludgeon */
     , (802161,  16,     0.4) /* ArmorModVsCold */
     , (802161,  17,     0.4) /* ArmorModVsFire */
     , (802161,  18,       1) /* ArmorModVsAcid */
     , (802161,  19,     0.6) /* ArmorModVsElectric */
     , (802161,  37,     0.9) /* BuyPrice */
     , (802161,  38,       1) /* SellPrice */
     , (802161,  54,       3) /* UseRadius */
     , (802161,  64,       1) /* ResistSlash */
     , (802161,  65,       1) /* ResistPierce */
     , (802161,  66,       1) /* ResistBludgeon */
     , (802161,  67,       1) /* ResistFire */
     , (802161,  68,       1) /* ResistCold */
     , (802161,  69,       1) /* ResistAcid */
     , (802161,  70,       1) /* ResistElectric */
     , (802161,  71,       1) /* ResistHealthBoost */
     , (802161,  72,       1) /* ResistStaminaDrain */
     , (802161,  73,       1) /* ResistStaminaBoost */
     , (802161,  74,       1) /* ResistManaDrain */
     , (802161,  75,       1) /* ResistManaBoost */
     , (802161, 104,      10) /* ObviousRadarRange */
     , (802161, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802161,   1, 'Destructive Arms Dealer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802161,   1,   33554433) /* Setup */
     , (802161,   2,  150994945) /* MotionTable */
     , (802161,   3,  536870913) /* SoundTable */
     , (802161,   4,  805306368) /* CombatTable */
     , (802161,   8,  100667446) /* Icon */
     , (802161,  57,     801690) /* AlternateCurrency - Carnage Token */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802161,   1,  20, 0, 0) /* Strength */
     , (802161,   2,  25, 0, 0) /* Endurance */
     , (802161,   3,  45, 0, 0) /* Quickness */
     , (802161,   4,  35, 0, 0) /* Coordination */
     , (802161,   5,  35, 0, 0) /* Focus */
     , (802161,   6,  25, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802161,   1,    25, 0, 0, 38) /* MaxHealth */
     , (802161,   3,    50, 0, 0, 75) /* MaxStamina */
     , (802161,   5,    20, 0, 0, 45) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802161,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802161,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802161,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802161,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802161,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802161,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802161,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802161,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802161,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802161,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome! What''s your pleasure today?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802161,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Thank you for your business. Please return soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802161,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 3 /* Sell */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You drive a hard bargain, my friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802161,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'An excellent purchase.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802161, 2, 26007,  0, 88, 0.67, False) /* Create Gelidite Robe (26007) for Wield */
     , (802161, 2,   127,  0, 7, 0.33, False) /* Create Pants (127) for Wield */
     , (802161, 2,   132,  0, 18, 1, False) /* Create Shoes (132) for Wield */
     , (802161, 2,   118,  0, 8, 0, False) /* Create Cap (118) for Wield */
     , (802161, 2, 10696,  0, 9, 0.5, False) /* Create Apron (10696) for Wield */
     , (802161, 4, 51965, -1, 8, 1, False) /* Create Rynthid Tentacle Dagger (51965) for Shop */
     , (802161, 4, 51966, -1, 8, 1, False) /* Create Rynthid Tentacle Mace (51966) for Shop */
     , (802161, 4, 51967, -1, 8, 1, False) /* Create Rynthid Tentacle Spear (51967) for Shop */
     , (802161, 4, 51968, -1, 8, 1, False) /* Create Rynthid Tentacle Greatspear (51968) for Shop */
     , (802161, 4, 51988, -1, 8, 1, False) /* Create Rynthid Tentacle Bow (51988) for Shop */
     , (802161, 4, 51989, -1, 8, 1, False) /* Create Rynthid Tentacle Wand (51989) for Shop */
     , (802161, 4, 51990, -1, 8, 1, False) /* Create Life-attuned Rynthid Tentacle Wand (51990) for Shop */
     , (802161, 4, 51991, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51990) for Shop */
     , (802161, 4, 35912, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 35913, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 35914, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 35915, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 35916, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 43041, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 43042, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 43043, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 43044, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 43045, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 43046, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 43047, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 43056, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 802275, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 15447, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 15448, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 15449, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 15450, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 21360, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 21361, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 21362, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 21961, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 41712, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 23890, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 23907, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 23908, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 23909, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 23910, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 23911, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 23912, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 23913, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 23914, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 23915, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 23916, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 41791, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 27836, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 27840, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 27816, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 27822, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 27825, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 41789, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 27819, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 27843, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 27846, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 27834, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 27849, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 27828, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 27831, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 802309, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4, 800140, -1, 8, 1, False) /* Create Nether-attuned Rynthid Tentacle Wand (51991) for Shop */
     , (802161, 4,  8530, -1, 8, 1, False) /* Create Scroll of Sanctuary Recall (8530) for Shop */
     , (802161, 4, 72003, -1, 8, 1, False) /* Create Scroll of Viridian Rise Tree Recall (72003) for Shop */
     , (802161, 4, 53302, -1, 8, 1, False) /* Create Scroll of Viridian Rise Recall (53302) for Shop */
     , (802161, 4, 36537, -1, 8, 1, False) /* Create Scroll of Colosseum Recall (36537) for Shop */
     , (802161, 4, 36377, -1, 8, 1, False) /* Create Scroll of 'Infested Area' Recall (36377) for Shop */
     , (802161, 4, 35981, -1, 8, 1, False) /* Create Scroll of Ancient Graveyard Recall (35981) for Shop */
     , (802161, 4, 35479, -1, 8, 1, False) /* Create Scroll of Bur Recall (35479) for Shop */
     , (802161, 4, 32492, -1, 8, 1, False) /* Create Scroll of Glenden Wood Recall (32492) for Shop */
     , (802161, 4, 22932, -1, 8, 1, False) /* Create Recall to the Singularity Caul (22932) for Shop */
     , (802161, 4, 22863, -1, 8, 1, False) /* Create Ulgrim's Recall Scroll (22863) for Shop */
     , (802161, 4, 22078, -1, 8, 1, False) /* Create Scroll of Mount Lethe Recall (22078) for Shop */;
