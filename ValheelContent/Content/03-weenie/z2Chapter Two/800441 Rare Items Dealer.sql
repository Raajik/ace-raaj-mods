DELETE FROM `weenie` WHERE `class_Id` = 800441;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800441, 'Rare Items Dealer', 12, '2005-02-09 10:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800441,   1,         16) /* ItemType - Creature */
     , (800441,   2,         31) /* CreatureType - Human */
     , (800441,   6,         -1) /* ItemsCapacity */
     , (800441,   7,         -1) /* ContainersCapacity */
     , (800441,   8,        120) /* Mass */
     , (800441,  16,         32) /* ItemUseable - Remote */
     , (800441,  25,          3) /* Level */
     , (800441,  27,          0) /* ArmorType - None */
     , (800441,  74,    4481568) /* MerchandiseItemTypes - VendorGrocer */
     , (800441,  75,          0) /* MerchandiseMinValue */
     , (800441,  76,    1000000) /* MerchandiseMaxValue */
     , (800441,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (800441, 126,        125) /* VendorHappyMean */
     , (800441, 127,        125) /* VendorHappyVariance */
     , (800441, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800441, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800441, 146,         20) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800441,   1, True ) /* Stuck */
     , (800441,  12, True ) /* ReportCollisions */
     , (800441,  13, False) /* Ethereal */
     , (800441,  19, False) /* Attackable */
     , (800441,  39, True ) /* DealMagicalItems */
     , (800441,  41, True ) /* ReportCollisionsAsEnvironment */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800441,   1,       5) /* HeartbeatInterval */
     , (800441,   2,       0) /* HeartbeatTimestamp */
     , (800441,   3,    0.16) /* HealthRate */
     , (800441,   4,       5) /* StaminaRate */
     , (800441,   5,       1) /* ManaRate */
     , (800441,  11,     300) /* ResetInterval */
     , (800441,  13,     0.9) /* ArmorModVsSlash */
     , (800441,  14,       1) /* ArmorModVsPierce */
     , (800441,  15,     1.1) /* ArmorModVsBludgeon */
     , (800441,  16,     0.4) /* ArmorModVsCold */
     , (800441,  17,     0.4) /* ArmorModVsFire */
     , (800441,  18,       1) /* ArmorModVsAcid */
     , (800441,  19,     0.6) /* ArmorModVsElectric */
     , (800441,  37,     0.9) /* BuyPrice */
     , (800441,  38,       1) /* SellPrice */
     , (800441,  54,       3) /* UseRadius */
     , (800441,  64,       1) /* ResistSlash */
     , (800441,  65,       1) /* ResistPierce */
     , (800441,  66,       1) /* ResistBludgeon */
     , (800441,  67,       1) /* ResistFire */
     , (800441,  68,       1) /* ResistCold */
     , (800441,  69,       1) /* ResistAcid */
     , (800441,  70,       1) /* ResistElectric */
     , (800441,  71,       1) /* ResistHealthBoost */
     , (800441,  72,       1) /* ResistStaminaDrain */
     , (800441,  73,       1) /* ResistStaminaBoost */
     , (800441,  74,       1) /* ResistManaDrain */
     , (800441,  75,       1) /* ResistManaBoost */
     , (800441, 104,      10) /* ObviousRadarRange */
     , (800441, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800441,   1, 'Rare Items Dealer') /* Name */
     , (800441,   3, 'Male') /* Sex */
     , (800441,   4, 'Aluvian') /* HeritageGroup */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800441,   1, 0x02000001) /* Setup */
     , (800441,   2, 0x09000001) /* MotionTable */
     , (800441,   3, 0x20000001) /* SoundTable */
     , (800441,   4, 0x30000000) /* CombatTable */
     , (800441,   8, 0x06001036) /* Icon */
	 , (800441,  57,     800442) /* AlternateCurrency - Deceased Mayor Token */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800441,   1,  20, 0, 0) /* Strength */
     , (800441,   2,  25, 0, 0) /* Endurance */
     , (800441,   3,  45, 0, 0) /* Quickness */
     , (800441,   4,  35, 0, 0) /* Coordination */
     , (800441,   5,  35, 0, 0) /* Focus */
     , (800441,   6,  25, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800441,   1,    25, 0, 0, 38) /* MaxHealth */
     , (800441,   3,    50, 0, 0, 75) /* MaxStamina */
     , (800441,   5,    20, 0, 0, 45) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800441,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800441,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800441,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800441,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800441,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800441,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800441,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800441,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800441,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800441,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Ahh, you have come to see my goods have you?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800441, 2, 44006, -1, 0, 0, False) /* Create Robe (36628) for Weild */
     , (800441,     4,   30127, -1,  8,     1, False) /* Create Rare Coord for Shop */
     , (800441,     4,   30134, -1,  8,     1, False) /* Create Rare End for Shop */
     , (800441,     4,   30138, -1,  8,     1, False) /* Create Rare Focus for Shop */
     , (800441,     4,   30166, -1,  8,     1, False) /* Create Rare Quickness for Shop */
     , (800441,     4,   30168, -1,  8,     1, False) /* Create Rare Will for Shop */
     , (800441,     4,   30174, -1,  8,     1, False) /* Create Rare Strength for Shop */
     , (800441,     4,   30114, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30115, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30116, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30117, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30118, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30119, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30120, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30125, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30126, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30128, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30130, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30131, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30137, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30141, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30146, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30147, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30148, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30149, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30150, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30154, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30155, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30157, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30158, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30159, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30161, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30162, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30167, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30176, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30179, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30180, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   45361, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   45362, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   45363, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   45364, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   45365, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   70001, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   70002, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   70003, -1,  8,     1, False) /* Create Rare Creature for Shop */
     , (800441,     4,   30113, -1,  8,     1, False) /* Create Rare Life for Shop */
     , (800441,     4,   30116, -1,  8,     1, False) /* Create Rare Life for Shop */
     , (800441,     4,   30124, -1,  8,     1, False) /* Create Rare Life for Shop */
     , (800441,     4,   30135, -1,  8,     1, False) /* Create Rare Life for Shop */
     , (800441,     4,   30140, -1,  8,     1, False) /* Create Rare Life for Shop */
     , (800441,     4,   30142, -1,  8,     1, False) /* Create Rare Life for Shop */
     , (800441,     4,   30153, -1,  8,     1, False) /* Create Rare Life for Shop */
     , (800441,     4,   30160, -1,  8,     1, False) /* Create Rare Life for Shop */
     , (800441,     4,   30164, -1,  8,     1, False) /* Create Rare Life for Shop */
     , (800441,     4,   30169, -1,  8,     1, False) /* Create Rare Life for Shop */
     , (800441,     4,   30173, -1,  8,     1, False) /* Create Rare Life for Shop */
     , (800441,     4,   30112, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30121, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30122, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30123, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30132, -1,  8,     1, False) /* Create Rare Item for Shop */
    /* , (800441,     4,   30133, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30136, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30139, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30143, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30144, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30145, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30152, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30163, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30171, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30175, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30247, -1,  8,     1, False) /* Create Rare Health for Shop */
     , (800441,     4,   30248, -1,  8,     1, False) /* Create Rare Stam for Shop */
     , (800441,     4,   30249, -1,  8,     1, False) /* Create Rare Mana for Shop */
     , (800441,     4,   30151, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30165, -1,  8,     1, False) /* Create Rare Item for Shop */
     , (800441,     4,   30253, -1,  8,     1, False) /* Create Rare Lockpick for Shop */;