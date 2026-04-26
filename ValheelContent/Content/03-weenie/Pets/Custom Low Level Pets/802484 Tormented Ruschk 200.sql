DELETE FROM `weenie` WHERE `class_Id` = 802484;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802484, 'TormentedRuschk200', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802484,   1,         16) /* ItemType - Creature */
     , (802484,   2,         14) /* CreatureType - Shadow */
     , (802484,   3,         14) /* PaletteTemplate - Red */
     , (802484,   6,         -1) /* ItemsCapacity */
     , (802484,   7,         -1) /* ContainersCapacity */
     , (802484,  16,          1) /* ItemUseable - No */
     , (802484,  25,        200) /* Level */
     , (802484,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802484, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802484, 140,          1) /* AiOptions - CanOpenDoors */
     , (802484, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802484,   1, True ) /* Stuck */
     , (802484,  11, False) /* IgnoreCollisions */
     , (802484,  12, True ) /* ReportCollisions */
     , (802484,  13, False) /* Ethereal */
     , (802484, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802484,   1,       5) /* HeartbeatInterval */
     , (802484,   2,       0) /* HeartbeatTimestamp */
     , (802484,   3,    0.45) /* HealthRate */
     , (802484,   4,     0.5) /* StaminaRate */
     , (802484,   5,       2) /* ManaRate */
     , (802484,  12,     0.5) /* Shade */
     , (802484,  13,       1) /* ArmorModVsSlash */
     , (802484,  14,       1) /* ArmorModVsPierce */
     , (802484,  15,       1) /* ArmorModVsBludgeon */
     , (802484,  16,       1) /* ArmorModVsCold */
     , (802484,  17,       1) /* ArmorModVsFire */
     , (802484,  18,       1) /* ArmorModVsAcid */
     , (802484,  19,       1) /* ArmorModVsElectric */
     , (802484,  31,      18) /* VisualAwarenessRange */
     , (802484,  34,     1.1) /* PowerupTime */
     , (802484,  36,       2) /* ChargeSpeed */
     , (802484,  39,     1.2) /* DefaultScale */
     , (802484,  64,       1) /* ResistSlash */
     , (802484,  65,       1) /* ResistPierce */
     , (802484,  66,       1) /* ResistBludgeon */
     , (802484,  67,       1) /* ResistFire */
     , (802484,  68,       1) /* ResistCold */
     , (802484,  69,       1) /* ResistAcid */
     , (802484,  70,       1) /* ResistElectric */
     , (802484,  71,       1) /* ResistHealthBoost */
     , (802484,  72,       1) /* ResistStaminaDrain */
     , (802484,  73,       1) /* ResistStaminaBoost */
     , (802484,  74,       1) /* ResistManaDrain */
     , (802484,  75,       1) /* ResistManaBoost */
     , (802484,  80,       3) /* AiUseMagicDelay */
     , (802484, 104,      10) /* ObviousRadarRange */
     , (802484, 122,       2) /* AiAcquireHealth */
     , (802484, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802484,   1, 'Tormented Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802484,   1,   33559507) /* Setup */
     , (802484,   2,  150994951) /* MotionTable */
     , (802484,   3,  536871101) /* SoundTable */
     , (802484,   4,  805306372) /* CombatTable */
     , (802484,   6,   67115447) /* PaletteBase */
     , (802484,   8,  100677373) /* Icon */
     , (802484,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802484,   1, 375, 0, 0) /* Strength */
     , (802484,   2, 375, 0, 0) /* Endurance */
     , (802484,   3, 375, 0, 0) /* Quickness */
     , (802484,   4, 375, 0, 0) /* Coordination */
     , (802484,   5, 375, 0, 0) /* Focus */
     , (802484,   6, 375, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802484,   1, 2000, 0, 0, 2000) /* MaxHealth */
     , (802484,   3, 400, 0, 0, 400) /* MaxStamina */
     , (802484,   5, 400, 0, 0, 400) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802484,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802484,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802484, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802484, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802484, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802484, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802484, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802484, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802484, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802484, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802484, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802484, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802484,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802484,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802484,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802484,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802484,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802484,  5,  4, 200,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802484,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802484,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802484,  8,  4, 200,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802484,  94)
     , (802484, 414);

/* INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802484, 2, 802447,  2, 4, 0.6, False) /* Create Frost Baton (31824) for Wield */;