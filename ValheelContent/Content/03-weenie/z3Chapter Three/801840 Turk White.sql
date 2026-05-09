DELETE FROM `weenie` WHERE `class_Id` = 801840;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801840, 'Turk White', 10, '2023-01-04 10:24:37') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801840,   1,         16) /* ItemType - Creature */
     , (801840,   2,         31) /* CreatureType - Human */
     , (801840,   3,          9) /* PaletteTemplate - Grey */
     , (801840,   6,         -1) /* ItemsCapacity */
     , (801840,   7,         -1) /* ContainersCapacity */
     , (801840,   8,        120) /* Mass */
     , (801840,  16,         32) /* ItemUseable - Remote */
     , (801840,  25,          5) /* Level */
     , (801840,  27,          0) /* ArmorType - None */
     , (801840,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801840,  95,          8) /* RadarBlipColor - Yellow */
     , (801840, 113,          1) /* Gender - Male */
     , (801840, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801840, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801840, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801840,   1, True ) /* Stuck */
     , (801840,   8, True ) /* AllowGive */
     , (801840,  12, True ) /* ReportCollisions */
     , (801840,  13, False) /* Ethereal */
     , (801840,  19, False) /* Attackable */
     , (801840,  41, True ) /* ReportCollisionsAsEnvironment */
     , (801840,  42, True ) /* AllowEdgeSlide */
     , (801840,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801840,   3,    0.16) /* HealthRate */
     , (801840,   4,       5) /* StaminaRate */
     , (801840,   5,       1) /* ManaRate */
     , (801840,  12,       1) /* Shade */
     , (801840,  13,     0.9) /* ArmorModVsSlash */
     , (801840,  14,       1) /* ArmorModVsPierce */
     , (801840,  15,     1.1) /* ArmorModVsBludgeon */
     , (801840,  16,     0.4) /* ArmorModVsCold */
     , (801840,  17,     0.4) /* ArmorModVsFire */
     , (801840,  18,       1) /* ArmorModVsAcid */
     , (801840,  19,     0.6) /* ArmorModVsElectric */
     , (801840,  54,       3) /* UseRadius */
     , (801840,  64,       1) /* ResistSlash */
     , (801840,  65,       1) /* ResistPierce */
     , (801840,  66,       1) /* ResistBludgeon */
     , (801840,  67,       1) /* ResistFire */
     , (801840,  68,       1) /* ResistCold */
     , (801840,  69,       1) /* ResistAcid */
     , (801840,  70,       1) /* ResistElectric */
     , (801840,  71,       1) /* ResistHealthBoost */
     , (801840,  72,       1) /* ResistStaminaDrain */
     , (801840,  73,       1) /* ResistStaminaBoost */
     , (801840,  74,       1) /* ResistManaDrain */
     , (801840,  75,       1) /* ResistManaBoost */
     , (801840, 104,      10) /* ObviousRadarRange */
     , (801840, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801840,   1, 'Turk White') /* Name */
     , (801840,  15, 'Facility Hub Guide') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801840,   1, 0x02000001) /* Setup */
     , (801840,   2, 0x09000001) /* MotionTable */
     , (801840,   3, 0x20000001) /* SoundTable */
     , (801840,   4, 0x30000000) /* CombatTable */
     , (801840,   6, 0x0400007E) /* PaletteBase */
     , (801840,   8, 0x06000FF1) /* Icon */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801840,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801840,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801840,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801840,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801840,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801840,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801840,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801840,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801840,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801840,   1,1000, 0, 0) /* Strength */
     , (801840,   2,1000, 0, 0) /* Endurance */
     , (801840,   3,1000, 0, 0) /* Quickness */
     , (801840,   4,1000, 0, 0) /* Coordination */
     , (801840,   5,1000, 0, 0) /* Focus */
     , (801840,   6,1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801840,   1,    10, 0, 0,100000) /* MaxHealth */
     , (801840,   3,    10, 0, 0,100000) /* MaxStamina */
     , (801840,   5,    10, 0, 0,100000) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801840, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Welcome to the new and improved Facility Hub! Down the hall to your right you will find the Prestige Level 10-24 dungeons available to you at any time!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 10 /* Tell */, 1, 1, NULL, 'Down the hall to the left you will find Prestige Level 25-49 dungeons. These are some tough ones!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 10 /* Tell */, 1, 1, NULL, 'If you go straight ahead and down the ramp you will come to a three way. Take the right hall to go towards the Prestige Level 50-74 portals.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 10 /* Tell */, 1, 1, NULL, 'Take the left hall to find your Prestige Level 75-99 portals.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 10 /* Tell */, 1, 1, NULL, 'And finally, continue straight on to enjoy the serene blood stained warzones of Prestige Level 100+ portals!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 5, 10 /* Tell */, 1, 1, NULL, 'I hope you have a delightful time!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801840, 2, 28046,  0,93,  0.7, False) /* Create Aerfalle's Supreme Pallium (28046) for Wield */
     , (801840, 2,    82,  0,88,  0.7, False) /* Create Platemail Leggings (82) for Wield */
     , (801840, 2,   107,  0,88,  0.7, False) /* Create Sollerets (107) for Wield */
     , (801840, 2,   127,  0,85,    0, False) /* Create Pants (127) for Wield */
     , (801840, 2,   130,  0,85,    0, False) /* Create Shirt (130) for Wield */;

