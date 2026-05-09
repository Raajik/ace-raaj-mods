DELETE FROM `weenie` WHERE `class_Id` = 801483;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801483, 'PunkinPet', 71, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801483,   1,         16) /* ItemType - Creature */
     , (801483,   2,         93) /* CreatureType - Marionette */
     , (801483,   3,         14) /* PaletteTemplate - White */
     , (801483,   6,         -1) /* ItemsCapacity */
     , (801483,   7,         -1) /* ContainersCapacity */
     , (801483,  16,          1) /* ItemUseable - No */
     , (801483,  25,        220) /* Level */
     , (801483,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801483, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801483, 140,          1) /* AiOptions - CanOpenDoors */
	 , (801483, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801483,   1, True ) /* Stuck */
     , (801483,  11, False) /* IgnoreCollisions */
     , (801483,  12, True ) /* ReportCollisions */
     , (801483,  13, False) /* Ethereal */
     , (801483, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801483,   1,       5) /* HeartbeatInterval */
     , (801483,   2,       0) /* HeartbeatTimestamp */
     , (801483,   3,    0.45) /* HealthRate */
     , (801483,   4,     0.5) /* StaminaRate */
     , (801483,   5,       2) /* ManaRate */
     , (801483,  12,     0.5) /* Shade */
     , (801483,  13,       1) /* ArmorModVsSlash */
     , (801483,  14,       1) /* ArmorModVsPierce */
     , (801483,  15,       1) /* ArmorModVsBludgeon */
     , (801483,  16,       1) /* ArmorModVsCold */
     , (801483,  17,    0.38) /* ArmorModVsFire */
     , (801483,  18,       1) /* ArmorModVsAcid */
     , (801483,  19,       1) /* ArmorModVsElectric */
     , (801483,  31,      18) /* VisualAwarenessRange */
     , (801483,  34,     1.1) /* PowerupTime */
     , (801483,  36,       2) /* ChargeSpeed */
	 , (801483,  39,       1) /* DefaultScale */
     , (801483,  64,       1) /* ResistSlash */
     , (801483,  65,       1) /* ResistPierce */
     , (801483,  66,       1) /* ResistBludgeon */
     , (801483,  67,    0.38) /* ResistFire */
     , (801483,  68,       1) /* ResistCold */
     , (801483,  69,       1) /* ResistAcid */
     , (801483,  70,       1) /* ResistElectric */
     , (801483,  71,       1) /* ResistHealthBoost */
     , (801483,  72,       1) /* ResistStaminaDrain */
     , (801483,  73,       1) /* ResistStaminaBoost */
     , (801483,  74,       1) /* ResistManaDrain */
     , (801483,  75,       1) /* ResistManaBoost */
     , (801483,  80,       3) /* AiUseMagicDelay */
     , (801483, 104,      10) /* ObviousRadarRange */
     , (801483, 122,       2) /* AiAcquireHealth */
     , (801483, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801483,   1, 'Punkin') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801483,   1,   33559753) /* Setup */
     , (801483,   2,  150995073) /* MotionTable */
     , (801483,   3,  536871065) /* SoundTable */
     , (801483,   4,  805306376) /* CombatTable */
     , (801483,   8,  100688453) /* Icon */
     , (801483,  22,  872415326) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801483,   1, 13700, 0, 0) /* Strength */
     , (801483,   2, 1370, 0, 0) /* Endurance */
     , (801483,   3, 1210, 0, 0) /* Quickness */
     , (801483,   4, 12100, 0, 0) /* Coordination */
     , (801483,   5, 1160, 0, 0) /* Focus */
     , (801483,   6, 1120, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801483,   1,  50000, 0, 0, 52500) /* MaxHealth */
     , (801483,   3,  42000, 0, 0, 45700) /* MaxStamina */
     , (801483,   5,     0, 0, 0, 1200) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801483,  6, 0, 3, 0, 760, 0, 0) /* MeleeDefense        Specialized */
     , (801483,  7, 0, 3, 0, 750, 0, 0) /* MissileDefense      Specialized */
     , (801483, 15, 0, 3, 0, 715, 0, 0) /* MagicDefense        Specialized */
     , (801483, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (801483, 22, 0, 2, 0, 200, 0, 0) /* Jump                Trained */
     , (801483, 24, 0, 2, 0, 1380, 0, 0) /* Run                 Trained */
     , (801483, 45, 0, 3, 0, 2000, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801483,  0,  4,  150,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801483,  1,  4,  150,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801483,  2,  4,  150,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801483,  3,  4,  150,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801483,  4,  4,  150,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801483,  5,  4,  150,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801483,  6,  4,  150,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801483,  7,  4,  150,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801483,  8,  4,  150,    0.75,  15000,  3500,  3500,  3500,   3500,  3500,   3500,  3500,    15000, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801483, -1, 32203, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pumpkin Kin (32203) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801483, -1, 32203, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pumpkin Kin (32203) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801483, -1, 32203, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pumpkin Kin (32203) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801483, -1, 32203, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pumpkin Kin (32203) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801483, -1, 32199, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pumpkin Follower (32199) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801483, -1, 32203, 30, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Pumpkin Kin (32203) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (801483,  94)
     , (801483, 414);
