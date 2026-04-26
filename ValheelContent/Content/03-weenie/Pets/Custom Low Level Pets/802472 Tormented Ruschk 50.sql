DELETE FROM `weenie` WHERE `class_Id` = 802472;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802472, 'TormentedRuschk50', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802472,   1,         16) /* ItemType - Creature */
     , (802472,   2,         14) /* CreatureType - Shadow */
     , (802472,   3,         14) /* PaletteTemplate - Red */
     , (802472,   6,         -1) /* ItemsCapacity */
     , (802472,   7,         -1) /* ContainersCapacity */
     , (802472,  16,          1) /* ItemUseable - No */
     , (802472,  25,         50) /* Level */
     , (802472,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802472, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802472, 140,          1) /* AiOptions - CanOpenDoors */
     , (802472, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802472,   1, True ) /* Stuck */
     , (802472,  11, False) /* IgnoreCollisions */
     , (802472,  12, True ) /* ReportCollisions */
     , (802472,  13, False) /* Ethereal */
     , (802472, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802472,   1,       5) /* HeartbeatInterval */
     , (802472,   2,       0) /* HeartbeatTimestamp */
     , (802472,   3,    0.45) /* HealthRate */
     , (802472,   4,     0.5) /* StaminaRate */
     , (802472,   5,       2) /* ManaRate */
     , (802472,  12,     0.5) /* Shade */
     , (802472,  13,       1) /* ArmorModVsSlash */
     , (802472,  14,       1) /* ArmorModVsPierce */
     , (802472,  15,       1) /* ArmorModVsBludgeon */
     , (802472,  16,       1) /* ArmorModVsCold */
     , (802472,  17,       1) /* ArmorModVsFire */
     , (802472,  18,       1) /* ArmorModVsAcid */
     , (802472,  19,       1) /* ArmorModVsElectric */
     , (802472,  31,      18) /* VisualAwarenessRange */
     , (802472,  34,     1.1) /* PowerupTime */
     , (802472,  36,       2) /* ChargeSpeed */
     , (802472,  39,     1.2) /* DefaultScale */
     , (802472,  64,       1) /* ResistSlash */
     , (802472,  65,       1) /* ResistPierce */
     , (802472,  66,       1) /* ResistBludgeon */
     , (802472,  67,       1) /* ResistFire */
     , (802472,  68,       1) /* ResistCold */
     , (802472,  69,       1) /* ResistAcid */
     , (802472,  70,       1) /* ResistElectric */
     , (802472,  71,       1) /* ResistHealthBoost */
     , (802472,  72,       1) /* ResistStaminaDrain */
     , (802472,  73,       1) /* ResistStaminaBoost */
     , (802472,  74,       1) /* ResistManaDrain */
     , (802472,  75,       1) /* ResistManaBoost */
     , (802472,  80,       3) /* AiUseMagicDelay */
     , (802472, 104,      10) /* ObviousRadarRange */
     , (802472, 122,       2) /* AiAcquireHealth */
     , (802472, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802472,   1, 'Tormented Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802472,   1,   33559507) /* Setup */
     , (802472,   2,  150994951) /* MotionTable */
     , (802472,   3,  536871101) /* SoundTable */
     , (802472,   4,  805306372) /* CombatTable */
     , (802472,   6,   67115447) /* PaletteBase */
     , (802472,   8,  100677373) /* Icon */
     , (802472,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802472,   1, 200, 0, 0) /* Strength */
     , (802472,   2, 200, 0, 0) /* Endurance */
     , (802472,   3, 200, 0, 0) /* Quickness */
     , (802472,   4, 200, 0, 0) /* Coordination */
     , (802472,   5, 200, 0, 0) /* Focus */
     , (802472,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802472,   1, 800, 0, 0, 800) /* MaxHealth */
     , (802472,   3, 400, 0, 0, 400) /* MaxStamina */
     , (802472,   5, 400, 0, 0, 400) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802472,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802472,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802472, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802472, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802472, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802472, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802472, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802472, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802472, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802472, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802472, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802472, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802472,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802472,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802472,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802472,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802472,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802472,  5,  4, 50,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802472,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802472,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802472,  8,  4, 50,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802472,  94)
     , (802472, 414);

/* INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802472, 2, 802447,  2, 4, 0.6, False) /* Create Frost Baton (31824) for Wield */;