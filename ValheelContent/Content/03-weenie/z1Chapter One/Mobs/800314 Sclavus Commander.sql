DELETE FROM `weenie` WHERE `class_Id` = 800314;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800314, 'Sclavus Commander', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800314,   1,         16) /* ItemType - Creature */
     , (800314,   2,         14) /* CreatureType - Undead */
     , (800314,   6,         -1) /* ItemsCapacity */
     , (800314,   7,         -1) /* ContainersCapacity */
     , (800314,  16,          1) /* ItemUseable - No */
     , (800314,  25,        200) /* Level */
     , (800314,  68,          0x80) /* TargetingTactic - Random, Focused */
     , (800314,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800314, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800314, 146,    7867485) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800314,   1, True ) /* Stuck */
     , (800314,   6, True ) /* AiUsesMana */
     , (800314,  11, False) /* IgnoreCollisions */
     , (800314,  12, True ) /* ReportCollisions */
     , (800314,  13, False) /* Ethereal */
     , (800314,  14, True ) /* GravityStatus */
     , (800314,  19, True ) /* Attackable */
     , (800314,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800314,   1,       5) /* HeartbeatInterval */
     , (800314,   2,       0) /* HeartbeatTimestamp */
     , (800314,   3,     0.4) /* HealthRate */
     , (800314,   4,     3.5) /* StaminaRate */
     , (800314,   5,     1.2) /* ManaRate */
     , (800314,  13,       1) /* ArmorModVsSlash */
     , (800314,  14,       1) /* ArmorModVsPierce */
     , (800314,  15,     1.5) /* ArmorModVsBludgeon */
     , (800314,  16,       1) /* ArmorModVsCold */
     , (800314,  17,       1) /* ArmorModVsFire */
     , (800314,  18,     1.2) /* ArmorModVsAcid */
     , (800314,  19,       1) /* ArmorModVsElectric */
     , (800314,  31,      24) /* VisualAwarenessRange */
     , (800314,  34,     1.5) /* PowerupTime */
     , (800314,  36,       1) /* ChargeSpeed */
     , (800314,  39,       2) /* DefaultScale */
     , (800314,  64,       1) /* ResistSlash */
     , (800314,  65,     1.5) /* ResistPierce */
     , (800314,  66,       1) /* ResistBludgeon */
     , (800314,  67,     1.2) /* ResistFire */
     , (800314,  68,       1) /* ResistCold */
     , (800314,  69,       1) /* ResistAcid */
     , (800314,  70,       1) /* ResistElectric */
     , (800314,  71,       1) /* ResistHealthBoost */
     , (800314,  72,       1) /* ResistStaminaDrain */
     , (800314,  73,       1) /* ResistStaminaBoost */
     , (800314,  74,     0.5) /* ResistManaDrain */
     , (800314,  75,       1) /* ResistManaBoost */
     , (800314,  80,       3) /* AiUseMagicDelay */
     , (800314, 104,      10) /* ObviousRadarRange */
     , (800314, 125,     0.5) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800314,   1, 'Sclavus Commander') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800314,   1,   33559507) /* Setup */
     , (800314,   2,  150994951) /* MotionTable */
     , (800314,   3,  536871101) /* SoundTable */
     , (800314,   4,  805306372) /* CombatTable */
     , (800314,   8,  100677373) /* Icon */
     , (800314,  22,  872415364) /* PhysicsEffectTable */
     , (800314,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800314,   1, 530, 0, 0) /* Strength */
     , (800314,   2, 360, 0, 0) /* Endurance */
     , (800314,   3, 320, 0, 0) /* Quickness */
     , (800314,   4, 460, 0, 0) /* Coordination */
     , (800314,   5, 315, 0, 0) /* Focus */
     , (800314,   6, 315, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800314,   1, 125000, 0, 0, 127630) /* MaxHealth */
     , (800314,   3, 11000, 0, 0, 11260) /* MaxStamina */
     , (800314,   5,  1200, 0, 0, 1415) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800314,  6, 0, 3, 0, 160, 0, 0) /* MeleeDefense        Specialized */
     , (800314,  7, 0, 3, 0, 175, 0, 0) /* MissileDefense      Specialized */
     , (800314, 14, 0, 3, 0, 150, 0, 0) /* ArcaneLore          Specialized */
     , (800314, 15, 0, 3, 0, 146, 0, 0) /* MagicDefense        Specialized */
     , (800314, 20, 0, 3, 0, 110, 0, 0) /* Deception           Specialized */
     , (800314, 24, 0, 3, 0,  80, 0, 0) /* Run                 Specialized */
     , (800314, 31, 0, 3, 0, 251, 0, 0) /* CreatureEnchantment Specialized */
     , (800314, 33, 0, 3, 0, 250, 0, 0) /* LifeMagic           Specialized */
     , (800314, 34, 0, 3, 0, 250, 0, 0) /* WarMagic            Specialized */
     , (800314, 44, 0, 3, 0, 636, 0, 0) /* HeavyWeapons        Specialized */
     , (800314, 45, 0, 3, 0, 636, 0, 0) /* LightWeapons        Specialized */
     , (800314, 46, 0, 3, 0, 622, 0, 0) /* FinesseWeapons      Specialized */
     , (800314, 47, 0, 3, 0, 570, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800314,  0,  4,  0,    0,  350,  175,  175,  175,  175,  175,  175,  175,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800314,  1,  4,  0,    0,  390,  195,  195,  195,  195,  195,  195,  195,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800314,  2,  4,  0,    0,  390,  195,  195,  195,  195,  195,  195,  195,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800314,  3,  4,  0,    0,  300,  150,  150,  150,  150,  150,  150,  150,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800314,  4,  4,  0,    0,  300,  150,  150,  150,  150,  150,  150,  150,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800314,  5,  4, 600,  0.5,  350,  175,  175,  175,  175,  175,  175,  175,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800314,  6,  4,  0,    0,  390,  195,  195,  195,  195,  195,  195,  195,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800314,  7,  4,  0,    0,  390,  195,  195,  195,  195,  195,  195,  195,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800314,  8,  4, 600,  0.4,  390,  195,  195,  195,  195,  195,  195,  195,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800314, 2, 48584,  1, 0, 0, False) /* Create Icy Club (48584) for Wield */
     , (800314, 2, 48588,  1, 1, 0, False) /* Create Glacial Blade (48588) for Wield */
     , (800314, 9,      0,  0, 0, 0.90, False) /* Create Nothing for ContainTreasure */
     , (800314, 9, 800191,  0, 0,  0.1, False) /* Create Arcanum Crystal of Lore (800342) for ContainTreasure */;
