DELETE FROM `weenie` WHERE `class_Id` = 803959;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803959, 'Tersewin Weaponsmith', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803959,   1,         16) /* ItemType - Creature */
     , (803959,   2,         31) /* CreatureType - Human */
     , (803959,   6,         -1) /* ItemsCapacity */
     , (803959,   7,         -1) /* ContainersCapacity */
     , (803959,  16,         32) /* ItemUseable - Remote */
     , (803959,  25,        250) /* Level */
     , (803959,  27,          0) /* ArmorType - None */
     , (803959,  74,          0) /* MerchandiseItemTypes - None */
     , (803959,  75,          0) /* MerchandiseMinValue */
     , (803959,  76,     100000) /* MerchandiseMaxValue */
     , (803959,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (803959, 113,          1) /* Gender - Male */
     , (803959, 126,        125) /* VendorHappyMean */
     , (803959, 127,        125) /* VendorHappyVariance */
     , (803959, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803959, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803959,   1, True ) /* Stuck */
     , (803959,  19, False) /* Attackable */
     , (803959,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803959,   1,       5) /* HeartbeatInterval */
     , (803959,   2,       0) /* HeartbeatTimestamp */
     , (803959,   3,    0.16) /* HealthRate */
     , (803959,   4,       5) /* StaminaRate */
     , (803959,   5,       1) /* ManaRate */
     , (803959,  11,     300) /* ResetInterval */
     , (803959,  13,     0.9) /* ArmorModVsSlash */
     , (803959,  14,       1) /* ArmorModVsPierce */
     , (803959,  15,     1.1) /* ArmorModVsBludgeon */
     , (803959,  16,     0.4) /* ArmorModVsCold */
     , (803959,  17,     0.4) /* ArmorModVsFire */
     , (803959,  18,       1) /* ArmorModVsAcid */
     , (803959,  19,     0.6) /* ArmorModVsElectric */
     , (803959,  37,       1) /* BuyPrice */
     , (803959,  38,       0) /* SellPrice */
	 , (803959,  39,       2) /* DefaultScale */
     , (803959,  54,       3) /* UseRadius */
     , (803959,  64,       1) /* ResistSlash */
     , (803959,  65,       1) /* ResistPierce */
     , (803959,  66,       1) /* ResistBludgeon */
     , (803959,  67,       1) /* ResistFire */
     , (803959,  68,       1) /* ResistCold */
     , (803959,  69,       1) /* ResistAcid */
     , (803959,  70,       1) /* ResistElectric */
     , (803959,  71,       1) /* ResistHealthBoost */
     , (803959,  72,       1) /* ResistStaminaDrain */
     , (803959,  73,       1) /* ResistStaminaBoost */
     , (803959,  74,       1) /* ResistManaDrain */
     , (803959,  75,       1) /* ResistManaBoost */
     , (803959, 104,      10) /* ObviousRadarRange */
     , (803959, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803959,   1, 'Tradewind''s Path Weaponsmith') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803959,   1, 0x02001BC3) /* Setup */
     , (803959,   2, 0x09000207) /* MotionTable */
     , (803959,   3, 0x20000002) /* SoundTable */
     , (803959,  57,     803939) /* AlternateCurrency - Tradewind's Path Token */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803959,   1, 5000, 0, 0) /* Strength */
     , (803959,   2, 5000, 0, 0) /* Endurance */
     , (803959,   3, 5000, 0, 0) /* Quickness */
     , (803959,   4, 5000, 0, 0) /* Coordination */
     , (803959,   5, 5000, 0, 0) /* Focus */
     , (803959,   6, 5000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803959,   1, 500000, 0, 0, 500000) /* MaxHealth */
     , (803959,   3, 500000, 0, 0, 500000) /* MaxStamina */
     , (803959,   5, 500000, 0, 0, 500000) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803959,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803959,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803959,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803959,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803959,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803959,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803959,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803959,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803959,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803959,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Surviving is only half the battle...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803959,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I hope to see you again, if you can manage to stay alive.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803959,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You will not regret your purchase.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803959,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Do not lose this...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803959, 2, 26007, -1, 0, 0, False) /* Create Gelidite Robe (26007) for Wield */
     , (803959, 4, 803923,  0, 39, 0, False) /* Create Tradewind Dagger of the Kings (803926) for Shop */
     , (803959, 4, 803924,  0, 39, 0, False) /* Create Tradewind Dagger of the Kings (803926) for Shop */
     , (803959, 4, 803925,  0, 39, 0, False) /* Create Tradewind Dagger of the Kings (803926) for Shop */
     , (803959, 4, 803926,  0, 39, 0, False) /* Create Tradewind Dagger of the Kings (803926) for Shop */
     , (803959, 4, 803927,  0, 39, 0, False) /* Create Tradewind Axe of the Kings (803927) for Shop */
     , (803959, 4, 803928,  0, 39, 0, False) /* Create Tradewind Staff of the Kings (803928) for Shop */
     , (803959, 4, 803929,  0, 39, 0, False) /* Create Tradewind Greatsword of the Kings (803929) for Shop */
     , (803959, 4, 803930,  0, 39, 0, False) /* Create Tradewind Diabolic Orb of the Kings (803930) for Shop */
     , (803959, 4, 803931,  0, 39, 0, False) /* Create Tradewind Static Orb of the Kings (803931) for Shop */
     , (803959, 4, 803932,  0, 39, 0, False) /* Create Tradewind Slicing Orb of the Kings (803932) for Shop */
     , (803959, 4, 803933,  0, 39, 0, False) /* Create Tradewind Stabbing Orb of the Kings (803933) for Shop */
     , (803959, 4, 803934,  0, 39, 0, False) /* Create Tradewind Bashing Orb of the Kings (803934) for Shop */
     , (803959, 4, 803935,  0, 39, 0, False) /* Create Tradewind Frosted Orb of the Kings (803935) for Shop */
     , (803959, 4, 803936,  0, 39, 0, False) /* Create Tradewind Searing Orb of the Kings (803936) for Shop */
     , (803959, 4, 803937,  0, 39, 0, False) /* Create Tradewind Caustic Orb of the Kings (803937) for Shop */;
