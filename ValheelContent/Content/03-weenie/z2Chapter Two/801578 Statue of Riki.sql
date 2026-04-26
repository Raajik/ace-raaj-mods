DELETE FROM `weenie` WHERE `class_Id` = 801578;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801578, 'Statue of Riki-Tiki-Tavi', 10, '2022-11-04 07:51:36') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801578,   1,         16) /* ItemType - Creature */
     , (801578,   2,         31) /* CreatureType - Human */
     , (801578,   6,         -1) /* ItemsCapacity */
     , (801578,   7,         -1) /* ContainersCapacity */
     , (801578,  16,         32) /* ItemUseable - Remote */
     , (801578,  25,        999) /* Level */
     , (801578,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801578,  95,          7) /* RadarBlipColor - Green */
     , (801578, 113,          1) /* Gender - Male */
     , (801578, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801578, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801578, 146,          0) /* XpOverride */
     , (801578, 188,          1) /* HeritageGroup - Aluvian */
     , (801578, 290,          1) /* HearLocalSignals */
     , (801578, 291,         20) /* HearLocalSignalsRadius */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801578,   1, True ) /* Stuck */
     , (801578,  19, False) /* Attackable */
     , (801578,  52, True ) /* AiImmobile */
     , (801578,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (801578,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801578,   1,       5) /* HeartbeatInterval */
     , (801578,   2,       0) /* HeartbeatTimestamp */
     , (801578,   3,       2) /* HealthRate */
     , (801578,   4,       5) /* StaminaRate */
     , (801578,   5,       1) /* ManaRate */
     , (801578,  13,       1) /* ArmorModVsSlash */
     , (801578,  14,       1) /* ArmorModVsPierce */
     , (801578,  15,       1) /* ArmorModVsBludgeon */
     , (801578,  16,       1) /* ArmorModVsCold */
     , (801578,  17,       1) /* ArmorModVsFire */
     , (801578,  18,       1) /* ArmorModVsAcid */
     , (801578,  19,       1) /* ArmorModVsElectric */
     , (801578,  31,      18) /* VisualAwarenessRange */
     , (801578,  39,       4) /* DefaultScale */
     , (801578,  54,       3) /* UseRadius */
     , (801578,  64,       1) /* ResistSlash */
     , (801578,  65,       1) /* ResistPierce */
     , (801578,  66,       1) /* ResistBludgeon */
     , (801578,  67,       1) /* ResistFire */
     , (801578,  68,       1) /* ResistCold */
     , (801578,  69,       1) /* ResistAcid */
     , (801578,  70,       1) /* ResistElectric */
     , (801578,  80,       2) /* AiUseMagicDelay */
     , (801578, 104,      10) /* ObviousRadarRange */
     , (801578, 122,       2) /* AiAcquireHealth */
     , (801578, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801578,   1, 'Statue of Riki-Tiki-Tavi') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801578,   1, 0x02000001) /* Setup */
     , (801578,   2, 0x090000E6) /* MotionTable */
     , (801578,   3, 0x20000001) /* SoundTable */
     , (801578,   4, 0x30000000) /* CombatTable */
     , (801578,   6, 0x0400007E) /* PaletteBase */
     , (801578,   8, 0x06001036) /* Icon */
     , (801578,   9, 0x0500110D) /* EyesTexture */
     , (801578,  10, 0x05001180) /* NoseTexture */
     , (801578,  11, 0x050011C8) /* MouthTexture */
     , (801578,  15, 0x04001FC3) /* HairPalette */
     , (801578,  16, 0x040004B0) /* EyesPalette */
     , (801578,  17, 0x040002B8) /* SkinPalette */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801578,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801578,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801578,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801578,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801578,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801578,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801578,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801578,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801578,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801578,   1,99999, 0, 0) /* Strength */
     , (801578,   2,99999, 0, 0) /* Endurance */
     , (801578,   3,99999, 0, 0) /* Quickness */
     , (801578,   4,99999, 0, 0) /* Coordination */
     , (801578,   5,99999, 0, 0) /* Focus */
     , (801578,   6,99999, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801578,   1, 99999, 0, 0,99999) /* MaxHealth */
     , (801578,   3, 99999, 0, 0,99999) /* MaxStamina */
     , (801578,   5, 99999, 0, 0,99999) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801578,  6, 0, 2, 0,99999, 0, 0) /* MeleeDefense        Trained */
     , (801578,  7, 0, 2, 0,99999, 0, 0) /* MissileDefense      Trained */
     , (801578, 15, 0, 2, 0,99999, 0, 0) /* MagicDefense        Trained */
     , (801578, 16, 0, 2, 0,99999, 0, 0) /* ManaConversion      Trained */
     , (801578, 31, 0, 2, 0,99999, 0, 0) /* CreatureEnchantment Trained */
     , (801578, 32, 0, 2, 0,99999, 0, 0) /* ItemEnchantment     Trained */
     , (801578, 33, 0, 2, 0,99999, 0, 0) /* LifeMagic           Trained */
     , (801578, 34, 0, 2, 0,99999, 0, 0) /* WarMagic            Trained */
     , (801578, 41, 0, 2, 0,99999, 0, 0) /* TwoHandedCombat     Trained */
     , (801578, 43, 0, 2, 0,99999, 0, 0) /* VoidMagic           Trained */
     , (801578, 44, 0, 2, 0,99999, 0, 0) /* HeavyWeapons        Trained */
     , (801578, 45, 0, 2, 0,99999, 0, 0) /* LightWeapons        Trained */
     , (801578, 46, 0, 2, 0,99999, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801578, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'The Statue of Riki-Tiki-Tavi is a memorial of his support and care for ValHeel.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
     
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801578, 2,  2587,  0,93,  0.5, False) /* Create Shirt (2587) for Wield */
     , (801578, 2,  2601,  0,93,  0.5, False) /* Create Pants (2601) for Wield */
     , (801578, 2,800364,  0,85,    1, False) /* Create Covenant Sollerets (21150) for Wield */
     , (801578, 2,800362,  0,85,    1, False) /* Create Covenant Bracers (21151) for Wield */
     , (801578, 2,800361,  0,85,    1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     , (801578, 2,800360,  0,85,    1, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (801578, 2,800365,  0,85,    1, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (801578, 2, 21156,  0,85,    1, False) /* Create Covenant Helm (21156) for Wield */;

