DELETE FROM `weenie` WHERE `class_Id` = 800035;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800035, 'rikidummy', 10, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800035,   1,         16) /* ItemType - Creature */
     , (800035,   2,          3) /* CreatureType - Drudge */
     , (800035,   3,         46) /* PaletteTemplate - Tan */
     , (800035,   6,         -1) /* ItemsCapacity */
     , (800035,   7,         -1) /* ContainersCapacity */
     , (800035,  16,          1) /* ItemUseable - No */
     , (800035,  25,          1) /* Level */
     , (800035,  27,          0) /* ArmorType - None */
     , (800035,  40,          2) /* CombatMode - Melee */
     , (800035,  67,          1) /* Tolerance - NoAttack */
     , (800035,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (800035,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800035, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800035, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800035, 146,          0) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800035,   1, True ) /* Stuck */
     , (800035,  11, False) /* IgnoreCollisions */
     , (800035,  12, True ) /* ReportCollisions */
     , (800035,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800035,   1,       5) /* HeartbeatInterval */
     , (800035,   2,       0) /* HeartbeatTimestamp */
     , (800035,   3,   0.067) /* HealthRate */
     , (800035,   4,       5) /* StaminaRate */
     , (800035,   5,       1) /* ManaRate */
     , (800035,  12,       1) /* Shade */
     , (800035,  13,     0.9) /* ArmorModVsSlash */
     , (800035,  14,       1) /* ArmorModVsPierce */
     , (800035,  15,     1.1) /* ArmorModVsBludgeon */
     , (800035,  16,     0.6) /* ArmorModVsCold */
     , (800035,  17,     0.6) /* ArmorModVsFire */
     , (800035,  18,       1) /* ArmorModVsAcid */
     , (800035,  19,     0.6) /* ArmorModVsElectric */
     , (800035,  31,     0.3) /* VisualAwarenessRange */
     , (800035,  34,       1) /* PowerupTime */
     , (800035,  36,       1) /* ChargeSpeed */
     , (800035,  39,    0.95) /* DefaultScale */
     , (800035,  64,       1) /* ResistSlash */
     , (800035,  65,       1) /* ResistPierce */
     , (800035,  66,       1) /* ResistBludgeon */
     , (800035,  67,       1) /* ResistFire */
     , (800035,  68,       1) /* ResistCold */
     , (800035,  69,       1) /* ResistAcid */
     , (800035,  70,       1) /* ResistElectric */
     , (800035,  71,       1) /* ResistHealthBoost */
     , (800035,  72,       1) /* ResistStaminaDrain */
     , (800035,  73,       1) /* ResistStaminaBoost */
     , (800035,  74,       1) /* ResistManaDrain */
     , (800035,  75,       1) /* ResistManaBoost */
     , (800035, 104,      10) /* ObviousRadarRange */
     , (800035, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800035,   1, 'Riki-Tiki-Tavi Dummy') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800035,   1,   33554484) /* Setup */
     , (800035,   2,  150995082) /* MotionTable */
     , (800035,   3,  536870993) /* SoundTable */
     , (800035,   4,  805306372) /* CombatTable */
     , (800035,   6,   67109305) /* PaletteBase */
     , (800035,   7,  268435834) /* ClothingBase */
     , (800035,   8,  100667445) /* Icon */
     , (800035,  22,  872415339) /* PhysicsEffectTable */
     , (800035,  35,         73) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800035,   1,   1, 0, 0) /* Strength */
     , (800035,   2,   1, 0, 0) /* Endurance */
     , (800035,   3,   1, 0, 0) /* Quickness */
     , (800035,   4,   1, 0, 0) /* Coordination */
     , (800035,   5,   1, 0, 0) /* Focus */
     , (800035,   6,   1, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800035,   1,    15, 0, 0, 16) /* MaxHealth */
     , (800035,   3,     0, 0, 0, 1) /* MaxStamina */
     , (800035,   5,     0, 0, 0, 1) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800035,  0,  4,  0,    0,    5,    5,    5,    6,    3,    3,    5,    3,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800035,  1,  4,  0,    0,    7,    6,    7,    8,    4,    4,    7,    4,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800035,  2,  4,  0,    0,    7,    6,    7,    8,    4,    4,    7,    4,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800035,  3,  4,  0,    0,    5,    5,    5,    6,    3,    3,    5,    3,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800035,  4,  4,  0,    0,    5,    5,    5,    6,    3,    3,    5,    3,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800035,  5,  4,  1, 0.75,    5,    5,    5,    6,    3,    3,    5,    3,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800035,  6,  4,  0,    0,    5,    5,    5,    6,    3,    3,    5,    3,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800035,  7,  4,  0,    0,    5,    5,    5,    6,    3,    3,    5,    3,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800035,  8,  4,  1, 0.75,    5,    5,    5,    6,    3,    3,    5,    3,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;
