DELETE FROM `weenie` WHERE `class_Id` = 803402;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803402, 'Luminium Armorsmith', 12, '2024-04-04 08:42:54') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803402,   1,         16) /* ItemType - Creature */
     , (803402,   2,         31) /* CreatureType - Human */
     , (803402,   6,         -1) /* ItemsCapacity */
     , (803402,   7,         -1) /* ContainersCapacity */
     , (803402,   8,        120) /* Mass */
     , (803402,  16,         32) /* ItemUseable - Remote */
     , (803402,  25,        185) /* Level */
     , (803402,  27,          0) /* ArmorType - None */
     , (803402,  74,    4481568) /* MerchandiseItemTypes - VendorGrocer */
     , (803402,  75,          0) /* MerchandiseMinValue */
     , (803402,  76,    1000000) /* MerchandiseMaxValue */
     , (803402,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (803402, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803402, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803402, 146,         20) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803402,   1, True ) /* Stuck */
     , (803402,  12, True ) /* ReportCollisions */
     , (803402,  13, False) /* Ethereal */
     , (803402,  19, False) /* Attackable */
     , (803402,  39, True ) /* DealMagicalItems */
     , (803402,  41, True ) /* ReportCollisionsAsEnvironment */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803402,   1,       5) /* HeartbeatInterval */
     , (803402,   2,       0) /* HeartbeatTimestamp */
     , (803402,   3,    0.16) /* HealthRate */
     , (803402,   4,       5) /* StaminaRate */
     , (803402,   5,       1) /* ManaRate */
     , (803402,  11,     300) /* ResetInterval */
     , (803402,  13,     0.9) /* ArmorModVsSlash */
     , (803402,  14,       1) /* ArmorModVsPierce */
     , (803402,  15,     1.1) /* ArmorModVsBludgeon */
     , (803402,  16,     0.4) /* ArmorModVsCold */
     , (803402,  17,     0.4) /* ArmorModVsFire */
     , (803402,  18,       1) /* ArmorModVsAcid */
     , (803402,  19,     0.6) /* ArmorModVsElectric */
     , (803402,  37,       1) /* BuyPrice */
     , (803402,  38,       0) /* SellPrice */
     , (803402,  54,       3) /* UseRadius */
     , (803402,  64,       1) /* ResistSlash */
     , (803402,  65,       1) /* ResistPierce */
     , (803402,  66,       1) /* ResistBludgeon */
     , (803402,  67,       1) /* ResistFire */
     , (803402,  68,       1) /* ResistCold */
     , (803402,  69,       1) /* ResistAcid */
     , (803402,  70,       1) /* ResistElectric */
     , (803402,  71,       1) /* ResistHealthBoost */
     , (803402,  72,       1) /* ResistStaminaDrain */
     , (803402,  73,       1) /* ResistStaminaBoost */
     , (803402,  74,       1) /* ResistManaDrain */
     , (803402,  75,       1) /* ResistManaBoost */
     , (803402, 104,      10) /* ObviousRadarRange */
     , (803402, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803402,   1, 'Luminium Armorsmith') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803402,   1,   33554433) /* Setup */
     , (803402,   2,  150994945) /* MotionTable */
     , (803402,   3,  536870913) /* SoundTable */
     , (803402,   4,  805306368) /* CombatTable */
     , (803402,   8,  100667446) /* Icon */
     , (803402,  57,     803880) /* AlternateCurrency - AshCoin */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803402,   1,  20, 0, 0) /* Strength */
     , (803402,   2,  25, 0, 0) /* Endurance */
     , (803402,   3,  45, 0, 0) /* Quickness */
     , (803402,   4,  35, 0, 0) /* Coordination */
     , (803402,   5,  35, 0, 0) /* Focus */
     , (803402,   6,  25, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803402,   1,    25, 0, 0, 38) /* MaxHealth */
     , (803402,   3,    50, 0, 0, 75) /* MaxStamina */
     , (803402,   5,    20, 0, 0, 45) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803402,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803402,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803402,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803402,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803402,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803402,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803402,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803402,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803402,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803090,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome! What''s your pleasure today?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803090,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Thank you for your business. Please return soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803090,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 3 /* Sell */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You drive a hard bargain, my friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803090,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'An excellent purchase.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803402, 2,803391,  1,80,    0, False) /* Create Gelidite Robe (6061) for Wield */
     , (803402, 2,803392,  1,80,    0, False) /* Create Gelidite Robe (6061) for Wield */
     , (803402, 2,803393,  1,80,    0, False) /* Create Gelidite Robe (6061) for Wield */
     , (803402, 2,803394,  1,80,    0, False) /* Create Gelidite Robe (6061) for Wield */
     , (803402, 2,803395,  1,80,    0, False) /* Create Gelidite Robe (6061) for Wield */
     , (803402, 2,803396,  1,80,    0, False) /* Create Gelidite Robe (6061) for Wield */
     , (803402, 2,803397,  1,80,    0, False) /* Create Gelidite Robe (6061) for Wield */
     , (803402, 2,803398,  1,80,    0, False) /* Create Gelidite Robe (6061) for Wield */
     , (803402, 2,803399,  1,80,    0, False) /* Create Gelidite Robe (6061) for Wield */
     , (803402, 4, 803391, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803392, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803393, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803394, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803395, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803396, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803397, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803398, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803399, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803403, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803404, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803405, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803406, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803407, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803408, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803409, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803410, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803411, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803412, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803413, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803414, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803415, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */
     , (803402, 4, 803451, -1, 8, 1, False) /* Create Limitless Lockpick (30253) for Shop */;

