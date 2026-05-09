DELETE FROM `weenie` WHERE `class_Id` = 802592;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802592, 'Dunforth', 10, '2023-05-30 07:57:37') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802592,   1,         16) /* ItemType - Creature */
     , (802592,   2,         31) /* CreatureType - Human */
     , (802592,   3,          9) /* PaletteTemplate - Grey */
     , (802592,   6,         -1) /* ItemsCapacity */
     , (802592,   7,         -1) /* ContainersCapacity */
     , (802592,   8,        120) /* Mass */
     , (802592,  16,         32) /* ItemUseable - Remote */
     , (802592,  25,          5) /* Level */
     , (802592,  27,          0) /* ArmorType - None */
     , (802592,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (802592,  95,          8) /* RadarBlipColor - Yellow */
     , (802592, 113,          1) /* Gender - Male */
     , (802592, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802592, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802592, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802592,   1, True ) /* Stuck */
     , (802592,   8, True ) /* AllowGive */
     , (802592,  12, True ) /* ReportCollisions */
     , (802592,  13, False) /* Ethereal */
     , (802592,  19, False) /* Attackable */
     , (802592,  41, True ) /* ReportCollisionsAsEnvironment */
     , (802592,  42, True ) /* AllowEdgeSlide */
     , (802592,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802592,   3,    0.16) /* HealthRate */
     , (802592,   4,       5) /* StaminaRate */
     , (802592,   5,       1) /* ManaRate */
     , (802592,  12,       1) /* Shade */
     , (802592,  13,     0.9) /* ArmorModVsSlash */
     , (802592,  14,       1) /* ArmorModVsPierce */
     , (802592,  15,     1.1) /* ArmorModVsBludgeon */
     , (802592,  16,     0.4) /* ArmorModVsCold */
     , (802592,  17,     0.4) /* ArmorModVsFire */
     , (802592,  18,       1) /* ArmorModVsAcid */
     , (802592,  19,     0.6) /* ArmorModVsElectric */
     , (802592,  54,       3) /* UseRadius */
     , (802592,  64,       1) /* ResistSlash */
     , (802592,  65,       1) /* ResistPierce */
     , (802592,  66,       1) /* ResistBludgeon */
     , (802592,  67,       1) /* ResistFire */
     , (802592,  68,       1) /* ResistCold */
     , (802592,  69,       1) /* ResistAcid */
     , (802592,  70,       1) /* ResistElectric */
     , (802592,  71,       1) /* ResistHealthBoost */
     , (802592,  72,       1) /* ResistStaminaDrain */
     , (802592,  73,       1) /* ResistStaminaBoost */
     , (802592,  74,       1) /* ResistManaDrain */
     , (802592,  75,       1) /* ResistManaBoost */
     , (802592, 104,      10) /* ObviousRadarRange */
     , (802592, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802592,   1, 'Dunforth') /* Name */
     , (802592,   5, 'Kramer') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802592,   1, 0x02000001) /* Setup */
     , (802592,   2, 0x09000001) /* MotionTable */
     , (802592,   3, 0x20000001) /* SoundTable */
     , (802592,   4, 0x30000000) /* CombatTable */
     , (802592,   6, 0x0400007E) /* PaletteBase */
     , (802592,   8, 0x06000FF1) /* Icon */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802592,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802592,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802592,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802592,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802592,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802592,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802592,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802592,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802592,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802592,   1,1000, 0, 0) /* Strength */
     , (802592,   2,1000, 0, 0) /* Endurance */
     , (802592,   3,1000, 0, 0) /* Quickness */
     , (802592,   4,1000, 0, 0) /* Coordination */
     , (802592,   5,1000, 0, 0) /* Focus */
     , (802592,   6,1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802592,   1,    10, 0, 0,100000) /* MaxHealth */
     , (802592,   3,    10, 0, 0,100000) /* MaxStamina */
     , (802592,   5,    10, 0, 0,100000) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802592, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'My son is an amazing inventor, just like his parents. Possibly even better!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802592, 2,  8133,  0, 8, 0.67, False) /* Create Aerfalle's Pallium (8133) for Wield */
     , (802592, 2,   127,  0, 7, 0.33, False) /* Create Pants (127) for Wield */
     , (802592, 2,   132,  0,18,    1, False) /* Create Shoes (132) for Wield */
     , (802592, 2, 10696,  0, 9,  0.5, False) /* Create Apron (10696) for Wield */;

