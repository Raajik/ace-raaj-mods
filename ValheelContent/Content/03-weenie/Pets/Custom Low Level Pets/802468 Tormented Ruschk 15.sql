DELETE FROM `weenie` WHERE `class_Id` = 802468;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802468, 'TormentedRuschk15', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802468,   1,         16) /* ItemType - Creature */
     , (802468,   2,         14) /* CreatureType - Shadow */
     , (802468,   3,         14) /* PaletteTemplate - Red */
     , (802468,   6,         -1) /* ItemsCapacity */
     , (802468,   7,         -1) /* ContainersCapacity */
     , (802468,  16,          1) /* ItemUseable - No */
     , (802468,  25,         15) /* Level */
     , (802468,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802468, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802468, 140,          1) /* AiOptions - CanOpenDoors */
     , (802468, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802468,   1, True ) /* Stuck */
     , (802468,  11, False) /* IgnoreCollisions */
     , (802468,  12, True ) /* ReportCollisions */
     , (802468,  13, False) /* Ethereal */
     , (802468, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802468,   1,       5) /* HeartbeatInterval */
     , (802468,   2,       0) /* HeartbeatTimestamp */
     , (802468,   3,    0.45) /* HealthRate */
     , (802468,   4,     0.5) /* StaminaRate */
     , (802468,   5,       2) /* ManaRate */
     , (802468,  12,     0.5) /* Shade */
     , (802468,  13,       1) /* ArmorModVsSlash */
     , (802468,  14,       1) /* ArmorModVsPierce */
     , (802468,  15,       1) /* ArmorModVsBludgeon */
     , (802468,  16,       1) /* ArmorModVsCold */
     , (802468,  17,       1) /* ArmorModVsFire */
     , (802468,  18,       1) /* ArmorModVsAcid */
     , (802468,  19,       1) /* ArmorModVsElectric */
     , (802468,  31,      18) /* VisualAwarenessRange */
     , (802468,  34,     1.1) /* PowerupTime */
     , (802468,  36,       2) /* ChargeSpeed */
     , (802468,  39,     1.2) /* DefaultScale */
     , (802468,  64,       1) /* ResistSlash */
     , (802468,  65,       1) /* ResistPierce */
     , (802468,  66,       1) /* ResistBludgeon */
     , (802468,  67,       1) /* ResistFire */
     , (802468,  68,       1) /* ResistCold */
     , (802468,  69,       1) /* ResistAcid */
     , (802468,  70,       1) /* ResistElectric */
     , (802468,  71,       1) /* ResistHealthBoost */
     , (802468,  72,       1) /* ResistStaminaDrain */
     , (802468,  73,       1) /* ResistStaminaBoost */
     , (802468,  74,       1) /* ResistManaDrain */
     , (802468,  75,       1) /* ResistManaBoost */
     , (802468,  80,       3) /* AiUseMagicDelay */
     , (802468, 104,      10) /* ObviousRadarRange */
     , (802468, 122,       2) /* AiAcquireHealth */
     , (802468, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802468,   1, 'Tormented Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802468,   1,   33559507) /* Setup */
     , (802468,   2,  150994951) /* MotionTable */
     , (802468,   3,  536871101) /* SoundTable */
     , (802468,   4,  805306372) /* CombatTable */
     , (802468,   6,   67115447) /* PaletteBase */
     , (802468,   8,  100677373) /* Icon */
     , (802468,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802468,   1, 135, 0, 0) /* Strength */
     , (802468,   2, 135, 0, 0) /* Endurance */
     , (802468,   3, 135, 0, 0) /* Quickness */
     , (802468,   4, 135, 0, 0) /* Coordination */
     , (802468,   5, 135, 0, 0) /* Focus */
     , (802468,   6, 135, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802468,   1, 500, 0, 0, 500) /* MaxHealth */
     , (802468,   3, 400, 0, 0, 400) /* MaxStamina */
     , (802468,   5, 400, 0, 0, 400) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802468,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802468,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802468, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802468, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802468, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802468, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802468, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802468, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802468, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802468, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802468, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802468, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802468,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802468,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802468,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802468,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802468,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802468,  5,  4, 15,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802468,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802468,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802468,  8,  4, 15,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802468,  94)
     , (802468, 414);

/* INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802468, 2, 802447,  2, 4, 0.6, False) /* Create Frost Baton (31824) for Wield */;