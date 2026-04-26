DELETE FROM `weenie` WHERE `class_Id` = 802234;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802234, 'SRCow200', 10, '2023-03-17 05:41:20') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802234,   1,         16) /* ItemType - Creature */
     , (802234,   2,         31) /* CreatureType - Human */
     , (802234,   6,         -1) /* ItemsCapacity */
     , (802234,   7,         -1) /* ContainersCapacity */
     , (802234,  16,         32) /* ItemUseable - Remote */
     , (802234,  25,        275) /* Level */
     , (802234,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (802234,  95,          8) /* RadarBlipColor - Yellow */
     , (802234, 113,          1) /* Gender - Male */
     , (802234, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802234, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802234, 146,          0) /* XpOverride */
     , (802234, 290,          1) /* HearLocalSignals */
     , (802234, 291,         20) /* HearLocalSignalsRadius */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802234,   1, True ) /* Stuck */
     , (802234,  19, False) /* Attackable */
     , (802234,  52, True ) /* AiImmobile */
     , (802234,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (802234,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802234,   1,     360) /* HeartbeatInterval */
     , (802234,   2,       0) /* HeartbeatTimestamp */
     , (802234,   3,       2) /* HealthRate */
     , (802234,   4,       5) /* StaminaRate */
     , (802234,   5,       1) /* ManaRate */
     , (802234,  13,       1) /* ArmorModVsSlash */
     , (802234,  14,       1) /* ArmorModVsPierce */
     , (802234,  15,       1) /* ArmorModVsBludgeon */
     , (802234,  16,       1) /* ArmorModVsCold */
     , (802234,  17,       1) /* ArmorModVsFire */
     , (802234,  18,       1) /* ArmorModVsAcid */
     , (802234,  19,       1) /* ArmorModVsElectric */
     , (802234,  31,      18) /* VisualAwarenessRange */
     , (802234,  54,       3) /* UseRadius */
     , (802234,  64,       1) /* ResistSlash */
     , (802234,  65,       1) /* ResistPierce */
     , (802234,  66,       1) /* ResistBludgeon */
     , (802234,  67,       1) /* ResistFire */
     , (802234,  68,       1) /* ResistCold */
     , (802234,  69,       1) /* ResistAcid */
     , (802234,  70,       1) /* ResistElectric */
     , (802234,  80,       2) /* AiUseMagicDelay */
     , (802234, 104,      10) /* ObviousRadarRange */
     , (802234, 122,       2) /* AiAcquireHealth */
     , (802234, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802234,   1, 'Shemtar''s Cow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802234,   1,   33554438) /* Setup */
     , (802234,   2,  150994957) /* MotionTable */
     , (802234,   3,  536870918) /* SoundTable */
     , (802234,   4,  805306374) /* CombatTable */
     , (802234,   6,   67116472) /* PaletteBase */
     , (802234,   7,  268435550) /* ClothingBase */
     , (802234,   8,  100667444) /* Icon */
     , (802234,  22,  872415256) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802234,   1, 290, 0, 0) /* Strength */
     , (802234,   2, 260, 0, 0) /* Endurance */
     , (802234,   3, 290, 0, 0) /* Quickness */
     , (802234,   4, 290, 0, 0) /* Coordination */
     , (802234,   5, 200, 0, 0) /* Focus */
     , (802234,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802234,   1,   196, 0, 0, 326) /* MaxHealth */
     , (802234,   3,   196, 0, 0, 456) /* MaxStamina */
     , (802234,   5,   196, 0, 0, 396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802234,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (802234,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (802234, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (802234, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (802234, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (802234, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (802234, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (802234, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (802234, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (802234, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (802234, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (802234, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (802234, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802234,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802234,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802234,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802234,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802234,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802234,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802234,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802234,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802234,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802234, 37 /* ReceiveLocalSignal */,      1, NULL, NULL, NULL, 'SR200Start', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  24 /* StopEvent */, 1200, 1, NULL, 'SR200Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  16 /* WorldBroadcast */, 0, 1, NULL, 'Speed Run: Medium has reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
