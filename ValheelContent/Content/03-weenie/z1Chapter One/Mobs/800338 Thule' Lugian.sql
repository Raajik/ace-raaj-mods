DELETE FROM `weenie` WHERE `class_Id` = 800338;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800338, 'Thule'' Lugian', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800338,   1,         16) /* ItemType - Creature */
     , (800338,   2,          5) /* CreatureType - Lugian */
     , (800338,   3,          2) /* PaletteTemplate - Blue */
     , (800338,   6,         -1) /* ItemsCapacity */
     , (800338,   7,         -1) /* ContainersCapacity */
     , (800338,   8,       8000) /* Mass */
     , (800338,  16,          1) /* ItemUseable - No */
     , (800338,  25,        285) /* Level */
     , (800338,  27,          0) /* ArmorType - None */
     , (800338,  40,          2) /* CombatMode - Melee */
     , (800338,  67,          0) /* Tolerance - None */
     , (800338,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800338,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800338, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800338, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800338, 140,          1) /* AiOptions - CanOpenDoors */
     , (800338, 146,    7867485) /* XpOverride */
     , (800338, 332,      10000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800338,   1, True ) /* Stuck */
     , (800338,  11, False) /* IgnoreCollisions */
     , (800338,  12, True ) /* ReportCollisions */
     , (800338,  13, False) /* Ethereal */
     , (800338,  14, True ) /* GravityStatus */
     , (800338,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800338,   1,       5) /* HeartbeatInterval */
     , (800338,   2,       0) /* HeartbeatTimestamp */
     , (800338,   3,     0.9) /* HealthRate */
     , (800338,   4,       4) /* StaminaRate */
     , (800338,   5,       2) /* ManaRate */
     , (800338,  12,     0.5) /* Shade */
     , (800338,  13,       1) /* ArmorModVsSlash */
     , (800338,  14,       1) /* ArmorModVsPierce */
     , (800338,  15,       1) /* ArmorModVsBludgeon */
     , (800338,  16,       1) /* ArmorModVsCold */
     , (800338,  17,     0.8) /* ArmorModVsFire */
     , (800338,  18,       1) /* ArmorModVsAcid */
     , (800338,  19,     0.8) /* ArmorModVsElectric */
     , (800338,  31,      23) /* VisualAwarenessRange */
     , (800338,  34,       3) /* PowerupTime */
     , (800338,  36,       1) /* ChargeSpeed */
     , (800338,  64,    0.66) /* ResistSlash */
     , (800338,  65,    0.66) /* ResistPierce */
     , (800338,  66,    0.66) /* ResistBludgeon */
     , (800338,  67,    0.25) /* ResistFire */
     , (800338,  68,    0.42) /* ResistCold */
     , (800338,  69,     0.9) /* ResistAcid */
     , (800338,  70,       1) /* ResistElectric */
     , (800338,  71,       1) /* ResistHealthBoost */
     , (800338,  72,       1) /* ResistStaminaDrain */
     , (800338,  73,       1) /* ResistStaminaBoost */
     , (800338,  74,       1) /* ResistManaDrain */
     , (800338,  75,       1) /* ResistManaBoost */
     , (800338, 104,      10) /* ObviousRadarRange */
     , (800338, 117,     0.5) /* FocusedProbability */
     , (800338, 125,       0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800338,   1, 'Thule'' Lugian') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800338,   1,   33557003) /* Setup */
     , (800338,   2,  150994950) /* MotionTable */
     , (800338,   3,  536870922) /* SoundTable */
     , (800338,   4,  805306371) /* CombatTable */
     , (800338,   6,   67113158) /* PaletteBase */
     , (800338,   7,  268436157) /* ClothingBase */
     , (800338,   8,  100667447) /* Icon */
     , (800338,  22,  872415262) /* PhysicsEffectTable */
     , (800338,  32,        275) /* WieldedTreasureType */
     , (800338,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800338,   1, 590, 0, 0) /* Strength */
     , (800338,   2, 360, 0, 0) /* Endurance */
     , (800338,   3, 260, 0, 0) /* Quickness */
     , (800338,   4, 500, 0, 0) /* Coordination */
     , (800338,   5, 135, 0, 0) /* Focus */
     , (800338,   6, 170, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800338,   1,  9260, 0, 0, 10390) /* MaxHealth */
     , (800338,   3,  7150, 0, 0, 7410) /* MaxStamina */
     , (800338,   5,     0, 0, 0, 170) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800338,  6, 0, 3, 0, 240, 0, 0) /* MeleeDefense        Specialized */
     , (800338,  7, 0, 3, 0, 275, 0, 0) /* MissileDefense      Specialized */
     , (800338, 15, 0, 3, 0, 235, 0, 0) /* MagicDefense        Specialized */
     , (800338, 20, 0, 2, 0,  80, 0, 0) /* Deception           Trained */
     , (800338, 22, 0, 2, 0,  80, 0, 0) /* Jump                Trained */
     , (800338, 24, 0, 2, 0,  45, 0, 0) /* Run                 Trained */
     , (800338, 45, 0, 3, 0, 510, 0, 0) /* LightWeapons        Specialized */
     , (800338, 47, 0, 3, 0, 590, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800338,  0,  4,  600,  0.3,  400,  400,  400,  400,  300,  300,  400,  400,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800338,  1,  4, 600,  0.3,  400,  400,  400,  400,  300,  300,  400,  400,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800338,  2,  4,  600,  0.3,  400,  400,  400,  400,  300,  300,  400,  400,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800338,  3,  4,  600,  0.3,  400,  400,  400,  400,  300,  300,  400,  400,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800338,  4,  4,  600,  0.3,  400,  400,  400,  400,  300,  300,  400,  400,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800338,  5,  4, 600, 0.75,  400,  400,  400,  400,  300,  300,  400,  400,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800338,  6,  4,  600,  0.3,  400,  400,  400,  400,  300,  300,  400,  400,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800338,  7,  4, 600,  0.3,  400,  400,  400,  400,  300,  300,  400,  400,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800338,  8,  4, 600, 0.75,  400,  400,  400,  400,  300,  300,  400,  400,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800338,  94)
     , (800338, 414);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800338, 9,  6876,  0, 0, 0.02, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800338, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (800338, 9,  7043,  0, 0, 0.03, False) /* Create Large Lugian Sinew (7043) for ContainTreasure */
     , (800338, 9,     0,  0, 0, 0.97, False) /* Create nothing for ContainTreasure */;
