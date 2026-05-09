DELETE FROM `weenie` WHERE `class_Id` = 802754;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802754, 'Oppression', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802754,   1,         16) /* ItemType - Creature */
     , (802754,   2,         74) /* CreatureType - GrimacingRabbit */
     , (802754,   3,         70) /* PaletteTemplate - PurpleSlime */
     , (802754,   6,         -1) /* ItemsCapacity */
     , (802754,   7,         -1) /* ContainersCapacity */
     , (802754,  16,          1) /* ItemUseable - No */
     , (802754,  25,        475) /* Level */
     , (802754,  27,          0) /* ArmorType - None */
     , (802754,  40,          2) /* CombatMode - Melee */
     , (802754,  67,          2) /* Tolerance - Appraise */
     , (802754,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (802754,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802754, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802754, 146,      10000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802754,   1, True ) /* Stuck */
     , (802754,  11, False) /* IgnoreCollisions */
     , (802754,  12, True ) /* ReportCollisions */
     , (802754,  13, False) /* Ethereal */
     , (802754,  14, True ) /* GravityStatus */
     , (802754,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802754,   1,       5) /* HeartbeatInterval */
     , (802754,   2,       0) /* HeartbeatTimestamp */
     , (802754,   3,     0.1) /* HealthRate */
     , (802754,   4,       2) /* StaminaRate */
     , (802754,   5,       2) /* ManaRate */
     , (802754,  12,       0) /* Shade */
     , (802754,  13,       1) /* ArmorModVsSlash */
     , (802754,  14,       1) /* ArmorModVsPierce */
     , (802754,  15,       1) /* ArmorModVsBludgeon */
     , (802754,  16,       1) /* ArmorModVsCold */
     , (802754,  17,     1.2) /* ArmorModVsFire */
     , (802754,  18,       1) /* ArmorModVsAcid */
     , (802754,  19,       1) /* ArmorModVsElectric */
     , (802754,  31,       8) /* VisualAwarenessRange */
     , (802754,  34,       2) /* PowerupTime */
     , (802754,  36,       1) /* ChargeSpeed */
     , (802754,  39,       3) /* DefaultScale */
     , (802754,  55,      16) /* HomeRadius */
     , (802754,  64,     0.1) /* ResistSlash */
     , (802754,  65,     0.1) /* ResistPierce */
     , (802754,  66,     0.1) /* ResistBludgeon */
     , (802754,  67,     0.8) /* ResistFire */
     , (802754,  68,     0.1) /* ResistCold */
     , (802754,  69,     0.1) /* ResistAcid */
     , (802754,  70,     0.1) /* ResistElectric */
     , (802754,  71,       1) /* ResistHealthBoost */
     , (802754,  72,       1) /* ResistStaminaDrain */
     , (802754,  73,       1) /* ResistStaminaBoost */
     , (802754,  74,       1) /* ResistManaDrain */
     , (802754,  75,       1) /* ResistManaBoost */
     , (802754, 104,      10) /* ObviousRadarRange */
     , (802754, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802754,   1, 'Oppression') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802754,   1,   33555627) /* Setup */
     , (802754,   2,  150994994) /* MotionTable */
     , (802754,   3,  536870984) /* SoundTable */
     , (802754,   4,  805306394) /* CombatTable */
     , (802754,   8,  100668443) /* Icon */
     , (802754,  22,  872415261) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802754,   1, 200, 0, 0) /* Strength */
     , (802754,   2, 200, 0, 0) /* Endurance */
     , (802754,   3, 200, 0, 0) /* Quickness */
     , (802754,   4, 200, 0, 0) /* Coordination */
     , (802754,   5, 200, 0, 0) /* Focus */
     , (802754,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802754,   1, 150000, 0, 0, 150000) /* MaxHealth */
     , (802754,   3, 150000, 0, 0, 150000) /* MaxStamina */
     , (802754,   5, 150000, 0, 0, 150000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802754,  6, 0, 2, 0, 200, 0, 0) /* MeleeDefense        Trained */
     , (802754,  7, 0, 2, 0, 200, 0, 0) /* MissileDefense      Trained */
     , (802754, 15, 0, 2, 0, 200, 0, 0) /* MagicDefense        Trained */
     , (802754, 20, 0, 2, 0, 200, 0, 0) /* Deception           Trained */
     , (802754, 24, 0, 2, 0, 200, 0, 0) /* Run                 Trained */
     , (802754, 45, 0, 2, 0, 200, 0, 0) /* LightWeapons        Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802754,  0,  4, 50,  0.1,  210,  103,  132,   57,  103,  168,  168,  147,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (802754,  2,  4,  0,    0,  210,  103,  132,   57,  103,  168,  168,  147,    0, 3,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Abdomen */
     , (802754,  6,  4,  0,    0,  210,  103,  132,   57,  103,  168,  168,  147,    0, 3,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* UpperLeg */
     , (802754, 16,  4,  0,    0,  210,  103,  132,   57,  103,  168,  168,  147,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802754,  94)
     , (802754, 414);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802754, 9, 802747,  0, 0, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802754, 9, 802747,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802754, 9, 802747,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802754, 9, 802747,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802754, 9, 802747,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802754, 9, 802747,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802754, 9, 802747,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802754, 9, 802747,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802754, 9, 802747,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */;
