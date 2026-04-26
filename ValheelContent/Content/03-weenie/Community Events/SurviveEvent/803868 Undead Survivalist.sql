DELETE FROM `weenie` WHERE `class_Id` = 803868;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803868, 'Undead Survivalist', 10, '2024-07-23 02:28:19') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803868,   1,         16) /* ItemType - Creature */
     , (803868,   2,         31) /* CreatureType - Human */
     , (803868,   6,         -1) /* ItemsCapacity */
     , (803868,   7,         -1) /* ContainersCapacity */
     , (803868,  16,         32) /* ItemUseable - Remote */
     , (803868,  25,        275) /* Level */
     , (803868,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (803868,  95,          8) /* RadarBlipColor - Yellow */
     , (803868, 113,          1) /* Gender - Male */
     , (803868, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803868, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803868, 146,          0) /* XpOverride */
     , (803868, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803868,   1, True ) /* Stuck */
     , (803868,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803868,   1,      60) /* HeartbeatInterval */
     , (803868,   2,       0) /* HeartbeatTimestamp */
     , (803868,   3,       2) /* HealthRate */
     , (803868,   4,       5) /* StaminaRate */
     , (803868,   5,       1) /* ManaRate */
     , (803868,  13,       1) /* ArmorModVsSlash */
     , (803868,  14,       1) /* ArmorModVsPierce */
     , (803868,  15,       1) /* ArmorModVsBludgeon */
     , (803868,  16,       1) /* ArmorModVsCold */
     , (803868,  17,       1) /* ArmorModVsFire */
     , (803868,  18,       1) /* ArmorModVsAcid */
     , (803868,  19,       1) /* ArmorModVsElectric */
     , (803868,  31,      18) /* VisualAwarenessRange */
     , (803868,  39,       1) /* DefaultScale */
     , (803868,  54,       3) /* UseRadius */
     , (803868,  64,       1) /* ResistSlash */
     , (803868,  65,       1) /* ResistPierce */
     , (803868,  66,       1) /* ResistBludgeon */
     , (803868,  67,       1) /* ResistFire */
     , (803868,  68,       1) /* ResistCold */
     , (803868,  69,       1) /* ResistAcid */
     , (803868,  70,       1) /* ResistElectric */
     , (803868,  80,       2) /* AiUseMagicDelay */
     , (803868, 104,      10) /* ObviousRadarRange */
     , (803868, 122,       2) /* AiAcquireHealth */
     , (803868, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803868,   1, 'Undead Survivalist') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803868,   1, 0x02000001) /* Setup */
     , (803868,   2, 0x09000001) /* MotionTable */
     , (803868,   3, 0x20000001) /* SoundTable */
     , (803868,   6, 0x0400007E) /* PaletteBase */
     , (803868,   8, 0x06001036) /* Icon */
     , (803868,  31,     803866) /* LinkedPortalOne - Abandoned Mine */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803868,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803868,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803868,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803868,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803868,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803868,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803868,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803868,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803868,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803868,   1, 290, 0, 0) /* Strength */
     , (803868,   2, 260, 0, 0) /* Endurance */
     , (803868,   3, 290, 0, 0) /* Quickness */
     , (803868,   4, 290, 0, 0) /* Coordination */
     , (803868,   5, 200, 0, 0) /* Focus */
     , (803868,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803868,   1,   196, 0, 0,  326) /* MaxHealth */
     , (803868,   3,   196, 0, 0,  456) /* MaxStamina */
     , (803868,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803868,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (803868,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (803868, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (803868, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (803868, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (803868, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (803868, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (803868, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (803868, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (803868, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (803868, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (803868, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (803868, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803868, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 51 /* InqEvent */, 0, 1, NULL, 'UzizOwnedF1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803868, 27 /* EventSuccess */, 1, NULL, NULL, NULL, 'UzizOwnedF1', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'This event is currently active. Please wait until it is completed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803868, 28 /* EventFailure */, 1, NULL, NULL, NULL, 'UzizOwnedF1', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'This event will now begin!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 16 /* WorldBroadcast */, 3, 1, NULL, 'Undead Survival is now beginning!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 14 /* CastSpell */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 157 /* Summon Primary Portal I */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 23 /* StartEvent */, 0, 1, NULL, 'UzizOwnedF1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803868, 2, 28614,  1,80,    0, False) /* Create Gelidite Robe (6061) for Wield */;

