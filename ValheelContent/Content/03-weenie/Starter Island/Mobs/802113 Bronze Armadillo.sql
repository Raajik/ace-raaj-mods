DELETE FROM `weenie` WHERE `class_Id` = 802113;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802113, 'armoredillobronze2', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802113,   1,         16) /* ItemType - Creature */
     , (802113,   2,         17) /* CreatureType - Armoredillo */
     , (802113,   3,          1) /* PaletteTemplate - AquaBlue */
     , (802113,   6,         -1) /* ItemsCapacity */
     , (802113,   7,         -1) /* ContainersCapacity */
     , (802113,  16,          1) /* ItemUseable - No */
     , (802113,  25,         20) /* Level */
     , (802113,  40,          2) /* CombatMode - Melee */
     , (802113,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (802113,  81,          3) /* MaxGeneratedObjects */
     , (802113,  82,          3) /* InitGeneratedObjects */
     , (802113,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802113, 103,          1) /* GeneratorDestructionType - Nothing */
     , (802113, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802113, 142,          3) /* GeneratorTimeType - Event */
     , (802113, 146,      10000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802113,   1, True ) /* Stuck */
     , (802113,  11, False) /* IgnoreCollisions */
     , (802113,  12, True ) /* ReportCollisions */
     , (802113,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802113,   1,       5) /* HeartbeatInterval */
     , (802113,   2,       0) /* HeartbeatTimestamp */
     , (802113,   3,     0.3) /* HealthRate */
     , (802113,   4,     0.5) /* StaminaRate */
     , (802113,   5,       2) /* ManaRate */
     , (802113,  12,     0.5) /* Shade */
     , (802113,  13,    0.32) /* ArmorModVsSlash */
     , (802113,  14,     0.7) /* ArmorModVsPierce */
     , (802113,  15,    0.35) /* ArmorModVsBludgeon */
     , (802113,  16,    0.73) /* ArmorModVsCold */
     , (802113,  17,    0.65) /* ArmorModVsFire */
     , (802113,  18,    0.49) /* ArmorModVsAcid */
     , (802113,  19,    0.73) /* ArmorModVsElectric */
     , (802113,  31,      22) /* VisualAwarenessRange */
     , (802113,  34,       1) /* PowerupTime */
     , (802113,  36,       1) /* ChargeSpeed */
     , (802113,  39,    0.95) /* DefaultScale */
     , (802113,  41,    3600) /* RegenerationInterval */
     , (802113,  43,       3) /* GeneratorRadius */
     , (802113,  64,    0.53) /* ResistSlash */
     , (802113,  65,       1) /* ResistPierce */
     , (802113,  66,     0.5) /* ResistBludgeon */
     , (802113,  67,     0.5) /* ResistFire */
     , (802113,  68,    0.95) /* ResistCold */
     , (802113,  69,     0.7) /* ResistAcid */
     , (802113,  70,    0.95) /* ResistElectric */
     , (802113,  71,       1) /* ResistHealthBoost */
     , (802113,  72,       1) /* ResistStaminaDrain */
     , (802113,  73,       1) /* ResistStaminaBoost */
     , (802113,  74,       1) /* ResistManaDrain */
     , (802113,  75,       1) /* ResistManaBoost */
     , (802113, 104,      10) /* ObviousRadarRange */
     , (802113, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802113,   1, 'Bronze Armoredillo') /* Name */
     , (802113,  34, 'springbabies') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802113,   1,   33554436) /* Setup */
     , (802113,   2,  150994972) /* MotionTable */
     , (802113,   3,  536870915) /* SoundTable */
     , (802113,   4,  805306382) /* CombatTable */
     , (802113,   6,   67109301) /* PaletteBase */
     , (802113,   7,  268435547) /* ClothingBase */
     , (802113,   8,  100667935) /* Icon */
     , (802113,  22,  872415253) /* PhysicsEffectTable */
     , (802113,  35,       5100) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802113,   1, 120, 0, 0) /* Strength */
     , (802113,   2,  80, 0, 0) /* Endurance */
     , (802113,   3,  60, 0, 0) /* Quickness */
     , (802113,   4,  90, 0, 0) /* Coordination */
     , (802113,   5,  60, 0, 0) /* Focus */
     , (802113,   6,  50, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802113,   1,    30, 0, 0, 70) /* MaxHealth */
     , (802113,   3,   140, 0, 0, 220) /* MaxStamina */
     , (802113,   5,     0, 0, 0, 50) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802113,  6, 0, 3, 0,  45, 0, 268.110204614268) /* MeleeDefense        Specialized */
     , (802113,  7, 0, 3, 0,  80, 0, 268.110204614268) /* MissileDefense      Specialized */
     , (802113, 15, 0, 3, 0,  55, 0, 268.110204614268) /* MagicDefense        Specialized */
     , (802113, 20, 0, 3, 0,  10, 0, 268.110204614268) /* Deception           Specialized */
     , (802113, 22, 0, 3, 0,  25, 0, 268.110204614268) /* Jump                Specialized */
     , (802113, 24, 0, 3, 0,  20, 0, 268.110204614268) /* Run                 Specialized */
     , (802113, 45, 0, 3, 0,  25, 0, 268.110204614268) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802113,  0,  2, 15, 0.75,   90,   29,   63,   32,   66,   58,   44,   66,    0, 1,  0.7, 0.34,    0,  0.7, 0.34,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (802113,  9,  1, 40, 0.75,   90,   29,   63,   32,   66,   58,   44,   66,    0, 1,  0.3, 0.33,    0,  0.3, 0.33,    0,    0,    0,    0,    0,    0,    0) /* Horn */
     , (802113, 16,  1, 40,  0.5,   90,   29,   63,   32,   66,   58,   44,   66,    0, 2,    0, 0.33,  0.3,    0, 0.33,  0.3,  0.5, 0.34,  0.3,  0.5, 0.34,  0.3) /* Torso */
     , (802113, 17,  4,  0,    0,   80,   26,   56,   28,   58,   52,   39,   58,    0, 2,    0,    0,    0,    0,    0,    0,  0.5, 0.33,    0,  0.5, 0.33,    0) /* Tail */
     , (802113, 19,  4,  0,    0,   80,   26,   56,   28,   58,   52,   39,   58,    0, 3,    0,    0,  0.7,    0,    0,  0.7,    0, 0.33,  0.7,    0, 0.33,  0.7) /* Leg */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802113, 414);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802113, 9,  802111,  0, 0, 0.3, False) /* Create Bronze Armoredillo Spine (3688) for ContainTreasure */
     , (802113, 9,  802112,  0, 0, 0.5, False) /* Create Large Armoredillo Hide (4234) for ContainTreasure */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802113, 1, 26670, 0, 1, -1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Bronze Armoredillo Pup (26670) (x1 up to max of -1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
