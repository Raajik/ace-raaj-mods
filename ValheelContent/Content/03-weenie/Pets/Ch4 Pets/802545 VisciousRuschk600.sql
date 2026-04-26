DELETE FROM `weenie` WHERE `class_Id` = 802545;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802545, 'VisciousRuschk600', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802545,   1,         16) /* ItemType - Creature */
     , (802545,   2,         14) /* CreatureType - Shadow */
     , (802545,   3,         1) /* PaletteTemplate - Red */
     , (802545,   6,         -1) /* ItemsCapacity */
     , (802545,   7,         -1) /* ContainersCapacity */
     , (802545,  16,          1) /* ItemUseable - No */
     , (802545,  25,        600) /* Level */
     , (802545,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802545, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802545, 140,          1) /* AiOptions - CanOpenDoors */
     , (802545, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802545,   1, True ) /* Stuck */
     , (802545,  11, False) /* IgnoreCollisions */
     , (802545,  12, True ) /* ReportCollisions */
     , (802545,  13, False) /* Ethereal */
     , (802545, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802545,   1,       5) /* HeartbeatInterval */
     , (802545,   2,       0) /* HeartbeatTimestamp */
     , (802545,   3,    0.45) /* HealthRate */
     , (802545,   4,     0.5) /* StaminaRate */
     , (802545,   5,       2) /* ManaRate */
     , (802545,  12,     0.5) /* Shade */
     , (802545,  13,       1) /* ArmorModVsSlash */
     , (802545,  14,       1) /* ArmorModVsPierce */
     , (802545,  15,       1) /* ArmorModVsBludgeon */
     , (802545,  16,       1) /* ArmorModVsCold */
     , (802545,  17,       1) /* ArmorModVsFire */
     , (802545,  18,       1) /* ArmorModVsAcid */
     , (802545,  19,       1) /* ArmorModVsElectric */
     , (802545,  31,      18) /* VisualAwarenessRange */
     , (802545,  34,     1.1) /* PowerupTime */
     , (802545,  36,       2) /* ChargeSpeed */
     , (802545,  39,     1.2) /* DefaultScale */
     , (802545,  64,       1) /* ResistSlash */
     , (802545,  65,       1) /* ResistPierce */
     , (802545,  66,       1) /* ResistBludgeon */
     , (802545,  67,       1) /* ResistFire */
     , (802545,  68,       1) /* ResistCold */
     , (802545,  69,       1) /* ResistAcid */
     , (802545,  70,       1) /* ResistElectric */
     , (802545,  71,       1) /* ResistHealthBoost */
     , (802545,  72,       1) /* ResistStaminaDrain */
     , (802545,  73,       1) /* ResistStaminaBoost */
     , (802545,  74,       1) /* ResistManaDrain */
     , (802545,  75,       1) /* ResistManaBoost */
     , (802545,  80,       3) /* AiUseMagicDelay */
     , (802545, 104,      10) /* ObviousRadarRange */
     , (802545, 122,       2) /* AiAcquireHealth */
     , (802545, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802545,   1, 'Viscious Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802545,   1,   33559507) /* Setup */
     , (802545,   2,  150994951) /* MotionTable */
     , (802545,   3,  536871101) /* SoundTable */
     , (802545,   4,  805306372) /* CombatTable */
     , (802545,   6,   67115447) /* PaletteBase */
     , (802545,   8,  100677373) /* Icon */
     , (802545,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802545,   1, 920, 0, 0) /* Strength */
     , (802545,   2, 920, 0, 0) /* Endurance */
     , (802545,   3, 920, 0, 0) /* Quickness */
     , (802545,   4, 920, 0, 0) /* Coordination */
     , (802545,   5, 920, 0, 0) /* Focus */
     , (802545,   6, 920, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802545,   1, 10000, 0, 0, 10000) /* MaxHealth */
     , (802545,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802545,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802545,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802545,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802545, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802545, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802545, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802545, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802545, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802545, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802545, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802545, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802545, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802545, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802545,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802545,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802545,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802545,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802545,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802545,  5,  4, 600,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802545,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802545,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802545,  8,  4, 600,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802545,  94)
     , (802545, 414);
