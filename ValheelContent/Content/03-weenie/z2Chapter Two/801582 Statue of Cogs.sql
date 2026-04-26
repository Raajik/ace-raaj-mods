DELETE FROM `weenie` WHERE `class_Id` = 801582;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801582, 'Statue of Vogs', 10, '2022-11-04 06:52:16') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801582,   1,         16) /* ItemType - Creature */
     , (801582,   2,         31) /* CreatureType - Human */
     , (801582,   6,         -1) /* ItemsCapacity */
     , (801582,   7,         -1) /* ContainersCapacity */
     , (801582,  16,         32) /* ItemUseable - Remote */
     , (801582,  25,        999) /* Level */
     , (801582,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801582,  95,          7) /* RadarBlipColor - Green */
     , (801582, 113,          1) /* Gender - Male */
     , (801582, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801582, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801582, 146,          0) /* XpOverride */
     , (801582, 290,          1) /* HearLocalSignals */
     , (801582, 291,         20) /* HearLocalSignalsRadius */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801582,   1, True ) /* Stuck */
     , (801582,  19, False) /* Attackable */
     , (801582,  52, True ) /* AiImmobile */
     , (801582,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (801582,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801582,   1,       5) /* HeartbeatInterval */
     , (801582,   2,       0) /* HeartbeatTimestamp */
     , (801582,   3,       2) /* HealthRate */
     , (801582,   4,       5) /* StaminaRate */
     , (801582,   5,       1) /* ManaRate */
     , (801582,  13,       1) /* ArmorModVsSlash */
     , (801582,  14,       1) /* ArmorModVsPierce */
     , (801582,  15,       1) /* ArmorModVsBludgeon */
     , (801582,  16,       1) /* ArmorModVsCold */
     , (801582,  17,       1) /* ArmorModVsFire */
     , (801582,  18,       1) /* ArmorModVsAcid */
     , (801582,  19,       1) /* ArmorModVsElectric */
     , (801582,  31,      18) /* VisualAwarenessRange */
     , (801582,  39,       4) /* DefaultScale */
     , (801582,  54,       3) /* UseRadius */
     , (801582,  64,       1) /* ResistSlash */
     , (801582,  65,       1) /* ResistPierce */
     , (801582,  66,       1) /* ResistBludgeon */
     , (801582,  67,       1) /* ResistFire */
     , (801582,  68,       1) /* ResistCold */
     , (801582,  69,       1) /* ResistAcid */
     , (801582,  70,       1) /* ResistElectric */
     , (801582,  80,       2) /* AiUseMagicDelay */
     , (801582, 104,      10) /* ObviousRadarRange */
     , (801582, 122,       2) /* AiAcquireHealth */
     , (801582, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801582,   1, 'Statue of Cogs') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801582,   1,   33560841) /* Setup */
     , (801582,   2,  150995174) /* MotionTable */
     , (801582,   3,  536870913) /* SoundTable */
     , (801582,   4,  805306368) /* CombatTable */
     , (801582,   6,   67108990) /* PaletteBase */
     , (801582,   8,  100667446) /* Icon */
     , (801582,   9,   83890445) /* EyesTexture */
     , (801582,  10,   83890560) /* NoseTexture */
     , (801582,  11,   83890632) /* MouthTexture */
     , (801582,  15,   67116995) /* HairPalette */
     , (801582,  16,   67110064) /* EyesPalette */
     , (801582,  17,   67109560) /* SkinPalette */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801582,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801582,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801582,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801582,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801582,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801582,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801582,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801582,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801582,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801582,   1,99999, 0, 0) /* Strength */
     , (801582,   2,99999, 0, 0) /* Endurance */
     , (801582,   3,99999, 0, 0) /* Quickness */
     , (801582,   4,99999, 0, 0) /* Coordination */
     , (801582,   5,99999, 0, 0) /* Focus */
     , (801582,   6,99999, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801582,   1, 99999, 0, 0,99999) /* MaxHealth */
     , (801582,   3, 99999, 0, 0,99999) /* MaxStamina */
     , (801582,   5, 99999, 0, 0,99999) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801582,  6, 0, 2, 0,99999, 0, 0) /* MeleeDefense        Trained */
     , (801582,  7, 0, 2, 0,99999, 0, 0) /* MissileDefense      Trained */
     , (801582, 15, 0, 2, 0,99999, 0, 0) /* MagicDefense        Trained */
     , (801582, 16, 0, 2, 0,99999, 0, 0) /* ManaConversion      Trained */
     , (801582, 31, 0, 2, 0,99999, 0, 0) /* CreatureEnchantment Trained */
     , (801582, 32, 0, 2, 0,99999, 0, 0) /* ItemEnchantment     Trained */
     , (801582, 33, 0, 2, 0,99999, 0, 0) /* LifeMagic           Trained */
     , (801582, 34, 0, 2, 0,99999, 0, 0) /* WarMagic            Trained */
     , (801582, 41, 0, 2, 0,99999, 0, 0) /* TwoHandedCombat     Trained */
     , (801582, 43, 0, 2, 0,99999, 0, 0) /* VoidMagic           Trained */
     , (801582, 44, 0, 2, 0,99999, 0, 0) /* HeavyWeapons        Trained */
     , (801582, 45, 0, 2, 0,99999, 0, 0) /* LightWeapons        Trained */
     , (801582, 46, 0, 2, 0,99999, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801582, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'The Statue of Cogs is a memorial of his support and care for ValHeel. Eat at Fleetwood Diner in Michigan!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801582, 2,   2587,  0,90,  0.5, False) /* Create Shirt (2587) for Wield */
     , (801582, 2,   2601,  0,90,  0.5, False) /* Create Pants (2601) for Wield */
     , (801582, 2, 800221,  0,90,    1, False) /* Create Covenant Sollerets (21150) for Wield */
     , (801582, 2, 800222,  0,90,    1, False) /* Create Covenant Bracers (21151) for Wield */
     , (801582, 2, 800223,  0,90,    1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     , (801582, 2, 800224,  0,90,    1, False) /* Create Covenant Gauntlets (21153) for Wield */
     /* , (801582, 2, 800217,  0,90,    1, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (801582, 2,  21156,  0,90,    1, False) /* Create Covenant Helm (21156) for Wield */;

