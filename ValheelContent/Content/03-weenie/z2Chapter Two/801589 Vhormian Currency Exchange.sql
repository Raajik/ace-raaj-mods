DELETE FROM `weenie` WHERE `class_Id` = 801589;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801589, 'Vhormian Currency Exchange', 10, '2022-11-07 08:39:11') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801589,   1,         16) /* ItemType - Creature */
     , (801589,   2,         31) /* CreatureType - Human */
     , (801589,   6,         -1) /* ItemsCapacity */
     , (801589,   7,         -1) /* ContainersCapacity */
     , (801589,  16,         32) /* ItemUseable - Remote */
     , (801589,  25,        275) /* Level */
     , (801589,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801589,  95,          8) /* RadarBlipColor - Yellow */
     , (801589, 113,          2) /* Gender - Male */
     , (801589, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801589, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801589, 146,          0) /* XpOverride */
     , (801589, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801589,   1, True ) /* Stuck */
     , (801589,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801589,   1,       5) /* HeartbeatInterval */
     , (801589,   2,       0) /* HeartbeatTimestamp */
     , (801589,   3,       2) /* HealthRate */
     , (801589,   4,       5) /* StaminaRate */
     , (801589,   5,       1) /* ManaRate */
     , (801589,  13,       1) /* ArmorModVsSlash */
     , (801589,  14,       1) /* ArmorModVsPierce */
     , (801589,  15,       1) /* ArmorModVsBludgeon */
     , (801589,  16,       1) /* ArmorModVsCold */
     , (801589,  17,       1) /* ArmorModVsFire */
     , (801589,  18,       1) /* ArmorModVsAcid */
     , (801589,  19,       1) /* ArmorModVsElectric */
     , (801589,  31,      18) /* VisualAwarenessRange */
     , (801589,  54,       3) /* UseRadius */
     , (801589,  64,       1) /* ResistSlash */
     , (801589,  65,       1) /* ResistPierce */
     , (801589,  66,       1) /* ResistBludgeon */
     , (801589,  67,       1) /* ResistFire */
     , (801589,  68,       1) /* ResistCold */
     , (801589,  69,       1) /* ResistAcid */
     , (801589,  70,       1) /* ResistElectric */
     , (801589,  80,       2) /* AiUseMagicDelay */
     , (801589, 104,      10) /* ObviousRadarRange */
     , (801589, 122,       2) /* AiAcquireHealth */
     , (801589, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801589,   1, 'Vhormian Currency Exchange') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801589,   1, 0x02000001) /* Setup */
     , (801589,   2, 0x09000001) /* MotionTable */
     , (801589,   3, 0x20000001) /* SoundTable */
     , (801589,   6, 0x0400007E) /* PaletteBase */
     , (801589,   8, 0x06001036) /* Icon */
     , (801589,  31,     800256) /* LinkedPortalOne - Abandoned Mine */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801589,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801589,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801589,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801589,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801589,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801589,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801589,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801589,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801589,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801589,   1, 290, 0, 0) /* Strength */
     , (801589,   2, 260, 0, 0) /* Endurance */
     , (801589,   3, 290, 0, 0) /* Quickness */
     , (801589,   4, 290, 0, 0) /* Coordination */
     , (801589,   5, 200, 0, 0) /* Focus */
     , (801589,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801589,   1,   196, 0, 0,  326) /* MaxHealth */
     , (801589,   3,   196, 0, 0,  456) /* MaxStamina */
     , (801589,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801589,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (801589,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (801589, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (801589, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (801589, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (801589, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (801589, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (801589, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (801589, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (801589, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (801589, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (801589, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (801589, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801589, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 1, 1, NULL, 'I will give you Vhorma Coins for notes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801589, 6 /* Give */, 1, 801587, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 800478, 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801589, 2, 28615,  1,93,    0, False) /* Robe */;

