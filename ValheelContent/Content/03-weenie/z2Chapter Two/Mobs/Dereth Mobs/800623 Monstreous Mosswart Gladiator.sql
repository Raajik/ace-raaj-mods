DELETE FROM `weenie` WHERE `class_Id` = 800623;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800623, 'Monstreous Mosswart Gladiator', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800623,   1,         16) /* ItemType - Creature */
     , (800623,   2,          4) /* CreatureType - Mosswart */
     , (800623,   3,          7) /* PaletteTemplate - DeepGreen */
     , (800623,   6,         -1) /* ItemsCapacity */
     , (800623,   7,         -1) /* ContainersCapacity */
     , (800623,  16,          1) /* ItemUseable - No */
     , (800623,  25,        235) /* Level */
     , (800623,  27,          0) /* ArmorType - None */
     , (800623,  40,          2) /* CombatMode - Melee */
     , (800623,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800623,  72,         50) /* FriendType - Idol */
     , (800623,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800623, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800623, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800623, 140,          1) /* AiOptions - CanOpenDoors */
     , (800623, 146,    26000000) /* XpOverride */
     , (800623, 332,      12000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800623,   1, True ) /* Stuck */
     , (800623,   6, False) /* AiUsesMana */
     , (800623,  11, False) /* IgnoreCollisions */
     , (800623,  12, True ) /* ReportCollisions */
     , (800623,  13, False) /* Ethereal */
     , (800623,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800623,   1,       5) /* HeartbeatInterval */
     , (800623,   2,       0) /* HeartbeatTimestamp */
     , (800623,   3,     0.5) /* HealthRate */
     , (800623,   4,       5) /* StaminaRate */
     , (800623,   5,       2) /* ManaRate */
     , (800623,  12,       0) /* Shade */
     , (800623,  13,       1) /* ArmorModVsSlash */
     , (800623,  14,       1) /* ArmorModVsPierce */
     , (800623,  15,       1) /* ArmorModVsBludgeon */
     , (800623,  16,       1) /* ArmorModVsCold */
     , (800623,  17,       1) /* ArmorModVsFire */
     , (800623,  18,       1) /* ArmorModVsAcid */
     , (800623,  19,     0.7) /* ArmorModVsElectric */
     , (800623,  31,      24) /* VisualAwarenessRange */
     , (800623,  34,     0.9) /* PowerupTime */
     , (800623,  36,       1) /* ChargeSpeed */
     , (800623,  39,     1.9) /* DefaultScale */
     , (800623,  64,     0.1) /* ResistSlash */
     , (800623,  65,     0.1) /* ResistPierce */
     , (800623,  66,     0.1) /* ResistBludgeon */
     , (800623,  67,     0.1) /* ResistFire */
     , (800623,  68,     0.1) /* ResistCold */
     , (800623,  69,     0.1) /* ResistAcid */
     , (800623,  70,     0.3) /* ResistElectric */
     , (800623,  71,       1) /* ResistHealthBoost */
     , (800623,  72,       1) /* ResistStaminaDrain */
     , (800623,  73,       1) /* ResistStaminaBoost */
     , (800623,  74,       1) /* ResistManaDrain */
     , (800623,  75,       1) /* ResistManaBoost */
     , (800623, 104,      10) /* ObviousRadarRange */
     , (800623, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800623,   1, 'Monstreous Mosswart Gladiator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800623,   1,   33557327) /* Setup */
     , (800623,   2,  150994953) /* MotionTable */
     , (800623,   3,  536870959) /* SoundTable */
     , (800623,   4,  805306373) /* CombatTable */
     , (800623,   6,   67113400) /* PaletteBase */
     , (800623,   7,  268436295) /* ClothingBase */
     , (800623,   8,  100667449) /* Icon */
     , (800623,  22,  872415264) /* PhysicsEffectTable */
     , (800623,  35,       1000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800623,   1, 1800, 0, 0) /* Strength */
     , (800623,   2, 550, 0, 0) /* Endurance */
     , (800623,   3, 400, 0, 0) /* Quickness */
     , (800623,   4, 520, 0, 0) /* Coordination */
     , (800623,   5, 520, 0, 0) /* Focus */
     , (800623,   6, 520, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800623,   1,  10800, 0, 0, 10800) /* MaxHealth */
     , (800623,   3, 10000, 0, 0, 10450) /* MaxStamina */
     , (800623,   5, 10000, 0, 0, 10320) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800623,  6, 0, 3, 0, 320, 0, 0) /* MeleeDefense        Specialized */
     , (800623,  7, 0, 3, 0, 300, 0, 0) /* MissileDefense      Specialized */
     , (800623, 14, 0, 3, 0, 250, 0, 0) /* ArcaneLore          Specialized */
     , (800623, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (800623, 24, 0, 3, 0,  50, 0, 0) /* Run                 Specialized */
     , (800623, 44, 0, 3, 0, 400, 0, 0) /* HeavyWeapons        Specialized */
     , (800623, 45, 0, 3, 0, 400, 0, 0) /* LightWeapons        Specialized */
     , (800623, 46, 0, 3, 0, 400, 0, 0) /* FinesseWeapons      Specialized */
     , (800623, 47, 0, 3, 0, 400, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800623,  0,  4,  0,    0,  200, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800623,  1,  4,  0,    0,  200, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800623,  2,  4,  0,    0,  200, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800623,  3,  4,  0,    0,  200, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800623,  4,  4,  0,    0,  200, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800623,  5,  4, 1000, 0.75,  200, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800623,  6,  4,  0,    0,  200, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800623,  7,  4,  0,    0,  200, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800623,  8,  4, 1000, 0.75,  200, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800623, 2, 29974,  1, 0, 0.5, True) /* Create Partizan (29974) for Wield */
     , (800623, 2, 34343,  1, 0, 0.5, True) /* Create Tachi (34343) for Wield */
     , (800623, 9, 800622,  1, 0, 1, False) /* Create Monstreous Mosswart Head (800622) for ContainTreasure */
     , (800623, 9, 800622,  1, 0, 1, False) /* Create Monstreous Mosswart Head (800622) for ContainTreasure */
     , (800623, 9, 800622,  1, 0, 1, False) /* Create Monstreous Mosswart Head (800622) for ContainTreasure */
     , (800623, 9, 800622,  1, 0, 1, False) /* Create Monstreous Mosswart Head (800622) for ContainTreasure */
     , (800623, 9, 800622,  1, 0, 1, False) /* Create Monstreous Mosswart Head (800622) for ContainTreasure */
     , (800623, 9, 800622,  1, 0, 1, False) /* Create Monstreous Mosswart Head (800622) for ContainTreasure */
     , (800623, 9, 800622,  1, 0, 1, False) /* Create Monstreous Mosswart Head (800622) for ContainTreasure */
     , (800623, 9, 800622,  1, 0, 1, False) /* Create Monstreous Mosswart Head (800622) for ContainTreasure */
     , (800623, 9, 800622,  1, 0, 1, False) /* Create Monstreous Mosswart Head (800622) for ContainTreasure */
     , (800623, 9, 800625,  1, 0, 1, False) /* Create Nanto Invasion Plans (800625) for ContainTreasure */
     , (800623, 9, 800625,  1, 0, 1, False) /* Create Nanto Invasion Plans (800625) for ContainTreasure */
     , (800623, 9, 800625,  1, 0, 1, False) /* Create Nanto Invasion Plans (800625) for ContainTreasure */
     , (800623, 9, 800625,  1, 0, 1, False) /* Create Nanto Invasion Plans (800625) for ContainTreasure */
     , (800623, 9, 800625,  1, 0, 1, False) /* Create Nanto Invasion Plans (800625) for ContainTreasure */
     , (800623, 9, 800625,  1, 0, 1, False) /* Create Nanto Invasion Plans (800625) for ContainTreasure */
     , (800623, 9, 800625,  1, 0, 1, False) /* Create Nanto Invasion Plans (800625) for ContainTreasure */
     , (800623, 9, 800625,  1, 0, 1, False) /* Create Nanto Invasion Plans (800625) for ContainTreasure */
     , (800623, 9, 800625,  1, 0, 1, False) /* Create Nanto Invasion Plans (800625) for ContainTreasure */;
