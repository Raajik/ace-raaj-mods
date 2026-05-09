DELETE FROM `weenie` WHERE `class_Id` = 801435;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801435, 'BestSpecialCow', 10, '2022-11-13 08:12:48') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801435,   1,         16) /* ItemType - Creature */
     , (801435,   2,         31) /* CreatureType - Human */
     , (801435,   6,         -1) /* ItemsCapacity */
     , (801435,   7,         -1) /* ContainersCapacity */
     , (801435,  16,         32) /* ItemUseable - Remote */
     , (801435,  25,        275) /* Level */
     , (801435,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801435,  95,          8) /* RadarBlipColor - Yellow */
     , (801435, 113,          1) /* Gender - Male */
     , (801435, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801435, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801435, 146,          0) /* XpOverride */
     , (801435, 290,          1) /* HearLocalSignals */
     , (801435, 291,         20) /* HearLocalSignalsRadius */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801435,   1, True ) /* Stuck */
     , (801435,  19, False) /* Attackable */
     , (801435,  52, True ) /* AiImmobile */
     , (801435,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (801435,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801435,   1,     360) /* HeartbeatInterval */
     , (801435,   2,       0) /* HeartbeatTimestamp */
     , (801435,   3,       2) /* HealthRate */
     , (801435,   4,       5) /* StaminaRate */
     , (801435,   5,       1) /* ManaRate */
     , (801435,  13,       1) /* ArmorModVsSlash */
     , (801435,  14,       1) /* ArmorModVsPierce */
     , (801435,  15,       1) /* ArmorModVsBludgeon */
     , (801435,  16,       1) /* ArmorModVsCold */
     , (801435,  17,       1) /* ArmorModVsFire */
     , (801435,  18,       1) /* ArmorModVsAcid */
     , (801435,  19,       1) /* ArmorModVsElectric */
     , (801435,  31,      18) /* VisualAwarenessRange */
     , (801435,  39,     1.3) /* DefaultScale */
     , (801435,  54,       3) /* UseRadius */
     , (801435,  64,       1) /* ResistSlash */
     , (801435,  65,       1) /* ResistPierce */
     , (801435,  66,       1) /* ResistBludgeon */
     , (801435,  67,       1) /* ResistFire */
     , (801435,  68,       1) /* ResistCold */
     , (801435,  69,       1) /* ResistAcid */
     , (801435,  70,       1) /* ResistElectric */
     , (801435,  80,       2) /* AiUseMagicDelay */
     , (801435, 104,      10) /* ObviousRadarRange */
     , (801435, 122,       2) /* AiAcquireHealth */
     , (801435, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801435,   1, 'Shemtar''s Prize Cow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801435,   1, 0x02000006) /* Setup */
     , (801435,   2, 0x0900000D) /* MotionTable */
     , (801435,   3, 0x20000006) /* SoundTable */
     , (801435,   4, 0x30000006) /* CombatTable */
     , (801435,   6, 0x04001DB8) /* PaletteBase */
     , (801435,   7, 0x1000005E) /* ClothingBase */
     , (801435,   8, 0x06001034) /* Icon */
     , (801435,  22, 0x34000018) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801435,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801435,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801435,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801435,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801435,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801435,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801435,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801435,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801435,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801435,   1, 290, 0, 0) /* Strength */
     , (801435,   2, 260, 0, 0) /* Endurance */
     , (801435,   3, 290, 0, 0) /* Quickness */
     , (801435,   4, 290, 0, 0) /* Coordination */
     , (801435,   5, 200, 0, 0) /* Focus */
     , (801435,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801435,   1,   196, 0, 0,  326) /* MaxHealth */
     , (801435,   3,   196, 0, 0,  456) /* MaxStamina */
     , (801435,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801435,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (801435,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (801435, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (801435, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (801435, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (801435, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (801435, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (801435, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (801435, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (801435, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (801435, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (801435, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (801435, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801435, 9 /* Generation */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 88 /* LocalSignal */, 0, 1, NULL, 'ActivateArenaOne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 8 /* Say */, 0, 0, NULL, 'Moo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

