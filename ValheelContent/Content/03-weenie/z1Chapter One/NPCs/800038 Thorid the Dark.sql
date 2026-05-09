DELETE FROM `weenie` WHERE `class_Id` = 800038;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800038, 'cursedweaponsdealer', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800038,   1,         16) /* ItemType - Creature */
     , (800038,   2,         31) /* CreatureType - Human */
     , (800038,   6,         -1) /* ItemsCapacity */
     , (800038,   7,         -1) /* ContainersCapacity */
     , (800038,  16,         32) /* ItemUseable - Remote */
     , (800038,  25,        250) /* Level */
     , (800038,  27,          0) /* ArmorType - None */
     , (800038,  74,          0) /* MerchandiseItemTypes - None */
     , (800038,  75,          0) /* MerchandiseMinValue */
     , (800038,  76,     100000) /* MerchandiseMaxValue */
     , (800038,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (800038, 113,          1) /* Gender - Male */
     , (800038, 126,        125) /* VendorHappyMean */
     , (800038, 127,        125) /* VendorHappyVariance */
     , (800038, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800038, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800038, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800038,   1, True ) /* Stuck */
     , (800038,  19, False) /* Attackable */
     , (800038,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800038,   1,       5) /* HeartbeatInterval */
     , (800038,   2,       0) /* HeartbeatTimestamp */
     , (800038,   3,    0.16) /* HealthRate */
     , (800038,   4,       5) /* StaminaRate */
     , (800038,   5,       1) /* ManaRate */
     , (800038,  11,     300) /* ResetInterval */
     , (800038,  13,     0.9) /* ArmorModVsSlash */
     , (800038,  14,       1) /* ArmorModVsPierce */
     , (800038,  15,     1.1) /* ArmorModVsBludgeon */
     , (800038,  16,     0.4) /* ArmorModVsCold */
     , (800038,  17,     0.4) /* ArmorModVsFire */
     , (800038,  18,       1) /* ArmorModVsAcid */
     , (800038,  19,     0.6) /* ArmorModVsElectric */
     , (800038,  37,       1) /* BuyPrice */
     , (800038,  38,   0.001) /* SellPrice */
     , (800038,  54,       3) /* UseRadius */
     , (800038,  64,       1) /* ResistSlash */
     , (800038,  65,       1) /* ResistPierce */
     , (800038,  66,       1) /* ResistBludgeon */
     , (800038,  67,       1) /* ResistFire */
     , (800038,  68,       1) /* ResistCold */
     , (800038,  69,       1) /* ResistAcid */
     , (800038,  70,       1) /* ResistElectric */
     , (800038,  71,       1) /* ResistHealthBoost */
     , (800038,  72,       1) /* ResistStaminaDrain */
     , (800038,  73,       1) /* ResistStaminaBoost */
     , (800038,  74,       1) /* ResistManaDrain */
     , (800038,  75,       1) /* ResistManaBoost */
     , (800038, 104,      10) /* ObviousRadarRange */
     , (800038, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800038,   1, 'Thorid the Dark') /* Name */
     , (800038,   5, 'Cursed Weapons Dealer') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800038,   1, 0x02000001) /* Setup */
     , (800038,   2, 0x09000001) /* MotionTable */
     , (800038,   3, 0x20000001) /* SoundTable */
     , (800038,   6, 0x0400007E) /* PaletteBase */
     , (800038,   8, 0x06001036) /* Icon */
     , (800038,   9, 0x05001133) /* EyesTexture */
     , (800038,  10, 0x0500116A) /* NoseTexture */
     , (800038,  11, 0x050011B9) /* MouthTexture */
     , (800038,  15, 0x04002018) /* HairPalette */
     , (800038,  16, 0x040004AE) /* EyesPalette */
     , (800038,  17, 0x040002AE) /* SkinPalette */
     , (800038,  18, 0x01004802) /* HeadObject */
     , (800038,  57,     800037) /* AlternateCurrency - Attuned Nightmare Stone */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800038,   1, 220, 0, 0) /* Strength */
     , (800038,   2, 270, 0, 0) /* Endurance */
     , (800038,   3, 200, 0, 0) /* Quickness */
     , (800038,   4, 200, 0, 0) /* Coordination */
     , (800038,   5, 290, 0, 0) /* Focus */
     , (800038,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800038,   1,   196, 0, 0, 331) /* MaxHealth */
     , (800038,   3,   196, 0, 0, 466) /* MaxStamina */
     , (800038,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800038,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800038,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800038,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800038,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800038,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800038,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800038,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800038,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800038,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800038,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'The darkness curses us all.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800038,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Remain silent as the wisps in shadows.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800038,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'This stone... It holds much power. I have infused it into the weapon of your choice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800038,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'May the darkness envelope you, traveler.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800038, 2,  28614,  0, 4, 0, False) /* Create Robe for Wield */
     , (800038, 4, 800177,  0, 4, 0, False) /* Create Cursed Nether Wand for Shop */
	 , (800038, 4, 800093,  0, 4, 0, False) /* Create Cursed Hollow Sword for Shop */
	 , (800038, 4, 800094,  0, 4, 0, False) /* Create Cursed Hollow Claw for Shop */
	 , (800038, 4, 800095,  0, 4, 0, False) /* Create Cursed Hollow Longsword for Shop */
	 , (800038, 4, 800129,  0, 4, 0, False) /* Create Cursed Hollow Bow for Shop */
	 , (800038, 4, 800122,  0, 4, 0, False) /* Create Cursed Orb Cert for Shop */
	 , (800038, 4, 800123,  0, 4, 0, False) /* Create Cursed Orb Cert for Shop */
	 , (800038, 4, 800124,  0, 4, 0, False) /* Create Cursed Orb Cert for Shop */
	 , (800038, 4, 800125,  0, 4, 0, False) /* Create Cursed Orb Cert for Shop */
	 , (800038, 4, 800126,  0, 4, 0, False) /* Create Cursed Orb Cert for Shop */
	 , (800038, 4, 800127,  0, 4, 0, False) /* Create Cursed Orb Cert for Shop */
	 , (800038, 4, 800128,  0, 4, 0, False) /* Create Cursed Orb Cert for Shop */
	 , (800038, 4, 801095,  0, 4, 0, False) /* Create Cursed Orb Cert for Shop */;
