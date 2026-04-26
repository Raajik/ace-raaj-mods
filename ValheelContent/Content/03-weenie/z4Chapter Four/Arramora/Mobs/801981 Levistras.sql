DELETE FROM `weenie` WHERE `class_Id` = 801981;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801981, 'levistras', 10, '2022-12-31 11:30:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801981,   1,         16) /* ItemType - Creature */
     , (801981,   2,         31) /* CreatureType - Golem */
     , (801981,   6,         -1) /* ItemsCapacity */
     , (801981,   7,         -1) /* ContainersCapacity */
     , (801981,  16,          1) /* ItemUseable - No */
     , (801981,  25,        650) /* Level */
     , (801981,  27,         32) /* ArmorType - Metal */
     , (801981,  40,          2) /* CombatMode - Melee */
     , (801981,  68,         3) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801981,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801981, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (801981, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801981, 146,     700000) /* XpOverride */
     , (801981, 332,      75000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801981,   1, True ) /* Stuck */
     , (801981,  11, False) /* IgnoreCollisions */
     , (801981,  12, True ) /* ReportCollisions */
     , (801981,  13, False) /* Ethereal */
     , (801981,  14, True ) /* GravityStatus */
     , (801981,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801981,   1,       5) /* HeartbeatInterval */
     , (801981,   2,       0) /* HeartbeatTimestamp */
     , (801981,   3,     0.4) /* HealthRate */
     , (801981,   4,       5) /* StaminaRate */
     , (801981,   5,       1) /* ManaRate */
     , (801981,  13,       1) /* ArmorModVsSlash */
     , (801981,  14,       1) /* ArmorModVsPierce */
     , (801981,  15,       1) /* ArmorModVsBludgeon */
     , (801981,  16,       1) /* ArmorModVsCold */
     , (801981,  17,     1.8) /* ArmorModVsFire */
     , (801981,  18,       1) /* ArmorModVsAcid */
     , (801981,  19,       1) /* ArmorModVsElectric */
     , (801981,  31,      30) /* VisualAwarenessRange */
     , (801981,  34,       1) /* PowerupTime */
     , (801981,  36,       1) /* ChargeSpeed */
     , (801981,  39,       1) /* DefaultScale */
     , (801981,  64,     0.01) /* ResistSlash */
     , (801981,  65,     0.01) /* ResistPierce */
     , (801981,  66,     0.01) /* ResistBludgeon */
     , (801981,  67,     0.10) /* ResistFire */
     , (801981,  68,     0.01) /* ResistCold */
     , (801981,  69,     0.01) /* ResistAcid */
     , (801981,  70,     0.01) /* ResistElectric */
     , (801981,  71,       1) /* ResistHealthBoost */
     , (801981,  72,       1) /* ResistStaminaDrain */
     , (801981,  73,       1) /* ResistStaminaBoost */
     , (801981,  74,       1) /* ResistManaDrain */
     , (801981,  75,       1) /* ResistManaBoost */
     , (801981,  80,       3) /* AiUseMagicDelay */
     , (801981, 104,      10) /* ObviousRadarRange */
     , (801981, 117,     0.5) /* FocusedProbability */
     , (801981, 122,       2) /* AiAcquireHealth */
     , (801981, 125,       1) /* ResistHealthDrain */
     , (801981, 166,    0.06) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801981,   1, 'Levistras') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801981,   1, 0x02000041) /* Setup */
     , (801981,   2, 0x09000028) /* MotionTable */
     , (801981,   3, 0x20000012) /* SoundTable */
     , (801981,   4, 0x3000000D) /* CombatTable */
     , (801981,   6, 0x040009B2) /* PaletteBase */
     , (801981,   7, 0x100000C1) /* ClothingBase */
     , (801981,   8, 0x06001227) /* Icon */
     , (801981,  22, 0x34000029) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801981,   1, 12490, 0, 0) /* Strength */
     , (801981,   2, 2000, 0, 0) /* Endurance */
     , (801981,   3, 430, 0, 0) /* Quickness */
     , (801981,   4, 350, 0, 0) /* Coordination */
     , (801981,   5, 450, 0, 0) /* Focus */
     , (801981,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801981,   1, 150000, 0, 0, 150000) /* MaxHealth */
     , (801981,   3, 19000, 0, 0, 20000) /* MaxStamina */
     , (801981,   5,  9500, 0, 0, 10000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801981,  6, 0, 2, 0, 300, 0, 0) /* MeleeDefense        Trained */
     , (801981,  7, 0, 2, 0, 300, 0, 0) /* MissileDefense      Trained */
     , (801981, 15, 0, 2, 0, 340, 0, 0) /* MagicDefense        Trained */
     , (801981, 41, 0, 3, 0, 600, 0, 0) /* TwoHandedCombat     Specialized */
     , (801981, 44, 0, 3, 0, 300, 0, 0) /* HeavyWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801981,  0,  4,  0,    0,  450,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801981,  1,  4,  0,    0,  450,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801981,  2,  4,  0,    0,  450,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801981,  3,  4,  0,    0,  450,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801981,  4,  4,  0,    0,  450,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801981,  5,  4,  1500, 0.75,  450,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801981,  6,  4,  0,    0,  450,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801981,  7,  4,  0,    0,  450,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801981,  8,  4,  1500, 0.75,  450,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;