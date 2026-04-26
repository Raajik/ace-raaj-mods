DELETE FROM `weenie` WHERE `class_Id` = 800600;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800600, 'New Vhorma Guide', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800600,   1,         16) /* ItemType - Creature */
     , (800600,   2,         31) /* CreatureType - Human */
     , (800600,   3,          9) /* PaletteTemplate - Grey */
     , (800600,   6,         -1) /* ItemsCapacity */
     , (800600,   7,         -1) /* ContainersCapacity */
     , (800600,   8,        120) /* Mass */
     , (800600,  16,         32) /* ItemUseable - Remote */
     , (800600,  25,          5) /* Level */
     , (800600,  27,          0) /* ArmorType - None */
     , (800600,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (800600,  95,          8) /* RadarBlipColor - Yellow */
     , (800600, 113,          1) /* Gender - Male */
     , (800600, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800600, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800600, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800600,   1, True ) /* Stuck */
     , (800600,   8, True ) /* AllowGive */
     , (800600,  12, True ) /* ReportCollisions */
     , (800600,  13, False) /* Ethereal */
     , (800600,  19, False) /* Attackable */
     , (800600,  41, True ) /* ReportCollisionsAsEnvironment */
     , (800600,  42, True ) /* AllowEdgeSlide */
     , (800600,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800600,   3,    0.16) /* HealthRate */
     , (800600,   4,       5) /* StaminaRate */
     , (800600,   5,       1) /* ManaRate */
     , (800600,  12,       1) /* Shade */
     , (800600,  13,     0.9) /* ArmorModVsSlash */
     , (800600,  14,       1) /* ArmorModVsPierce */
     , (800600,  15,     1.1) /* ArmorModVsBludgeon */
     , (800600,  16,     0.4) /* ArmorModVsCold */
     , (800600,  17,     0.4) /* ArmorModVsFire */
     , (800600,  18,       1) /* ArmorModVsAcid */
     , (800600,  19,     0.6) /* ArmorModVsElectric */
     , (800600,  54,       3) /* UseRadius */
     , (800600,  64,       1) /* ResistSlash */
     , (800600,  65,       1) /* ResistPierce */
     , (800600,  66,       1) /* ResistBludgeon */
     , (800600,  67,       1) /* ResistFire */
     , (800600,  68,       1) /* ResistCold */
     , (800600,  69,       1) /* ResistAcid */
     , (800600,  70,       1) /* ResistElectric */
     , (800600,  71,       1) /* ResistHealthBoost */
     , (800600,  72,       1) /* ResistStaminaDrain */
     , (800600,  73,       1) /* ResistStaminaBoost */
     , (800600,  74,       1) /* ResistManaDrain */
     , (800600,  75,       1) /* ResistManaBoost */
     , (800600, 104,      10) /* ObviousRadarRange */
     , (800600, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800600,   1, 'New Vhorma Guide') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800600,   1,   33554433) /* Setup */
     , (800600,   2,  150994945) /* MotionTable */
     , (800600,   3,  536870913) /* SoundTable */
     , (800600,   4,  805306368) /* CombatTable */
     , (800600,   6,   67108990) /* PaletteBase */
     , (800600,   8,  100667377) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800600,   1, 1000, 0, 0) /* Strength */
     , (800600,   2, 1000, 0, 0) /* Endurance */
     , (800600,   3, 1000, 0, 0) /* Quickness */
     , (800600,   4, 1000, 0, 0) /* Coordination */
     , (800600,   5, 1000, 0, 0) /* Focus */
     , (800600,   6, 1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800600,   1,    10, 0, 0, 100000) /* MaxHealth */
     , (800600,   3,    10, 0, 0, 100000) /* MaxStamina */
     , (800600,   5,    10, 0, 0, 100000) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800600,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800600,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800600,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800600,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800600,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800600,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800600,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800600,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800600,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800600,  7 /* Use */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 1, 1, NULL, 'Welcome to New Vhorma. We discovered this place long ago, but never inhabited it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  10 /* Tell */, 1, 1, NULL, 'It is now used as a refugee asylum. We have many people to care for now that the Rynthid Invasion is under way.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  10 /* Tell */, 1, 1, NULL, 'We have been expected you. Please go speak with Chancellor Godfrey near the lifestone. He has some tasks for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
     
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800600, 2, 40439,  0, 39, 0.7, False) /* Create Pathwarden Robe (40439) for Wield */
     , (800600, 2,    82,  0, 88, 0.7, False) /* Create Platemail Leggings (82) for Wield */
     , (800600, 2,   107,  0, 88, 0.7, False) /* Create Sollerets (107) for Wield */
     , (800600, 2,   127,  0, 85, 0, False) /* Create Pants (127) for Wield */
     , (800600, 2,   130,  0, 85, 0, False) /* Create Shirt (130) for Wield */;
