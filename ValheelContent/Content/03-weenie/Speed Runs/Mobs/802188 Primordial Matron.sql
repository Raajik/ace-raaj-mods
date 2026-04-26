DELETE FROM `weenie` WHERE `class_Id` = 802188;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802188, 'primordialmatron', 10, '2023-03-15 07:51:34') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802188,   1,         16) /* ItemType - Creature */
     , (802188,   2,          1) /* CreatureType - Olthoi */
     , (802188,   3,         76) /* PaletteTemplate - Orange */
     , (802188,   6,         -1) /* ItemsCapacity */
     , (802188,   7,         -1) /* ContainersCapacity */
     , (802188,   8,       8000) /* Mass */
     , (802188,  16,          1) /* ItemUseable - No */
     , (802188,  25,        200) /* Level */
     , (802188,  27,          0) /* ArmorType - None */
     , (802188,  40,          2) /* CombatMode - Melee */
     , (802188,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (802188,  72,         35) /* FriendType - OlthoiLarvae */
     , (802188,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802188, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802188, 140,          1) /* AiOptions - CanOpenDoors */
     , (802188, 146,    1500000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802188,   1, True ) /* Stuck */
     , (802188,  11, False) /* IgnoreCollisions */
     , (802188,  12, True ) /* ReportCollisions */
     , (802188,  13, False) /* Ethereal */
     , (802188,  14, True ) /* GravityStatus */
     , (802188,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802188,   1,       5) /* HeartbeatInterval */
     , (802188,   2,       0) /* HeartbeatTimestamp */
     , (802188,   3,      45) /* HealthRate */
     , (802188,   4,      30) /* StaminaRate */
     , (802188,   5,       2) /* ManaRate */
     , (802188,  12,     0.5) /* Shade */
     , (802188,  13,     1.1) /* ArmorModVsSlash */
     , (802188,  14,       1) /* ArmorModVsPierce */
     , (802188,  15,       1) /* ArmorModVsBludgeon */
     , (802188,  16,       1) /* ArmorModVsCold */
     , (802188,  17,     1.1) /* ArmorModVsFire */
     , (802188,  18,     1.1) /* ArmorModVsAcid */
     , (802188,  19,     1.1) /* ArmorModVsElectric */
     , (802188,  31,      24) /* VisualAwarenessRange */
     , (802188,  34,       1) /* PowerupTime */
     , (802188,  36,       1) /* ChargeSpeed */
     , (802188,  39,     1.4) /* DefaultScale */
     , (802188,  64,    0.65) /* ResistSlash */
     , (802188,  65,    0.75) /* ResistPierce */
     , (802188,  66,    0.75) /* ResistBludgeon */
     , (802188,  67,    0.75) /* ResistFire */
     , (802188,  68,    0.75) /* ResistCold */
     , (802188,  69,    0.25) /* ResistAcid */
     , (802188,  70,     0.4) /* ResistElectric */
     , (802188,  71,       1) /* ResistHealthBoost */
     , (802188,  72,     0.5) /* ResistStaminaDrain */
     , (802188,  73,       1) /* ResistStaminaBoost */
     , (802188,  74,     0.5) /* ResistManaDrain */
     , (802188,  75,       1) /* ResistManaBoost */
     , (802188,  77,       1) /* PhysicsScriptIntensity */
     , (802188, 104,      10) /* ObviousRadarRange */
     , (802188, 117,     0.6) /* FocusedProbability */
     , (802188, 125,     0.5) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802188,   1, 'Primordial Matron') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802188,   1,   33558451) /* Setup */
     , (802188,   2,  150995253) /* MotionTable */
     , (802188,   3,  536871073) /* SoundTable */
     , (802188,   4,  805306425) /* CombatTable */
     , (802188,   6,   67114502) /* PaletteBase */
     , (802188,   7,  268436679) /* ClothingBase */
     , (802188,   8,  100674878) /* Icon */
     , (802188,  19,         86) /* ActivationAnimation */
     , (802188,  22,  872415400) /* PhysicsEffectTable */
     , (802188,  30,         86) /* PhysicsScript - BreatheAcid */
     , (802188,  35,        449) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802188,   1, 360, 0, 0) /* Strength */
     , (802188,   2, 380, 0, 0) /* Endurance */
     , (802188,   3, 205, 0, 0) /* Quickness */
     , (802188,   4, 225, 0, 0) /* Coordination */
     , (802188,   5, 150, 0, 0) /* Focus */
     , (802188,   6, 120, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802188,   1, 12000, 0, 0, 12000) /* MaxHealth */
     , (802188,   3,  5000, 0, 0, 5380) /* MaxStamina */
     , (802188,   5,     0, 0, 0, 120) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802188,  6, 0, 3, 0, 257, 0, 0) /* MeleeDefense        Specialized */
     , (802188,  7, 0, 3, 0, 260, 0, 0) /* MissileDefense      Specialized */
     , (802188, 15, 0, 3, 0, 264, 0, 0) /* MagicDefense        Specialized */
     , (802188, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (802188, 22, 0, 3, 0, 200, 0, 0) /* Jump                Specialized */
     , (802188, 24, 0, 3, 0, 100, 0, 0) /* Run                 Specialized */
     , (802188, 45, 0, 3, 0, 315, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802188,  0,  4,  5,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (802188, 16,  4,  5,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (802188, 18,  2, 220,  0.5,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (802188, 19,  2, 220, 0.75,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (802188, 20,  1, 220, 0.75,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (802188, 22, 32, 80,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802188,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  22 /* StampQuest */, 0, 1, NULL, 'PrimordialMatronKilled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have defeated the Primordial Matron!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802188, 9, 23108,  0, 0, 0.02, False) /* Create Twisted Dark Key (23108) for ContainTreasure */
     , (802188, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (802188, 9, 23107,  0, 0, 0.01, False) /* Create Mangled Dark Key (23107) for ContainTreasure */
     , (802188, 9,     0,  0, 0, 0.99, False) /* Create nothing for ContainTreasure */;
