DELETE FROM `weenie` WHERE `class_Id` = 37418;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (37418, 'ace37418-blightedgrimymoarsman', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (37418,   1,         16) /* ItemType - Creature */
     , (37418,   2,         98) /* CreatureType - BlightedMoarsman */
     , (37418,   3,         64) /* PaletteTemplate - OrangeBrown */
     , (37418,   6,         -1) /* ItemsCapacity */
     , (37418,   7,         -1) /* ContainersCapacity */
     , (37418,  16,          1) /* ItemUseable - No */
     , (37418,  25,        550) /* Level */
     , (37418,  27,          0) /* ArmorType - None */
     , (37418,  40,          2) /* CombatMode - Melee */
     , (37418,  68,       0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (37418,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (37418, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (37418, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (37418, 140,          1) /* AiOptions - CanOpenDoors */
     , (37418, 146,   49785174) /* XpOverride */
     , (37418, 332,     175000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (37418,   1, True ) /* Stuck */
     , (37418,  11, False) /* IgnoreCollisions */
     , (37418,  12, True ) /* ReportCollisions */
     , (37418,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (37418,   1,       5) /* HeartbeatInterval */
     , (37418,   2,       0) /* HeartbeatTimestamp */
     , (37418,   3,     0.4) /* HealthRate */
     , (37418,   4,       5) /* StaminaRate */
     , (37418,   5,       1) /* ManaRate */
     , (37418,  13,       1) /* ArmorModVsSlash */
     , (37418,  14,     1.8) /* ArmorModVsPierce */
     , (37418,  15,     1.8) /* ArmorModVsBludgeon */
     , (37418,  16,       1) /* ArmorModVsCold */
     , (37418,  17,     1.8) /* ArmorModVsFire */
     , (37418,  18,       1) /* ArmorModVsAcid */
     , (37418,  19,       1) /* ArmorModVsElectric */
     , (37418,  31,      30) /* VisualAwarenessRange */
     , (37418,  34,       1) /* PowerupTime */
     , (37418,  36,       1) /* ChargeSpeed */
     , (37418,  39,     1.4) /* DefaultScale */
     , (37418,  64,    0.01) /* ResistSlash */
     , (37418,  65,    0.08) /* ResistPierce */
     , (37418,  66,    0.08) /* ResistBludgeon */
     , (37418,  67,    0.08) /* ResistFire */
     , (37418,  68,    0.01) /* ResistCold */
     , (37418,  69,    0.01) /* ResistAcid */
     , (37418,  70,    0.01) /* ResistElectric */
     , (37418,  71,       1) /* ResistHealthBoost */
     , (37418,  72,       1) /* ResistStaminaDrain */
     , (37418,  73,       1) /* ResistStaminaBoost */
     , (37418,  74,       1) /* ResistManaDrain */
     , (37418,  75,       1) /* ResistManaBoost */
     , (37418,  80,       3) /* AiUseMagicDelay */
     , (37418, 104,      10) /* ObviousRadarRange */
     , (37418, 117,     0.5) /* FocusedProbability */
     , (37418, 122,       2) /* AiAcquireHealth */
     , (37418, 125,    0.03) /* ResistHealthDrain */
     , (37418, 166,    0.05) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (37418,   1, 'Blighted Grimy Moarsman') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (37418,   1,   33556882) /* Setup */
     , (37418,   2,  150995104) /* MotionTable */
     , (37418,   3,  536871018) /* SoundTable */
     , (37418,   4,  805306403) /* CombatTable */
     , (37418,   6,   67112872) /* PaletteBase */
     , (37418,   7,  268436086) /* ClothingBase */
     , (37418,   8,  100671185) /* Icon */
     , (37418,  22,  872415337) /* PhysicsEffectTable */
     , (37418,  30,         84) /* PhysicsScript - BreatheFlame */
     , (37418,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (37418,   1, 3500, 0, 0) /* Strength */
     , (37418,   2, 3500, 0, 0) /* Endurance */
     , (37418,   3, 210, 0, 0) /* Quickness */
     , (37418,   4, 170, 0, 0) /* Coordination */
     , (37418,   5, 200, 0, 0) /* Focus */
     , (37418,   6, 150, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (37418,   1,   35000, 0, 0, 35000) /* MaxHealth */
     , (37418,   3,   35000, 0, 0, 35000) /* MaxStamina */
     , (37418,   5,   35000, 0, 0, 35000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (37418,  6, 0, 3, 0, 180, 0, 0) /* MeleeDefense        Specialized */
     , (37418,  7, 0, 3, 0, 230, 0, 0) /* MissileDefense      Specialized */
     , (37418, 15, 0, 3, 0, 230, 0, 0) /* MagicDefense        Specialized */
     , (37418, 20, 0, 2, 0, 120, 0, 0) /* Deception           Trained */
     , (37418, 24, 0, 2, 0,  55, 0, 0) /* Run                 Trained */
     , (37418, 45, 0, 3, 0, 216, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (37418,  0,  4, 10,    0,  2500,  369,  324,  369,  324,  369,  324,  369,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (37418,  1,  4, 10,    0,  2500,  349,  306,  349,  306,  349,  306,  349,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (37418,  2,  4, 10,    0,  2500,  369,  324,  369,  324,  369,  324,  369,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (37418,  3,  4, 10,    0,  2500,  349,  306,  349,  306,  349,  306,  349,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (37418,  4,  4, 10,    0,  2500,  369,  324,  369,  324,  369,  324,  369,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (37418,  5, 32, 5000,  0.5,  2500,  349,  306,  349,  306,  349,  306,  349,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (37418,  6,  4, 10,    0,  2500,  369,  324,  369,  324,  369,  324,  369,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (37418,  7,  4, 10,    0,  2500,  349,  306,  349,  306,  349,  306,  349,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (37418,  8,  4, 10, 0.75,  2500,  349,  306,  349,  306,  349,  306,  349,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */
     , (37418, 22, 16, 5000, 0.75,  2500,  369,  324,  369,  324,  369,  324,  369,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (37418, 9, 34277,  0, 0, 0.02, False) /* Create Ancient Falatacot Trinket (34277) for ContainTreasure */
     , (37418, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (37418, 9, 24477,  0, 0, 0.02, False) /* Create Sturdy Steel Key (24477) for ContainTreasure */
     , (37418, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (37418, 9, 32274,  0, 0, 0.05, False) /* Create Moarsmuck (32274) for ContainTreasure */
     , (37418, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */;
