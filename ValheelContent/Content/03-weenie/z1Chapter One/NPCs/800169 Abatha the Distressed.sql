DELETE FROM `weenie` WHERE `class_Id` = 800169;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800169, 'abatha the distressed', 10, '2019-09-24 07:11:22') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800169,   1,         16) /* ItemType - Creature */
     , (800169,   2,         31) /* CreatureType - Human */
     , (800169,   3,          9) /* PaletteTemplate - Grey */
     , (800169,   6,         -1) /* ItemsCapacity */
     , (800169,   7,         -1) /* ContainersCapacity */
     , (800169,   8,        120) /* Mass */
     , (800169,  16,         32) /* ItemUseable - Remote */
     , (800169,  25,         11) /* Level */
     , (800169,  27,          0) /* ArmorType - None */
     , (800169,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (800169,  95,          8) /* RadarBlipColor - Yellow */
     , (800169, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800169, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800169, 146,        161) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800169,   1, True ) /* Stuck */
     , (800169,   8, True ) /* AllowGive */
     , (800169,  12, True ) /* ReportCollisions */
     , (800169,  13, False) /* Ethereal */
     , (800169,  19, False) /* Attackable */
     , (800169,  41, True ) /* ReportCollisionsAsEnvironment */
     , (800169,  42, True ) /* AllowEdgeSlide */
     , (800169,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800169,   1,       5) /* HeartbeatInterval */
     , (800169,   2,       0) /* HeartbeatTimestamp */
     , (800169,   3, 0.159999996423721) /* HealthRate */
     , (800169,   4,       5) /* StaminaRate */
     , (800169,   5,       1) /* ManaRate */
     , (800169,  11,     300) /* ResetInterval */
     , (800169,  12,       1) /* Shade */
     , (800169,  13, 0.899999976158142) /* ArmorModVsSlash */
     , (800169,  14,       1) /* ArmorModVsPierce */
     , (800169,  15, 1.10000002384186) /* ArmorModVsBludgeon */
     , (800169,  16, 0.400000005960464) /* ArmorModVsCold */
     , (800169,  17, 0.400000005960464) /* ArmorModVsFire */
     , (800169,  18,       1) /* ArmorModVsAcid */
     , (800169,  19, 0.600000023841858) /* ArmorModVsElectric */
     , (800169,  54,       3) /* UseRadius */
     , (800169,  64,       1) /* ResistSlash */
     , (800169,  65,       1) /* ResistPierce */
     , (800169,  66,       1) /* ResistBludgeon */
     , (800169,  67,       1) /* ResistFire */
     , (800169,  68,       1) /* ResistCold */
     , (800169,  69,       1) /* ResistAcid */
     , (800169,  70,       1) /* ResistElectric */
     , (800169,  71,       1) /* ResistHealthBoost */
     , (800169,  72,       1) /* ResistStaminaDrain */
     , (800169,  73,       1) /* ResistStaminaBoost */
     , (800169,  74,       1) /* ResistManaDrain */
     , (800169,  75,       1) /* ResistManaBoost */
     , (800169, 104,      10) /* ObviousRadarRange */
     , (800169, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800169,   1, 'Abatha the Distressed') /* Name */
     , (800169,   3, 'Female') /* Sex */
     , (800169,   4, 'Gharu''ndim') /* HeritageGroup */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800169,   1,   33554510) /* Setup */
     , (800169,   2,  150994945) /* MotionTable */
     , (800169,   3,  536870914) /* SoundTable */
     , (800169,   4,  805306368) /* CombatTable */
     , (800169,   6,   67108990) /* PaletteBase */
     , (800169,   7,  268435545) /* ClothingBase */
     , (800169,   8,  100667446) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800169,   1,  60, 0, 0) /* Strength */
     , (800169,   2,  70, 0, 0) /* Endurance */
     , (800169,   3,  80, 0, 0) /* Quickness */
     , (800169,   4,  50, 0, 0) /* Coordination */
     , (800169,   5, 120, 0, 0) /* Focus */
     , (800169,   6, 130, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800169,   1,    10, 0, 0, 45) /* MaxHealth */
     , (800169,   3,    10, 0, 0, 80) /* MaxStamina */
     , (800169,   5,    10, 0, 0, 140) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800169,  6, 0, 2, 0,   2, 0, 0) /* MeleeDefense        Trained */
     , (800169,  7, 0, 2, 0,   2, 0, 0) /* MissileDefense      Trained */
     , (800169, 13, 0, 2, 0,   2, 0, 0) /* UnarmedCombat       Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800169,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800169,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800169,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800169,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800169,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800169,  5,  4,  2,    2,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800169,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800169,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800169,  8,  4,  2,    2,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800169,  5 /* HeartBeat */,    0.1, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   4 /* MoveHome */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800169,  5 /* HeartBeat */,    0.1, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   8 /* Local Chat */, 0, 1, NULL, 'Please! Someone help! My husband has been taken!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0);


INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800169,  7 /* Use */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 1090519043 /* Ready */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  10 /* Tell */, 0.1, 1, NULL, 'Please traveler, you must help! My husband Arebeth has been captured by those nasty Virindi! They are going to do awful expirements on him! They have taken him to the Singularity Bore, go quickly!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800169, 2,  31304,  0, 0, 1, False) /* Create Luminous Robe for Wield */;
