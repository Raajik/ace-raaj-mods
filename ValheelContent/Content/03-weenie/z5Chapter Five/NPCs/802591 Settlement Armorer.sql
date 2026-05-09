DELETE FROM `weenie` WHERE `class_Id` = 802591;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802591, 'Settlement Armorer', 12, '2023-05-28 04:02:44') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802591,   1,         16) /* ItemType - Creature */
     , (802591,   2,         31) /* CreatureType - Human */
     , (802591,   6,         -1) /* ItemsCapacity */
     , (802591,   7,         -1) /* ContainersCapacity */
     , (802591,   8,        120) /* Mass */
     , (802591,  16,         32) /* ItemUseable - Remote */
     , (802591,  25,          3) /* Level */
     , (802591,  27,          0) /* ArmorType - None */
     , (802591,  74,    4481568) /* MerchandiseItemTypes - VendorGrocer */
     , (802591,  75,          0) /* MerchandiseMinValue */
     , (802591,  76,    1000000) /* MerchandiseMaxValue */
     , (802591,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (802591, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802591, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802591, 146,         20) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802591,   1, True ) /* Stuck */
     , (802591,  12, True ) /* ReportCollisions */
     , (802591,  13, False) /* Ethereal */
     , (802591,  19, False) /* Attackable */
     , (802591,  39, True ) /* DealMagicalItems */
     , (802591,  41, True ) /* ReportCollisionsAsEnvironment */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802591,   1,       5) /* HeartbeatInterval */
     , (802591,   2,       0) /* HeartbeatTimestamp */
     , (802591,   3,    0.16) /* HealthRate */
     , (802591,   4,       5) /* StaminaRate */
     , (802591,   5,       1) /* ManaRate */
     , (802591,  11,     300) /* ResetInterval */
     , (802591,  13,     0.9) /* ArmorModVsSlash */
     , (802591,  14,       1) /* ArmorModVsPierce */
     , (802591,  15,     1.1) /* ArmorModVsBludgeon */
     , (802591,  16,     0.4) /* ArmorModVsCold */
     , (802591,  17,     0.4) /* ArmorModVsFire */
     , (802591,  18,       1) /* ArmorModVsAcid */
     , (802591,  19,     0.6) /* ArmorModVsElectric */
     , (802591,  37,     0.9) /* BuyPrice */
     , (802591,  38,       1) /* SellPrice */
     , (802591,  54,       3) /* UseRadius */
     , (802591,  64,       1) /* ResistSlash */
     , (802591,  65,       1) /* ResistPierce */
     , (802591,  66,       1) /* ResistBludgeon */
     , (802591,  67,       1) /* ResistFire */
     , (802591,  68,       1) /* ResistCold */
     , (802591,  69,       1) /* ResistAcid */
     , (802591,  70,       1) /* ResistElectric */
     , (802591,  71,       1) /* ResistHealthBoost */
     , (802591,  72,       1) /* ResistStaminaDrain */
     , (802591,  73,       1) /* ResistStaminaBoost */
     , (802591,  74,       1) /* ResistManaDrain */
     , (802591,  75,       1) /* ResistManaBoost */
     , (802591, 104,      10) /* ObviousRadarRange */
     , (802591, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802591,   1, 'Mirra Blacksmith') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802591,   1,   33554433) /* Setup */
     , (802591,   2,  150994945) /* MotionTable */
     , (802591,   3,  536870913) /* SoundTable */
     , (802591,   4,  805306368) /* CombatTable */
     , (802591,   8,  100667446) /* Icon */
     , (802591,  57,     802589) /* AlternateCurrency - Mirra Ring */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802591,   1,  20, 0, 0) /* Strength */
     , (802591,   2,  25, 0, 0) /* Endurance */
     , (802591,   3,  45, 0, 0) /* Quickness */
     , (802591,   4,  35, 0, 0) /* Coordination */
     , (802591,   5,  35, 0, 0) /* Focus */
     , (802591,   6,  25, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802591,   1,    25, 0, 0, 38) /* MaxHealth */
     , (802591,   3,    50, 0, 0, 75) /* MaxStamina */
     , (802591,   5,    20, 0, 0, 45) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802591,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802591,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802591,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802591,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802591,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802591,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802591,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802591,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802591,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802591,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome! What''s your pleasure today?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802591,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Thank you for your business. Please return soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802591,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 3 /* Sell */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You drive a hard bargain, my friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802591,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'An excellent purchase.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802591, 2, 850012, -1, 93, 1, False) /* Create Ascended Covenant Helm (850012) for Wield */
     , (802591, 2, 850013, -1, 93, 1, False) /* Create Ascended Covenant Cuirass (850013) for Wield */
     , (802591, 2, 850014, -1, 93, 1, False) /* Create Ascended Covenant Pauldrons (850014) for Wield */
     , (802591, 2, 850015, -1, 93, 1, False) /* Create Ascended Covenant Bracers (850015) for Wield */
     , (802591, 2, 850016, -1, 93, 1, False) /* Create Ascended Covenant Gauntlets (850016) for Wield */
     , (802591, 2, 850017, -1, 93, 1, False) /* Create Ascended Covenant Girth (850017) for Wield */
     , (802591, 2, 850018, -1, 93, 1, False) /* Create Ascended Covenant Tassets (850018) for Wield */
     , (802591, 2, 850019, -1, 93, 1, False) /* Create Ascended Covenant Greaves (850019) for Wield */
     , (802591, 2, 850020, -1, 93, 1, False) /* Create Ascended Covenant Sollerets (850020) for Wield */
     , (802591, 4, 803087, -1, 93, 1, False) /* Create Ascended Covenant Shield (803087) for Shop */
     , (802591, 4, 850012, -1, 93, 1, False) /* Create Ascended Covenant Helm (850012) for Shop */
     , (802591, 4, 850013, -1, 93, 1, False) /* Create Ascended Covenant Cuirass (850013) for Shop */
     , (802591, 4, 850014, -1, 93, 1, False) /* Create Ascended Covenant Pauldrons (850014) for Shop */
     , (802591, 4, 850015, -1, 93, 1, False) /* Create Ascended Covenant Bracers (850015) for Shop */
     , (802591, 4, 850016, -1, 93, 1, False) /* Create Ascended Covenant Gauntlets (850016) for Shop */
     , (802591, 4, 850017, -1, 93, 1, False) /* Create Ascended Covenant Girth (850017) for Shop */
     , (802591, 4, 850018, -1, 93, 1, False) /* Create Ascended Covenant Tassets (850018) for Shop */
     , (802591, 4, 850019, -1, 93, 1, False) /* Create Ascended Covenant Greaves (850019) for Shop */
     , (802591, 4, 850020, -1, 93, 1, False) /* Create Ascended Covenant Sollerets (850020) for Shop */
     , (802591, 4, 803170, -1, 8, 1, False) /* Create Ascended Guardian of Pwyll (803170) for Shop */
     , (802591, 4, 803176, -1, 8, 1, False) /* Create Ascended Decapitator's Blade (803176) for Shop */
     , (802591, 4, 803182, -1, 8, 1, False) /* Create Ascended Morrigan's Vanity (803182) for Shop */
     , (802591, 4, 803154, -1, 8, 1, False) /* Create Ascended Defiler of Milantos (803154) for Shop */
     , (802591, 4, 803164, -1, 8, 1, False) /* Create Ascended Dragonspine Bow (803164) for Shop */
     , (802591, 4, 803193, -1, 8, 1, False) /* Create Ascended Assassin's Whisper (803193) for Shop */
     , (802591, 4, 803345, -1, 8, 1, False) /* Create Ascended Huntsman's Dart-Thrower (803345) for Shop */
     , (802591, 4, 803156, -1, 8, 1, False) /* Create Ascended Heart of Darkest Flame (803156) for Shop */
     , (802591, 4, 803157, -1, 8, 1, False) /* Create Ascended Slashing Orb of the Ironsea (803157) for Shop */
     , (802591, 4, 803158, -1, 8, 1, False) /* Create Ascended Piercing Orb of the Ironsea (803158) for Shop */
     , (802591, 4, 803159, -1, 8, 1, False) /* Create Ascended Bludgeoning Orb of the Ironsea (803159) for Shop */
     , (802591, 4, 803160, -1, 8, 1, False) /* Create Ascended Frost Orb of the Ironsea (803160) for Shop */
     , (802591, 4, 803161, -1, 8, 1, False) /* Create Ascended Fire Orb of the Ironsea (803161) for Shop */
     , (802591, 4, 803162, -1, 8, 1, False) /* Create Ascended Acid Orb of the Ironsea (803162) for Shop */
     , (802591, 4, 803163, -1, 8, 1, False) /* Create Ascended Static Orb of the Ironsea (803163) for Shop */
     , (802591, 4, 803943, -1, 8, 1, False) /* Create Ascended Static Orb of the Ironsea (803163) for Shop */;
