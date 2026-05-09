DELETE FROM `weenie` WHERE `class_Id` = 800219;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800219, 'Shadow Armor Smith1', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800219,   1,         16) /* ItemType - Creature */
     , (800219,   2,         31) /* CreatureType - Human */
     , (800219,   6,         -1) /* ItemsCapacity */
     , (800219,   7,         -1) /* ContainersCapacity */
     , (800219,  16,         32) /* ItemUseable - Remote */
     , (800219,  25,        100) /* Level */
     , (800219,  74,          0) /* MerchandiseItemTypes - None */
     , (800219,  75,          0) /* MerchandiseMinValue */
     , (800219,  76,     100000) /* MerchandiseMaxValue */
     , (800219,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (800219,  95,          8) /* RadarBlipColor - Yellow */
     , (800219, 113,          1) /* Gender - Male */
     , (800219, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800219, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800219, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800219,   1, True ) /* Stuck */
     , (800219,  11, True ) /* IgnoreCollisions */
     , (800219,  12, True ) /* ReportCollisions */
     , (800219,  14, True ) /* GravityStatus */
     , (800219,  19, False) /* Attackable */
     , (800219,  39, True ) /* DealMagicalItems */
     , (800219,  41, True ) /* ReportCollisionsAsEnvironment */
     , (800219,  42, True ) /* AllowEdgeSlide */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800219,  37,     0.5) /* BuyPrice */
     , (800219,  38,       3) /* SellPrice */
     , (800219,  54,       3) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800219,   1, 'Shadow Armor Smith') /* Name */
     , (800219,   5, 'Master Armorer') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800219,   1,   33554433) /* Setup */
     , (800219,   2,  150994945) /* MotionTable */
     , (800219,   3,  536870913) /* SoundTable */
     , (800219,   6,   67108990) /* PaletteBase */
     , (800219,   8,  100667446) /* Icon */
     , (800219,  57,      20630) /* AlternateCurrency - Hardened Scintillating Gem */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800219,   1, 220, 0, 0) /* Strength */
     , (800219,   2, 200, 0, 0) /* Endurance */
     , (800219,   3, 170, 0, 0) /* Quickness */
     , (800219,   4, 220, 0, 0) /* Coordination */
     , (800219,   5, 150, 0, 0) /* Focus */
     , (800219,   6, 150, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800219,   1,   150, 0, 0, 250) /* MaxHealth */
     , (800219,   3,   235, 0, 0, 435) /* MaxStamina */
     , (800219,   5,   150, 0, 0, 300) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800219,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'The crystals from the shadows have powers which can be harnessed for use in great armor.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800219,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Be always on the lookout soldier.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800219, 2, 800213,  0, 93, 0.0667, False) /* Create Shadow Bracers (49773) for Wield */
     , (800219, 2, 800214,  0, 93, 0.0667, False) /* Create Shadow Breastplate (49774) for Wield */
     , (800219, 2, 800215,  0, 93, 0.0667, False) /* Create Shadow Gauntlets (49775) for Wield */
     , (800219, 2, 800217,  0, 93, 0.0667, False) /* Create Shadow Greaves (49777) for Wield */
     , (800219, 4, 800015, -1, 93, 0.0667, False) /* Create Shadow Girth (49776) for Shop */
     , (800219, 4, 800016, -1, 93, 0.0667, False) /* Create Shadow Girth (49776) for Shop */
     , (800219, 4, 800019, -1, 93, 0.0667, False) /* Create Shadow Girth (49776) for Shop */
     , (800219, 4, 800033, -1, 93, 0.0667, False) /* Create Shadow Girth (49776) for Shop */
     , (800219, 4, 800121, -1, 93, 0.0667, False) /* Create Shadow Girth (49776) for Shop */
     , (800219, 4, 800221, -1, 93, 0.0667, False) /* Create Shadow Girth (49776) for Shop */
     , (800219, 4, 800222, -1, 93, 0.0667, False) /* Create Shadow Girth (49776) for Shop */
     , (800219, 4, 800223, -1, 93, 0.0667, False) /* Create Shadow Girth (49776) for Shop */
     , (800219, 4, 800224, -1, 93, 0.0667, False) /* Create Shadow Girth (49776) for Shop */
     , (800219, 4, 800225, -1, 93, 0.0667, False) /* Create Shadow Girth (49776) for Shop */
     , (800219, 4, 800213, -1, 93, 0.0667, False) /* Create Shadow Bracers (49773) for Shop */
     , (800219, 4, 800214, -1, 93, 0.0667, False) /* Create Shadow Breastplate (49774) for Shop */
     , (800219, 4, 800215, -1, 93, 0.0667, False) /* Create Shadow Gauntlets (49775) for Shop */
     , (800219, 4, 800216, -1, 93, 0.0667, False) /* Create Shadow Helm (49778) for Shop */
     , (800219, 4, 800217, -1, 93, 0.0667, False) /* Create Shadow Girth (49776) for Shop */;
