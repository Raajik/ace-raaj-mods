DELETE FROM `weenie` WHERE `class_Id` = 802478;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802478, 'TormentedRuschk125', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802478,   1,         16) /* ItemType - Creature */
     , (802478,   2,         14) /* CreatureType - Shadow */
     , (802478,   3,         14) /* PaletteTemplate - Red */
     , (802478,   6,         -1) /* ItemsCapacity */
     , (802478,   7,         -1) /* ContainersCapacity */
     , (802478,  16,          1) /* ItemUseable - No */
     , (802478,  25,         125) /* Level */
     , (802478,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802478, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802478, 140,          1) /* AiOptions - CanOpenDoors */
     , (802478, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802478,   1, True ) /* Stuck */
     , (802478,  11, False) /* IgnoreCollisions */
     , (802478,  12, True ) /* ReportCollisions */
     , (802478,  13, False) /* Ethereal */
     , (802478, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802478,   1,       5) /* HeartbeatInterval */
     , (802478,   2,       0) /* HeartbeatTimestamp */
     , (802478,   3,    0.45) /* HealthRate */
     , (802478,   4,     0.5) /* StaminaRate */
     , (802478,   5,       2) /* ManaRate */
     , (802478,  12,     0.5) /* Shade */
     , (802478,  13,       1) /* ArmorModVsSlash */
     , (802478,  14,       1) /* ArmorModVsPierce */
     , (802478,  15,       1) /* ArmorModVsBludgeon */
     , (802478,  16,       1) /* ArmorModVsCold */
     , (802478,  17,       1) /* ArmorModVsFire */
     , (802478,  18,       1) /* ArmorModVsAcid */
     , (802478,  19,       1) /* ArmorModVsElectric */
     , (802478,  31,      18) /* VisualAwarenessRange */
     , (802478,  34,     1.1) /* PowerupTime */
     , (802478,  36,       2) /* ChargeSpeed */
     , (802478,  39,     1.2) /* DefaultScale */
     , (802478,  64,       1) /* ResistSlash */
     , (802478,  65,       1) /* ResistPierce */
     , (802478,  66,       1) /* ResistBludgeon */
     , (802478,  67,       1) /* ResistFire */
     , (802478,  68,       1) /* ResistCold */
     , (802478,  69,       1) /* ResistAcid */
     , (802478,  70,       1) /* ResistElectric */
     , (802478,  71,       1) /* ResistHealthBoost */
     , (802478,  72,       1) /* ResistStaminaDrain */
     , (802478,  73,       1) /* ResistStaminaBoost */
     , (802478,  74,       1) /* ResistManaDrain */
     , (802478,  75,       1) /* ResistManaBoost */
     , (802478,  80,       3) /* AiUseMagicDelay */
     , (802478, 104,      10) /* ObviousRadarRange */
     , (802478, 122,       2) /* AiAcquireHealth */
     , (802478, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802478,   1, 'Tormented Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802478,   1,   33559507) /* Setup */
     , (802478,   2,  150994951) /* MotionTable */
     , (802478,   3,  536871101) /* SoundTable */
     , (802478,   4,  805306372) /* CombatTable */
     , (802478,   6,   67115447) /* PaletteBase */
     , (802478,   8,  100677373) /* Icon */
     , (802478,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802478,   1, 275, 0, 0) /* Strength */
     , (802478,   2, 275, 0, 0) /* Endurance */
     , (802478,   3, 275, 0, 0) /* Quickness */
     , (802478,   4, 275, 0, 0) /* Coordination */
     , (802478,   5, 275, 0, 0) /* Focus */
     , (802478,   6, 275, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802478,   1, 1300, 0, 0, 1300) /* MaxHealth */
     , (802478,   3, 400, 0, 0, 400) /* MaxStamina */
     , (802478,   5, 400, 0, 0, 400) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802478,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802478,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802478, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802478, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802478, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802478, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802478, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802478, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802478, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802478, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802478, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802478, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802478,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802478,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802478,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802478,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802478,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802478,  5,  4, 125,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802478,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802478,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802478,  8,  4, 125,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802478,  94)
     , (802478, 414);

/* INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802478, 2, 802447,  2, 4, 0.6, False) /* Create Frost Baton (31824) for Wield */;