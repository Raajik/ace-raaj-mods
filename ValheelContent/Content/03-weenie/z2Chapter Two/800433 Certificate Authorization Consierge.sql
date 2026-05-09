DELETE FROM `weenie` WHERE `class_Id` = 800433;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800433, 'Certificate Authorization Consierge', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800433,   1,         16) /* ItemType - Creature */
     , (800433,   2,         31) /* CreatureType - Human */
     , (800433,   3,          9) /* PaletteTemplate - Grey */
     , (800433,   6,         -1) /* ItemsCapacity */
     , (800433,   7,         -1) /* ContainersCapacity */
     , (800433,   8,        120) /* Mass */
     , (800433,  16,         32) /* ItemUseable - Remote */
     , (800433,  25,        285) /* Level */
     , (800433,  27,          0) /* ArmorType - None */
     , (800433,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (800433,  95,          8) /* RadarBlipColor - Yellow */
     , (800433, 113,          2) /* Gender - Female */
     , (800433, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800433, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800433, 188,          2) /* HeritageGroup - Gharundim */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800433,   1, True ) /* Stuck */
     , (800433,   8, True ) /* AllowGive */
     , (800433,  19, False) /* Attackable */
     , (800433,  42, True ) /* AllowEdgeSlide */
     , (800433,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800433,   3,    0.16) /* HealthRate */
     , (800433,   4,       5) /* StaminaRate */
     , (800433,   5,       1) /* ManaRate */
     , (800433,  12,       1) /* Shade */
     , (800433,  13,     0.9) /* ArmorModVsSlash */
     , (800433,  14,       1) /* ArmorModVsPierce */
     , (800433,  15,     1.1) /* ArmorModVsBludgeon */
     , (800433,  16,     0.4) /* ArmorModVsCold */
     , (800433,  17,     0.4) /* ArmorModVsFire */
     , (800433,  18,       1) /* ArmorModVsAcid */
     , (800433,  19,     0.6) /* ArmorModVsElectric */
     , (800433,  54,       3) /* UseRadius */
     , (800433,  64,       1) /* ResistSlash */
     , (800433,  65,       1) /* ResistPierce */
     , (800433,  66,       1) /* ResistBludgeon */
     , (800433,  67,       1) /* ResistFire */
     , (800433,  68,       1) /* ResistCold */
     , (800433,  69,       1) /* ResistAcid */
     , (800433,  70,       1) /* ResistElectric */
     , (800433,  71,       1) /* ResistHealthBoost */
     , (800433,  72,       1) /* ResistStaminaDrain */
     , (800433,  73,       1) /* ResistStaminaBoost */
     , (800433,  74,       1) /* ResistManaDrain */
     , (800433,  75,       1) /* ResistManaBoost */
     , (800433, 104,      10) /* ObviousRadarRange */
     , (800433, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800433,   1, 'Certificate Authorization Consierge') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800433,   1,   33554510) /* Setup */
     , (800433,   2,  150994945) /* MotionTable */
     , (800433,   3,  536870914) /* SoundTable */
     , (800433,   4,  805306368) /* CombatTable */
     , (800433,   6,   67108990) /* PaletteBase */
     , (800433,   8,  100667377) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800433,   1, 100, 0, 0) /* Strength */
     , (800433,   2,  70, 0, 0) /* Endurance */
     , (800433,   3,  80, 0, 0) /* Quickness */
     , (800433,   4,  50, 0, 0) /* Coordination */
     , (800433,   5, 100, 0, 0) /* Focus */
     , (800433,   6,  60, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800433,   1,    10, 0, 0, 45) /* MaxHealth */
     , (800433,   3,    10, 0, 0, 80) /* MaxStamina */
     , (800433,   5,    10, 0, 0, 70) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800433,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800433,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800433,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800433,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800433,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800433,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800433,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800433,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800433,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800433,  6 /* Give */,      1, 46414 /* Trade Note (100,000) */, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 1090519043 /* Ready */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  21 /* InqQuest */, 0, 1, NULL, 'LumCertTimer@01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800433, 2,    73,  0, 88, 0.7, False) /* Create Scalemail Hauberk (73) for Wield */
     , (800433, 2,    83,  0, 88, 0.7, False) /* Create Scalemail Leggings (83) for Wield */
     , (800433, 2,   107,  0, 88, 0.7, False) /* Create Sollerets (107) for Wield */
     , (800433, 2,   127,  0, 85, 0, False) /* Create Pants (127) for Wield */
     , (800433, 2,   130,  0, 85, 0, False) /* Create Shirt (130) for Wield */;
