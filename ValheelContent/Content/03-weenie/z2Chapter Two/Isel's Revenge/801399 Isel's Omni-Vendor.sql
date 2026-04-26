DELETE FROM `weenie` WHERE `class_Id` = 801399;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801399, 'IselsOmniVendor', 12, '2021-11-01 00:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801399,   1,         16) /* ItemType - Creature */
     , (801399,   2,         31) /* CreatureType - Human */
     , (801399,   6,         -1) /* ItemsCapacity */
     , (801399,   7,         -1) /* ContainersCapacity */
     , (801399,  16,         32) /* ItemUseable - Remote */
     , (801399,  25,        500) /* Level */
     , (801399,  27,          0) /* ArmorType - None */
     , (801399,  74,          0) /* MerchandiseItemTypes - None */
     , (801399,  75,          0) /* MerchandiseMinValue */
     , (801399,  76,     100000) /* MerchandiseMaxValue */
     , (801399,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (801399, 113,          1) /* Gender - Male */
     , (801399, 126,        125) /* VendorHappyMean */
     , (801399, 127,        125) /* VendorHappyVariance */
     , (801399, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801399, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801399,   1, True ) /* Stuck */
     , (801399,  19, False) /* Attackable */
     , (801399,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801399,   1,       5) /* HeartbeatInterval */
     , (801399,   2,       0) /* HeartbeatTimestamp */
     , (801399,   3,    0.16) /* HealthRate */
     , (801399,   4,       5) /* StaminaRate */
     , (801399,   5,       1) /* ManaRate */
     , (801399,  11,     300) /* ResetInterval */
     , (801399,  13,     0.9) /* ArmorModVsSlash */
     , (801399,  14,       1) /* ArmorModVsPierce */
     , (801399,  15,     1.1) /* ArmorModVsBludgeon */
     , (801399,  16,     0.4) /* ArmorModVsCold */
     , (801399,  17,     0.4) /* ArmorModVsFire */
     , (801399,  18,       1) /* ArmorModVsAcid */
     , (801399,  19,     0.6) /* ArmorModVsElectric */
     , (801399,  37,       1) /* BuyPrice */
     , (801399,  38,       1) /* SellPrice */
     , (801399,  54,       3) /* UseRadius */
     , (801399,  64,       1) /* ResistSlash */
     , (801399,  65,       1) /* ResistPierce */
     , (801399,  66,       1) /* ResistBludgeon */
     , (801399,  67,       1) /* ResistFire */
     , (801399,  68,       1) /* ResistCold */
     , (801399,  69,       1) /* ResistAcid */
     , (801399,  70,       1) /* ResistElectric */
     , (801399,  71,       1) /* ResistHealthBoost */
     , (801399,  72,       1) /* ResistStaminaDrain */
     , (801399,  73,       1) /* ResistStaminaBoost */
     , (801399,  74,       1) /* ResistManaDrain */
     , (801399,  75,       1) /* ResistManaBoost */
     , (801399, 104,      10) /* ObviousRadarRange */
     , (801399, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801399,   1, 'Isel''s Omni-Vendor') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801399,   1,   33559537) /* Setup */
     , (801399,   2,  150994945) /* MotionTable */
     , (801399,   3,  536870913) /* SoundTable */
     , (801399,   4,  805306408) /* CombatTable */
     , (801399,   8,  100670398) /* Icon */
     , (801399,  22,  872415331) /* PhysicsEffectTable */
     , (801399,  57,     801400) /* AlternateCurrency - FireSpire Coin */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801399,   1, 220, 0, 0) /* Strength */
     , (801399,   2, 270, 0, 0) /* Endurance */
     , (801399,   3, 200, 0, 0) /* Quickness */
     , (801399,   4, 200, 0, 0) /* Coordination */
     , (801399,   5, 290, 0, 0) /* Focus */
     , (801399,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801399,   1,   196, 0, 0, 331) /* MaxHealth */
     , (801399,   3,   196, 0, 0, 466) /* MaxStamina */
     , (801399,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801399,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801399,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801399,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801399,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801399,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801399,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801399,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801399,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801399,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801399,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Isel reigns supreme over all.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801399,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'May you never show your grimey face around here again.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801399,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'I do hope this breaks when you use it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801399,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You are dead to me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801399, 4, 801395,  0, 39, 0, False) /* Create Raise Destruction (801395) for Shop */
     , (801399, 4, 801396,  0, 39, 0, False) /* Create Raise Invulnerability (801396) for Shop */
     , (801399, 4, 801397,  0, 39, 0, False) /* Create Raise Glory (801397) for Shop */
     , (801399, 4, 801398,  0, 39, 0, False) /* Create Raise Temperance (801398) for Shop */
     /*, (801399, 4, 801434,  0, 39, 0, False) /* Create Raise World (801434) for Shop */
     /*, (801399, 4, 801409,  0, 39, 0, False) /* Create Skill Credit Gem (801409) for Shop */
     , (801399, 4, 800539,  0, 39, 0, False) /* Create Enduring Fortress (LR) (800539) for Shop */
     , (801399, 4, 800540,  0, 39, 0, False) /* Create Eternal Focus (LR) (800540) for Shop */
     , (801399, 4, 800541,  0, 39, 0, False) /* Create Lucky Rabbit's Foot (LR) (800541) for Shop */
     , (801399, 4, 800542,  0, 39, 0, False) /* Create Stoic Will (LR) (800542) for Shop */
     , (801399, 4, 800543,  0, 39, 0, False) /* Create Power of Kings (LR) (800543) for Shop */
     , (801399, 4, 800544,  0, 39, 0, False) /* Create Robin's Skill (LR) (800544) for Shop */
     , (801399, 4, 800545,  0, 39, 0, False) /* Create Robin's Long Bow (LR) (800545) for Shop */
     , (801399, 4, 800546,  0, 39, 0, False) /* Create One Inch Punch (LR) (800546) for Shop */
     , (801399, 4, 800547,  0, 39, 0, False) /* Create Holo-Shield of Fortitude (LR) (800547) for Shop */
     , (801399, 4, 800548,  0, 39, 0, False) /* Create Obsidian Skin (LR) (800548) for Shop */
     , (801399, 4, 800549,  0, 39, 0, False) /* Create Dodging Expert (LR) (800549) for Shop */
     , (801399, 4, 800550,  0, 39, 0, False) /* Create Great Axe of Thorid (800550) for Shop */
     , (801399, 4, 800551,  0, 39, 0, False) /* Create Master of the Great Sword (LR) (800551) for Shop */
     , (801399, 4, 800552,  0, 39, 0, False) /* Create A Thousand Daggers (LR) (800552) for Shop */
     , (801399, 4, 801403,  0, 39, 0, False) /* Create Healing Hands (LR) (801403) for Shop */
     , (801399, 4, 801404,  0, 39, 0, False) /* Create Warmonger (LR) (801404) for Shop */
     , (801399, 4, 801405,  0, 39, 0, False) /* Create Imperial Lifestaff (LR) (801405) for Shop */
     , (801399, 4, 801406,  0, 39, 0, False) /* Create Critter Whisperer (LR) (801406) for Shop */
     , (801399, 4, 801407,  0, 39, 0, False) /* Create Harold of Heartseekers (LR) (801407) for Shop */
     , (801399, 4, 801408,  0, 39, 0, False) /* Create Dark Arts (LR) (801408) for Shop */
     , (801399, 4, 801423,  0, 39, 0, False) /* Create Dragon Scales (LR) (801423) for Shop */;
