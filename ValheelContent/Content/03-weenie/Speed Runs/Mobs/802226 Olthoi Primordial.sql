DELETE FROM `weenie` WHERE `class_Id` = 802226;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802226, 'olthoiprimordial300', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802226,   1,         16) /* ItemType - Creature */
     , (802226,   2,          1) /* CreatureType - Olthoi */
     , (802226,   3,         76) /* PaletteTemplate - Orange */
     , (802226,   6,         -1) /* ItemsCapacity */
     , (802226,   7,         -1) /* ContainersCapacity */
     , (802226,   8,       8000) /* Mass */
     , (802226,  16,          1) /* ItemUseable - No */
     , (802226,  25,        345) /* Level */
     , (802226,  27,          0) /* ArmorType - None */
     , (802226,  40,          2) /* CombatMode - Melee */
     , (802226,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (802226,  72,         35) /* FriendType - OlthoiLarvae */
     , (802226,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802226, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802226, 140,          1) /* AiOptions - CanOpenDoors */
     , (802226, 146,     150000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802226,   1, True ) /* Stuck */
     , (802226,  11, False) /* IgnoreCollisions */
     , (802226,  12, True ) /* ReportCollisions */
     , (802226,  13, False) /* Ethereal */
     , (802226,  14, True ) /* GravityStatus */
     , (802226,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802226,   1,       5) /* HeartbeatInterval */
     , (802226,   2,       0) /* HeartbeatTimestamp */
     , (802226,   3,      45) /* HealthRate */
     , (802226,   4,      30) /* StaminaRate */
     , (802226,   5,       2) /* ManaRate */
     , (802226,  12,     0.5) /* Shade */
     , (802226,  13,     1.1) /* ArmorModVsSlash */
     , (802226,  14,       1) /* ArmorModVsPierce */
     , (802226,  15,       1) /* ArmorModVsBludgeon */
     , (802226,  16,       1) /* ArmorModVsCold */
     , (802226,  17,     1.1) /* ArmorModVsFire */
     , (802226,  18,     1.1) /* ArmorModVsAcid */
     , (802226,  19,     1.1) /* ArmorModVsElectric */
     , (802226,  31,      24) /* VisualAwarenessRange */
     , (802226,  34,       1) /* PowerupTime */
     , (802226,  36,       1) /* ChargeSpeed */
     , (802226,  39,     0.8) /* DefaultScale */
     , (802226,  64,    0.65) /* ResistSlash */
     , (802226,  65,    0.75) /* ResistPierce */
     , (802226,  66,    0.75) /* ResistBludgeon */
     , (802226,  67,    0.75) /* ResistFire */
     , (802226,  68,    0.75) /* ResistCold */
     , (802226,  69,    0.25) /* ResistAcid */
     , (802226,  70,     0.4) /* ResistElectric */
     , (802226,  71,       1) /* ResistHealthBoost */
     , (802226,  72,     0.5) /* ResistStaminaDrain */
     , (802226,  73,       1) /* ResistStaminaBoost */
     , (802226,  74,     0.5) /* ResistManaDrain */
     , (802226,  75,       1) /* ResistManaBoost */
     , (802226,  77,       1) /* PhysicsScriptIntensity */
     , (802226, 104,      10) /* ObviousRadarRange */
     , (802226, 117,     0.6) /* FocusedProbability */
     , (802226, 125,     0.5) /* ResistHealthDrain */
     , (802226, 166,    0.12) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802226,   1, 'Olthoi Primordial') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802226,   1,   33558451) /* Setup */
     , (802226,   2,  150995253) /* MotionTable */
     , (802226,   3,  536871073) /* SoundTable */
     , (802226,   4,  805306425) /* CombatTable */
     , (802226,   6,   67114502) /* PaletteBase */
     , (802226,   7,  268436679) /* ClothingBase */
     , (802226,   8,  100674878) /* Icon */
     , (802226,  19,         86) /* ActivationAnimation */
     , (802226,  22,  872415400) /* PhysicsEffectTable */
     , (802226,  30,         86) /* PhysicsScript - BreatheAcid */
     , (802226,  35,        449) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802226,   1, 560, 0, 0) /* Strength */
     , (802226,   2, 580, 0, 0) /* Endurance */
     , (802226,   3, 505, 0, 0) /* Quickness */
     , (802226,   4, 525, 0, 0) /* Coordination */
     , (802226,   5, 550, 0, 0) /* Focus */
     , (802226,   6, 520, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802226,   1, 13000, 0, 0, 13000) /* MaxHealth */
     , (802226,   3,  5000, 0, 0, 5380) /* MaxStamina */
     , (802226,   5,     0, 0, 0, 120) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802226,  6, 0, 3, 0, 357, 0, 0) /* MeleeDefense        Specialized */
     , (802226,  7, 0, 3, 0, 460, 0, 0) /* MissileDefense      Specialized */
     , (802226, 15, 0, 3, 0, 364, 0, 0) /* MagicDefense        Specialized */
     , (802226, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (802226, 22, 0, 3, 0, 200, 0, 0) /* Jump                Specialized */
     , (802226, 24, 0, 3, 0, 100, 0, 0) /* Run                 Specialized */
     , (802226, 45, 0, 3, 0, 315, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802226,  0,  4,  5,    0,  450,  495,  450,  450,  450,  495,  495,  495,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (802226, 16,  4,  5,    0,  450,  495,  450,  450,  450,  495,  495,  495,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (802226, 18,  2, 320,  0.5,  450,  495,  450,  450,  450,  495,  495,  495,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (802226, 19,  2, 320, 0.75,  450,  495,  450,  450,  450,  495,  495,  495,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (802226, 20,  1, 320, 0.75,  450,  495,  450,  450,  450,  495,  495,  495,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (802226, 22, 32, 320,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802226,  94)
     , (802226, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802226,  5 /* HeartBeat */,   0.15, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802226,  5 /* HeartBeat */,   0.15, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802226, 9, 23108,  0, 0, 0.02, False) /* Create Twisted Dark Key (23108) for ContainTreasure */
     , (802226, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (802226, 9, 23107,  0, 0, 0.01, False) /* Create Mangled Dark Key (23107) for ContainTreasure */
     , (802226, 9,     0,  0, 0, 0.99, False) /* Create nothing for ContainTreasure */;
