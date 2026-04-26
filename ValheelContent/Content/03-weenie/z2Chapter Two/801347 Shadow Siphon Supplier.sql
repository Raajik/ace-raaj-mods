DELETE FROM `weenie` WHERE `class_Id` = 801347;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801347, 'SiphonSupplier', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801347,   1,         16) /* ItemType - Creature */
     , (801347,   2,         31) /* CreatureType - Human */
     , (801347,   6,         -1) /* ItemsCapacity */
     , (801347,   7,         -1) /* ContainersCapacity */
     , (801347,  16,         32) /* ItemUseable - Remote */
     , (801347,  25,        250) /* Level */
     , (801347,  27,          0) /* ArmorType - None */
     , (801347,  74,          0) /* MerchandiseItemTypes - None */
     , (801347,  75,          0) /* MerchandiseMinValue */
     , (801347,  76,     100000) /* MerchandiseMaxValue */
     , (801347,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (801347, 113,          1) /* Gender - Male */
     , (801347, 126,        125) /* VendorHappyMean */
     , (801347, 127,        125) /* VendorHappyVariance */
     , (801347, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801347, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801347, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801347,   1, True ) /* Stuck */
     , (801347,  19, False) /* Attackable */
     , (801347,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801347,   1,       5) /* HeartbeatInterval */
     , (801347,   2,       0) /* HeartbeatTimestamp */
     , (801347,   3,    0.16) /* HealthRate */
     , (801347,   4,       5) /* StaminaRate */
     , (801347,   5,       1) /* ManaRate */
     , (801347,  11,     300) /* ResetInterval */
     , (801347,  13,     0.9) /* ArmorModVsSlash */
     , (801347,  14,       1) /* ArmorModVsPierce */
     , (801347,  15,     1.1) /* ArmorModVsBludgeon */
     , (801347,  16,     0.4) /* ArmorModVsCold */
     , (801347,  17,     0.4) /* ArmorModVsFire */
     , (801347,  18,       1) /* ArmorModVsAcid */
     , (801347,  19,     0.6) /* ArmorModVsElectric */
     , (801347,  37,       1) /* BuyPrice */
     , (801347,  38,       1) /* SellPrice */
     , (801347,  54,       3) /* UseRadius */
     , (801347,  64,       1) /* ResistSlash */
     , (801347,  65,       1) /* ResistPierce */
     , (801347,  66,       1) /* ResistBludgeon */
     , (801347,  67,       1) /* ResistFire */
     , (801347,  68,       1) /* ResistCold */
     , (801347,  69,       1) /* ResistAcid */
     , (801347,  70,       1) /* ResistElectric */
     , (801347,  71,       1) /* ResistHealthBoost */
     , (801347,  72,       1) /* ResistStaminaDrain */
     , (801347,  73,       1) /* ResistStaminaBoost */
     , (801347,  74,       1) /* ResistManaDrain */
     , (801347,  75,       1) /* ResistManaBoost */
     , (801347, 104,      10) /* ObviousRadarRange */
     , (801347, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801347,   1, 'Shadow Siphon Supplier') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801347,   1, 0x02000001) /* Setup */
     , (801347,   2, 0x09000001) /* MotionTable */
     , (801347,   3, 0x20000001) /* SoundTable */
     , (801347,   6, 0x0400007E) /* PaletteBase */
     , (801347,   8, 0x06001036) /* Icon */
     , (801347,   9, 0x05001133) /* EyesTexture */
     , (801347,  10, 0x0500116A) /* NoseTexture */
     , (801347,  11, 0x050011B9) /* MouthTexture */
     , (801347,  15, 0x04002018) /* HairPalette */
     , (801347,  16, 0x040004AE) /* EyesPalette */
     , (801347,  17, 0x040002AE) /* SkinPalette */
     , (801347,  18, 0x01004802) /* HeadObject */
     , (801347,  57,     20630) /* AlternateCurrency - Attuned Nightmare Stone */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801347,   1, 220, 0, 0) /* Strength */
     , (801347,   2, 270, 0, 0) /* Endurance */
     , (801347,   3, 200, 0, 0) /* Quickness */
     , (801347,   4, 200, 0, 0) /* Coordination */
     , (801347,   5, 290, 0, 0) /* Focus */
     , (801347,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801347,   1,   196, 0, 0, 331) /* MaxHealth */
     , (801347,   3,   196, 0, 0, 466) /* MaxStamina */
     , (801347,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801347,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801347,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801347,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801347,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801347,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801347,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801347,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801347,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801347,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801347,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'The darkness curses us all.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801347,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Remain silent as the wisps in shadows.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801347,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'This stone... It holds much power. I have infused it into the weapon of your choice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801347,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'May the darkness envelope you, traveler.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801347, 2,  28614,  0, 93, 0, False) /* Create Robe for Wield */
     , (801347, 4, 801334,  0, 4, 0, False) /* Create Cursed Nether Wand for Shop */
	 , (801347, 4, 801336,  0, 4, 0, False) /* Create Cursed Hollow Sword for Shop */
	 , (801347, 4, 801338,  0, 4, 0, False) /* Create Cursed Hollow Claw for Shop */
	 , (801347, 4, 49485,  0, 4, 0, False) /* Create Cursed Hollow Longsword for Shop */;
