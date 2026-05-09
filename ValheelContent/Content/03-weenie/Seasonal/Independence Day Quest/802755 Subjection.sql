DELETE FROM `weenie` WHERE `class_Id` = 802755;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802755, 'Subjection', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802755,   1,         16) /* ItemType - Creature */
     , (802755,   2,         74) /* CreatureType - GrimacingRabbit */
     , (802755,   3,         70) /* PaletteTemplate - PurpleSlime */
     , (802755,   6,         -1) /* ItemsCapacity */
     , (802755,   7,         -1) /* ContainersCapacity */
     , (802755,  16,          1) /* ItemUseable - No */
     , (802755,  25,        475) /* Level */
     , (802755,  27,          0) /* ArmorType - None */
     , (802755,  40,          2) /* CombatMode - Melee */
     , (802755,  67,          2) /* Tolerance - Appraise */
     , (802755,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (802755,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802755, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802755, 146,      10000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802755,   1, True ) /* Stuck */
     , (802755,  11, False) /* IgnoreCollisions */
     , (802755,  12, True ) /* ReportCollisions */
     , (802755,  13, False) /* Ethereal */
     , (802755,  14, True ) /* GravityStatus */
     , (802755,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802755,   1,       5) /* HeartbeatInterval */
     , (802755,   2,       0) /* HeartbeatTimestamp */
     , (802755,   3,     0.1) /* HealthRate */
     , (802755,   4,       2) /* StaminaRate */
     , (802755,   5,       2) /* ManaRate */
     , (802755,  12,       0) /* Shade */
     , (802755,  13,       1) /* ArmorModVsSlash */
     , (802755,  14,       1) /* ArmorModVsPierce */
     , (802755,  15,       1) /* ArmorModVsBludgeon */
     , (802755,  16,       1) /* ArmorModVsCold */
     , (802755,  17,     1.2) /* ArmorModVsFire */
     , (802755,  18,       1) /* ArmorModVsAcid */
     , (802755,  19,       1) /* ArmorModVsElectric */
     , (802755,  31,       8) /* VisualAwarenessRange */
     , (802755,  34,       2) /* PowerupTime */
     , (802755,  36,       1) /* ChargeSpeed */
     , (802755,  39,       3) /* DefaultScale */
     , (802755,  55,      16) /* HomeRadius */
     , (802755,  64,     0.1) /* ResistSlash */
     , (802755,  65,     0.1) /* ResistPierce */
     , (802755,  66,     0.1) /* ResistBludgeon */
     , (802755,  67,     0.8) /* ResistFire */
     , (802755,  68,     0.1) /* ResistCold */
     , (802755,  69,     0.1) /* ResistAcid */
     , (802755,  70,     0.1) /* ResistElectric */
     , (802755,  71,       1) /* ResistHealthBoost */
     , (802755,  72,       1) /* ResistStaminaDrain */
     , (802755,  73,       1) /* ResistStaminaBoost */
     , (802755,  74,       1) /* ResistManaDrain */
     , (802755,  75,       1) /* ResistManaBoost */
     , (802755, 104,      10) /* ObviousRadarRange */
     , (802755, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802755,   1, 'Subjection') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802755,   1,   33555629) /* Setup */
     , (802755,   2,  150994994) /* MotionTable */
     , (802755,   3,  536870984) /* SoundTable */
     , (802755,   4,  805306394) /* CombatTable */
     , (802755,   8,  100668443) /* Icon */
     , (802755,  22,  872415261) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802755,   1, 200, 0, 0) /* Strength */
     , (802755,   2, 200, 0, 0) /* Endurance */
     , (802755,   3, 200, 0, 0) /* Quickness */
     , (802755,   4, 200, 0, 0) /* Coordination */
     , (802755,   5, 200, 0, 0) /* Focus */
     , (802755,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802755,   1, 150000, 0, 0, 150000) /* MaxHealth */
     , (802755,   3, 150000, 0, 0, 150000) /* MaxStamina */
     , (802755,   5, 150000, 0, 0, 150000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802755,  6, 0, 2, 0, 200, 0, 0) /* MeleeDefense        Trained */
     , (802755,  7, 0, 2, 0, 200, 0, 0) /* MissileDefense      Trained */
     , (802755, 15, 0, 2, 0, 200, 0, 0) /* MagicDefense        Trained */
     , (802755, 20, 0, 2, 0, 200, 0, 0) /* Deception           Trained */
     , (802755, 24, 0, 2, 0, 200, 0, 0) /* Run                 Trained */
     , (802755, 45, 0, 2, 0, 200, 0, 0) /* LightWeapons        Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802755,  0,  4, 50,  0.1,  210,  103,  132,   57,  103,  168,  168,  147,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (802755,  2,  4,  0,    0,  210,  103,  132,   57,  103,  168,  168,  147,    0, 3,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Abdomen */
     , (802755,  6,  4,  0,    0,  210,  103,  132,   57,  103,  168,  168,  147,    0, 3,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* UpperLeg */
     , (802755, 16,  4,  0,    0,  210,  103,  132,   57,  103,  168,  168,  147,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802755,  94)
     , (802755, 414);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802755, 9, 802748,  0, 0, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802755, 9, 802748,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802755, 9, 802748,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802755, 9, 802748,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802755, 9, 802748,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802755, 9, 802748,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802755, 9, 802748,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802755, 9, 802748,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */
     , (802755, 9, 802748,  0, 13, 1, False) /* Create VooDoo MaMa JooJoo Kill Confirmed (801353) for ContainTreasure */;
