DELETE FROM `weenie` WHERE `class_Id` = 801256;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801256, 'Island Shreth', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801256,   1,         16) /* ItemType - Creature */
     , (801256,   2,         92) /* CreatureType - ParadoxOlthoi */
     , (801256,   3,         13) /* PaletteTemplate - Purple */
     , (801256,   6,         -1) /* ItemsCapacity */
     , (801256,   7,         -1) /* ContainersCapacity */
     , (801256,  16,          1) /* ItemUseable - No */
     , (801256,  25,        400) /* Level */
     , (801256,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801256,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801256, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801256, 146,   30000000) /* XpOverride */
     , (801256, 332,      45000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801256,   1, True ) /* Stuck */
     , (801256,  65, True ) /* IgnoreMagicResist */
     , (801256,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801256,   1,       5) /* HeartbeatInterval */
     , (801256,   2,       0) /* HeartbeatTimestamp */
     , (801256,   3,     400) /* HealthRate */
     , (801256,   4,       4) /* StaminaRate */
     , (801256,   5,       2) /* ManaRate */
     , (801256,  13,       1) /* ArmorModVsSlash */
     , (801256,  14,       1) /* ArmorModVsPierce */
     , (801256,  15,       1) /* ArmorModVsBludgeon */
     , (801256,  16,     1.2) /* ArmorModVsCold */
     , (801256,  17,       1) /* ArmorModVsFire */
     , (801256,  18,       1) /* ArmorModVsAcid */
     , (801256,  19,       1) /* ArmorModVsElectric */
     , (801256,  31,      24) /* VisualAwarenessRange */
     , (801256,  34,       1) /* PowerupTime */
     , (801256,  36,       1) /* ChargeSpeed */
     , (801256,  39,     1.8) /* DefaultScale */
     , (801256,  64,     0.1) /* ResistSlash */
     , (801256,  65,     0.1) /* ResistPierce */
     , (801256,  66,     0.1) /* ResistBludgeon */
     , (801256,  67,     0.1) /* ResistFire */
     , (801256,  68,     0.7) /* ResistCold */
     , (801256,  69,     0.1) /* ResistAcid */
     , (801256,  70,     0.1) /* ResistElectric */
     , (801256,  77,       1) /* PhysicsScriptIntensity */
     , (801256, 104,      10) /* ObviousRadarRange */
     , (801256, 125,       1) /* ResistHealthDrain */
     , (801256, 166,     0.2) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801256,   1, 'Island Shreth') /* Name */
     , (801256,  45, 'IslandShrethKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801256,   1,   33555879) /* Setup */
     , (801256,   2,  150994956) /* MotionTable */
     , (801256,   3,  536870929) /* SoundTable */
     , (801256,   4,  805306379) /* CombatTable */
     , (801256,   6,   67113007) /* PaletteBase */
     , (801256,   7,  268436483) /* ClothingBase */
     , (801256,   8,  100667443) /* Icon */
     , (801256,  22,  872415271) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801256,   1, 1500, 0, 0) /* Strength */
     , (801256,   2, 1500, 0, 0) /* Endurance */
     , (801256,   3, 800, 0, 0) /* Quickness */
     , (801256,   4, 800, 0, 0) /* Coordination */
     , (801256,   5, 800, 0, 0) /* Focus */
     , (801256,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801256,   1, 75600, 0, 0, 75600) /* MaxHealth */
     , (801256,   3, 89200, 0, 0, 90000) /* MaxStamina */
     , (801256,   5, 199200, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801256,  6, 0, 2, 0,  60, 0, 0) /* MeleeDefense        Trained */
     , (801256,  7, 0, 2, 0,  20, 0, 0) /* MissileDefense      Trained */
     , (801256, 15, 0, 2, 0,  40, 0, 0) /* MagicDefense        Trained */
     , (801256, 16, 0, 2, 0, 200, 0, 0) /* ManaConversion      Trained */
     , (801256, 31, 0, 2, 0, 400, 0, 0) /* CreatureEnchantment Trained */
     , (801256, 33, 0, 2, 0, 400, 0, 0) /* LifeMagic           Trained */
     , (801256, 34, 0, 2, 0, 1400, 0, 0) /* WarMagic            Trained */
     , (801256, 41, 0, 2, 0, 4240, 0, 0) /* TwoHandedCombat     Trained */
     , (801256, 44, 0, 2, 0, 3740, 0, 0) /* HeavyWeapons        Trained */
     , (801256, 45, 0, 2, 0, 3250, 0, 0) /* LightWeapons        Trained */
     , (801256, 46, 0, 2, 0, 4140, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801256,  0,  4, 75, 0.75, 6800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 6800, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801256,  1,  1, 75, 0.75, 6800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 6800, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801256,  2,  4, 75, 0.75, 6800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 6800, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801256,  3,  4, 75, 0.75, 6800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 6800, 2, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801256,  4,  4, 75, 0.75, 6800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 6800, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801256,  5,  4, 75, 0.75, 6800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 6800, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801256,  6,  4, 75, 0.75, 6800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 6800, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801256,  7,  4, 75, 0.75, 6800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 6800, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801256,  8,  4, 75, 0.75, 6800, 1800, 1800, 1800, 1800, 1800, 1800, 1800, 6800, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801256, 9, 800849,  1, 0, 0.25, True) /* Create Island Shreth Hide (800849) for ContainTreasure */
     , (801256, 9, 300191,  1, 0, 0.01, True) /* Create ValHeel Empowered Key (300191) for ContainTreasure */;
