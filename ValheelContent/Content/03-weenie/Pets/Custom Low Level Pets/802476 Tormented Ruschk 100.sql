DELETE FROM `weenie` WHERE `class_Id` = 802476;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802476, 'TormentedRuschk100', 71, '2021-11-29 06:19:28') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802476,   1,         16) /* ItemType - Creature */
     , (802476,   2,         14) /* CreatureType - Shadow */
     , (802476,   3,         14) /* PaletteTemplate - Red */
     , (802476,   6,         -1) /* ItemsCapacity */
     , (802476,   7,         -1) /* ContainersCapacity */
     , (802476,  16,          1) /* ItemUseable - No */
     , (802476,  25,         100) /* Level */
     , (802476,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802476, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802476, 140,          1) /* AiOptions - CanOpenDoors */
     , (802476, 267,        240) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802476,   1, True ) /* Stuck */
     , (802476,  11, False) /* IgnoreCollisions */
     , (802476,  12, True ) /* ReportCollisions */
     , (802476,  13, False) /* Ethereal */
     , (802476, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802476,   1,       5) /* HeartbeatInterval */
     , (802476,   2,       0) /* HeartbeatTimestamp */
     , (802476,   3,    0.45) /* HealthRate */
     , (802476,   4,     0.5) /* StaminaRate */
     , (802476,   5,       2) /* ManaRate */
     , (802476,  12,     0.5) /* Shade */
     , (802476,  13,       1) /* ArmorModVsSlash */
     , (802476,  14,       1) /* ArmorModVsPierce */
     , (802476,  15,       1) /* ArmorModVsBludgeon */
     , (802476,  16,       1) /* ArmorModVsCold */
     , (802476,  17,       1) /* ArmorModVsFire */
     , (802476,  18,       1) /* ArmorModVsAcid */
     , (802476,  19,       1) /* ArmorModVsElectric */
     , (802476,  31,      18) /* VisualAwarenessRange */
     , (802476,  34,     1.1) /* PowerupTime */
     , (802476,  36,       2) /* ChargeSpeed */
     , (802476,  39,     1.2) /* DefaultScale */
     , (802476,  64,       1) /* ResistSlash */
     , (802476,  65,       1) /* ResistPierce */
     , (802476,  66,       1) /* ResistBludgeon */
     , (802476,  67,       1) /* ResistFire */
     , (802476,  68,       1) /* ResistCold */
     , (802476,  69,       1) /* ResistAcid */
     , (802476,  70,       1) /* ResistElectric */
     , (802476,  71,       1) /* ResistHealthBoost */
     , (802476,  72,       1) /* ResistStaminaDrain */
     , (802476,  73,       1) /* ResistStaminaBoost */
     , (802476,  74,       1) /* ResistManaDrain */
     , (802476,  75,       1) /* ResistManaBoost */
     , (802476,  80,       3) /* AiUseMagicDelay */
     , (802476, 104,      10) /* ObviousRadarRange */
     , (802476, 122,       2) /* AiAcquireHealth */
     , (802476, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802476,   1, 'Tormented Ruschk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802476,   1,   33559507) /* Setup */
     , (802476,   2,  150994951) /* MotionTable */
     , (802476,   3,  536871101) /* SoundTable */
     , (802476,   4,  805306372) /* CombatTable */
     , (802476,   6,   67115447) /* PaletteBase */
     , (802476,   8,  100677373) /* Icon */
     , (802476,  22,  872415364) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802476,   1, 250, 0, 0) /* Strength */
     , (802476,   2, 250, 0, 0) /* Endurance */
     , (802476,   3, 250, 0, 0) /* Quickness */
     , (802476,   4, 250, 0, 0) /* Coordination */
     , (802476,   5, 250, 0, 0) /* Focus */
     , (802476,   6, 250, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802476,   1, 1100, 0, 0, 1100) /* MaxHealth */
     , (802476,   3, 400, 0, 0, 400) /* MaxStamina */
     , (802476,   5, 400, 0, 0, 400) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802476,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (802476,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (802476, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (802476, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (802476, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (802476, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (802476, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (802476, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (802476, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (802476, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (802476, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (802476, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802476,  0,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802476,  1,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802476,  2,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802476,  3,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802476,  4,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802476,  5,  4, 100,  0.4,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802476,  6,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802476,  7,  4,  0,    0,  1340,  410,  350,  440,  440,  335,  440,  440,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802476,  8,  4, 100,  0.4,  1340,  410,  355,  440,  440,  330,  440,  440,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802476,  94)
     , (802476, 414);

/* INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802476, 2, 802447,  2, 4, 0.6, False) /* Create Frost Baton (31824) for Wield */;