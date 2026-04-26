DELETE FROM `weenie` WHERE `class_Id` = 803973;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803973, 'Harbor Beacon', 10, '2025-06-08 08:34:30') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803973,   1,         16) /* ItemType - Creature */
     , (803973,   2,         31) /* CreatureType - Human */
     , (803973,   6,         -1) /* ItemsCapacity */
     , (803973,   7,         -1) /* ContainersCapacity */
     , (803973,  16,         32) /* ItemUseable - Remote */
     , (803973,  25,        275) /* Level */
     , (803973,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (803973,  95,          8) /* RadarBlipColor - Yellow */
     , (803973, 113,          1) /* Gender - Male */
     , (803973, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803973, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803973, 146,          0) /* XpOverride */
     , (803973, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803973,   1, True ) /* Stuck */
     , (803973,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803973,   1,       5) /* HeartbeatInterval */
     , (803973,   2,       0) /* HeartbeatTimestamp */
     , (803973,   3,       2) /* HealthRate */
     , (803973,   4,       5) /* StaminaRate */
     , (803973,   5,       1) /* ManaRate */
     , (803973,  13,       1) /* ArmorModVsSlash */
     , (803973,  14,       1) /* ArmorModVsPierce */
     , (803973,  15,       1) /* ArmorModVsBludgeon */
     , (803973,  16,       1) /* ArmorModVsCold */
     , (803973,  17,       1) /* ArmorModVsFire */
     , (803973,  18,       1) /* ArmorModVsAcid */
     , (803973,  19,       1) /* ArmorModVsElectric */
     , (803973,  31,      18) /* VisualAwarenessRange */
     , (803973,  39,       2) /* DefaultScale */
     , (803973,  54,       3) /* UseRadius */
     , (803973,  64,       1) /* ResistSlash */
     , (803973,  65,       1) /* ResistPierce */
     , (803973,  66,       1) /* ResistBludgeon */
     , (803973,  67,       1) /* ResistFire */
     , (803973,  68,       1) /* ResistCold */
     , (803973,  69,       1) /* ResistAcid */
     , (803973,  70,       1) /* ResistElectric */
     , (803973,  80,       2) /* AiUseMagicDelay */
     , (803973, 104,      10) /* ObviousRadarRange */
     , (803973, 122,       2) /* AiAcquireHealth */
     , (803973, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803973,   1, 'Harbor Beacon') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803973,   1, 0x02000F8B) /* Setup */
     , (803973,   2, 0x0900017D) /* MotionTable */
     , (803973,   3, 0x20000014) /* SoundTable */
     , (803973,   4, 0x3000001E) /* CombatTable */
     , (803973,   8, 0x060036DF) /* Icon */
     , (803973,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803973,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803973,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803973,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803973,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803973,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803973,  5,  4,  1,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803973,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803973,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803973,  8,  4,  1,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803973,   1,   1, 0, 0) /* Strength */
     , (803973,   2,   1, 0, 0) /* Endurance */
     , (803973,   3,   1, 0, 0) /* Quickness */
     , (803973,   4,   1, 0, 0) /* Coordination */
     , (803973,   5,   1, 0, 0) /* Focus */
     , (803973,   6,   1, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803973,   1,     1, 0, 0,    1) /* MaxHealth */
     , (803973,   3,     1, 0, 0,    1) /* MaxStamina */
     , (803973,   5,     1, 0, 0,    1) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803973,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (803973,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (803973, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (803973, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (803973, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (803973, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (803973, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (803973, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (803973, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (803973, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (803973, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (803973, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (803973, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803973, 1 /* Refuse */, 1, 803970, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 21 /* InqQuest */, 0, 1, NULL, 'SolCrystalImplanted@3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803973, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'SolCrystalImplanted@3', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'The light of the beacon already burns bright.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803973, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'SolCrystalImplanted@3', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 74 /* TakeItems */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You implant the Sol Crystal into the beacon. It shines radiantly.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 22 /* StampQuest */, 0, 1, NULL, 'SolCrystalImplanted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

