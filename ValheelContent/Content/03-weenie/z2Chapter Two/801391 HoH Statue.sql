DELETE FROM `weenie` WHERE `class_Id` = 801391;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801391, 'HoH Statue', 10, '2022-08-30 09:55:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801391,   1,         16) /* ItemType - Creature */
     , (801391,   2,         31) /* CreatureType - Human */
     , (801391,   6,         -1) /* ItemsCapacity */
     , (801391,   7,         -1) /* ContainersCapacity */
     , (801391,  16,         32) /* ItemUseable - Remote */
     , (801391,  25,        275) /* Level */
     , (801391,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (801391,  95,          8) /* RadarBlipColor - Yellow */
     , (801391, 113,          1) /* Gender - Male */
     , (801391, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801391, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (801391, 146,          0) /* XpOverride */
     , (801391, 188,          1) /* HeritageGroup - Aluvian */
     , (801391, 290,          1) /* HearLocalSignals */
     , (801391, 291,         20) /* HearLocalSignalsRadius */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801391,   1, True ) /* Stuck */
     , (801391,  19, False) /* Attackable */
     , (801391,  52, True ) /* AiImmobile */
     , (801391,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (801391,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801391,   1,       5) /* HeartbeatInterval */
     , (801391,   2,       0) /* HeartbeatTimestamp */
     , (801391,   3,       2) /* HealthRate */
     , (801391,   4,       5) /* StaminaRate */
     , (801391,   5,       1) /* ManaRate */
     , (801391,  13,       1) /* ArmorModVsSlash */
     , (801391,  14,       1) /* ArmorModVsPierce */
     , (801391,  15,       1) /* ArmorModVsBludgeon */
     , (801391,  16,       1) /* ArmorModVsCold */
     , (801391,  17,       1) /* ArmorModVsFire */
     , (801391,  18,       1) /* ArmorModVsAcid */
     , (801391,  19,       1) /* ArmorModVsElectric */
     , (801391,  31,      18) /* VisualAwarenessRange */
	 , (801391,  39,       4) /* DefaultScale */
     , (801391,  54,       3) /* UseRadius */
     , (801391,  64,       1) /* ResistSlash */
     , (801391,  65,       1) /* ResistPierce */
     , (801391,  66,       1) /* ResistBludgeon */
     , (801391,  67,       1) /* ResistFire */
     , (801391,  68,       1) /* ResistCold */
     , (801391,  69,       1) /* ResistAcid */
     , (801391,  70,       1) /* ResistElectric */
     , (801391,  80,       2) /* AiUseMagicDelay */
     , (801391, 104,      10) /* ObviousRadarRange */
     , (801391, 122,       2) /* AiAcquireHealth */
     , (801391, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801391,   1, 'HoH Statue') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801391,   1,   33554433) /* Setup */
     , (801391,   2,  150995174) /* MotionTable */
     , (801391,   3,  536870913) /* SoundTable */
     , (801391,   4,  805306368) /* CombatTable */
     , (801391,   6,   67108990) /* PaletteBase */
     , (801391,   8,  100667446) /* Icon */
     , (801391,   9,   83890445) /* EyesTexture */
     , (801391,  10,   83890560) /* NoseTexture */
     , (801391,  11,   83890632) /* MouthTexture */
     , (801391,  15,   67116995) /* HairPalette */
     , (801391,  16,   67110064) /* EyesPalette */
     , (801391,  17,   67109560) /* SkinPalette */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801391,   1, 290, 0, 0) /* Strength */
     , (801391,   2, 260, 0, 0) /* Endurance */
     , (801391,   3, 290, 0, 0) /* Quickness */
     , (801391,   4, 290, 0, 0) /* Coordination */
     , (801391,   5, 200, 0, 0) /* Focus */
     , (801391,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801391,   1,   196, 0, 0, 326) /* MaxHealth */
     , (801391,   3,   196, 0, 0, 456) /* MaxStamina */
     , (801391,   5,   196, 0, 0, 396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801391,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (801391,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (801391, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (801391, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (801391, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (801391, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (801391, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (801391, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (801391, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (801391, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (801391, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (801391, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (801391, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801391,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801391,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801391,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801391,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801391,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801391,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801391,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801391,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801391,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801391, 2,  2587,  0, 14, 0.5, False) /* Create Shirt (2587) for Wield */
     , (801391, 2,  2601,  0, 14, 0.5, False) /* Create Pants (2601) for Wield */
     , (801391, 2, 21150,  0, 93, 1, False) /* Create Covenant Sollerets (21150) for Wield */
     , (801391, 2, 21151,  0, 93, 1, False) /* Create Covenant Bracers (21151) for Wield */
     , (801391, 2, 80226,  0, 93, 1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     , (801391, 2, 21153,  0, 93, 1, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (801391, 2, 21154,  0, 93, 1, False) /* Create Covenant Girth (21154) for Wield */
     , (801391, 2, 21155,  0, 93, 1, False) /* Create Covenant Greaves (21155) for Wield */
     , (801391, 2, 21156,  0, 93, 1, False) /* Create Covenant Helm (21156) for Wield */
     , (801391, 2, 21157,  0, 93, 1, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (801391, 2, 21159,  0, 93, 1, False) /* Create Covenant Tassets (21159) for Wield */;
