DELETE FROM `weenie` WHERE `class_Id` = 800535;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800535, 'Tradewind''s Path Spy', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800535,   1,         16) /* ItemType - Creature */
     , (800535,   2,         31) /* CreatureType - Human */
     , (800535,   6,         -1) /* ItemsCapacity */
     , (800535,   7,         -1) /* ContainersCapacity */
     , (800535,  16,         32) /* ItemUseable - Remote */
     , (800535,  25,        650) /* Level */
     , (800535,  27,          0) /* ArmorType - None */
     , (800535,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (800535,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800535, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (800535, 113,          1) /* Gender - Male */
     , (800535, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800535, 146,          1) /* XpOverride */
     , (800535, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800535,   1, True ) /* Stuck */
     , (800535,  50, True ) /* NeverFailCasting */
     , (800535,  65, True ) /* IgnoreMagicResist */
     , (800535,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800535,   1,       5) /* HeartbeatInterval */
     , (800535,   2,       0) /* HeartbeatTimestamp */
     , (800535,   3,       2) /* HealthRate */
     , (800535,   4,       5) /* StaminaRate */
     , (800535,   5,       1) /* ManaRate */
     , (800535,  13,       5) /* ArmorModVsSlash */
     , (800535,  14,       5) /* ArmorModVsPierce */
     , (800535,  15,       5) /* ArmorModVsBludgeon */
     , (800535,  16,       5) /* ArmorModVsCold */
     , (800535,  17,       5) /* ArmorModVsFire */
     , (800535,  18,       5) /* ArmorModVsAcid */
     , (800535,  19,       5) /* ArmorModVsElectric */
     , (800535,  31,      13) /* VisualAwarenessRange */
     , (800535,  64,   0.005) /* ResistSlash */
     , (800535,  65,   0.005) /* ResistPierce */
     , (800535,  66,   0.005) /* ResistBludgeon */
     , (800535,  67,   0.005) /* ResistFire */
     , (800535,  68,   0.005) /* ResistCold */
     , (800535,  69,   0.005) /* ResistAcid */
     , (800535,  70,    0.75) /* ResistElectric */
     , (800535,  71,       1) /* ResistHealthBoost */
     , (800535,  72,       1) /* ResistStaminaDrain */
     , (800535,  73,       1) /* ResistStaminaBoost */
     , (800535,  74,       1) /* ResistManaDrain */
     , (800535,  75,       1) /* ResistManaBoost */
     , (800535, 104,      10) /* ObviousRadarRange */
     , (800535, 117,     0.5) /* FocusedProbability */
     , (800535, 125,       1) /* ResistHealthDrain */
     , (800535, 166,   0.005) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800535,   1, 'Tradewind''s Path Spy') /* Name */
     , (800535,   5, 'Spy Leader') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800535,   1,   33554433) /* Setup */
     , (800535,   2,  150994945) /* MotionTable */
     , (800535,   3,  536870913) /* SoundTable */
     , (800535,   4,  805306368) /* CombatTable */
     , (800535,   6,   67108990) /* PaletteBase */
     , (800535,   8,  100667446) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800535,   1, 60000, 0, 0) /* Strength */
     , (800535,   2, 60000, 0, 0) /* Endurance */
     , (800535,   3, 320, 0, 0) /* Quickness */
     , (800535,   4, 800, 0, 0) /* Coordination */
     , (800535,   5, 800, 0, 0) /* Focus */
     , (800535,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800535,   1, 20000000, 0, 0, 20000000) /* MaxHealth */
     , (800535,   3, 20000000, 0, 0, 20000000) /* MaxStamina */
     , (800535,   5, 20000000, 0, 0, 20000000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800535,  6, 0, 3, 0, 237, 0, 0) /* MeleeDefense        Specialized */
     , (800535,  7, 0, 3, 0, 272, 0, 0) /* MissileDefense      Specialized */
     , (800535, 15, 0, 3, 0, 359, 0, 0) /* MagicDefense        Specialized */
     , (800535, 20, 0, 3, 0, 420, 0, 0) /* Deception           Specialized */
     , (800535, 33, 0, 3, 0, 4000, 0, 0) /* LifeMagic           Specialized */
     , (800535, 34, 0, 3, 0, 4000, 0, 0) /* WarMagic            Specialized */
     , (800535, 41, 0, 3, 0, 4000, 0, 0) /* TwoHandedCombat     Specialized */
     , (800535, 44, 0, 3, 0, 4000, 0, 0) /* HeavyWeapons        Specialized */
     , (800535, 45, 0, 3, 0, 4000, 0, 0) /* LightWeapons        Specialized */
     , (800535, 46, 0, 3, 0, 4000, 0, 0) /* FinesseWeapons      Specialized */
     , (800535, 47, 0, 3, 0, 4000, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800535,  0,  4,  0,    0,  30000,  225,  250,  275,  100,  100,  250,  150,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800535,  1,  4,  0,    0,  30000,  225,  250,  275,  100,  100,  250,  150,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800535,  2,  4,  0,    0,  30000,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800535,  3,  4,  0,    0,  30000,  225,  250,  275,  100,  100,  250,  150,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800535,  4,  4,  0,    0,  30000,  225,  250,  275,  100,  100,  250,  150,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800535,  5,  4,  75000, 0.75,  30000,  225,  250,  275,  100,  100,  250,  150,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800535,  6,  4,  0,    0,  30000,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800535,  7,  4,  0,    0,  30000,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800535,  8,  4,  75000, 0.75,  30000,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800535, 2,  2588,  0, 2, 0, False) /* Create Shirt (2588) for Wield */
     , (800535, 2,  2597,  0, 2, 0, False) /* Create Pants (2597) for Wield */
     , (800535, 2, 38463,  0, 0, 0, False) /* Create Celestial Hand Breastplate (38463) for Wield */
     , (800535, 2, 38464,  0, 0, 0, False) /* Create Celestial Hand Gauntlets (38464) for Wield */
     , (800535, 2, 38465,  0, 0, 0, False) /* Create Celestial Hand Girth (38465) for Wield */
     , (800535, 2, 38466,  0, 0, 0, False) /* Create Celestial Hand Greaves (38466) for Wield */
     , (800535, 2, 37197,  0, 21, 1, False) /* Create Olthoi Celdon Helm (37197) for Wield */
     , (800535, 2, 38468,  0, 0, 0, False) /* Create Celestial Hand Pauldrons (38468) for Wield */
     , (800535, 2, 38469,  0, 0, 0, False) /* Create Celestial Hand Tassets (38469) for Wield */
     , (800535, 2, 38470,  0, 0, 0, False) /* Create Celestial Hand Vambraces (38470) for Wield */
     , (800535, 2, 38471,  0, 0, 0, False) /* Create Celestial Hand Sollerets (38471) for Wield */
     , (800535, 9, 800534,  1, 0, 1, False) /* Create Spy Informant Letter (800534) for ContainTreasure */
     , (800535, 9, 800534,  1, 0, 1, False) /* Create Spy Informant Letter (800534) for ContainTreasure */
     , (800535, 9, 800534,  1, 0, 1, False) /* Create Spy Informant Letter (800534) for ContainTreasure */
     , (800535, 9, 800534,  1, 0, 1, False) /* Create Spy Informant Letter (800534) for ContainTreasure */
     , (800535, 9, 800534,  1, 0, 1, False) /* Create Spy Informant Letter (800534) for ContainTreasure */
     , (800535, 9, 800534,  1, 0, 1, False) /* Create Spy Informant Letter (800534) for ContainTreasure */
     , (800535, 9, 800534,  1, 0, 1, False) /* Create Spy Informant Letter (800534) for ContainTreasure */
     , (800535, 9, 800534,  1, 0, 1, False) /* Create Spy Informant Letter (800534) for ContainTreasure */
     , (800535, 9, 800534,  1, 0, 1, False) /* Create Spy Informant Letter (800534) for ContainTreasure */;
