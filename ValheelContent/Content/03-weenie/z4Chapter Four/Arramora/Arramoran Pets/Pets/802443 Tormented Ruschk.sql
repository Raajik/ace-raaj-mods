DELETE FROM `weenie` WHERE `class_Id` = 802443;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802443, 'Tormented Ruschk', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802443,   1,         16) /* ItemType - Creature */
     , (802443,   2,         14) /* CreatureType - Shadow */
     , (802443,   3,         14) /* PaletteTemplate - Red */
     , (802443,   6,         -1) /* ItemsCapacity */
     , (802443,   7,         -1) /* ContainersCapacity */
     , (802443,  16,          1) /* ItemUseable - No */
     , (802443,  25,        450) /* Level */
     , (802443,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802443, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802443, 140,          1) /* AiOptions - CanOpenDoors */
     , (802443, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802443,   1, True ) /* Stuck */
     , (802443,  11, False) /* IgnoreCollisions */
     , (802443,  12, True ) /* ReportCollisions */
     , (802443,  13, False) /* Ethereal */
     , (802443, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802443,   1,       5) /* HeartbeatInterval */
     , (802443,   2,       0) /* HeartbeatTimestamp */
     , (802443,   3,    0.45) /* HealthRate */
     , (802443,   4,     0.5) /* StaminaRate */
     , (802443,   5,       2) /* ManaRate */
     , (802443,  12,     0.5) /* Shade */
     , (802443,  13,       1) /* ArmorModVsSlash */
     , (802443,  14,       1) /* ArmorModVsPierce */
     , (802443,  15,       1) /* ArmorModVsBludgeon */
     , (802443,  16,       1) /* ArmorModVsCold */
     , (802443,  17,       1) /* ArmorModVsFire */
     , (802443,  18,       1) /* ArmorModVsAcid */
     , (802443,  19,       1) /* ArmorModVsElectric */
     , (802443,  31,      18) /* VisualAwarenessRange */
     , (802443,  34,     1.1) /* PowerupTime */
     , (802443,  36,       2) /* ChargeSpeed */
     , (802443,  39,     1.2) /* DefaultScale */
     , (802443,  64,       1) /* ResistSlash */
     , (802443,  65,       1) /* ResistPierce */
     , (802443,  66,       1) /* ResistBludgeon */
     , (802443,  67,       1) /* ResistFire */
     , (802443,  68,       1) /* ResistCold */
     , (802443,  69,       1) /* ResistAcid */
     , (802443,  70,       1) /* ResistElectric */
     , (802443,  71,       1) /* ResistHealthBoost */
     , (802443,  72,       1) /* ResistStaminaDrain */
     , (802443,  73,       1) /* ResistStaminaBoost */
     , (802443,  74,       1) /* ResistManaDrain */
     , (802443,  75,       1) /* ResistManaBoost */
     , (802443,  80,       3) /* AiUseMagicDelay */
     , (802443, 104,      10) /* ObviousRadarRange */
     , (802443, 122,       2) /* AiAcquireHealth */
     , (802443, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802443,   1, 'Tormented Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802443,   1,   33559507) /* Setup */
     , (802443,   2,  150994951) /* MotionTable */
     , (802443,   3,  536871101) /* SoundTable */
     , (802443,   4,  805306372) /* CombatTable */
     , (802443,   6,   67115447) /* PaletteBase */
     , (802443,   8,  100677373) /* Icon */
     , (802443,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802443,   1, 1000, 0, 0) /* Strength */
     , (802443,   2, 1000, 0, 0) /* Endurance */
     , (802443,   3, 1000, 0, 0) /* Quickness */
     , (802443,   4, 1000, 0, 0) /* Coordination */
     , (802443,   5, 1000, 0, 0) /* Focus */
     , (802443,   6, 1000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802443,   1, 50000, 0, 0, 52500) /* MaxHealth */
     , (802443,   3, 42000, 0, 0, 45700) /* MaxStamina */
     , (802443,   5, 42000, 0, 0, 42000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802443,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802443,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802443, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802443, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802443, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802443, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802443, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802443, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802443, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802443, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802443, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802443, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802443,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802443,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802443,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802443,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802443,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802443,  5,  4, 400,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802443,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802443,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802443,  8,  4, 400,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802443,  94)
     , (802443, 414);

/* INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802443, 2, 802447,  2, 4, 0.6, False) /* Create Frost Baton (31824) for Wield */;