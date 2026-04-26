DELETE FROM `weenie` WHERE `class_Id` = 800187;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800187, 'asherons weaponsmith', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800187,   1,         16) /* ItemType - Creature */
     , (800187,   2,         31) /* CreatureType - Human */
     , (800187,   6,         -1) /* ItemsCapacity */
     , (800187,   7,         -1) /* ContainersCapacity */
     , (800187,  16,         32) /* ItemUseable - Remote */
     , (800187,  25,        250) /* Level */
     , (800187,  27,          0) /* ArmorType - None */
     , (800187,  74,          0) /* MerchandiseItemTypes - None */
     , (800187,  75,          0) /* MerchandiseMinValue */
     , (800187,  76,     100000) /* MerchandiseMaxValue */
     , (800187,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (800187, 113,          1) /* Gender - Male */
     , (800187, 126,        125) /* VendorHappyMean */
     , (800187, 127,        125) /* VendorHappyVariance */
     , (800187, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800187, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800187, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800187,   1, True ) /* Stuck */
     , (800187,  19, False) /* Attackable */
     , (800187,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800187,   1,       5) /* HeartbeatInterval */
     , (800187,   2,       0) /* HeartbeatTimestamp */
     , (800187,   3,    0.16) /* HealthRate */
     , (800187,   4,       5) /* StaminaRate */
     , (800187,   5,       1) /* ManaRate */
     , (800187,  11,     300) /* ResetInterval */
     , (800187,  13,     0.9) /* ArmorModVsSlash */
     , (800187,  14,       1) /* ArmorModVsPierce */
     , (800187,  15,     1.1) /* ArmorModVsBludgeon */
     , (800187,  16,     0.4) /* ArmorModVsCold */
     , (800187,  17,     0.4) /* ArmorModVsFire */
     , (800187,  18,       1) /* ArmorModVsAcid */
     , (800187,  19,     0.6) /* ArmorModVsElectric */
     , (800187,  37,       1) /* BuyPrice */
     , (800187,  38,       1) /* SellPrice */
     , (800187,  54,       3) /* UseRadius */
     , (800187,  64,       1) /* ResistSlash */
     , (800187,  65,       1) /* ResistPierce */
     , (800187,  66,       1) /* ResistBludgeon */
     , (800187,  67,       1) /* ResistFire */
     , (800187,  68,       1) /* ResistCold */
     , (800187,  69,       1) /* ResistAcid */
     , (800187,  70,       1) /* ResistElectric */
     , (800187,  71,       1) /* ResistHealthBoost */
     , (800187,  72,       1) /* ResistStaminaDrain */
     , (800187,  73,       1) /* ResistStaminaBoost */
     , (800187,  74,       1) /* ResistManaDrain */
     , (800187,  75,       1) /* ResistManaBoost */
     , (800187, 104,      10) /* ObviousRadarRange */
     , (800187, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800187,   1, 'Asheron''s Weaponsmith') /* Name */
     , (800187,   5, 'A fabricator of enchanted weaponry.') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800187,   1, 0x02000001) /* Setup */
     , (800187,   2, 0x09000001) /* MotionTable */
     , (800187,   3, 0x20000001) /* SoundTable */
     , (800187,   6, 0x0400007E) /* PaletteBase */
     , (800187,   8, 0x06001036) /* Icon */
     , (800187,   9, 0x05001133) /* EyesTexture */
     , (800187,  10, 0x0500116A) /* NoseTexture */
     , (800187,  11, 0x050011B9) /* MouthTexture */
     , (800187,  15, 0x04002018) /* HairPalette */
     , (800187,  16, 0x040004AE) /* EyesPalette */
     , (800187,  17, 0x040002AE) /* SkinPalette */
     , (800187,  18, 0x01004802) /* HeadObject */
     , (800187,  57,     800186) /* AlternateCurrency - Attuned Nightmare Stone */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800187,   1, 220, 0, 0) /* Strength */
     , (800187,   2, 270, 0, 0) /* Endurance */
     , (800187,   3, 200, 0, 0) /* Quickness */
     , (800187,   4, 200, 0, 0) /* Coordination */
     , (800187,   5, 290, 0, 0) /* Focus */
     , (800187,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800187,   1,   196, 0, 0, 331) /* MaxHealth */
     , (800187,   3,   196, 0, 0, 466) /* MaxStamina */
     , (800187,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800187,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800187,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800187,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800187,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800187,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800187,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800187,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800187,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800187,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800187,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'What brings you to me today? Asheron did huh? Well let''s have a look at what you have brought me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800187,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'As long as Asheron trusts you, as do I.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800187,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You''ve chosen a great weapon to work with. May it serve you well.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800187,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'A great choice has been made. Rid the land of these awful virindi!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800187, 2,  10870,  0, 4, 0, False) /* Create Robe for Wield */
     , (800187, 4, 800179,  0, 4, 0, False) /* Create Katar for Shop */
     , (800187, 4, 800180,  0, 4, 0, False) /* Create Greatsword for Shop */
     , (800187, 4, 800181,  0, 4, 0, False) /* Create Sword for Shop */
     , (800187, 4, 800182,  0, 4, 0, False) /* Create Axe for Shop */
     , (800187, 4, 800183,  0, 4, 0, False) /* Create Bow for Shop */
     , (800187, 4, 800184,  0, 4, 0, False) /* Create Wand for Shop */
     , (800187, 4, 802269,  0, 4, 0, False) /* Create Wand for Shop */;
