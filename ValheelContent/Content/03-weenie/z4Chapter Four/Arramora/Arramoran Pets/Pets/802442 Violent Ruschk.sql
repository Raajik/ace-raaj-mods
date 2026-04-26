DELETE FROM `weenie` WHERE `class_Id` = 802442;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802442, 'Violent Ruschk', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802442,   1,         16) /* ItemType - Creature */
     , (802442,   2,         14) /* CreatureType - Shadow */
     , (802442,   3,          2) /* PaletteTemplate - Red */
     , (802442,   6,         -1) /* ItemsCapacity */
     , (802442,   7,         -1) /* ContainersCapacity */
     , (802442,  16,          1) /* ItemUseable - No */
     , (802442,  25,        450) /* Level */
     , (802442,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802442, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802442, 140,          1) /* AiOptions - CanOpenDoors */
     , (802442, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802442,   1, True ) /* Stuck */
     , (802442,  11, False) /* IgnoreCollisions */
     , (802442,  12, True ) /* ReportCollisions */
     , (802442,  13, False) /* Ethereal */
     , (802442, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802442,   1,       5) /* HeartbeatInterval */
     , (802442,   2,       0) /* HeartbeatTimestamp */
     , (802442,   3,    0.45) /* HealthRate */
     , (802442,   4,     0.5) /* StaminaRate */
     , (802442,   5,       2) /* ManaRate */
     , (802442,  12,     0.5) /* Shade */
     , (802442,  13,       1) /* ArmorModVsSlash */
     , (802442,  14,       1) /* ArmorModVsPierce */
     , (802442,  15,       1) /* ArmorModVsBludgeon */
     , (802442,  16,       1) /* ArmorModVsCold */
     , (802442,  17,       1) /* ArmorModVsFire */
     , (802442,  18,       1) /* ArmorModVsAcid */
     , (802442,  19,       1) /* ArmorModVsElectric */
     , (802442,  31,      18) /* VisualAwarenessRange */
     , (802442,  34,     1.1) /* PowerupTime */
     , (802442,  36,       2) /* ChargeSpeed */
     , (802442,  39,     1.2) /* DefaultScale */
     , (802442,  64,       1) /* ResistSlash */
     , (802442,  65,       1) /* ResistPierce */
     , (802442,  66,       1) /* ResistBludgeon */
     , (802442,  67,       1) /* ResistFire */
     , (802442,  68,       1) /* ResistCold */
     , (802442,  69,       1) /* ResistAcid */
     , (802442,  70,       1) /* ResistElectric */
     , (802442,  71,       1) /* ResistHealthBoost */
     , (802442,  72,       1) /* ResistStaminaDrain */
     , (802442,  73,       1) /* ResistStaminaBoost */
     , (802442,  74,       1) /* ResistManaDrain */
     , (802442,  75,       1) /* ResistManaBoost */
     , (802442,  80,       3) /* AiUseMagicDelay */
     , (802442, 104,      10) /* ObviousRadarRange */
     , (802442, 122,       2) /* AiAcquireHealth */
     , (802442, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802442,   1, 'Violent Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802442,   1,   33559507) /* Setup */
     , (802442,   2,  150994951) /* MotionTable */
     , (802442,   3,  536871101) /* SoundTable */
     , (802442,   4,  805306372) /* CombatTable */
     , (802442,   6,   67115447) /* PaletteBase */
     , (802442,   8,  100677373) /* Icon */
     , (802442,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802442,   1, 1000, 0, 0) /* Strength */
     , (802442,   2, 1000, 0, 0) /* Endurance */
     , (802442,   3, 1000, 0, 0) /* Quickness */
     , (802442,   4, 1000, 0, 0) /* Coordination */
     , (802442,   5, 1000, 0, 0) /* Focus */
     , (802442,   6, 1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802442,   1, 50000, 0, 0, 52500) /* MaxHealth */
     , (802442,   3, 42000, 0, 0, 45700) /* MaxStamina */
     , (802442,   5, 42000, 0, 0, 42000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802442,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802442,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802442, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802442, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802442, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802442, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802442, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802442, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802442, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802442, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802442, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802442, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802442,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802442,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802442,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802442,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802442,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802442,  5,  4, 400,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802442,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802442,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802442,  8,  4, 400,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802442,  94)
     , (802442, 414);

/* INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802442, 2, 802447,  2, 4, 0.6, False) /* Create Frost Baton (31824) for Wield */;