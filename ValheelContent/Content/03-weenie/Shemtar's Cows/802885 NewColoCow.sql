DELETE FROM `weenie` WHERE `class_Id` = 802885;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802885, 'NewColoCow', 10, '2023-08-27 02:01:14') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802885,   1,         16) /* ItemType - Creature */
     , (802885,   2,         31) /* CreatureType - Human */
     , (802885,   6,         -1) /* ItemsCapacity */
     , (802885,   7,         -1) /* ContainersCapacity */
     , (802885,  16,         32) /* ItemUseable - Remote */
     , (802885,  25,        275) /* Level */
     , (802885,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (802885,  95,          8) /* RadarBlipColor - Yellow */
     , (802885, 113,          1) /* Gender - Male */
     , (802885, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802885, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802885, 146,          0) /* XpOverride */
     , (802885, 290,          1) /* HearLocalSignals */
     , (802885, 291,         20) /* HearLocalSignalsRadius */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802885,   1, True ) /* Stuck */
     , (802885,  19, False) /* Attackable */
     , (802885,  52, True ) /* AiImmobile */
     , (802885,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (802885,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802885,   1,     360) /* HeartbeatInterval */
     , (802885,   2,       0) /* HeartbeatTimestamp */
     , (802885,   3,       2) /* HealthRate */
     , (802885,   4,       5) /* StaminaRate */
     , (802885,   5,       1) /* ManaRate */
     , (802885,  13,       1) /* ArmorModVsSlash */
     , (802885,  14,       1) /* ArmorModVsPierce */
     , (802885,  15,       1) /* ArmorModVsBludgeon */
     , (802885,  16,       1) /* ArmorModVsCold */
     , (802885,  17,       1) /* ArmorModVsFire */
     , (802885,  18,       1) /* ArmorModVsAcid */
     , (802885,  19,       1) /* ArmorModVsElectric */
     , (802885,  31,      18) /* VisualAwarenessRange */
     , (802885,  39,       1) /* DefaultScale */
     , (802885,  54,       3) /* UseRadius */
     , (802885,  64,       1) /* ResistSlash */
     , (802885,  65,       1) /* ResistPierce */
     , (802885,  66,       1) /* ResistBludgeon */
     , (802885,  67,       1) /* ResistFire */
     , (802885,  68,       1) /* ResistCold */
     , (802885,  69,       1) /* ResistAcid */
     , (802885,  70,       1) /* ResistElectric */
     , (802885,  80,       2) /* AiUseMagicDelay */
     , (802885, 104,      10) /* ObviousRadarRange */
     , (802885, 122,       2) /* AiAcquireHealth */
     , (802885, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802885,   1, 'Shemtar''s Cow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802885,   1, 0x02000006) /* Setup */
     , (802885,   2, 0x0900000D) /* MotionTable */
     , (802885,   3, 0x20000006) /* SoundTable */
     , (802885,   4, 0x30000006) /* CombatTable */
     , (802885,   6, 0x04001DB8) /* PaletteBase */
     , (802885,   7, 0x1000005E) /* ClothingBase */
     , (802885,   8, 0x06001034) /* Icon */
     , (802885,  22, 0x34000018) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802885,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802885,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802885,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802885,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802885,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802885,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802885,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802885,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802885,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802885,   1, 290, 0, 0) /* Strength */
     , (802885,   2, 260, 0, 0) /* Endurance */
     , (802885,   3, 290, 0, 0) /* Quickness */
     , (802885,   4, 290, 0, 0) /* Coordination */
     , (802885,   5, 200, 0, 0) /* Focus */
     , (802885,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802885,   1,   196, 0, 0,  326) /* MaxHealth */
     , (802885,   3,   196, 0, 0,  456) /* MaxStamina */
     , (802885,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802885,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (802885,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (802885, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (802885, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (802885, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (802885, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (802885, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (802885, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (802885, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (802885, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (802885, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (802885, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (802885, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802885, 9 /* Generation */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 16 /* WorldBroadcast */, 0, 1, NULL, 'Colosseum 2.0 has started!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 16 /* WorldBroadcast */, 7200, 1, NULL, 'Colosseum 2.0 was not completed! It has been shut down automatically!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 24 /* StopEvent */, 0, 1, NULL, 'NewColoActive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

