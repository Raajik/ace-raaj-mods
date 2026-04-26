DELETE FROM `weenie` WHERE `class_Id` = 802543;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802543, 'ViolentRuschk600', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802543,   1,         16) /* ItemType - Creature */
     , (802543,   2,         14) /* CreatureType - Shadow */
     , (802543,   3,         2) /* PaletteTemplate - Red */
     , (802543,   6,         -1) /* ItemsCapacity */
     , (802543,   7,         -1) /* ContainersCapacity */
     , (802543,  16,          1) /* ItemUseable - No */
     , (802543,  25,        600) /* Level */
     , (802543,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802543, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802543, 140,          1) /* AiOptions - CanOpenDoors */
     , (802543, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802543,   1, True ) /* Stuck */
     , (802543,  11, False) /* IgnoreCollisions */
     , (802543,  12, True ) /* ReportCollisions */
     , (802543,  13, False) /* Ethereal */
     , (802543, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802543,   1,       5) /* HeartbeatInterval */
     , (802543,   2,       0) /* HeartbeatTimestamp */
     , (802543,   3,    0.45) /* HealthRate */
     , (802543,   4,     0.5) /* StaminaRate */
     , (802543,   5,       2) /* ManaRate */
     , (802543,  12,     0.5) /* Shade */
     , (802543,  13,       1) /* ArmorModVsSlash */
     , (802543,  14,       1) /* ArmorModVsPierce */
     , (802543,  15,       1) /* ArmorModVsBludgeon */
     , (802543,  16,       1) /* ArmorModVsCold */
     , (802543,  17,       1) /* ArmorModVsFire */
     , (802543,  18,       1) /* ArmorModVsAcid */
     , (802543,  19,       1) /* ArmorModVsElectric */
     , (802543,  31,      18) /* VisualAwarenessRange */
     , (802543,  34,     1.1) /* PowerupTime */
     , (802543,  36,       2) /* ChargeSpeed */
     , (802543,  39,     1.2) /* DefaultScale */
     , (802543,  64,       1) /* ResistSlash */
     , (802543,  65,       1) /* ResistPierce */
     , (802543,  66,       1) /* ResistBludgeon */
     , (802543,  67,       1) /* ResistFire */
     , (802543,  68,       1) /* ResistCold */
     , (802543,  69,       1) /* ResistAcid */
     , (802543,  70,       1) /* ResistElectric */
     , (802543,  71,       1) /* ResistHealthBoost */
     , (802543,  72,       1) /* ResistStaminaDrain */
     , (802543,  73,       1) /* ResistStaminaBoost */
     , (802543,  74,       1) /* ResistManaDrain */
     , (802543,  75,       1) /* ResistManaBoost */
     , (802543,  80,       3) /* AiUseMagicDelay */
     , (802543, 104,      10) /* ObviousRadarRange */
     , (802543, 122,       2) /* AiAcquireHealth */
     , (802543, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802543,   1, 'Violent Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802543,   1,   33559507) /* Setup */
     , (802543,   2,  150994951) /* MotionTable */
     , (802543,   3,  536871101) /* SoundTable */
     , (802543,   4,  805306372) /* CombatTable */
     , (802543,   6,   67115447) /* PaletteBase */
     , (802543,   8,  100677373) /* Icon */
     , (802543,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802543,   1, 920, 0, 0) /* Strength */
     , (802543,   2, 920, 0, 0) /* Endurance */
     , (802543,   3, 920, 0, 0) /* Quickness */
     , (802543,   4, 920, 0, 0) /* Coordination */
     , (802543,   5, 920, 0, 0) /* Focus */
     , (802543,   6, 920, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802543,   1, 10000, 0, 0, 10000) /* MaxHealth */
     , (802543,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802543,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802543,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802543,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802543, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802543, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802543, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802543, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802543, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802543, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802543, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802543, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802543, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802543, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802543,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802543,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802543,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802543,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802543,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802543,  5,  4, 600,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802543,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802543,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802543,  8,  4, 600,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802543,  94)
     , (802543, 414);
