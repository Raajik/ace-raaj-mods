DELETE FROM `weenie` WHERE `class_Id` = 802482;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802482, 'TormentedRuschk180', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802482,   1,         16) /* ItemType - Creature */
     , (802482,   2,         14) /* CreatureType - Shadow */
     , (802482,   3,         14) /* PaletteTemplate - Red */
     , (802482,   6,         -1) /* ItemsCapacity */
     , (802482,   7,         -1) /* ContainersCapacity */
     , (802482,  16,          1) /* ItemUseable - No */
     , (802482,  25,        180) /* Level */
     , (802482,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802482, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802482, 140,          1) /* AiOptions - CanOpenDoors */
     , (802482, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802482,   1, True ) /* Stuck */
     , (802482,  11, False) /* IgnoreCollisions */
     , (802482,  12, True ) /* ReportCollisions */
     , (802482,  13, False) /* Ethereal */
     , (802482, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802482,   1,       5) /* HeartbeatInterval */
     , (802482,   2,       0) /* HeartbeatTimestamp */
     , (802482,   3,    0.45) /* HealthRate */
     , (802482,   4,     0.5) /* StaminaRate */
     , (802482,   5,       2) /* ManaRate */
     , (802482,  12,     0.5) /* Shade */
     , (802482,  13,       1) /* ArmorModVsSlash */
     , (802482,  14,       1) /* ArmorModVsPierce */
     , (802482,  15,       1) /* ArmorModVsBludgeon */
     , (802482,  16,       1) /* ArmorModVsCold */
     , (802482,  17,       1) /* ArmorModVsFire */
     , (802482,  18,       1) /* ArmorModVsAcid */
     , (802482,  19,       1) /* ArmorModVsElectric */
     , (802482,  31,      18) /* VisualAwarenessRange */
     , (802482,  34,     1.1) /* PowerupTime */
     , (802482,  36,       2) /* ChargeSpeed */
     , (802482,  39,     1.2) /* DefaultScale */
     , (802482,  64,       1) /* ResistSlash */
     , (802482,  65,       1) /* ResistPierce */
     , (802482,  66,       1) /* ResistBludgeon */
     , (802482,  67,       1) /* ResistFire */
     , (802482,  68,       1) /* ResistCold */
     , (802482,  69,       1) /* ResistAcid */
     , (802482,  70,       1) /* ResistElectric */
     , (802482,  71,       1) /* ResistHealthBoost */
     , (802482,  72,       1) /* ResistStaminaDrain */
     , (802482,  73,       1) /* ResistStaminaBoost */
     , (802482,  74,       1) /* ResistManaDrain */
     , (802482,  75,       1) /* ResistManaBoost */
     , (802482,  80,       3) /* AiUseMagicDelay */
     , (802482, 104,      10) /* ObviousRadarRange */
     , (802482, 122,       2) /* AiAcquireHealth */
     , (802482, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802482,   1, 'Tormented Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802482,   1,   33559507) /* Setup */
     , (802482,   2,  150994951) /* MotionTable */
     , (802482,   3,  536871101) /* SoundTable */
     , (802482,   4,  805306372) /* CombatTable */
     , (802482,   6,   67115447) /* PaletteBase */
     , (802482,   8,  100677373) /* Icon */
     , (802482,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802482,   1, 350, 0, 0) /* Strength */
     , (802482,   2, 350, 0, 0) /* Endurance */
     , (802482,   3, 350, 0, 0) /* Quickness */
     , (802482,   4, 350, 0, 0) /* Coordination */
     , (802482,   5, 350, 0, 0) /* Focus */
     , (802482,   6, 350, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802482,   1, 1500, 0, 0, 1500) /* MaxHealth */
     , (802482,   3, 400, 0, 0, 400) /* MaxStamina */
     , (802482,   5, 400, 0, 0, 400) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802482,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802482,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802482, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802482, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802482, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802482, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802482, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802482, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802482, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802482, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802482, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802482, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802482,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802482,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802482,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802482,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802482,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802482,  5,  4, 180,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802482,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802482,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802482,  8,  4, 180,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802482,  94)
     , (802482, 414);

/* INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802482, 2, 802447,  2, 4, 0.6, False) /* Create Frost Baton (31824) for Wield */;