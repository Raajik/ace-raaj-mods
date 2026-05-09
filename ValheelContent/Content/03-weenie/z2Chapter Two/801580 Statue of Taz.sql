DELETE FROM `weenie` WHERE `class_Id` = 801580;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801580, 'Statue of Taz', 10, '2022-11-04 06:52:16') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801580,   1,         16) /* ItemType - Creature */
     , (801580,   2,         31) /* CreatureType - Human */
     , (801580,   6,         -1) /* ItemsCapacity */
     , (801580,   7,         -1) /* ContainersCapacity */
     , (801580,  16,         32) /* ItemUseable - Remote */
     , (801580,  25,        999) /* Level */
     , (801580,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801580,  95,          7) /* RadarBlipColor - Green */
     , (801580, 113,          1) /* Gender - Male */
     , (801580, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801580, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801580, 146,          0) /* XpOverride */
     , (801580, 188,          1) /* HeritageGroup - Aluvian */
     , (801580, 290,          1) /* HearLocalSignals */
     , (801580, 291,         20) /* HearLocalSignalsRadius */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801580,   1, True ) /* Stuck */
     , (801580,  19, False) /* Attackable */
     , (801580,  52, True ) /* AiImmobile */
     , (801580,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (801580,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801580,   1,       5) /* HeartbeatInterval */
     , (801580,   2,       0) /* HeartbeatTimestamp */
     , (801580,   3,       2) /* HealthRate */
     , (801580,   4,       5) /* StaminaRate */
     , (801580,   5,       1) /* ManaRate */
     , (801580,  13,       1) /* ArmorModVsSlash */
     , (801580,  14,       1) /* ArmorModVsPierce */
     , (801580,  15,       1) /* ArmorModVsBludgeon */
     , (801580,  16,       1) /* ArmorModVsCold */
     , (801580,  17,       1) /* ArmorModVsFire */
     , (801580,  18,       1) /* ArmorModVsAcid */
     , (801580,  19,       1) /* ArmorModVsElectric */
     , (801580,  31,      18) /* VisualAwarenessRange */
     , (801580,  39,       4) /* DefaultScale */
     , (801580,  54,       3) /* UseRadius */
     , (801580,  64,       1) /* ResistSlash */
     , (801580,  65,       1) /* ResistPierce */
     , (801580,  66,       1) /* ResistBludgeon */
     , (801580,  67,       1) /* ResistFire */
     , (801580,  68,       1) /* ResistCold */
     , (801580,  69,       1) /* ResistAcid */
     , (801580,  70,       1) /* ResistElectric */
     , (801580,  80,       2) /* AiUseMagicDelay */
     , (801580, 104,      10) /* ObviousRadarRange */
     , (801580, 122,       2) /* AiAcquireHealth */
     , (801580, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801580,   1, 'Statue of Taz') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801580,   1,   33554433) /* Setup */
     , (801580,   2,  150995174) /* MotionTable */
     , (801580,   3,  536870913) /* SoundTable */
     , (801580,   4,  805306368) /* CombatTable */
     , (801580,   6,   67108990) /* PaletteBase */
     , (801580,   8,  100667446) /* Icon */
     , (801580,   9,   83890445) /* EyesTexture */
     , (801580,  10,   83890560) /* NoseTexture */
     , (801580,  11,   83890632) /* MouthTexture */
     , (801580,  15,   67116995) /* HairPalette */
     , (801580,  16,   67110064) /* EyesPalette */
     , (801580,  17,   67109560) /* SkinPalette */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801580,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801580,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801580,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801580,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801580,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801580,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801580,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801580,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801580,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801580,   1,99999, 0, 0) /* Strength */
     , (801580,   2,99999, 0, 0) /* Endurance */
     , (801580,   3,99999, 0, 0) /* Quickness */
     , (801580,   4,99999, 0, 0) /* Coordination */
     , (801580,   5,99999, 0, 0) /* Focus */
     , (801580,   6,99999, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801580,   1, 99999, 0, 0,99999) /* MaxHealth */
     , (801580,   3, 99999, 0, 0,99999) /* MaxStamina */
     , (801580,   5, 99999, 0, 0,99999) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801580,  6, 0, 2, 0,99999, 0, 0) /* MeleeDefense        Trained */
     , (801580,  7, 0, 2, 0,99999, 0, 0) /* MissileDefense      Trained */
     , (801580, 15, 0, 2, 0,99999, 0, 0) /* MagicDefense        Trained */
     , (801580, 16, 0, 2, 0,99999, 0, 0) /* ManaConversion      Trained */
     , (801580, 31, 0, 2, 0,99999, 0, 0) /* CreatureEnchantment Trained */
     , (801580, 32, 0, 2, 0,99999, 0, 0) /* ItemEnchantment     Trained */
     , (801580, 33, 0, 2, 0,99999, 0, 0) /* LifeMagic           Trained */
     , (801580, 34, 0, 2, 0,99999, 0, 0) /* WarMagic            Trained */
     , (801580, 41, 0, 2, 0,99999, 0, 0) /* TwoHandedCombat     Trained */
     , (801580, 43, 0, 2, 0,99999, 0, 0) /* VoidMagic           Trained */
     , (801580, 44, 0, 2, 0,99999, 0, 0) /* HeavyWeapons        Trained */
     , (801580, 45, 0, 2, 0,99999, 0, 0) /* LightWeapons        Trained */
     , (801580, 46, 0, 2, 0,99999, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801580, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'The Statue of Taz is a memorial of his support and care for ValHeel.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801580, 2,   2587,  0,88,  0.5, False) /* Create Shirt (2587) for Wield */
     , (801580, 2,   2601,  0,88,  0.5, False) /* Create Pants (2601) for Wield */
     , (801580, 2, 800114,  0,93,    1, False) /* Create Covenant Sollerets (21150) for Wield */
     /* , (801580, 2, 6044,  0,88,    1, False) /* Create Covenant Bracers (21151) for Wield */
     /* , (801580, 2, 6045,  0,88,    1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     /* , (801580, 2, 6048,  0,88,    1, False) /* Create Covenant Gauntlets (21153) for Wield */
     /* , (801580, 2, 800365,  0,88,    1, False) /* Create Covenant Gauntlets (21153) for Wield */
     /* , (801580, 2,  21156,  0,88,    1, False) /* Create Covenant Helm (21156) for Wield */;

