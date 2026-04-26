DELETE FROM `weenie` WHERE `class_Id` = 802720;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802720, 'PebblePupil', 10, '2022-08-22 03:09:27') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802720,   1,         16) /* ItemType - Creature */
     , (802720,   2,         50) /* CreatureType - Idol */
     , (802720,   6,         -1) /* ItemsCapacity */
     , (802720,   7,         -1) /* ContainersCapacity */
     , (802720,  16,          1) /* ItemUseable - No */
     , (802720,  25,        150) /* Level */
     , (802720,  40,          2) /* CombatMode - Melee */
     , (802720,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (802720,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802720, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802720, 146,       5000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802720,   1, True ) /* Stuck */
     , (802720,   6, True ) /* AiUsesMana */
     , (802720,  11, False) /* IgnoreCollisions */
     , (802720,  12, True ) /* ReportCollisions */
     , (802720,  13, False) /* Ethereal */
     , (802720,  14, True ) /* GravityStatus */
     , (802720,  19, True ) /* Attackable */
     , (802720,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802720,   1,       5) /* HeartbeatInterval */
     , (802720,   2,       0) /* HeartbeatTimestamp */
     , (802720,   3,     0.8) /* HealthRate */
     , (802720,   4,     0.3) /* StaminaRate */
     , (802720,   5,     2.5) /* ManaRate */
     , (802720,  13,     0.3) /* ArmorModVsSlash */
     , (802720,  14,     0.3) /* ArmorModVsPierce */
     , (802720,  15,     0.3) /* ArmorModVsBludgeon */
     , (802720,  16,     0.3) /* ArmorModVsCold */
     , (802720,  17,     0.3) /* ArmorModVsFire */
     , (802720,  18,     0.3) /* ArmorModVsAcid */
     , (802720,  19,     0.3) /* ArmorModVsElectric */
     , (802720,  31,      25) /* VisualAwarenessRange */
     , (802720,  34,       2) /* PowerupTime */
     , (802720,  36,       1) /* ChargeSpeed */
     , (802720,  39,       1) /* DefaultScale */
     , (802720,  64,       1) /* ResistSlash */
     , (802720,  65,     0.5) /* ResistPierce */
     , (802720,  66,    0.67) /* ResistBludgeon */
     , (802720,  67,       1) /* ResistFire */
     , (802720,  68,     0.1) /* ResistCold */
     , (802720,  69,     0.2) /* ResistAcid */
     , (802720,  70,     0.5) /* ResistElectric */
     , (802720,  71,       1) /* ResistHealthBoost */
     , (802720,  72,       1) /* ResistStaminaDrain */
     , (802720,  73,       1) /* ResistStaminaBoost */
     , (802720,  74,       1) /* ResistManaDrain */
     , (802720,  75,       1) /* ResistManaBoost */
     , (802720,  77,       1) /* PhysicsScriptIntensity */
     , (802720,  80,       3) /* AiUseMagicDelay */
     , (802720, 104,      10) /* ObviousRadarRange */
     , (802720, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802720,   1, 'Pebble Pupil') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802720,   1,   33556893) /* Setup */
     , (802720,   2,  150995105) /* MotionTable */
     , (802720,   3,  536871017) /* SoundTable */
     , (802720,   4,  805306414) /* CombatTable */
     , (802720,   8,  100671204) /* Icon */
     , (802720,  19,         84) /* ActivationAnimation */
     , (802720,  22,  872415369) /* PhysicsEffectTable */
     , (802720,  30,         84) /* PhysicsScript - BreatheFlame */
     , (802720,  35,        463) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802720,   1, 250, 0, 0) /* Strength */
     , (802720,   2, 250, 0, 0) /* Endurance */
     , (802720,   3, 250, 0, 0) /* Quickness */
     , (802720,   4, 250, 0, 0) /* Coordination */
     , (802720,   5, 250, 0, 0) /* Focus */
     , (802720,   6, 250, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802720,   1,    10000, 0, 0, 10000) /* MaxHealth */
     , (802720,   3,    10000, 0, 0, 10000) /* MaxStamina */
     , (802720,   5,    10000, 0, 0, 10000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802720,  6, 0, 3, 0, 250, 0, 0) /* MeleeDefense        Specialized */
     , (802720,  7, 0, 3, 0, 250, 0, 0) /* MissileDefense      Specialized */
     , (802720, 14, 0, 3, 0, 250, 0, 0) /* ArcaneLore          Specialized */
     , (802720, 15, 0, 3, 0, 250, 0, 0) /* MagicDefense        Specialized */
     , (802720, 20, 0, 3, 0, 250, 0, 0) /* Deception           Specialized */
     , (802720, 31, 0, 3, 0, 250, 0, 0) /* CreatureEnchantment Specialized */
     , (802720, 33, 0, 3, 0, 250, 0, 0) /* LifeMagic           Specialized */
     , (802720, 34, 0, 3, 0, 250, 0, 0) /* WarMagic            Specialized */
     , (802720, 45, 0, 3, 0, 250, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802720,  0,  4, 15, 0.75,  900,  270,  270,  270,  270,  270,  270,  270,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (802720,  1,  4, 15, 0.75,  900,  270,  270,  270,  270,  270,  270,  270,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Chest */
     , (802720,  2,  4, 15, 0.75,  900,  270,  270,  270,  270,  270,  270,  270,    0, 3,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Abdomen */
     , (802720,  5,  4, 15, 0.75,  900,  270,  270,  270,  270,  270,  270,  270,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Hand */
     , (802720, 22, 16, 20, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802720,     7,    2.2)  /* Harm Other I */
     , (802720,   275,   2.04)  /* Magic Resistance Self II */
     , (802720,   281,   2.06)  /* Magic Yield Other II */
     , (802720,  1157,   2.02)  /* Heal Self II */
     , (802720,  1172,   2.06)  /* Harm Other II */
     , (802720,  1238,   2.02)  /* Drain Health Other II */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802720,  94)
     , (802720, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802720,  5 /* HeartBeat */,  0.025, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435538 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802720,  5 /* HeartBeat */,   0.03, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802720, 9,  8425,  0, 0, 0.05, False) /* Create Idol Gem (8425) for ContainTreasure */
     , (802720, 9,     0,  0, 0, 0.95, False) /* Create nothing for ContainTreasure */;
