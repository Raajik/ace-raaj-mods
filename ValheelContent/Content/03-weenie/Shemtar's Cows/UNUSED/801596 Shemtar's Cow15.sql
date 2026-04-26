DELETE FROM `weenie` WHERE `class_Id` = 801596;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801596, 'Special Cow15', 10, '2022-10-13 12:56:38') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801596,   1,         16) /* ItemType - Creature */
     , (801596,   2,         31) /* CreatureType - Human */
     , (801596,   6,         -1) /* ItemsCapacity */
     , (801596,   7,         -1) /* ContainersCapacity */
     , (801596,  16,         32) /* ItemUseable - Remote */
     , (801596,  25,        275) /* Level */
     , (801596,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801596,  95,          8) /* RadarBlipColor - Yellow */
     , (801596, 113,          1) /* Gender - Male */
     , (801596, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801596, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801596, 146,          0) /* XpOverride */
     , (801596, 290,          1) /* HearLocalSignals */
     , (801596, 291,         20) /* HearLocalSignalsRadius */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801596,   1, True ) /* Stuck */
     , (801596,  19, False) /* Attackable */
     , (801596,  52, True ) /* AiImmobile */
     , (801596,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (801596,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801596,   1,     360) /* HeartbeatInterval */
     , (801596,   2,       0) /* HeartbeatTimestamp */
     , (801596,   3,       2) /* HealthRate */
     , (801596,   4,       5) /* StaminaRate */
     , (801596,   5,       1) /* ManaRate */
     , (801596,  13,       1) /* ArmorModVsSlash */
     , (801596,  14,       1) /* ArmorModVsPierce */
     , (801596,  15,       1) /* ArmorModVsBludgeon */
     , (801596,  16,       1) /* ArmorModVsCold */
     , (801596,  17,       1) /* ArmorModVsFire */
     , (801596,  18,       1) /* ArmorModVsAcid */
     , (801596,  19,       1) /* ArmorModVsElectric */
     , (801596,  31,      18) /* VisualAwarenessRange */
     , (801596,  54,       3) /* UseRadius */
     , (801596,  64,       1) /* ResistSlash */
     , (801596,  65,       1) /* ResistPierce */
     , (801596,  66,       1) /* ResistBludgeon */
     , (801596,  67,       1) /* ResistFire */
     , (801596,  68,       1) /* ResistCold */
     , (801596,  69,       1) /* ResistAcid */
     , (801596,  70,       1) /* ResistElectric */
     , (801596,  80,       2) /* AiUseMagicDelay */
     , (801596, 104,      10) /* ObviousRadarRange */
     , (801596, 122,       2) /* AiAcquireHealth */
     , (801596, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801596,   1, 'Shemtar''s Cow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801596,   1, 0x02000006) /* Setup */
     , (801596,   2, 0x0900000D) /* MotionTable */
     , (801596,   3, 0x20000006) /* SoundTable */
     , (801596,   4, 0x30000006) /* CombatTable */
     , (801596,   6, 0x04001DB8) /* PaletteBase */
     , (801596,   7, 0x1000005E) /* ClothingBase */
     , (801596,   8, 0x06001034) /* Icon */
     , (801596,  22, 0x34000018) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801596,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801596,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801596,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801596,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801596,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801596,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801596,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801596,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801596,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801596,   1, 290, 0, 0) /* Strength */
     , (801596,   2, 260, 0, 0) /* Endurance */
     , (801596,   3, 290, 0, 0) /* Quickness */
     , (801596,   4, 290, 0, 0) /* Coordination */
     , (801596,   5, 200, 0, 0) /* Focus */
     , (801596,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801596,   1,   196, 0, 0,  326) /* MaxHealth */
     , (801596,   3,   196, 0, 0,  456) /* MaxStamina */
     , (801596,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801596,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (801596,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (801596, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (801596, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (801596, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (801596, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (801596, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (801596, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (801596, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (801596, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (801596, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (801596, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (801596, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801596, 37 /* ReceiveLocalSignal */, 1, NULL, NULL, NULL, 'ActivateArenaOne', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 67 /* Goto */, 0, 1, NULL, 'Spawnboss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801596, 32 /* GotoSet */, 1, NULL, NULL, NULL, 'Spawnboss', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 8 /* Say */, 0, 0, NULL, 'Moo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 23 /* StartEvent */, 7200, 1, NULL, 'WBoss4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 16 /* WorldBroadcast */, 0, 1, NULL, 'Black Death has spawned!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 67 /* Goto */, 0, 1, NULL, 'Reset', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801596, 32 /* GotoSet */, 1, NULL, NULL, NULL, 'Reset', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 8 /* Say */, 15, 0, NULL, 'Moo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 67 /* Goto */, 0, 1, NULL, 'Spawnboss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

