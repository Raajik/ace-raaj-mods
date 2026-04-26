DELETE FROM `weenie` WHERE `class_Id` = 803960;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803960, 'Tersewin Armorsmith', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803960,   1,         16) /* ItemType - Creature */
     , (803960,   2,         31) /* CreatureType - Human */
     , (803960,   6,         -1) /* ItemsCapacity */
     , (803960,   7,         -1) /* ContainersCapacity */
     , (803960,  16,         32) /* ItemUseable - Remote */
     , (803960,  25,        250) /* Level */
     , (803960,  27,          0) /* ArmorType - None */
     , (803960,  74,          0) /* MerchandiseItemTypes - None */
     , (803960,  75,          0) /* MerchandiseMinValue */
     , (803960,  76,     100000) /* MerchandiseMaxValue */
     , (803960,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (803960, 113,          1) /* Gender - Male */
     , (803960, 126,        125) /* VendorHappyMean */
     , (803960, 127,        125) /* VendorHappyVariance */
     , (803960, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803960, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803960,   1, True ) /* Stuck */
     , (803960,  19, False) /* Attackable */
     , (803960,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803960,   1,       5) /* HeartbeatInterval */
     , (803960,   2,       0) /* HeartbeatTimestamp */
     , (803960,   3,    0.16) /* HealthRate */
     , (803960,   4,       5) /* StaminaRate */
     , (803960,   5,       1) /* ManaRate */
     , (803960,  11,     300) /* ResetInterval */
     , (803960,  13,     0.9) /* ArmorModVsSlash */
     , (803960,  14,       1) /* ArmorModVsPierce */
     , (803960,  15,     1.1) /* ArmorModVsBludgeon */
     , (803960,  16,     0.4) /* ArmorModVsCold */
     , (803960,  17,     0.4) /* ArmorModVsFire */
     , (803960,  18,       1) /* ArmorModVsAcid */
     , (803960,  19,     0.6) /* ArmorModVsElectric */
     , (803960,  37,       1) /* BuyPrice */
     , (803960,  38,       0) /* SellPrice */
	 , (803960,  39,       2) /* DefaultScale */
     , (803960,  54,       3) /* UseRadius */
     , (803960,  64,       1) /* ResistSlash */
     , (803960,  65,       1) /* ResistPierce */
     , (803960,  66,       1) /* ResistBludgeon */
     , (803960,  67,       1) /* ResistFire */
     , (803960,  68,       1) /* ResistCold */
     , (803960,  69,       1) /* ResistAcid */
     , (803960,  70,       1) /* ResistElectric */
     , (803960,  71,       1) /* ResistHealthBoost */
     , (803960,  72,       1) /* ResistStaminaDrain */
     , (803960,  73,       1) /* ResistStaminaBoost */
     , (803960,  74,       1) /* ResistManaDrain */
     , (803960,  75,       1) /* ResistManaBoost */
     , (803960, 104,      10) /* ObviousRadarRange */
     , (803960, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803960,   1, 'Tersewin Armorsmith') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803960,   1, 0x02001BC3) /* Setup */
     , (803960,   2, 0x09000207) /* MotionTable */
     , (803960,   3, 0x20000002) /* SoundTable */
     , (803960,  57,     803939) /* AlternateCurrency - Tradewind's Path Token */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803960,   1, 5000, 0, 0) /* Strength */
     , (803960,   2, 5000, 0, 0) /* Endurance */
     , (803960,   3, 5000, 0, 0) /* Quickness */
     , (803960,   4, 5000, 0, 0) /* Coordination */
     , (803960,   5, 5000, 0, 0) /* Focus */
     , (803960,   6, 5000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803960,   1, 500000, 0, 0, 500000) /* MaxHealth */
     , (803960,   3, 500000, 0, 0, 500000) /* MaxStamina */
     , (803960,   5, 500000, 0, 0, 500000) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803960,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803960,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803960,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803960,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803960,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803960,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803960,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803960,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803960,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803960,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Surviving is only half the battle...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803960,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I hope to see you again, if you can manage to stay alive.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803960,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You will not regret your purchase.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803960,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Do not lose this...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803960, 2, 26007, -1, 0, 0, False) /* Create Gelidite Robe (26007) for Wield */
     , (803960, 4, 803883,  0, 93, 0, False) /* Create Tradewind Gauntlets of Destruction (803883) for Shop */
     , (803960, 4, 803884,  0, 93, 0, False) /* Create Tradewind Breastplate of Destruction (803884) for Shop */
     , (803960, 4, 803885,  0, 93, 0, False) /* Create Tradewind Bracers of Destruction (803885) for Shop */
     , (803960, 4, 803886,  0, 93, 0, False) /* Create Tradewind Tassets of Destruction (803886) for Shop */
     , (803960, 4, 803887,  0, 93, 0, False) /* Create Tradewind Sollerets of Destruction (803887) for Shop */
     , (803960, 4, 803888,  0, 93, 0, False) /* Create Tradewind Pauldrons of Destruction (803888) for Shop */
     , (803960, 4, 803889,  0, 93, 0, False) /* Create Tradewind Helm of Destruction (803889) for Shop */
     , (803960, 4, 803890,  0, 93, 0, False) /* Create Tradewind Helm of Destruction (803890) for Shop */
     , (803960, 4, 803891,  0, 93, 0, False) /* Create Tradewind Girth of Destruction (803891) for Shop */
     , (803960, 4, 803892,  0, 93, 0, False) /* Create Tradewind Girth of Protection (803892) for Shop */
     , (803960, 4, 803893,  0, 93, 0, False) /* Create Tradewind Gauntlets of Protection (803893) for Shop */
     , (803960, 4, 803894,  0, 93, 0, False) /* Create Tradewind Breastplate of Protection (803894) for Shop */
     , (803960, 4, 803895,  0, 93, 0, False) /* Create Tradewind Bracers of Protection (803895) for Shop */
     , (803960, 4, 803896,  0, 93, 0, False) /* Create Tradewind Tassets of Protection (803896) for Shop */
     , (803960, 4, 803897,  0, 93, 0, False) /* Create Tradewind Sollerets of Protection (803897) for Shop */
     , (803960, 4, 803898,  0, 93, 0, False) /* Create Tradewind Pauldrons of Protection (803898) for Shop */
     , (803960, 4, 803899,  0, 93, 0, False) /* Create Tradewind Greaves of Protection (803899) for Shop */
     , (803960, 4, 803900,  0, 93, 0, False) /* Create Tradewind Helm of Protection (803900) for Shop */
     , (803960, 4, 803901,  0, 93, 0, False) /* Create Tradewind Girth of Vitality (803901) for Shop */
     , (803960, 4, 803902,  0, 93, 0, False) /* Create Tradewind Gauntlets of Vitality (803902) for Shop */
     , (803960, 4, 803903,  0, 93, 0, False) /* Create Tradewind Breastplate of Vitality (803903) for Shop */
     , (803960, 4, 803904,  0, 93, 0, False) /* Create Tradewind Bracers of Vitality (803904) for Shop */
     , (803960, 4, 803905,  0, 93, 0, False) /* Create Tradewind Tassets of Vitality (803905) for Shop */
     , (803960, 4, 803906,  0, 93, 0, False) /* Create Tradewind Sollerets of Vitality (803906) for Shop */
     , (803960, 4, 803907,  0, 93, 0, False) /* Create Tradewind Pauldrons of Vitality (803907) for Shop */
     , (803960, 4, 803908,  0, 93, 0, False) /* Create Tradewind Greaves of Vitality (803908) for Shop */
     , (803960, 4, 803909,  0, 93, 0, False) /* Create Tradewind Helm of Vitality (803909) for Shop */;
