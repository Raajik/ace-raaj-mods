DELETE FROM `weenie` WHERE `class_Id` = 803006;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803006, 'FHContractAgent', 12, '2023-02-17 08:30:53') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803006,   1,         16) /* ItemType - Creature */
     , (803006,   2,         31) /* CreatureType - Human */
     , (803006,   6,         -1) /* ItemsCapacity */
     , (803006,   7,         -1) /* ContainersCapacity */
     , (803006,   8,        120) /* Mass */
     , (803006,  16,         32) /* ItemUseable - Remote */
     , (803006,  25,        300) /* Level */
     , (803006,  27,          0) /* ArmorType - None */
     , (803006,  74,          2) /* MerchandiseItemTypes - Armor */
     , (803006,  75,          1) /* MerchandiseMinValue */
     , (803006,  76,    1000000) /* MerchandiseMaxValue */
     , (803006,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (803006, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803006, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803006, 146,         20) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803006,   1, True ) /* Stuck */
     , (803006,  12, True ) /* ReportCollisions */
     , (803006,  13, False) /* Ethereal */
     , (803006,  19, False) /* Attackable */
     , (803006,  39, True ) /* DealMagicalItems */
     , (803006,  41, True ) /* ReportCollisionsAsEnvironment */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803006,   1,       5) /* HeartbeatInterval */
     , (803006,   2,       0) /* HeartbeatTimestamp */
     , (803006,   3,    0.16) /* HealthRate */
     , (803006,   4,       5) /* StaminaRate */
     , (803006,   5,       1) /* ManaRate */
     , (803006,  11,     300) /* ResetInterval */
     , (803006,  13,     0.9) /* ArmorModVsSlash */
     , (803006,  14,       1) /* ArmorModVsPierce */
     , (803006,  15,     1.1) /* ArmorModVsBludgeon */
     , (803006,  16,     0.4) /* ArmorModVsCold */
     , (803006,  17,     0.4) /* ArmorModVsFire */
     , (803006,  18,       1) /* ArmorModVsAcid */
     , (803006,  19,     0.6) /* ArmorModVsElectric */
     , (803006,  37,       1) /* BuyPrice */
     , (803006,  38,       0) /* SellPrice */
     , (803006,  54,       3) /* UseRadius */
     , (803006,  64,       1) /* ResistSlash */
     , (803006,  65,       1) /* ResistPierce */
     , (803006,  66,       1) /* ResistBludgeon */
     , (803006,  67,       1) /* ResistFire */
     , (803006,  68,       1) /* ResistCold */
     , (803006,  69,       1) /* ResistAcid */
     , (803006,  70,       1) /* ResistElectric */
     , (803006,  71,       1) /* ResistHealthBoost */
     , (803006,  72,       1) /* ResistStaminaDrain */
     , (803006,  73,       1) /* ResistStaminaBoost */
     , (803006,  74,       1) /* ResistManaDrain */
     , (803006,  75,       1) /* ResistManaBoost */
     , (803006, 104,      10) /* ObviousRadarRange */
     , (803006, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803006,   1, 'Facility Hub Contract Agent') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803006,   1,   33554433) /* Setup */
     , (803006,   2,  150994945) /* MotionTable */
     , (803006,   3,  536870913) /* SoundTable */
     , (803006,   4,  805306368) /* CombatTable */
     , (803006,   8,  100667446) /* Icon */
     /*, (803006,  57,     801690) /* AlternateCurrency - Trade Note (250,000) */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803006,   1,  20, 0, 0) /* Strength */
     , (803006,   2,  25, 0, 0) /* Endurance */
     , (803006,   3,  45, 0, 0) /* Quickness */
     , (803006,   4,  35, 0, 0) /* Coordination */
     , (803006,   5,  35, 0, 0) /* Focus */
     , (803006,   6,  25, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803006,   1,    25, 0, 0, 38) /* MaxHealth */
     , (803006,   3,    50, 0, 0, 75) /* MaxStamina */
     , (803006,   5,    20, 0, 0, 45) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803006,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803006,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803006,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803006,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803006,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803006,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803006,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803006,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803006,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803006,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome! What''s your pleasure today?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803006,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Thank you for your business. Please return soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803006,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 3 /* Sell */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You drive a hard bargain, my friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803006,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'An excellent purchase.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803006, 2, 26007,  0, 88, 0.67, False) /* Create Gelidite Robe (26007) for Wield */
     , (803006, 2,   127,  0, 7, 0.33, False) /* Create Pants (127) for Wield */
     , (803006, 2,   132,  0, 18, 1, False) /* Create Shoes (132) for Wield */
     , (803006, 2,   118,  0, 8, 0, False) /* Create Cap (118) for Wield */
     , (803006, 2, 10696,  0, 9, 0.5, False) /* Create Apron (10696) for Wield */
     , (803006, 4, 802970, -1, 0, 1, False) /* Create Shadow Wings Breastplate (32148) for Shop */
     , (803006, 4, 802972, -1, 0, 1, False) /* Create Royal Color (30702) for Shop */
     , (803006, 4, 802973, -1, 0, 1, False) /* Create Royal Dye (30705) for Shop */
     , (803006, 4, 802974, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802976, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802977, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802978, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802979, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802980, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802981, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802982, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802983, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802984, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802985, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802986, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802987, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802988, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802989, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802990, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802991, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802992, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802993, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802994, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802995, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802996, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802997, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 802998, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 803458, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 803459, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 803001, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 803002, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 803003, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 803005, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 803004, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */
     , (803006, 4, 803577, -1, 0, 1, False) /* Create Royal Oil (30703) for Shop */;
