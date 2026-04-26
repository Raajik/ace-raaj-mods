DELETE FROM `weenie` WHERE `class_Id` = 800493;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800493, 'Ethereal Vhormian Blacksmith', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800493,   1,         16) /* ItemType - Creature */
     , (800493,   2,         31) /* CreatureType - Human */
     , (800493,   6,         -1) /* ItemsCapacity */
     , (800493,   7,         -1) /* ContainersCapacity */
     , (800493,  16,         32) /* ItemUseable - Remote */
     , (800493,  25,        250) /* Level */
     , (800493,  27,          0) /* ArmorType - None */
     , (800493,  74,          0) /* MerchandiseItemTypes - None */
     , (800493,  75,          0) /* MerchandiseMinValue */
     , (800493,  76,     100000) /* MerchandiseMaxValue */
     , (800493,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (800493, 113,          1) /* Gender - Male */
     , (800493, 126,        125) /* VendorHappyMean */
     , (800493, 127,        125) /* VendorHappyVariance */
     , (800493, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800493, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800493, 188,         10) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800493,   1, True ) /* Stuck */
     , (800493,  19, False) /* Attackable */
     , (800493,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800493,   1,       5) /* HeartbeatInterval */
     , (800493,   2,       0) /* HeartbeatTimestamp */
     , (800493,   3,    0.16) /* HealthRate */
     , (800493,   4,       5) /* StaminaRate */
     , (800493,   5,       1) /* ManaRate */
     , (800493,  11,     300) /* ResetInterval */
     , (800493,  13,     0.9) /* ArmorModVsSlash */
     , (800493,  14,       1) /* ArmorModVsPierce */
     , (800493,  15,     1.1) /* ArmorModVsBludgeon */
     , (800493,  16,     0.4) /* ArmorModVsCold */
     , (800493,  17,     0.4) /* ArmorModVsFire */
     , (800493,  18,       1) /* ArmorModVsAcid */
     , (800493,  19,     0.6) /* ArmorModVsElectric */
     , (800493,  37,       1) /* BuyPrice */
     , (800493,  38,       1) /* SellPrice */
     , (800493,  54,       3) /* UseRadius */
     , (800493,  64,       1) /* ResistSlash */
     , (800493,  65,       1) /* ResistPierce */
     , (800493,  66,       1) /* ResistBludgeon */
     , (800493,  67,       1) /* ResistFire */
     , (800493,  68,       1) /* ResistCold */
     , (800493,  69,       1) /* ResistAcid */
     , (800493,  70,       1) /* ResistElectric */
     , (800493,  71,       1) /* ResistHealthBoost */
     , (800493,  72,       1) /* ResistStaminaDrain */
     , (800493,  73,       1) /* ResistStaminaBoost */
     , (800493,  74,       1) /* ResistManaDrain */
     , (800493,  75,       1) /* ResistManaBoost */
     , (800493, 104,      10) /* ObviousRadarRange */
     , (800493, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800493,   1, 'Ethereal Vhormian Blacksmith') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800493,   1, 0x02000001) /* Setup */
     , (800493,   2, 0x09000001) /* MotionTable */
     , (800493,   3, 0x20000001) /* SoundTable */
     , (800493,   6, 0x0400007E) /* PaletteBase */
     , (800493,   8, 0x06001036) /* Icon */
     , (800493,   9, 0x05001133) /* EyesTexture */
     , (800493,  10, 0x0500116A) /* NoseTexture */
     , (800493,  11, 0x050011B9) /* MouthTexture */
     , (800493,  15, 0x04002018) /* HairPalette */
     , (800493,  16, 0x040004AE) /* EyesPalette */
     , (800493,  17, 0x040002AE) /* SkinPalette */
     , (800493,  18, 0x01004802) /* HeadObject */
     , (800493,  57,     800478) /* AlternateCurrency - Ethereal Vhorma Coin */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800493,   1, 220, 0, 0) /* Strength */
     , (800493,   2, 270, 0, 0) /* Endurance */
     , (800493,   3, 200, 0, 0) /* Quickness */
     , (800493,   4, 200, 0, 0) /* Coordination */
     , (800493,   5, 290, 0, 0) /* Focus */
     , (800493,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800493,   1,   196, 0, 0, 331) /* MaxHealth */
     , (800493,   3,   196, 0, 0, 466) /* MaxStamina */
     , (800493,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800493,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800493,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800493,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800493,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800493,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800493,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800493,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800493,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800493,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800493,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome hero! View my templates, then give me Refined Bars of Vhorma to craft your gear.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800493,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I do hope you have found what it is you are looking for today.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800493,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'A wise choice, chosen one.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800493,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'This should assist you in slaying your enemies.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800493, 2,   339,  0, 0, 0, False) /* Create Scimitar (339) for Wield */
     , (800493, 2,   130,  0, 9, 0, False) /* Create Shirt (130) for Wield */
     , (800493, 2,   126,  0, 4, 0.6, False) /* Create Leggings (126) for Wield */
     , (800493, 2,   133,  0, 16, 1, False) /* Create Slippers (133) for Wield */
     , (800493, 2, 10696,  0, 13, 0.6, False) /* Create Apron (10696) for Wield */
     , (800493, 4, 800488,  0, 92, 0, False) /* Create BZ Touched Two Handed Spear for Shop */
	 , (800493, 4, 800489,  0, 92, 0, False) /* Create BZ Touched Sword for Shop */
	 , (800493, 4, 800490,  0, 92, 0, False) /* Create BZ Touched Axe for Shop */
	 , (800493, 4, 800491,  0, 92, 0, False) /* Create BZ Touched Bow for Shop */
	 , (800493, 4, 800492,  0, 92, 0, False) /* Create BZ Touched Sword for Shop */;
