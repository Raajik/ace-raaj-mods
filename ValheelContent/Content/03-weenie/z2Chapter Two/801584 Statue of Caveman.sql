DELETE FROM `weenie` WHERE `class_Id` = 801584;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801584, 'Statue of Caveman', 10, '2022-11-04 06:52:16') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801584,   1,         16) /* ItemType - Creature */
     , (801584,   2,         31) /* CreatureType - Human */
     , (801584,   6,         -1) /* ItemsCapacity */
     , (801584,   7,         -1) /* ContainersCapacity */
     , (801584,  16,         32) /* ItemUseable - Remote */
     , (801584,  25,        999) /* Level */
     , (801584,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801584,  95,          7) /* RadarBlipColor - Green */
     , (801584, 113,          1) /* Gender - Male */
     , (801584, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801584, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801584, 146,          0) /* XpOverride */
     , (801584, 188,          1) /* HeritageGroup - Aluvian */
     , (801584, 290,          1) /* HearLocalSignals */
     , (801584, 291,         20) /* HearLocalSignalsRadius */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801584,   1, True ) /* Stuck */
     , (801584,  19, False) /* Attackable */
     , (801584,  52, True ) /* AiImmobile */
     , (801584,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (801584,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801584,   1,       5) /* HeartbeatInterval */
     , (801584,   2,       0) /* HeartbeatTimestamp */
     , (801584,   3,       2) /* HealthRate */
     , (801584,   4,       5) /* StaminaRate */
     , (801584,   5,       1) /* ManaRate */
     , (801584,  13,       1) /* ArmorModVsSlash */
     , (801584,  14,       1) /* ArmorModVsPierce */
     , (801584,  15,       1) /* ArmorModVsBludgeon */
     , (801584,  16,       1) /* ArmorModVsCold */
     , (801584,  17,       1) /* ArmorModVsFire */
     , (801584,  18,       1) /* ArmorModVsAcid */
     , (801584,  19,       1) /* ArmorModVsElectric */
     , (801584,  31,      18) /* VisualAwarenessRange */
     , (801584,  39,       4) /* DefaultScale */
     , (801584,  54,       3) /* UseRadius */
     , (801584,  64,       1) /* ResistSlash */
     , (801584,  65,       1) /* ResistPierce */
     , (801584,  66,       1) /* ResistBludgeon */
     , (801584,  67,       1) /* ResistFire */
     , (801584,  68,       1) /* ResistCold */
     , (801584,  69,       1) /* ResistAcid */
     , (801584,  70,       1) /* ResistElectric */
     , (801584,  80,       2) /* AiUseMagicDelay */
     , (801584, 104,      10) /* ObviousRadarRange */
     , (801584, 122,       2) /* AiAcquireHealth */
     , (801584, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801584,   1, 'Statue of Caveman') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801584,   1,   33554433) /* Setup */
     , (801584,   2,  150995174) /* MotionTable */
     , (801584,   3,  536870913) /* SoundTable */
     , (801584,   4,  805306368) /* CombatTable */
     , (801584,   6,   67108990) /* PaletteBase */
     , (801584,   8,  100667446) /* Icon */
     , (801584,   9,   83890445) /* EyesTexture */
     , (801584,  10,   83890560) /* NoseTexture */
     , (801584,  11,   83890632) /* MouthTexture */
     , (801584,  15,   67116995) /* HairPalette */
     , (801584,  16,   67110064) /* EyesPalette */
     , (801584,  17,   67109560) /* SkinPalette */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801584,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801584,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801584,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801584,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801584,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801584,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801584,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801584,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801584,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801584,   1,99999, 0, 0) /* Strength */
     , (801584,   2,99999, 0, 0) /* Endurance */
     , (801584,   3,99999, 0, 0) /* Quickness */
     , (801584,   4,99999, 0, 0) /* Coordination */
     , (801584,   5,99999, 0, 0) /* Focus */
     , (801584,   6,99999, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801584,   1, 99999, 0, 0,99999) /* MaxHealth */
     , (801584,   3, 99999, 0, 0,99999) /* MaxStamina */
     , (801584,   5, 99999, 0, 0,99999) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801584,  6, 0, 2, 0,99999, 0, 0) /* MeleeDefense        Trained */
     , (801584,  7, 0, 2, 0,99999, 0, 0) /* MissileDefense      Trained */
     , (801584, 15, 0, 2, 0,99999, 0, 0) /* MagicDefense        Trained */
     , (801584, 16, 0, 2, 0,99999, 0, 0) /* ManaConversion      Trained */
     , (801584, 31, 0, 2, 0,99999, 0, 0) /* CreatureEnchantment Trained */
     , (801584, 32, 0, 2, 0,99999, 0, 0) /* ItemEnchantment     Trained */
     , (801584, 33, 0, 2, 0,99999, 0, 0) /* LifeMagic           Trained */
     , (801584, 34, 0, 2, 0,99999, 0, 0) /* WarMagic            Trained */
     , (801584, 41, 0, 2, 0,99999, 0, 0) /* TwoHandedCombat     Trained */
     , (801584, 43, 0, 2, 0,99999, 0, 0) /* VoidMagic           Trained */
     , (801584, 44, 0, 2, 0,99999, 0, 0) /* HeavyWeapons        Trained */
     , (801584, 45, 0, 2, 0,99999, 0, 0) /* LightWeapons        Trained */
     , (801584, 46, 0, 2, 0,99999, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801584, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'The Statue of Caveman is a memorial of his support and care for ValHeel.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801584, 2,   2587,  0,88,  0.5, False) /* Create Shirt (2587) for Wield */
     , (801584, 2,   2601,  0,88,  0.5, False) /* Create Pants (2601) for Wield */
     , (801584, 2, 33950,  0,90,    1, False) /* Create Covenant Sollerets (21150) for Wield */
     /* , (801584, 2, 6044,  0,88,    1, False) /* Create Covenant Bracers (21151) for Wield */
     /* , (801584, 2, 6045,  0,88,    1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     /* , (801584, 2, 6048,  0,88,    1, False) /* Create Covenant Gauntlets (21153) for Wield */
     /* , (801584, 2, 800365,  0,88,    1, False) /* Create Covenant Gauntlets (21153) for Wield */
     /* , (801584, 2,  21156,  0,88,    1, False) /* Create Covenant Helm (21156) for Wield */;

