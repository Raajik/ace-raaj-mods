DELETE FROM `weenie` WHERE `class_Id` = 800428;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800428, 'Ruschk Invader', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800428,   1,         16) /* ItemType - Creature */
     , (800428,   2,         81) /* CreatureType - Ruschk */
     , (800428,   3,          8) /* PaletteTemplate - Green */
     , (800428,   6,         -1) /* ItemsCapacity */
     , (800428,   7,         -1) /* ContainersCapacity */
     , (800428,  16,          1) /* ItemUseable - No */
     , (800428,  25,        335) /* Level */
     , (800428,  27,          0) /* ArmorType - None */
     , (800428,  40,          2) /* CombatMode - Melee */
     , (800428,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800428,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800428, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800428, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800428, 140,          1) /* AiOptions - CanOpenDoors */
     , (800428, 146,    26000000) /* XpOverride */
     , (800428, 332,      12000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800428,   1, True ) /* Stuck */
     , (800428,  11, False) /* IgnoreCollisions */
     , (800428,  12, True ) /* ReportCollisions */
     , (800428,  13, False) /* Ethereal */
     , (800428,  14, True ) /* GravityStatus */
     , (800428,  19, True ) /* Attackable */
     , (800428,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800428,   1,       5) /* HeartbeatInterval */
     , (800428,   2,       0) /* HeartbeatTimestamp */
     , (800428,   3,    0.15) /* HealthRate */
     , (800428,   4,       5) /* StaminaRate */
     , (800428,   5,       2) /* ManaRate */
     , (800428,  12,     0.5) /* Shade */
     , (800428,  13,     1.2) /* ArmorModVsSlash */
     , (800428,  14,     0.7) /* ArmorModVsPierce */
     , (800428,  15,     1.2) /* ArmorModVsBludgeon */
     , (800428,  16,     1.2) /* ArmorModVsCold */
     , (800428,  17,     1.2) /* ArmorModVsFire */
     , (800428,  18,     1.2) /* ArmorModVsAcid */
     , (800428,  19,     1.2) /* ArmorModVsElectric */
     , (800428,  31,      18) /* VisualAwarenessRange */
     , (800428,  34,     1.1) /* PowerupTime */
     , (800428,  36,       1) /* ChargeSpeed */
     , (800428,  39,       1) /* DefaultScale */
     , (800428,  64,     0.1) /* ResistSlash */
     , (800428,  65,     0.3) /* ResistPierce */
     , (800428,  66,     0.1) /* ResistBludgeon */
     , (800428,  67,     0.1) /* ResistFire */
     , (800428,  68,     0.1) /* ResistCold */
     , (800428,  69,     0.1) /* ResistAcid */
     , (800428,  70,     0.1) /* ResistElectric */
     , (800428,  71,       1) /* ResistHealthBoost */
     , (800428,  72,       1) /* ResistStaminaDrain */
     , (800428,  73,       1) /* ResistStaminaBoost */
     , (800428,  74,       1) /* ResistManaDrain */
     , (800428,  75,       1) /* ResistManaBoost */
     , (800428, 104,      10) /* ObviousRadarRange */
     , (800428, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800428,   1, 'Ruschk Invader') /* Name */
     , (800428,  45, 'YaraqKillTask2') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800428,   1,   33559104) /* Setup */
     , (800428,   2,  150994951) /* MotionTable */
     , (800428,   3,  536871101) /* SoundTable */
     , (800428,   4,  805306372) /* CombatTable */
     , (800428,   6,   67115447) /* PaletteBase */
     , (800428,   7,  268436946) /* ClothingBase */
     , (800428,   8,  100677373) /* Icon */
     , (800428,  22,  872415364) /* PhysicsEffectTable */
     , (800428,  32,        485) /* WieldedTreasureType */
     , (800428,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800428,   1, 1400, 0, 0) /* Strength */
     , (800428,   2, 140, 0, 0) /* Endurance */
     , (800428,   3, 110, 0, 0) /* Quickness */
     , (800428,   4, 110, 0, 0) /* Coordination */
     , (800428,   5,  60, 0, 0) /* Focus */
     , (800428,   6,  70, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800428,   1,  10800, 0, 0, 10800) /* MaxHealth */
     , (800428,   3, 23100, 0, 0, 23240) /* MaxStamina */
     , (800428,   5,  1260, 0, 0, 1290) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800428,  6, 0, 3, 0, 180, 0, 0) /* MeleeDefense        Specialized */
     , (800428,  7, 0, 3, 0, 125, 0, 0) /* MissileDefense      Specialized */
     , (800428, 15, 0, 3, 0, 200, 0, 0) /* MagicDefense        Specialized */
     , (800428, 44, 0, 3, 0, 400, 0, 0) /* HeavyWeapons        Specialized */
     , (800428, 45, 0, 3, 0, 400, 0, 0) /* LightWeapons        Specialized */
     , (800428, 46, 0, 3, 0, 400, 0, 0) /* FinesseWeapons      Specialized */
     , (800428, 47, 0, 3, 0, 400, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800428,  0,  4,  0,    0,  200,  800,  800,  800,  800,  800,  800,  800,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800428,  1,  4,  0,    0,  200,  800,  800,  800,  800,  800,  800,  800,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800428,  2,  4,  0,    0,  200,  800,  800,  800,  800,  800,  800,  800,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800428,  3,  4,  0,    0,  200,  800,  800,  800,  800,  800,  800,  800,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800428,  4,  4,  0,    0,  200,  800,  800,  800,  800,  800,  800,  800,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800428,  5,  4, 1000,  0.4,  200,  800,  800,  800,  800,  800,  800,  800,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800428,  6,  4,  0,    0,  200,  800,  800,  800,  800,  800,  800,  800,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800428,  7,  4,  0,    0,  200,  672,  672,  560,  560,  448,  560,  448,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800428,  8,  4, 1000,  0.4,  200,  800,  800,  800,  800,  800,  800,  800,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;
