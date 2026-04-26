DELETE FROM `weenie` WHERE `class_Id` = 801368;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801368, 'OlthoiEmpyrean', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801368,   1,         16) /* ItemType - Creature */
     , (801368,   2,         92) /* CreatureType - ParadoxOlthoi */
     , (801368,   3,         39) /* PaletteTemplate - Black */
     , (801368,   6,         -1) /* ItemsCapacity */
     , (801368,   7,         -1) /* ContainersCapacity */
     , (801368,  16,          1) /* ItemUseable - No */
     , (801368,  25,        400) /* Level */
     , (801368,  68,      0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801368,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801368, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801368, 146,   30001320) /* XpOverride */
     , (801368, 332,      12000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801368,   1, True ) /* Stuck */
     , (801368,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801368,   1,       5) /* HeartbeatInterval */
     , (801368,   2,       0) /* HeartbeatTimestamp */
     , (801368,   3,    0.65) /* HealthRate */
     , (801368,   4,       4) /* StaminaRate */
     , (801368,   5,       2) /* ManaRate */
     , (801368,  13,       1) /* ArmorModVsSlash */
     , (801368,  14,       1) /* ArmorModVsPierce */
     , (801368,  15,     0.7) /* ArmorModVsBludgeon */
     , (801368,  16,       1) /* ArmorModVsCold */
     , (801368,  17,       1) /* ArmorModVsFire */
     , (801368,  18,       1) /* ArmorModVsAcid */
     , (801368,  19,       1) /* ArmorModVsElectric */
     , (801368,  31,      24) /* VisualAwarenessRange */
     , (801368,  34,       1) /* PowerupTime */
     , (801368,  36,       1) /* ChargeSpeed */
     , (801368,  39,     1.2) /* DefaultScale */
     , (801368,  64,     0.1) /* ResistSlash */
     , (801368,  65,     0.1) /* ResistPierce */
     , (801368,  66,     0.5) /* ResistBludgeon */
     , (801368,  67,     0.1) /* ResistFire */
     , (801368,  68,     0.1) /* ResistCold */
     , (801368,  69,     0.1) /* ResistAcid */
     , (801368,  70,     0.1) /* ResistElectric */
     , (801368,  77,       1) /* PhysicsScriptIntensity */
     , (801368, 104,      10) /* ObviousRadarRange */
     , (801368, 125,    0.03) /* ResistHealthDrain */
     , (801368, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801368,   1, 'Olthoi Empyrean Specimen') /* Name */
     , (801368,  45, 'EmpyreanOlthoiKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801368,   1,   33557046) /* Setup */
     , (801368,   2,  150995130) /* MotionTable */
     , (801368,   3,  536871036) /* SoundTable */
     , (801368,   4,  805306395) /* CombatTable */
     , (801368,   6,   67113194) /* PaletteBase */
     , (801368,   7,  268436197) /* ClothingBase */
     , (801368,   8,  100667623) /* Icon */
     , (801368,  19,         84) /* ActivationAnimation */
     , (801368,  22,  872415378) /* PhysicsEffectTable */
     , (801368,  30,         84) /* PhysicsScript - BreatheFlame */
     , (801368,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801368,   1, 1200, 0, 0) /* Strength */
     , (801368,   2, 1500, 0, 0) /* Endurance */
     , (801368,   3, 220, 0, 0) /* Quickness */
     , (801368,   4, 220, 0, 0) /* Coordination */
     , (801368,   5, 170, 0, 0) /* Focus */
     , (801368,   6, 120, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801368,   1, 13000, 0, 0, 13000) /* MaxHealth */
     , (801368,   3, 50000, 0, 0, 50000) /* MaxStamina */
     , (801368,   5, 50000, 0, 0, 50000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801368,  6, 0, 2, 0, 150, 0, 0) /* MeleeDefense        Trained */
     , (801368,  7, 0, 2, 0, 150, 0, 0) /* MissileDefense      Trained */
     , (801368, 15, 0, 2, 0, 150, 0, 0) /* MagicDefense        Trained */
     , (801368, 16, 0, 2, 0, 175, 0, 0) /* ManaConversion      Trained */
     , (801368, 41, 0, 2, 0, 400, 0, 0) /* TwoHandedCombat     Trained */
     , (801368, 44, 0, 2, 0, 400, 0, 0) /* HeavyWeapons        Trained */
     , (801368, 45, 0, 2, 0, 400, 0, 0) /* LightWeapons        Trained */
     , (801368, 46, 0, 2, 0, 400, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801368,  0,  4, 1000,  0.5, 450, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 500, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (801368, 16,  4, 1000,  0.5, 450, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 500, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (801368, 18,  4, 1000,  0.5, 450, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 500, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (801368, 19,  4, 1000,  0.5, 450, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 500, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (801368, 20,  2, 1000, 0.75, 450, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 500, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (801368, 22, 16, 1000,  0.5, 450, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 500, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801368, 9, 300191,  1, 0, 0.02, False) /* Create ValHeel Empowered Key (300191) for ContainTreasure */;
