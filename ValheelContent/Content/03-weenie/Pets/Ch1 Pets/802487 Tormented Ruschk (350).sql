DELETE FROM `weenie` WHERE `class_Id` = 802487;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802487, 'TormentedRuschk350', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802487,   1,         16) /* ItemType - Creature */
     , (802487,   2,         14) /* CreatureType - Shadow */
     , (802487,   3,         14) /* PaletteTemplate - Red */
     , (802487,   6,         -1) /* ItemsCapacity */
     , (802487,   7,         -1) /* ContainersCapacity */
     , (802487,  16,          1) /* ItemUseable - No */
     , (802487,  25,        350) /* Level */
     , (802487,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802487, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802487, 140,          1) /* AiOptions - CanOpenDoors */
     , (802487, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802487,   1, True ) /* Stuck */
     , (802487,  11, False) /* IgnoreCollisions */
     , (802487,  12, True ) /* ReportCollisions */
     , (802487,  13, False) /* Ethereal */
     , (802487, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802487,   1,       5) /* HeartbeatInterval */
     , (802487,   2,       0) /* HeartbeatTimestamp */
     , (802487,   3,    0.45) /* HealthRate */
     , (802487,   4,     0.5) /* StaminaRate */
     , (802487,   5,       2) /* ManaRate */
     , (802487,  12,     0.5) /* Shade */
     , (802487,  13,       1) /* ArmorModVsSlash */
     , (802487,  14,       1) /* ArmorModVsPierce */
     , (802487,  15,       1) /* ArmorModVsBludgeon */
     , (802487,  16,       1) /* ArmorModVsCold */
     , (802487,  17,       1) /* ArmorModVsFire */
     , (802487,  18,       1) /* ArmorModVsAcid */
     , (802487,  19,       1) /* ArmorModVsElectric */
     , (802487,  31,      18) /* VisualAwarenessRange */
     , (802487,  34,     1.1) /* PowerupTime */
     , (802487,  36,       2) /* ChargeSpeed */
     , (802487,  39,     1.2) /* DefaultScale */
     , (802487,  64,       1) /* ResistSlash */
     , (802487,  65,       1) /* ResistPierce */
     , (802487,  66,       1) /* ResistBludgeon */
     , (802487,  67,       1) /* ResistFire */
     , (802487,  68,       1) /* ResistCold */
     , (802487,  69,       1) /* ResistAcid */
     , (802487,  70,       1) /* ResistElectric */
     , (802487,  71,       1) /* ResistHealthBoost */
     , (802487,  72,       1) /* ResistStaminaDrain */
     , (802487,  73,       1) /* ResistStaminaBoost */
     , (802487,  74,       1) /* ResistManaDrain */
     , (802487,  75,       1) /* ResistManaBoost */
     , (802487,  80,       3) /* AiUseMagicDelay */
     , (802487, 104,      10) /* ObviousRadarRange */
     , (802487, 122,       2) /* AiAcquireHealth */
     , (802487, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802487,   1, 'Tormented Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802487,   1,   33559507) /* Setup */
     , (802487,   2,  150994951) /* MotionTable */
     , (802487,   3,  536871101) /* SoundTable */
     , (802487,   4,  805306372) /* CombatTable */
     , (802487,   6,   67115447) /* PaletteBase */
     , (802487,   8,  100677373) /* Icon */
     , (802487,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802487,   1, 600, 0, 0) /* Strength */
     , (802487,   2, 600, 0, 0) /* Endurance */
     , (802487,   3, 600, 0, 0) /* Quickness */
     , (802487,   4, 600, 0, 0) /* Coordination */
     , (802487,   5, 600, 0, 0) /* Focus */
     , (802487,   6, 600, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802487,   1, 3500, 0, 0, 3500) /* MaxHealth */
     , (802487,   3, 3500, 0, 0, 3500) /* MaxStamina */
     , (802487,   5, 3500, 0, 0, 3500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802487,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802487,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802487, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802487, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802487, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802487, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802487, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802487, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802487, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802487, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802487, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802487, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802487,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802487,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802487,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802487,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802487,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802487,  5,  4, 350,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802487,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802487,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802487,  8,  4, 350,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802487,  94)
     , (802487, 414);
