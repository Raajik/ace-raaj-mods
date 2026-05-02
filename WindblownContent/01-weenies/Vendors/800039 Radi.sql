DELETE FROM `weenie` WHERE `class_Id` = 800039;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800039, 'radi', 12, '2025-02-09 10:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800039,   1,         16) /* ItemType - Creature */
     , (800039,   2,         31) /* CreatureType - Human */
     , (800039,   6,         -1) /* ItemsCapacity */
     , (800039,   7,         -1) /* ContainersCapacity */
     , (800039,   8,        120) /* Mass */
     , (800039,  16,         32) /* ItemUseable - Remote */
     , (800039,  25,          3) /* Level */
     , (800039,  27,          0) /* ArmorType - None */
     , (800039,  74,       2048) /* MerchandiseItemTypes - Gem */
     , (800039,  75,          0) /* MerchandiseMinValue */
     , (800039,  76,    1000000) /* MerchandiseMaxValue */
     , (800039,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (800039, 126,        125) /* VendorHappyMean */
     , (800039, 127,        125) /* VendorHappyVariance */
     , (800039, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800039, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800039, 146,         20) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800039,   1, True ) /* Stuck */
     , (800039,  12, True ) /* ReportCollisions */
     , (800039,  13, False) /* Ethereal */
     , (800039,  19, False) /* Attackable */
     , (800039,  39, True ) /* DealMagicalItems */
     , (800039,  41, True ) /* ReportCollisionsAsEnvironment */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800039,   1,       5) /* HeartbeatInterval */
     , (800039,   2,       0) /* HeartbeatTimestamp */
     , (800039,   3,    0.16) /* HealthRate */
     , (800039,   4,       5) /* StaminaRate */
     , (800039,   5,       1) /* ManaRate */
     , (800039,  11,     300) /* ResetInterval */
     , (800039,  13,     0.9) /* ArmorModVsSlash */
     , (800039,  14,       1) /* ArmorModVsPierce */
     , (800039,  15,     1.1) /* ArmorModVsBludgeon */
     , (800039,  16,     0.4) /* ArmorModVsCold */
     , (800039,  17,     0.4) /* ArmorModVsFire */
     , (800039,  18,       1) /* ArmorModVsAcid */
     , (800039,  19,     0.6) /* ArmorModVsElectric */
     , (800039,  37,     0.9) /* BuyPrice */
     , (800039,  38,    1.35) /* SellPrice */
     , (800039,  54,       3) /* UseRadius */
     , (800039,  64,       1) /* ResistSlash */
     , (800039,  65,       1) /* ResistPierce */
     , (800039,  66,       1) /* ResistBludgeon */
     , (800039,  67,       1) /* ResistFire */
     , (800039,  68,       1) /* ResistCold */
     , (800039,  69,       1) /* ResistAcid */
     , (800039,  70,       1) /* ResistElectric */
     , (800039,  71,       1) /* ResistHealthBoost */
     , (800039,  72,       1) /* ResistStaminaDrain */
     , (800039,  73,       1) /* ResistStaminaBoost */
     , (800039,  74,       1) /* ResistManaDrain */
     , (800039,  75,       1) /* ResistManaBoost */
     , (800039, 104,      10) /* ObviousRadarRange */
     , (800039, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800039,   1, 'Radi') /* Name */
     , (800039,   3, 'Male') /* Sex */
     , (800039,   4, 'Gharu''ndim') /* HeritageGroup */
     , (800039,   5, 'Grocer') /* Template */
     , (800039,  24, 'Town Network') /* TownName */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800039,   1,   33554433) /* Setup */
     , (800039,   2,  150994945) /* MotionTable */
     , (800039,   3,  536870913) /* SoundTable */
     , (800039,   4,  805306368) /* CombatTable */
     , (800039,   8,  100667446) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800039,   1,  20, 0, 0) /* Strength */
     , (800039,   2,  25, 0, 0) /* Endurance */
     , (800039,   3,  45, 0, 0) /* Quickness */
     , (800039,   4,  35, 0, 0) /* Coordination */
     , (800039,   5,  35, 0, 0) /* Focus */
     , (800039,   6,  25, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800039,   1,    25, 0, 0, 38) /* MaxHealth */
     , (800039,   3,    50, 0, 0, 75) /* MaxStamina */
     , (800039,   5,    20, 0, 0, 45) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800039,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800039,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800039,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800039,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800039,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800039,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800039,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800039,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800039,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800039,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Hail, traveler of a thousand roads. You stand at the crossroads where skill and destiny trade hands. What thread shall we weave today?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800039,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'The portals whisper of distant lands. Go boldly — and may what you\'ve learned here serve you under stranger stars.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800039,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 3 /* Sell */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'The Network teaches us all to travel light. A fair trade.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800039,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'A stone of knowing, taken up. Hold it to the Light when you are ready.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800039,  2 /* Vendor */,  0.125, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 318767239 /* Wave */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800039,  2 /* Vendor */,   0.25, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 318767229 /* BowDeep */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800039,  2 /* Vendor */,  0.375, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 318767238 /* Shrug */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800039,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 318767235 /* Nod */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800039, 2,  5893,  0, 0, 0, False) /* Create Hoary Mattekar Robe (5893) for Wield */
     , (800039, 2,   127,  0, 7, 0.33, False) /* Create Pants (127) for Wield */
     , (800039, 2,   132,  0, 18, 1, False) /* Create Shoes (132) for Wield */
     /* Enlightenment Gems */
     , (800039, 4, 22350, -1, 0, 0, False) /* Create Alchemy Gem of Enlightenment (22350) for Shop */
     , (800039, 4, 22351, -1, 0, 0, False) /* Create Arcane Lore Gem of Enlightenment (22351) for Shop */
     , (800039, 4, 22352, -1, 0, 0, False) /* Create Armor Tinkering Gem of Enlightenment (22352) for Shop */
     , (800039, 4, 22356, -1, 0, 0, False) /* Create Assess Creature Gem of Enlightenment (22356) for Shop */
     , (800039, 4, 22376, -1, 0, 0, False) /* Create Assess Person Gem of Enlightenment (22376) for Shop */
     , (800039, 4, 22355, -1, 0, 0, False) /* Create Cooking Gem of Enlightenment (22355) for Shop */
     , (800039, 4, 22357, -1, 0, 0, False) /* Create Creature Enchantment Gem of Enlightenment (22357) for Shop */
     , (800039, 4, 22360, -1, 0, 0, False) /* Create Deception Gem of Enlightenment (22360) for Shop */
     , (800039, 4, 45380, -1, 0, 0, False) /* Create Dirty Fighting Gem of Enlightenment (45380) for Shop */
     , (800039, 4, 45381, -1, 0, 0, False) /* Create Dual Wield Gem of Enlightenment (45381) for Shop */
     , (800039, 4, 22359, -1, 0, 0, False) /* Create Finesse Weapons Gem of Enlightenment (22359) for Shop */
     , (800039, 4, 22361, -1, 0, 0, False) /* Create Fletching Gem of Enlightenment (22361) for Shop */
     , (800039, 4, 22380, -1, 0, 0, False) /* Create Heavy Weapons Gem of Enlightenment (22380) for Shop */
     , (800039, 4, 22362, -1, 0, 0, False) /* Create Healing Gem of Enlightenment (22362) for Shop */
     , (800039, 4, 22364, -1, 0, 0, False) /* Create Item Enchantment Gem of Enlightenment (22364) for Shop */
     , (800039, 4, 22363, -1, 0, 0, False) /* Create Item Tinkering Gem of Enlightenment (22363) for Shop */
     , (800039, 4, 22365, -1, 0, 0, False) /* Create Jump Gem of Enlightenment (22365) for Shop */
     , (800039, 4, 22366, -1, 0, 0, False) /* Create Leadership Gem of Enlightenment (22366) for Shop */
     , (800039, 4, 22367, -1, 0, 0, False) /* Create Life Magic Gem of Enlightenment (22367) for Shop */
     , (800039, 4, 22353, -1, 0, 0, False) /* Create Light Weapons Gem of Enlightenment (22353) for Shop */
     , (800039, 4, 22368, -1, 0, 0, False) /* Create Lockpick Gem of Enlightenment (22368) for Shop */
     , (800039, 4, 22369, -1, 0, 0, False) /* Create Loyalty Gem of Enlightenment (22369) for Shop */
     , (800039, 4, 22371, -1, 0, 0, False) /* Create Magic Defense Gem of Enlightenment (22371) for Shop */
     , (800039, 4, 22372, -1, 0, 0, False) /* Create Magic Item Tinkering Gem of Enlightenment (22372) for Shop */
     , (800039, 4, 22373, -1, 0, 0, False) /* Create Mana Conversion Gem of Enlightenment (22373) for Shop */
     , (800039, 4, 22374, -1, 0, 0, False) /* Create Melee Defense Gem of Enlightenment (22374) for Shop */
     , (800039, 4, 22375, -1, 0, 0, False) /* Create Missile Defense Gem of Enlightenment (22375) for Shop */
     , (800039, 4, 22354, -1, 0, 0, False) /* Create Missile Weapons Gem of Enlightenment (22354) for Shop */
     , (800039, 4, 45382, -1, 0, 0, False) /* Create Recklessness Gem of Enlightenment (45382) for Shop */
     , (800039, 4, 22377, -1, 0, 0, False) /* Create Run Gem of Enlightenment (22377) for Shop */
     , (800039, 4, 45383, -1, 0, 0, False) /* Create Shield Gem of Enlightenment (45383) for Shop */
     , (800039, 4, 45384, -1, 0, 0, False) /* Create Sneak Attack Gem of Enlightenment (45384) for Shop */
     , (800039, 4, 49484, -1, 0, 0, False) /* Create Summoning Gem of Enlightenment (49484) for Shop */
     , (800039, 4, 41740, -1, 0, 0, False) /* Create Two Handed Combat Gem of Enlightenment (41740) for Shop */
     , (800039, 4, 43400, -1, 0, 0, False) /* Create Void Magic Gem of Enlightenment (43400) for Shop */
     , (800039, 4, 22383, -1, 0, 0, False) /* Create War Magic Gem of Enlightenment (22383) for Shop */
     , (800039, 4, 22384, -1, 0, 0, False) /* Create Weapon Tinkering Gem of Enlightenment (22384) for Shop */
     /* Forgetfulness Gems */
     , (800039, 4, 22315, -1, 0, 0, False) /* Create Alchemy Gem of Forgetfulness (22315) for Shop */
     , (800039, 4, 22316, -1, 0, 0, False) /* Create Arcane Lore Gem of Forgetfulness (22316) for Shop */
     , (800039, 4, 22317, -1, 0, 0, False) /* Create Armor Tinkering Gem of Forgetfulness (22317) for Shop */
     , (800039, 4, 22321, -1, 0, 0, False) /* Create Assess Creature Gem of Forgetfulness (22321) for Shop */
     , (800039, 4, 22341, -1, 0, 0, False) /* Create Assess Person Gem of Forgetfulness (22341) for Shop */
     , (800039, 4, 22320, -1, 0, 0, False) /* Create Cooking Gem of Forgetfulness (22320) for Shop */
     , (800039, 4, 22322, -1, 0, 0, False) /* Create Creature Enchantment Gem of Forgetfulness (22322) for Shop */
     , (800039, 4, 22325, -1, 0, 0, False) /* Create Deception Gem of Forgetfulness (22325) for Shop */
     , (800039, 4, 45375, -1, 0, 0, False) /* Create Dirty Fighting Gem of Forgetfulness (45375) for Shop */
     , (800039, 4, 45376, -1, 0, 0, False) /* Create Dual Wield Gem of Forgetfulness (45376) for Shop */
     , (800039, 4, 22324, -1, 0, 0, False) /* Create Finesse Weapons Gem of Forgetfulness (22324) for Shop */
     , (800039, 4, 22326, -1, 0, 0, False) /* Create Fletching Gem of Forgetfulness (22326) for Shop */
     , (800039, 4, 22345, -1, 0, 0, False) /* Create Heavy Weapons Gem of Forgetfulness (22345) for Shop */
     , (800039, 4, 22327, -1, 0, 0, False) /* Create Healing Gem of Forgetfulness (22327) for Shop */
     , (800039, 4, 22329, -1, 0, 0, False) /* Create Item Enchantment Gem of Forgetfulness (22329) for Shop */
     , (800039, 4, 22328, -1, 0, 0, False) /* Create Item Tinkering Gem of Forgetfulness (22328) for Shop */
     , (800039, 4, 22330, -1, 0, 0, False) /* Create Jump Gem of Forgetfulness (22330) for Shop */
     , (800039, 4, 22331, -1, 0, 0, False) /* Create Leadership Gem of Forgetfulness (22331) for Shop */
     , (800039, 4, 22332, -1, 0, 0, False) /* Create Life Magic Gem of Forgetfulness (22332) for Shop */
     , (800039, 4, 22318, -1, 0, 0, False) /* Create Light Weapons Gem of Forgetfulness (22318) for Shop */
     , (800039, 4, 22333, -1, 0, 0, False) /* Create Lockpick Gem of Forgetfulness (22333) for Shop */
     , (800039, 4, 22334, -1, 0, 0, False) /* Create Loyalty Gem of Forgetfulness (22334) for Shop */
     , (800039, 4, 22336, -1, 0, 0, False) /* Create Magic Defense Gem of Forgetfulness (22336) for Shop */
     , (800039, 4, 22337, -1, 0, 0, False) /* Create Magic Item Tinkering Gem of Forgetfulness (22337) for Shop */
     , (800039, 4, 22338, -1, 0, 0, False) /* Create Mana Conversion Gem of Forgetfulness (22338) for Shop */
     , (800039, 4, 22339, -1, 0, 0, False) /* Create Melee Defense Gem of Forgetfulness (22339) for Shop */
     , (800039, 4, 22340, -1, 0, 0, False) /* Create Missile Defense Gem of Forgetfulness (22340) for Shop */
     , (800039, 4, 22319, -1, 0, 0, False) /* Create Missile Weapons Gem of Forgetfulness (22319) for Shop */
     , (800039, 4, 45377, -1, 0, 0, False) /* Create Recklessness Gem of Forgetfulness (45377) for Shop */
     , (800039, 4, 22342, -1, 0, 0, False) /* Create Run Gem of Forgetfulness (22342) for Shop */
     , (800039, 4, 28926, -1, 0, 0, False) /* Create Salvaging Gem of Forgetfulness (28926) for Shop */
     , (800039, 4, 45378, -1, 0, 0, False) /* Create Shield Gem of Forgetfulness (45378) for Shop */
     , (800039, 4, 45379, -1, 0, 0, False) /* Create Sneak Attack Gem of Forgetfulness (45379) for Shop */
     , (800039, 4, 49481, -1, 0, 0, False) /* Create Summoning Gem of Forgetfulness (49481) for Shop */
     , (800039, 4, 41739, -1, 0, 0, False) /* Create Two Handed Gem of Forgetfulness (41739) for Shop */
     , (800039, 4, 43402, -1, 0, 0, False) /* Create Void Magic Gem of Forgetfulness (43402) for Shop */
     , (800039, 4, 22348, -1, 0, 0, False) /* Create War Magic Gem of Forgetfulness (22348) for Shop */
     , (800039, 4, 22349, -1, 0, 0, False) /* Create Weapon Tinkering Gem of Forgetfulness (22349) for Shop */
     /* Raising Gems */
     , (800039, 4, 22943, -1, 0, 0, False) /* Create Gem of Raising Coordination (22943) for Shop */
     , (800039, 4, 22944, -1, 0, 0, False) /* Create Gem of Raising Endurance (22944) for Shop */
     , (800039, 4, 22945, -1, 0, 0, False) /* Create Gem of Raising Focus (22945) for Shop */
     , (800039, 4, 22946, -1, 0, 0, False) /* Create Gem of Raising Quickness (22946) for Shop */
     , (800039, 4, 22947, -1, 0, 0, False) /* Create Gem of Raising Self (22947) for Shop */
     , (800039, 4, 22948, -1, 0, 0, False) /* Create Gem of Raising Strength (22948) for Shop */
     /* Lowering Gems */
     , (800039, 4, 22937, -1, 0, 0, False) /* Create Gem of Lowering Coordination (22937) for Shop */
     , (800039, 4, 22938, -1, 0, 0, False) /* Create Gem of Lowering Endurance (22938) for Shop */
     , (800039, 4, 22939, -1, 0, 0, False) /* Create Gem of Lowering Focus (22939) for Shop */
     , (800039, 4, 22940, -1, 0, 0, False) /* Create Gem of Lowering Quickness (22940) for Shop */
     , (800039, 4, 22941, -1, 0, 0, False) /* Create Gem of Lowering Self (22941) for Shop */
     , (800039, 4, 22942, -1, 0, 0, False) /* Create Gem of Lowering Strength (22942) for Shop */;
