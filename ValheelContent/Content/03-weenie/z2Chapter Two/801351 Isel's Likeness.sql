DELETE FROM `weenie` WHERE `class_Id` = 801351;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801351, 'IselsLikeness', 10, '2022-08-30 09:55:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801351,   1,         16) /* ItemType - Creature */
     , (801351,   2,         31) /* CreatureType - Human */
     , (801351,   6,         -1) /* ItemsCapacity */
     , (801351,   7,         -1) /* ContainersCapacity */
     , (801351,  16,         32) /* ItemUseable - Remote */
     , (801351,  25,        275) /* Level */
     , (801351,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801351,  95,          8) /* RadarBlipColor - Yellow */
     , (801351, 113,          1) /* Gender - Male */
     , (801351, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801351, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801351, 146,          0) /* XpOverride */
     , (801351, 188,          1) /* HeritageGroup - Aluvian */
     , (801351, 290,          1) /* HearLocalSignals */
     , (801351, 291,         20) /* HearLocalSignalsRadius */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801351,   1, True ) /* Stuck */
     , (801351,  19, False) /* Attackable */
     , (801351,  52, True ) /* AiImmobile */
     , (801351,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (801351,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801351,   1,       5) /* HeartbeatInterval */
     , (801351,   2,       0) /* HeartbeatTimestamp */
     , (801351,   3,       2) /* HealthRate */
     , (801351,   4,       5) /* StaminaRate */
     , (801351,   5,       1) /* ManaRate */
     , (801351,  13,       1) /* ArmorModVsSlash */
     , (801351,  14,       1) /* ArmorModVsPierce */
     , (801351,  15,       1) /* ArmorModVsBludgeon */
     , (801351,  16,       1) /* ArmorModVsCold */
     , (801351,  17,       1) /* ArmorModVsFire */
     , (801351,  18,       1) /* ArmorModVsAcid */
     , (801351,  19,       1) /* ArmorModVsElectric */
     , (801351,  31,      18) /* VisualAwarenessRange */
     , (801351,  54,       3) /* UseRadius */
     , (801351,  64,       1) /* ResistSlash */
     , (801351,  65,       1) /* ResistPierce */
     , (801351,  66,       1) /* ResistBludgeon */
     , (801351,  67,       1) /* ResistFire */
     , (801351,  68,       1) /* ResistCold */
     , (801351,  69,       1) /* ResistAcid */
     , (801351,  70,       1) /* ResistElectric */
     , (801351,  80,       2) /* AiUseMagicDelay */
     , (801351, 104,      10) /* ObviousRadarRange */
     , (801351, 122,       2) /* AiAcquireHealth */
     , (801351, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801351,   1, 'Isel''s Likeness') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801351,   1,   33560265) /* Setup */
     , (801351,   2,  150995174) /* MotionTable */
     , (801351,   3,  536871052) /* SoundTable */
     , (801351,   7,  268437188) /* ClothingBase */
     , (801351,   8,  100674350) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801351,   1, 290, 0, 0) /* Strength */
     , (801351,   2, 260, 0, 0) /* Endurance */
     , (801351,   3, 290, 0, 0) /* Quickness */
     , (801351,   4, 290, 0, 0) /* Coordination */
     , (801351,   5, 200, 0, 0) /* Focus */
     , (801351,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801351,   1,   196, 0, 0, 326) /* MaxHealth */
     , (801351,   3,   196, 0, 0, 456) /* MaxStamina */
     , (801351,   5,   196, 0, 0, 396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801351,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (801351,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (801351, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (801351, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (801351, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (801351, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (801351, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (801351, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (801351, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (801351, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (801351, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (801351, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (801351, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801351,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801351,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801351,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801351,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801351,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801351,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801351,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801351,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801351,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801351, 37 /* ReceiveLocalSignal */,      1, NULL, NULL, NULL, 'ActivateArenaOne', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  24 /* StopEvent */, 3600, 1, NULL, 'IRActive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  24 /* StopEvent */, 0, 1, NULL, 'IRBoss1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  24 /* StopEvent */, 0, 1, NULL, 'IRBoss2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  24 /* StopEvent */, 0, 1, NULL, 'IRBoss3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  4,  24 /* StopEvent */, 0, 1, NULL, 'IRBoss4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  5,  24 /* StopEvent */, 0, 1, NULL, 'IRBoss5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  6,  24 /* StopEvent */, 0, 1, NULL, 'IRBoss6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  7,  24 /* StopEvent */, 0, 1, NULL, 'IRBoss7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  8,  24 /* StopEvent */, 0, 1, NULL, 'IRBoss8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  9,  24 /* StopEvent */, 0, 1, NULL, 'IRBoss9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 10,  17 /* LocalBroadcast */, 0, 1, NULL, 'Tradewind''s Path Trials are once again open.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801351, 2,  2587,  0, 14, 0.5, False) /* Create Shirt (2587) for Wield */
     , (801351, 2,  2601,  0, 14, 0.5, False) /* Create Pants (2601) for Wield */
     , (801351, 2, 21150,  0, 93, 1, False) /* Create Covenant Sollerets (21150) for Wield */
     , (801351, 2, 21151,  0, 93, 1, False) /* Create Covenant Bracers (21151) for Wield */
     , (801351, 2, 80226,  0, 93, 1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     , (801351, 2, 21153,  0, 93, 1, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (801351, 2, 21154,  0, 93, 1, False) /* Create Covenant Girth (21154) for Wield */
     , (801351, 2, 21155,  0, 93, 1, False) /* Create Covenant Greaves (21155) for Wield */
     , (801351, 2, 21156,  0, 93, 1, False) /* Create Covenant Helm (21156) for Wield */
     , (801351, 2, 21157,  0, 93, 1, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (801351, 2, 21159,  0, 93, 1, False) /* Create Covenant Tassets (21159) for Wield */;
