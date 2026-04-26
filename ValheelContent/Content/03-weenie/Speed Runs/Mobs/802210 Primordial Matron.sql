DELETE FROM `weenie` WHERE `class_Id` = 802210;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802210, 'primordialmatron2', 10, '2023-03-15 07:51:34') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802210,   1,         16) /* ItemType - Creature */
     , (802210,   2,          1) /* CreatureType - Olthoi */
     , (802210,   3,         76) /* PaletteTemplate - Orange */
     , (802210,   6,         -1) /* ItemsCapacity */
     , (802210,   7,         -1) /* ContainersCapacity */
     , (802210,   8,       8000) /* Mass */
     , (802210,  16,          1) /* ItemUseable - No */
     , (802210,  25,        275) /* Level */
     , (802210,  27,          0) /* ArmorType - None */
     , (802210,  40,          2) /* CombatMode - Melee */
     , (802210,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (802210,  72,         35) /* FriendType - OlthoiLarvae */
     , (802210,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802210, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802210, 140,          1) /* AiOptions - CanOpenDoors */
     , (802210, 146,    1500000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802210,   1, True ) /* Stuck */
     , (802210,  11, False) /* IgnoreCollisions */
     , (802210,  12, True ) /* ReportCollisions */
     , (802210,  13, False) /* Ethereal */
     , (802210,  14, True ) /* GravityStatus */
     , (802210,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802210,   1,       5) /* HeartbeatInterval */
     , (802210,   2,       0) /* HeartbeatTimestamp */
     , (802210,   3,      45) /* HealthRate */
     , (802210,   4,      30) /* StaminaRate */
     , (802210,   5,       2) /* ManaRate */
     , (802210,  12,     0.5) /* Shade */
     , (802210,  13,     1.1) /* ArmorModVsSlash */
     , (802210,  14,       1) /* ArmorModVsPierce */
     , (802210,  15,       1) /* ArmorModVsBludgeon */
     , (802210,  16,       1) /* ArmorModVsCold */
     , (802210,  17,     1.1) /* ArmorModVsFire */
     , (802210,  18,     1.1) /* ArmorModVsAcid */
     , (802210,  19,     1.1) /* ArmorModVsElectric */
     , (802210,  31,      24) /* VisualAwarenessRange */
     , (802210,  34,       1) /* PowerupTime */
     , (802210,  36,       1) /* ChargeSpeed */
     , (802210,  39,     1.4) /* DefaultScale */
     , (802210,  64,    0.65) /* ResistSlash */
     , (802210,  65,    0.75) /* ResistPierce */
     , (802210,  66,    0.75) /* ResistBludgeon */
     , (802210,  67,    0.75) /* ResistFire */
     , (802210,  68,    0.75) /* ResistCold */
     , (802210,  69,    0.25) /* ResistAcid */
     , (802210,  70,     0.4) /* ResistElectric */
     , (802210,  71,       1) /* ResistHealthBoost */
     , (802210,  72,     0.5) /* ResistStaminaDrain */
     , (802210,  73,       1) /* ResistStaminaBoost */
     , (802210,  74,     0.5) /* ResistManaDrain */
     , (802210,  75,       1) /* ResistManaBoost */
     , (802210,  77,       1) /* PhysicsScriptIntensity */
     , (802210, 104,      10) /* ObviousRadarRange */
     , (802210, 117,     0.6) /* FocusedProbability */
     , (802210, 125,     0.5) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802210,   1, 'Primordial Matron') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802210,   1,   33558451) /* Setup */
     , (802210,   2,  150995253) /* MotionTable */
     , (802210,   3,  536871073) /* SoundTable */
     , (802210,   4,  805306425) /* CombatTable */
     , (802210,   6,   67114502) /* PaletteBase */
     , (802210,   7,  268436679) /* ClothingBase */
     , (802210,   8,  100674878) /* Icon */
     , (802210,  19,         86) /* ActivationAnimation */
     , (802210,  22,  872415400) /* PhysicsEffectTable */
     , (802210,  30,         86) /* PhysicsScript - BreatheAcid */
     , (802210,  35,        449) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802210,   1, 460, 0, 0) /* Strength */
     , (802210,   2, 480, 0, 0) /* Endurance */
     , (802210,   3, 305, 0, 0) /* Quickness */
     , (802210,   4, 325, 0, 0) /* Coordination */
     , (802210,   5, 150, 0, 0) /* Focus */
     , (802210,   6, 120, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802210,   1, 18000, 0, 0, 18000) /* MaxHealth */
     , (802210,   3,  5000, 0, 0, 5380) /* MaxStamina */
     , (802210,   5,     0, 0, 0, 120) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802210,  6, 0, 3, 0, 257, 0, 0) /* MeleeDefense        Specialized */
     , (802210,  7, 0, 3, 0, 260, 0, 0) /* MissileDefense      Specialized */
     , (802210, 15, 0, 3, 0, 264, 0, 0) /* MagicDefense        Specialized */
     , (802210, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (802210, 22, 0, 3, 0, 200, 0, 0) /* Jump                Specialized */
     , (802210, 24, 0, 3, 0, 100, 0, 0) /* Run                 Specialized */
     , (802210, 45, 0, 3, 0, 315, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802210,  0,  4,  5,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (802210, 16,  4,  5,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (802210, 18,  2, 220,  0.5,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (802210, 19,  2, 220, 0.75,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (802210, 20,  1, 220, 0.75,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (802210, 22, 32, 80,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802210,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  22 /* StampQuest */, 0, 1, NULL, 'PrimordialMatronKilled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have defeated the Primordial Matron!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802210, 9, 23108,  0, 0, 0.02, False) /* Create Twisted Dark Key (23108) for ContainTreasure */
     , (802210, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (802210, 9, 23107,  0, 0, 0.01, False) /* Create Mangled Dark Key (23107) for ContainTreasure */
     , (802210, 9,     0,  0, 0, 0.99, False) /* Create nothing for ContainTreasure */;
