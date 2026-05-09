DELETE FROM `weenie` WHERE `class_Id` = 802901;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802901, 'AshCoingGiver', 10, '2023-09-02 08:44:22') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802901,   1,         16) /* ItemType - Creature */
     , (802901,   2,         31) /* CreatureType - Human */
     , (802901,   3,          9) /* PaletteTemplate - Grey */
     , (802901,   6,         -1) /* ItemsCapacity */
     , (802901,   7,         -1) /* ContainersCapacity */
     , (802901,   8,        120) /* Mass */
     , (802901,  16,         32) /* ItemUseable - Remote */
     , (802901,  25,          9) /* Level */
     , (802901,  27,          0) /* ArmorType - None */
     , (802901,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (802901,  95,          8) /* RadarBlipColor - Yellow */
     , (802901, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802901, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802901, 146,        154) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802901,   1, True ) /* Stuck */
     , (802901,   8, True ) /* AllowGive */
     , (802901,  12, True ) /* ReportCollisions */
     , (802901,  13, False) /* Ethereal */
     , (802901,  19, False) /* Attackable */
     , (802901,  41, True ) /* ReportCollisionsAsEnvironment */
     , (802901,  42, True ) /* AllowEdgeSlide */
     , (802901,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802901,   3,    0.16) /* HealthRate */
     , (802901,   4,       5) /* StaminaRate */
     , (802901,   5,       1) /* ManaRate */
     , (802901,  12,       1) /* Shade */
     , (802901,  13,     0.9) /* ArmorModVsSlash */
     , (802901,  14,       1) /* ArmorModVsPierce */
     , (802901,  15,     1.1) /* ArmorModVsBludgeon */
     , (802901,  16,     0.4) /* ArmorModVsCold */
     , (802901,  17,     0.4) /* ArmorModVsFire */
     , (802901,  18,       1) /* ArmorModVsAcid */
     , (802901,  19,     0.6) /* ArmorModVsElectric */
     , (802901,  54,       3) /* UseRadius */
     , (802901,  64,       1) /* ResistSlash */
     , (802901,  65,       1) /* ResistPierce */
     , (802901,  66,       1) /* ResistBludgeon */
     , (802901,  67,       1) /* ResistFire */
     , (802901,  68,       1) /* ResistCold */
     , (802901,  69,       1) /* ResistAcid */
     , (802901,  70,       1) /* ResistElectric */
     , (802901,  71,       1) /* ResistHealthBoost */
     , (802901,  72,       1) /* ResistStaminaDrain */
     , (802901,  73,       1) /* ResistStaminaBoost */
     , (802901,  74,       1) /* ResistManaDrain */
     , (802901,  75,       1) /* ResistManaBoost */
     , (802901, 104,      10) /* ObviousRadarRange */
     , (802901, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802901,   1, 'AshCoin Giver') /* Name */
     , (802901,   3, 'Male') /* Sex */
     , (802901,   4, 'Aluvian') /* HeritageGroup */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802901,   1, 0x02000001) /* Setup */
     , (802901,   2, 0x09000001) /* MotionTable */
     , (802901,   3, 0x20000001) /* SoundTable */
     , (802901,   4, 0x30000000) /* CombatTable */
     , (802901,   6, 0x0400007E) /* PaletteBase */
     , (802901,   7, 0x10000059) /* ClothingBase */
     , (802901,   8, 0x06001036) /* Icon */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802901,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802901,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802901,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802901,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802901,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802901,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802901,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802901,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802901,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802901,   1,  90, 0, 0) /* Strength */
     , (802901,   2,  85, 0, 0) /* Endurance */
     , (802901,   3,  90, 0, 0) /* Quickness */
     , (802901,   4,  50, 0, 0) /* Coordination */
     , (802901,   5,  70, 0, 0) /* Focus */
     , (802901,   6,  60, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802901,   1,    10, 0, 0,   53) /* MaxHealth */
     , (802901,   3,    10, 0, 0,   95) /* MaxStamina */
     , (802901,   5,    10, 0, 0,   70) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802901, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Here is your free money! Go spend it on silly things like putting bounties oh heads, and re-classing!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 801910, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802901, 2, 12309,  1, 2,    0, False) /* Create Society Explorer Hat (12309) for Wield */
     , (802901, 2, 12310,  1, 2,    0, False) /* Create Explorer Society Robe (12310) for Wield */;

