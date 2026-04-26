DELETE FROM `weenie` WHERE `class_Id` = 802489;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802489, 'ViolentRuschk350', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802489,   1,         16) /* ItemType - Creature */
     , (802489,   2,         14) /* CreatureType - Shadow */
     , (802489,   3,         2) /* PaletteTemplate - Red */
     , (802489,   6,         -1) /* ItemsCapacity */
     , (802489,   7,         -1) /* ContainersCapacity */
     , (802489,  16,          1) /* ItemUseable - No */
     , (802489,  25,        350) /* Level */
     , (802489,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802489, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802489, 140,          1) /* AiOptions - CanOpenDoors */
     , (802489, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802489,   1, True ) /* Stuck */
     , (802489,  11, False) /* IgnoreCollisions */
     , (802489,  12, True ) /* ReportCollisions */
     , (802489,  13, False) /* Ethereal */
     , (802489, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802489,   1,       5) /* HeartbeatInterval */
     , (802489,   2,       0) /* HeartbeatTimestamp */
     , (802489,   3,    0.45) /* HealthRate */
     , (802489,   4,     0.5) /* StaminaRate */
     , (802489,   5,       2) /* ManaRate */
     , (802489,  12,     0.5) /* Shade */
     , (802489,  13,       1) /* ArmorModVsSlash */
     , (802489,  14,       1) /* ArmorModVsPierce */
     , (802489,  15,       1) /* ArmorModVsBludgeon */
     , (802489,  16,       1) /* ArmorModVsCold */
     , (802489,  17,       1) /* ArmorModVsFire */
     , (802489,  18,       1) /* ArmorModVsAcid */
     , (802489,  19,       1) /* ArmorModVsElectric */
     , (802489,  31,      18) /* VisualAwarenessRange */
     , (802489,  34,     1.1) /* PowerupTime */
     , (802489,  36,       2) /* ChargeSpeed */
     , (802489,  39,     1.2) /* DefaultScale */
     , (802489,  64,       1) /* ResistSlash */
     , (802489,  65,       1) /* ResistPierce */
     , (802489,  66,       1) /* ResistBludgeon */
     , (802489,  67,       1) /* ResistFire */
     , (802489,  68,       1) /* ResistCold */
     , (802489,  69,       1) /* ResistAcid */
     , (802489,  70,       1) /* ResistElectric */
     , (802489,  71,       1) /* ResistHealthBoost */
     , (802489,  72,       1) /* ResistStaminaDrain */
     , (802489,  73,       1) /* ResistStaminaBoost */
     , (802489,  74,       1) /* ResistManaDrain */
     , (802489,  75,       1) /* ResistManaBoost */
     , (802489,  80,       3) /* AiUseMagicDelay */
     , (802489, 104,      10) /* ObviousRadarRange */
     , (802489, 122,       2) /* AiAcquireHealth */
     , (802489, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802489,   1, 'Violent Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802489,   1,   33559507) /* Setup */
     , (802489,   2,  150994951) /* MotionTable */
     , (802489,   3,  536871101) /* SoundTable */
     , (802489,   4,  805306372) /* CombatTable */
     , (802489,   6,   67115447) /* PaletteBase */
     , (802489,   8,  100677373) /* Icon */
     , (802489,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802489,   1, 600, 0, 0) /* Strength */
     , (802489,   2, 600, 0, 0) /* Endurance */
     , (802489,   3, 600, 0, 0) /* Quickness */
     , (802489,   4, 600, 0, 0) /* Coordination */
     , (802489,   5, 600, 0, 0) /* Focus */
     , (802489,   6, 600, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802489,   1, 3500, 0, 0, 3500) /* MaxHealth */
     , (802489,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802489,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802489,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802489,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802489, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802489, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802489, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802489, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802489, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802489, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802489, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802489, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802489, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802489, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802489,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802489,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802489,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802489,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802489,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802489,  5,  4, 350,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802489,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802489,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802489,  8,  4, 350,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802489,  94)
     , (802489, 414);
