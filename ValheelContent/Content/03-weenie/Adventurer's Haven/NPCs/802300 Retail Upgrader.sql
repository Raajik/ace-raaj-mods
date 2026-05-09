DELETE FROM `weenie` WHERE `class_Id` = 802300;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802300, 'Retail Upgrader', 12, '2023-02-17 08:30:53') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802300,   1,         16) /* ItemType - Creature */
     , (802300,   2,         31) /* CreatureType - Human */
     , (802300,   6,         -1) /* ItemsCapacity */
     , (802300,   7,         -1) /* ContainersCapacity */
     , (802300,   8,        120) /* Mass */
     , (802300,  16,         32) /* ItemUseable - Remote */
     , (802300,  25,          3) /* Level */
     , (802300,  27,          0) /* ArmorType - None */
     , (802300,  74,    4481568) /* MerchandiseItemTypes - VendorGrocer */
     , (802300,  75,          0) /* MerchandiseMinValue */
     , (802300,  76,    1000000) /* MerchandiseMaxValue */
     , (802300,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (802300, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802300, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802300, 146,         20) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802300,   1, True ) /* Stuck */
     , (802300,  12, True ) /* ReportCollisions */
     , (802300,  13, False) /* Ethereal */
     , (802300,  19, False) /* Attackable */
     , (802300,  39, True ) /* DealMagicalItems */
     , (802300,  41, True ) /* ReportCollisionsAsEnvironment */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802300,   1,       5) /* HeartbeatInterval */
     , (802300,   2,       0) /* HeartbeatTimestamp */
     , (802300,   3,    0.16) /* HealthRate */
     , (802300,   4,       5) /* StaminaRate */
     , (802300,   5,       1) /* ManaRate */
     , (802300,  11,     300) /* ResetInterval */
     , (802300,  13,     0.9) /* ArmorModVsSlash */
     , (802300,  14,       1) /* ArmorModVsPierce */
     , (802300,  15,     1.1) /* ArmorModVsBludgeon */
     , (802300,  16,     0.4) /* ArmorModVsCold */
     , (802300,  17,     0.4) /* ArmorModVsFire */
     , (802300,  18,       1) /* ArmorModVsAcid */
     , (802300,  19,     0.6) /* ArmorModVsElectric */
     , (802300,  37,     0.9) /* BuyPrice */
     , (802300,  38,       1) /* SellPrice */
     , (802300,  54,       3) /* UseRadius */
     , (802300,  64,       1) /* ResistSlash */
     , (802300,  65,       1) /* ResistPierce */
     , (802300,  66,       1) /* ResistBludgeon */
     , (802300,  67,       1) /* ResistFire */
     , (802300,  68,       1) /* ResistCold */
     , (802300,  69,       1) /* ResistAcid */
     , (802300,  70,       1) /* ResistElectric */
     , (802300,  71,       1) /* ResistHealthBoost */
     , (802300,  72,       1) /* ResistStaminaDrain */
     , (802300,  73,       1) /* ResistStaminaBoost */
     , (802300,  74,       1) /* ResistManaDrain */
     , (802300,  75,       1) /* ResistManaBoost */
     , (802300, 104,      10) /* ObviousRadarRange */
     , (802300, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802300,   1, 'Retail Upgrader') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802300,   1,   33554433) /* Setup */
     , (802300,   2,  150994945) /* MotionTable */
     , (802300,   3,  536870913) /* SoundTable */
     , (802300,   4,  805306368) /* CombatTable */
     , (802300,   8,  100667446) /* Icon */
     , (802300,  57,     801690) /* AlternateCurrency - AshCoin */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802300,   1,  20, 0, 0) /* Strength */
     , (802300,   2,  25, 0, 0) /* Endurance */
     , (802300,   3,  45, 0, 0) /* Quickness */
     , (802300,   4,  35, 0, 0) /* Coordination */
     , (802300,   5,  35, 0, 0) /* Focus */
     , (802300,   6,  25, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802300,   1,    25, 0, 0, 38) /* MaxHealth */
     , (802300,   3,    50, 0, 0, 75) /* MaxStamina */
     , (802300,   5,    20, 0, 0, 45) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802300,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802300,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802300,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802300,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802300,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802300,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802300,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802300,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802300,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802300,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome! What''s your pleasure today?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802300,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Thank you for your business. Please return soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802300,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 3 /* Sell */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You drive a hard bargain, my friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802300,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'An excellent purchase.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802300, 2, 26007,  0, 88, 0.67, False) /* Create Gelidite Robe (26007) for Wield */
     , (802300, 2,   127,  0, 7, 0.33, False) /* Create Pants (127) for Wield */
     , (802300, 2,   132,  0, 18, 1, False) /* Create Shoes (132) for Wield */
     , (802300, 2,   118,  0, 8, 0, False) /* Create Cap (118) for Wield */
     , (802300, 2, 10696,  0, 9, 0.5, False) /* Create Apron (10696) for Wield */
     , (802300, 4, 802287, -1, 8, 1, False) /* Create Compacted Mirra Powder (802287) for Shop */
     , (802300, 4, 802298, -1, 8, 1, False) /* Create Mirra Infused Hollow Wand of the Void (802298) for Shop */
     , (802300, 4, 802299, -1, 8, 1, False) /* Create Mirra Infused Hollow Wand of Force (802299) for Shop */
     , (802300, 4, 802313, -1, 8, 1, False) /* Create Adventurer's Haven Portal Gem (802313) for Shop */;
