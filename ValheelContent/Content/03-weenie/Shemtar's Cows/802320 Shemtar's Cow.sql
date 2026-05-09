DELETE FROM `weenie` WHERE `class_Id` = 802320;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802320, 'DOCowSignal', 10, '2022-11-13 08:12:48') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802320,   1,         16) /* ItemType - Creature */
     , (802320,   2,         31) /* CreatureType - Human */
     , (802320,   6,         -1) /* ItemsCapacity */
     , (802320,   7,         -1) /* ContainersCapacity */
     , (802320,  16,         32) /* ItemUseable - Remote */
     , (802320,  25,        275) /* Level */
     , (802320,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (802320,  95,          8) /* RadarBlipColor - Yellow */
     , (802320, 113,          1) /* Gender - Male */
     , (802320, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802320, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802320, 146,          0) /* XpOverride */
     , (802320, 290,          1) /* HearLocalSignals */
     , (802320, 291,         20) /* HearLocalSignalsRadius */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802320,   1, True ) /* Stuck */
     , (802320,  19, False) /* Attackable */
     , (802320,  52, True ) /* AiImmobile */
     , (802320,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (802320,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802320,   1,     360) /* HeartbeatInterval */
     , (802320,   2,       0) /* HeartbeatTimestamp */
     , (802320,   3,       2) /* HealthRate */
     , (802320,   4,       5) /* StaminaRate */
     , (802320,   5,       1) /* ManaRate */
     , (802320,  13,       1) /* ArmorModVsSlash */
     , (802320,  14,       1) /* ArmorModVsPierce */
     , (802320,  15,       1) /* ArmorModVsBludgeon */
     , (802320,  16,       1) /* ArmorModVsCold */
     , (802320,  17,       1) /* ArmorModVsFire */
     , (802320,  18,       1) /* ArmorModVsAcid */
     , (802320,  19,       1) /* ArmorModVsElectric */
     , (802320,  31,      18) /* VisualAwarenessRange */
     , (802320,  39,       1) /* DefaultScale */
     , (802320,  54,       3) /* UseRadius */
     , (802320,  64,       1) /* ResistSlash */
     , (802320,  65,       1) /* ResistPierce */
     , (802320,  66,       1) /* ResistBludgeon */
     , (802320,  67,       1) /* ResistFire */
     , (802320,  68,       1) /* ResistCold */
     , (802320,  69,       1) /* ResistAcid */
     , (802320,  70,       1) /* ResistElectric */
     , (802320,  80,       2) /* AiUseMagicDelay */
     , (802320, 104,      10) /* ObviousRadarRange */
     , (802320, 122,       2) /* AiAcquireHealth */
     , (802320, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802320,   1, 'Shemtar''s Cow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802320,   1,   33554438) /* Setup */
     , (802320,   2,  150994957) /* MotionTable */
     , (802320,   3,  536870918) /* SoundTable */
     , (802320,   4,  805306374) /* CombatTable */
     , (802320,   6,   67116472) /* PaletteBase */
     , (802320,   7,  268435550) /* ClothingBase */
     , (802320,   8,  100667444) /* Icon */
     , (802320,  22,  872415256) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802320,   1, 290, 0, 0) /* Strength */
     , (802320,   2, 260, 0, 0) /* Endurance */
     , (802320,   3, 290, 0, 0) /* Quickness */
     , (802320,   4, 290, 0, 0) /* Coordination */
     , (802320,   5, 200, 0, 0) /* Focus */
     , (802320,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802320,   1,   196, 0, 0, 326) /* MaxHealth */
     , (802320,   3,   196, 0, 0, 456) /* MaxStamina */
     , (802320,   5,   196, 0, 0, 396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802320,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (802320,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (802320, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (802320, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (802320, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (802320, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (802320, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (802320, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (802320, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (802320, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (802320, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (802320, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (802320, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802320,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802320,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802320,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802320,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802320,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802320,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802320,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802320,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802320,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802320,  9 /* Generation */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  16 /* WorldBroadcast */, 0, 1, NULL, 'Rogue Council has begun.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  24 /* StopEvent */, 7200, 1, NULL, 'DOBoss1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  24 /* StopEvent */, 0, 1, NULL, 'DOBoss2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  24 /* StopEvent */, 0, 1, NULL, 'DOBoss3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  4,  24 /* StopEvent */, 0, 1, NULL, 'DOBoss4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  5,  24 /* StopEvent */, 0, 1, NULL, 'DOBoss5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 6,  24 /* StopEvent */, 0, 1, NULL, 'DOACtive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 7,  16 /* WorldBroadcast */, 0, 1, NULL, 'Rogue Council has timed out, and is now reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
