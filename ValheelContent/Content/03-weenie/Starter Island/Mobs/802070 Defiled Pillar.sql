DELETE FROM `weenie` WHERE `class_Id` = 802070;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802070, 'DefiledPillar', 10, '2023-02-22 10:41:44') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802070,   1,         16) /* ItemType - Creature */
     , (802070,   2,         47) /* CreatureType - Crystal */
     , (802070,   3,          8) /* PaletteTemplate - Green */
     , (802070,   6,         -1) /* ItemsCapacity */
     , (802070,   7,         -1) /* ContainersCapacity */
     , (802070,  16,          1) /* ItemUseable - No */
     , (802070,  25,         80) /* Level */
     , (802070,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (802070,  81,          2) /* MaxGeneratedObjects */
     , (802070,  82,          2) /* InitGeneratedObjects */
     , (802070,  93,       3080) /* PhysicsState - ReportCollisions, Gravity, LightingOn */
     , (802070, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802070, 146,      50000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802070,   1, True ) /* Stuck */
     , (802070,  42, True ) /* AllowEdgeSlide */
     , (802070,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802070,   1,       5) /* HeartbeatInterval */
     , (802070,   2,       0) /* HeartbeatTimestamp */
     , (802070,   3,       8) /* HealthRate */
     , (802070,   4,       5) /* StaminaRate */
     , (802070,   5,       2) /* ManaRate */
     , (802070,  12,       0) /* Shade */
     , (802070,  13,       1) /* ArmorModVsSlash */
     , (802070,  14,       1) /* ArmorModVsPierce */
     , (802070,  15,       1) /* ArmorModVsBludgeon */
     , (802070,  16,       1) /* ArmorModVsCold */
     , (802070,  17,       1) /* ArmorModVsFire */
     , (802070,  18,       1) /* ArmorModVsAcid */
     , (802070,  19,       1) /* ArmorModVsElectric */
     , (802070,  31,      12) /* VisualAwarenessRange */
     , (802070,  36,       1) /* ChargeSpeed */
     , (802070,  39,     2.5) /* DefaultScale */
     , (802070,  41,     180) /* RegenerationInterval */
     , (802070,  64,       1) /* ResistSlash */
     , (802070,  65,       1) /* ResistPierce */
     , (802070,  66,       1) /* ResistBludgeon */
     , (802070,  67,       1) /* ResistFire */
     , (802070,  68,       1) /* ResistCold */
     , (802070,  69,       1) /* ResistAcid */
     , (802070,  70,       1) /* ResistElectric */
     , (802070,  80,       2) /* AiUseMagicDelay */
     , (802070, 104,      10) /* ObviousRadarRange */
     , (802070, 122,       2) /* AiAcquireHealth */
     , (802070, 125,       0) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802070,   1, 'Defiled Pillar') /* Name */
     , (802070,  45, 'dpKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802070,   1,   33556732) /* Setup */
     , (802070,   2,  150995095) /* MotionTable */
     , (802070,   3,  536871001) /* SoundTable */
     , (802070,   4,  805306407) /* CombatTable */
     , (802070,   6,   67111919) /* PaletteBase */
     , (802070,   7,  268435859) /* ClothingBase */
     , (802070,   8,  100670283) /* Icon */
     , (802070,  22,  872415347) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802070,   1, 300, 0, 0) /* Strength */
     , (802070,   2, 300, 0, 0) /* Endurance */
     , (802070,   3, 150, 0, 0) /* Quickness */
     , (802070,   4, 300, 0, 0) /* Coordination */
     , (802070,   5, 250, 0, 0) /* Focus */
     , (802070,   6, 250, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802070,   1,  1200, 0, 0, 1200) /* MaxHealth */
     , (802070,   3,   500, 0, 0, 800) /* MaxStamina */
     , (802070,   5,  1000, 0, 0, 1350) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802070,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (802070,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (802070, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (802070, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (802070, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (802070, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (802070, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (802070, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (802070, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (802070, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (802070, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (802070, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802070,  0,  4,  1, 0.75,  200,  100,  100,  100,  100,  100,  100,  100,    0, 1,  0.5,  0.2,    0,  0.5,  0.2,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (802070, 10,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 2,  0.2,  0.4,  0.5,  0.2,  0.4,  0.5,    0,    0,    0,    0,    0,    0) /* FrontLeg */
     , (802070, 12,  4,  1, 0.75,  200,  100,  100,  100,  100,  100,  100,  100,    0, 3,    0,    0, 0.25,    0,    0, 0.25,    0,    0,    0,    0,    0,    0) /* FrontFoot */
     , (802070, 13,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 2,    0,    0,    0,    0,    0,    0,  0.3,  0.4,  0.5,  0.3,  0.4,  0.5) /* RearLeg */
     , (802070, 15,  4,  1, 0.75,  200,  100,  100,  100,  100,  100,  100,  100,    0, 3,    0,    0,    0,    0,    0,    0,    0,    0, 0.25,    0,    0, 0.25) /* RearFoot */
     , (802070, 16,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 2,  0.3,  0.4, 0.25,  0.3,  0.4, 0.25,  0.6,  0.5, 0.25,  0.6,  0.5, 0.25) /* Torso */
     , (802070, 17,  4,  1, 0.75,  200,  100,  100,  100,  100,  100,  100,  100,    0, 2,    0,    0,    0,    0,    0,    0,  0.1,  0.1,    0,  0.1,  0.1,    0) /* Tail */;
