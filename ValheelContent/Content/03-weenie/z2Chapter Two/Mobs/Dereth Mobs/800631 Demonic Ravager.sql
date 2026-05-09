DELETE FROM `weenie` WHERE `class_Id` = 800631;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800631, 'Demonic Ravager', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800631,   1,         16) /* ItemType - Creature */
     , (800631,   2,         28) /* CreatureType - Monouga */
     , (800631,   3,          2) /* PaletteTemplate - Blue */
     , (800631,   6,         -1) /* ItemsCapacity */
     , (800631,   7,         -1) /* ContainersCapacity */
     , (800631,  16,          1) /* ItemUseable - No */
     , (800631,  25,        100) /* Level */
     , (800631,  27,          0) /* ArmorType - None */
     , (800631,  40,          2) /* CombatMode - Melee */
     , (800631,  68,          0x80) /* TargetingTactic - Random, TopDamager */
     , (800631,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (800631, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800631, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800631, 140,          1) /* AiOptions - CanOpenDoors */
     , (800631, 146,    26000000) /* XpOverride */
     , (800631, 332,      22000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800631,   1, True ) /* Stuck */
     , (800631,  11, False) /* IgnoreCollisions */
     , (800631,  12, True ) /* ReportCollisions */
     , (800631,  13, False) /* Ethereal */
     , (800631,  14, True ) /* GravityStatus */
     , (800631,  19, True ) /* Attackable */
     , (800631,  42, True ) /* AllowEdgeSlide */
     , (800631,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800631,   1,       5) /* HeartbeatInterval */
     , (800631,   2,       0) /* HeartbeatTimestamp */
     , (800631,   3,     0.5) /* HealthRate */
     , (800631,   4,       5) /* StaminaRate */
     , (800631,   5,       2) /* ManaRate */
     , (800631,  12,       0) /* Shade */
     , (800631,  13,       1) /* ArmorModVsSlash */
     , (800631,  14,       1) /* ArmorModVsPierce */
     , (800631,  15,       1) /* ArmorModVsBludgeon */
     , (800631,  16,     0.7) /* ArmorModVsCold */
     , (800631,  17,       1) /* ArmorModVsFire */
     , (800631,  18,       1) /* ArmorModVsAcid */
     , (800631,  19,       1) /* ArmorModVsElectric */
     , (800631,  31,      24) /* VisualAwarenessRange */
     , (800631,  34,     0.9) /* PowerupTime */
     , (800631,  36,       1) /* ChargeSpeed */
     , (800631,  39,     2.1) /* DefaultScale */
     , (800631,  64,     0.1) /* ResistSlash */
     , (800631,  65,     0.1) /* ResistPierce */
     , (800631,  66,     0.1) /* ResistBludgeon */
     , (800631,  67,     0.1) /* ResistFire */
     , (800631,  68,     0.5) /* ResistCold */
     , (800631,  69,     0.1) /* ResistAcid */
     , (800631,  70,     0.1) /* ResistElectric */
     , (800631,  71,       1) /* ResistHealthBoost */
     , (800631,  72,       1) /* ResistStaminaDrain */
     , (800631,  73,       1) /* ResistStaminaBoost */
     , (800631,  74,       1) /* ResistManaDrain */
     , (800631,  75,       1) /* ResistManaBoost */
     , (800631, 104,      10) /* ObviousRadarRange */
     , (800631, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800631,   1, 'Demonic Ravager') /* Name */
     , (800631,  45, 'ashcastleKT2') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800631,   1,   33555199) /* Setup */
     , (800631,   2,  150994983) /* MotionTable */
     , (800631,   3,  536870962) /* SoundTable */
     , (800631,   4,  805306390) /* CombatTable */
     , (800631,   6,   67111302) /* PaletteBase */
     , (800631,   7,  268436619) /* ClothingBase */
     , (800631,   8,  100669117) /* Icon */
     , (800631,  22,  872415257) /* PhysicsEffectTable */
     , (800631,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800631,   1, 1400, 0, 0) /* Strength */
     , (800631,   2, 400, 0, 0) /* Endurance */
     , (800631,   3, 180, 0, 0) /* Quickness */
     , (800631,   4, 180, 0, 0) /* Coordination */
     , (800631,   5, 150, 0, 0) /* Focus */
     , (800631,   6, 140, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800631,   1,  10800, 0, 0, 10800) /* MaxHealth */
     , (800631,   3, 76190, 0, 0, 76590) /* MaxStamina */
     , (800631,   5,     0, 0, 0, 140) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800631,  6, 0, 3, 0, 300, 0, 0) /* MeleeDefense        Specialized */
     , (800631,  7, 0, 3, 0, 381, 0, 0) /* MissileDefense      Specialized */
     , (800631, 15, 0, 3, 0, 235, 0, 0) /* MagicDefense        Specialized */
     , (800631, 20, 0, 2, 0,  80, 0, 0) /* Deception           Trained */
     , (800631, 22, 0, 2, 0,  40, 0, 0) /* Jump                Trained */
     , (800631, 24, 0, 2, 0,  60, 0, 0) /* Run                 Trained */
     , (800631, 44, 0, 3, 0, 400, 0, 0) /* HeavyWeapons        Specialized */
     , (800631, 45, 0, 3, 0, 400, 0, 0) /* LightWeapons        Specialized */
     , (800631, 47, 0, 3, 0, 400, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800631,  0,  4,  0,    0,  200, 2200, 2200, 2200, 2200, 2200, 2200, 2200,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800631,  1,  4,  0,    0,  200, 2200, 2200, 2200, 2200, 2200, 2200, 2200,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800631,  2,  4,  0,    0,  200, 2200, 2200, 2200, 2200, 2200, 2200, 2200,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800631,  3,  4,  0,    0,  200, 2200, 2200, 2200, 2200, 2200, 2200, 2200,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800631,  4,  4,  0,    0,  200, 2200, 2200, 2200, 2200, 2200, 2200, 2200,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800631,  5,  4, 1000, 0.75,  200, 2200, 2200, 2200, 2200, 2200, 2200, 2200,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800631,  6,  4,  0,    0,  200, 2200, 2200, 2200, 2200, 2200, 2200, 2200,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800631,  7,  4,  0,    0,  200, 2200, 2200, 2200, 2200, 2200, 2200, 2200,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800631,  8,  4, 1000, 0.75,  200, 2200, 2200, 2200, 2200, 2200, 2200, 2200,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800631,  94)
     , (800631, 414);
