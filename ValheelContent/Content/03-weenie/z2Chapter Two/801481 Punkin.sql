DELETE FROM `weenie` WHERE `class_Id` = 801481;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801481, 'Punkin', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801481,   1,         16) /* ItemType - Creature */
     , (801481,   2,         93) /* CreatureType - Harvest */
     , (801481,   6,         -1) /* ItemsCapacity */
     , (801481,   7,         -1) /* ContainersCapacity */
     , (801481,  16,          1) /* ItemUseable - No */
     , (801481,  25,         60) /* Level */
     , (801481,  27,          0) /* ArmorType - None */
     , (801481,  40,          2) /* CombatMode - Melee */
     , (801481,  68,          3) /* TargetingTactic - Random, Focused */
     , (801481,  81,          5) /* MaxGeneratedObjects */
     , (801481,  82,          5) /* InitGeneratedObjects */
     , (801481,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801481, 103,          3) /* GeneratorDestructionType - Kill */
     , (801481, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801481, 146,      17500) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801481,   1, True ) /* Stuck */
     , (801481,   6, True ) /* AiUsesMana */
     , (801481,  11, False) /* IgnoreCollisions */
     , (801481,  12, True ) /* ReportCollisions */
     , (801481,  13, False) /* Ethereal */
     , (801481,  14, True ) /* GravityStatus */
     , (801481,  19, True ) /* Attackable */
     , (801481,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801481,   1,       5) /* HeartbeatInterval */
     , (801481,   2,       0) /* HeartbeatTimestamp */
     , (801481,   3,    0.35) /* HealthRate */
     , (801481,   4,       5) /* StaminaRate */
     , (801481,   5,       2) /* ManaRate */
     , (801481,  13,       1) /* ArmorModVsSlash */
     , (801481,  14,       1) /* ArmorModVsPierce */
     , (801481,  15,       1) /* ArmorModVsBludgeon */
     , (801481,  16,     1.2) /* ArmorModVsCold */
     , (801481,  17,       1) /* ArmorModVsFire */
     , (801481,  18,     1.2) /* ArmorModVsAcid */
     , (801481,  19,       1) /* ArmorModVsElectric */
     , (801481,  31,      13) /* VisualAwarenessRange */
     , (801481,  34,     2.5) /* PowerupTime */
     , (801481,  36,       1) /* ChargeSpeed */
     , (801481,  39,       2) /* DefaultScale */
     , (801481,  41,      60) /* RegenerationInterval */
     , (801481,  43,      10) /* GeneratorRadius */
     , (801481,  64,    0.53) /* ResistSlash */
     , (801481,  65,     0.9) /* ResistPierce */
     , (801481,  66,       1) /* ResistBludgeon */
     , (801481,  67,     0.4) /* ResistFire */
     , (801481,  68,     0.1) /* ResistCold */
     , (801481,  69,    0.33) /* ResistAcid */
     , (801481,  70,     0.4) /* ResistElectric */
     , (801481,  71,       1) /* ResistHealthBoost */
     , (801481,  72,       1) /* ResistStaminaDrain */
     , (801481,  73,       1) /* ResistStaminaBoost */
     , (801481,  74,       1) /* ResistManaDrain */
     , (801481,  75,       1) /* ResistManaBoost */
     , (801481,  80,     2.5) /* AiUseMagicDelay */
     , (801481, 104,      10) /* ObviousRadarRange */
     , (801481, 125,       1) /* ResistHealthDrain */
     , (801481, 166,     0.4) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801481,   1, 'Punkin') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801481,   1,   33559753) /* Setup */
     , (801481,   2,  150995073) /* MotionTable */
     , (801481,   3,  536871065) /* SoundTable */
     , (801481,   4,  805306376) /* CombatTable */
     , (801481,   8,  100688453) /* Icon */
     , (801481,  22,  872415326) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801481,   1, 3000, 0, 0) /* Strength */
     , (801481,   2, 3000, 0, 0) /* Endurance */
     , (801481,   3,   70, 0, 0) /* Quickness */
     , (801481,   4,   80, 0, 0) /* Coordination */
     , (801481,   5,  500, 0, 0) /* Focus */
     , (801481,   6,  500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801481,   1,  100000000, 0, 0, 100000000) /* MaxHealth */
     , (801481,   3,  100000, 0, 0, 100000) /* MaxStamina */
     , (801481,   5,  100000, 0, 0, 100000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801481,  6, 0, 3, 0, 150, 0, 0) /* MeleeDefense        Specialized */
     , (801481,  7, 0, 3, 0, 150, 0, 0) /* MissileDefense      Specialized */
     , (801481, 14, 0, 2, 0, 150, 0, 0) /* ArcaneLore          Trained */
     , (801481, 15, 0, 3, 0, 150, 0, 0) /* MagicDefense        Specialized */
     , (801481, 20, 0, 2, 0,  80, 0, 0) /* Deception           Trained */
     , (801481, 22, 0, 2, 0,  10, 0, 0) /* Jump                Trained */
     , (801481, 24, 0, 2, 0,  10, 0, 0) /* Run                 Trained */
     , (801481, 31, 0, 3, 0, 120, 0, 0) /* CreatureEnchantment Specialized */
     , (801481, 33, 0, 3, 0, 120, 0, 0) /* LifeMagic           Specialized */
     , (801481, 34, 0, 3, 0, 120, 0, 0) /* WarMagic            Specialized */
     , (801481, 45, 0, 3, 0, 6190, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801481,  0,  4,  45,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801481,  1,  4,  45,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801481,  2,  4,  45,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801481,  3,  4,  45,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801481,  4,  4,  45,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801481,  5,  4,  45,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801481,  6,  4,  45,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801481,  7,  4,  45,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801481,  8,  4,  45,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801481, -1, 32203, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pumpkin Kin (32203) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801481, -1, 32203, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pumpkin Kin (32203) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801481, -1, 32203, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pumpkin Kin (32203) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801481, -1, 32203, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pumpkin Kin (32203) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801481, -1, 32199, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pumpkin Follower (32199) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801481, -1, 32203, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pumpkin Kin (32203) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801481, 9,  801482,  0,  0, 1, False) /* Create Purple Marshmallow Eep (9540) for ContainTreasure */
     , (801481, 9,  801482,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801482,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801482,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801482,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801482,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801482,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801482,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801482,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801484,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801484,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801484,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801484,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801484,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801484,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801484,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801484,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */
     , (801481, 9,  801484,  0, 13, 1, False) /* Create Lucky Rabbit's Foot (25995) for ContainTreasure */;