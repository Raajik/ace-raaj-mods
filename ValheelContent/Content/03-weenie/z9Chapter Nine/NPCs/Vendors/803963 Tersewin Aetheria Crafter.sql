DELETE FROM `weenie` WHERE `class_Id` = 803963;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803963, 'Tersewin Aetheria Crafter', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803963,   1,         16) /* ItemType - Creature */
     , (803963,   2,         31) /* CreatureType - Human */
     , (803963,   6,         -1) /* ItemsCapacity */
     , (803963,   7,         -1) /* ContainersCapacity */
     , (803963,  16,         32) /* ItemUseable - Remote */
     , (803963,  25,        250) /* Level */
     , (803963,  27,          0) /* ArmorType - None */
     , (803963,  74,          0) /* MerchandiseItemTypes - None */
     , (803963,  75,          0) /* MerchandiseMinValue */
     , (803963,  76,     100000) /* MerchandiseMaxValue */
     , (803963,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (803963, 113,          1) /* Gender - Male */
     , (803963, 126,        125) /* VendorHappyMean */
     , (803963, 127,        125) /* VendorHappyVariance */
     , (803963, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803963, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803963,   1, True ) /* Stuck */
     , (803963,  19, False) /* Attackable */
     , (803963,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803963,   1,       5) /* HeartbeatInterval */
     , (803963,   2,       0) /* HeartbeatTimestamp */
     , (803963,   3,    0.16) /* HealthRate */
     , (803963,   4,       5) /* StaminaRate */
     , (803963,   5,       1) /* ManaRate */
     , (803963,  11,     300) /* ResetInterval */
     , (803963,  13,     0.9) /* ArmorModVsSlash */
     , (803963,  14,       1) /* ArmorModVsPierce */
     , (803963,  15,     1.1) /* ArmorModVsBludgeon */
     , (803963,  16,     0.4) /* ArmorModVsCold */
     , (803963,  17,     0.4) /* ArmorModVsFire */
     , (803963,  18,       1) /* ArmorModVsAcid */
     , (803963,  19,     0.6) /* ArmorModVsElectric */
     , (803963,  37,       1) /* BuyPrice */
     , (803963,  38,       0) /* SellPrice */
	 , (803963,  39,       2) /* DefaultScale */
     , (803963,  54,       3) /* UseRadius */
     , (803963,  64,       1) /* ResistSlash */
     , (803963,  65,       1) /* ResistPierce */
     , (803963,  66,       1) /* ResistBludgeon */
     , (803963,  67,       1) /* ResistFire */
     , (803963,  68,       1) /* ResistCold */
     , (803963,  69,       1) /* ResistAcid */
     , (803963,  70,       1) /* ResistElectric */
     , (803963,  71,       1) /* ResistHealthBoost */
     , (803963,  72,       1) /* ResistStaminaDrain */
     , (803963,  73,       1) /* ResistStaminaBoost */
     , (803963,  74,       1) /* ResistManaDrain */
     , (803963,  75,       1) /* ResistManaBoost */
     , (803963, 104,      10) /* ObviousRadarRange */
     , (803963, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803963,   1, 'Tersewin Aetheria Crafter') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803963,   1, 0x02001BC3) /* Setup */
     , (803963,   2, 0x09000207) /* MotionTable */
     , (803963,   3, 0x20000002) /* SoundTable */
     , (803963,  57,     803939) /* AlternateCurrency - Tradewind's Path Token */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803963,   1, 5000, 0, 0) /* Strength */
     , (803963,   2, 5000, 0, 0) /* Endurance */
     , (803963,   3, 5000, 0, 0) /* Quickness */
     , (803963,   4, 5000, 0, 0) /* Coordination */
     , (803963,   5, 5000, 0, 0) /* Focus */
     , (803963,   6, 5000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803963,   1, 500000, 0, 0, 500000) /* MaxHealth */
     , (803963,   3, 500000, 0, 0, 500000) /* MaxStamina */
     , (803963,   5, 500000, 0, 0, 500000) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803963,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803963,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803963,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803963,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803963,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803963,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803963,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803963,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803963,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803963,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Surviving is only half the battle...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803963,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I hope to see you again, if you can manage to stay alive.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803963,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You will not regret your purchase.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803963,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Do not lose this...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803963, 2, 26007, -1, 0, 0, False) /* Create Gelidite Robe (26007) for Wield */
     , (803963, 4, 803871,  0, 39, 0, False) /* Create Tradewind Ring of Destruction (803910) for Shop */
     , (803963, 4, 803872,  0, 39, 0, False) /* Create Tradewind Ring of Protection (803911) for Shop */
     , (803963, 4, 803873,  0, 39, 0, False) /* Create Tradewind Ring of Vitality (803912) for Shop */
     , (803963, 4, 803874,  0, 39, 0, False) /* Create Tradewind Bracelet of Destruction (803913) for Shop */
     , (803963, 4, 803875,  0, 39, 0, False) /* Create Tradewind Bracelet of Protection (803914) for Shop */
     , (803963, 4, 803876,  0, 39, 0, False) /* Create Tradewind Bracelet of Vitality (803915) for Shop */
     , (803963, 4, 803877,  0, 39, 0, False) /* Create Tradewind Necklace of Destruction (803916) for Shop */
     , (803963, 4, 803878,  0, 39, 0, False) /* Create Tradewind Necklace of Protection (803917) for Shop */
     , (803963, 4, 803879,  0, 39, 0, False) /* Create Tradewind Necklace of Vitality (803918) for Shop */;
