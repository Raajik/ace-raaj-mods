DELETE FROM `weenie` WHERE `class_Id` = 800915;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800915, 'Aetheria Guardian Dragon of the Mist', 10, '2020-01-17 07:46:19') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800915,   1,         16) /* ItemType - Creature */
     , (800915,   2,         71) /* CreatureType - Margul */
     , (800915,   3,         11) /* PaletteTemplate - Maroon */
     , (800915,   6,         -1) /* ItemsCapacity */
     , (800915,   7,         -1) /* ContainersCapacity */
     , (800915,  16,          1) /* ItemUseable - No */
     , (800915,  25,        450) /* Level */
     , (800915,  27,          0) /* ArmorType - None */
     , (800915,  40,          2) /* CombatMode - Melee */
     , (800915,  68,          0x80) /* TargetingTactic - Random, TopDamager */
     , (800915,  72,         22) /* FriendType - Shadow */
     , (800915,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800915, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800915, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800915, 140,          1) /* AiOptions - CanOpenDoors */
     , (800915, 146,     30001320) /* XpOverride */
     , (800915, 332,      25000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800915,   1, True ) /* Stuck */
     , (800915,   6, True ) /* AiUsesMana */
     , (800915,  11, False) /* IgnoreCollisions */
     , (800915,  12, True ) /* ReportCollisions */
     , (800915,  13, False) /* Ethereal */
     , (800915,  14, True ) /* GravityStatus */
     , (800915,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800915,   1,       5) /* HeartbeatInterval */
     , (800915,   2,       0) /* HeartbeatTimestamp */
     , (800915,   3,       8) /* HealthRate */
     , (800915,   4,       3) /* StaminaRate */
     , (800915,   5,       1) /* ManaRate */
     , (800915,  12,     0.5) /* Shade */
     , (800915,  13,       1) /* ArmorModVsSlash */
     , (800915,  14,       1) /* ArmorModVsPierce */
     , (800915,  15,     0.7) /* ArmorModVsBludgeon */
     , (800915,  16,       1) /* ArmorModVsCold */
     , (800915,  17,     0.7) /* ArmorModVsFire */
     , (800915,  18,       1) /* ArmorModVsAcid */
     , (800915,  19,       1) /* ArmorModVsElectric */
     , (800915,  31,      24) /* VisualAwarenessRange */
     , (800915,  34,       1) /* PowerupTime */
     , (800915,  36,       1) /* ChargeSpeed */
     , (800915,  39,       7) /* DefaultScale */
     , (800915,  64,     0.1) /* ResistSlash */
     , (800915,  65,     0.1) /* ResistPierce */
     , (800915,  66,     0.3) /* ResistBludgeon */
     , (800915,  67,     0.3) /* ResistFire */
     , (800915,  68,     0.1) /* ResistCold */
     , (800915,  69,     0.1) /* ResistAcid */
     , (800915,  70,     0.1) /* ResistElectric */
     , (800915,  71,       1) /* ResistHealthBoost */
     , (800915,  72,       1) /* ResistStaminaDrain */
     , (800915,  73,       1) /* ResistStaminaBoost */
     , (800915,  74,       1) /* ResistManaDrain */
     , (800915,  75,       1) /* ResistManaBoost */
     , (800915,  77,       1) /* PhysicsScriptIntensity */
     , (800915,  80,       2) /* AiUseMagicDelay */
     , (800915, 104,      10) /* ObviousRadarRange */
     , (800915, 122,       2) /* AiAcquireHealth */
     , (800915, 125,    0.1) /* ResistHealthDrain */
     , (800915, 166,    0.7) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800915,   1, 'Aetheria Guardian Dragon of the Mist') /* Name */
     , (800915,  45, 'AetheriaGuardianKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800915,   1,   33558554) /* Setup */
     , (800915,   2,  150995263) /* MotionTable */
     , (800915,   3,  536871080) /* SoundTable */
     , (800915,   4,  805306426) /* CombatTable */
     , (800915,   6,   67114728) /* PaletteBase */
     , (800915,   7,  268436733) /* ClothingBase */
     , (800915,   8,  100675661) /* Icon */
     , (800915,  19,         85) /* ActivationAnimation */
     , (800915,  22,  872415401) /* PhysicsEffectTable */
     , (800915,  30,         85) /* PhysicsScript - BreatheFrost */
     , (800915,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800915,   1, 2320, 0, 0) /* Strength */
     , (800915,   2, 1400, 0, 0) /* Endurance */
     , (800915,   3, 320, 0, 0) /* Quickness */
     , (800915,   4, 750, 0, 0) /* Coordination */
     , (800915,   5, 400, 0, 0) /* Focus */
     , (800915,   6, 400, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800915,   1, 180000, 0, 0, 180000) /* MaxHealth */
     , (800915,   3, 20000, 0, 0, 24000) /* MaxStamina */
     , (800915,   5, 20000, 0, 0, 23000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800915,  6, 0, 3, 0, 150, 0, 0) /* MeleeDefense        Specialized */
     , (800915,  7, 0, 3, 0, 150, 0, 0) /* MissileDefense      Specialized */
     , (800915, 15, 0, 3, 0, 150, 0, 0) /* MagicDefense        Specialized */
     , (800915, 31, 0, 3, 0, 2405, 0, 0) /* CreatureEnchantment Specialized */
     , (800915, 32, 0, 3, 0, 2405, 0, 0) /* ItemEnchantment     Specialized */
     , (800915, 33, 0, 3, 0, 2405, 0, 0) /* LifeMagic           Specialized */
     , (800915, 34, 0, 3, 0, 3400, 0, 0) /* WarMagic            Specialized */
     , (800915, 45, 0, 3, 0, 4450, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800915,  0, 16, 2425,  0.5,  650, 2100, 2100, 2100, 2100, 2100, 2100, 2100,  650, 1,  0.4,  0.1,    0,  0.4,  0.1,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (800915, 10, 16, 2500,  0.5,  650, 2100, 2100, 2100, 2100, 2100, 2100, 2100,  650, 3,    0,  0.2,  0.8,    0,  0.2,  0.8,    0,    0,    0,    0,    0,    0) /* FrontLeg */
     , (800915, 13, 16, 2600,  0.5,  650, 2100, 2100, 2100, 2100, 2100, 2100, 2100,  650, 3,    0,    0,    0,    0,    0,    0,  0.1,  0.3,  0.7,  0.1,  0.3,  0.7) /* RearLeg */
     , (800915, 16,  4,  0,    0,  650, 2100, 2100, 2100, 2100, 2100, 2100, 2100,  650, 2,  0.6,  0.7,  0.2,  0.6,  0.7,  0.2,  0.9,  0.7,  0.3,  0.9,  0.7,  0.3) /* Torso */
     , (800915, 22,  8, 500,  0.5,    0, 2100, 2100, 2100, 2100, 2100, 2100, 2100,  650, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800915,  2056,      2)  /* Ataxia */
     , (800915,  2084,      2)  /* Belly of Lead */
     , (800915,  2088,      2)  /* Senescence */
     , (800915,  2128,      2)  /* Ilservian's Flame */
     , (800915,  2170,      2)  /* Inferno's Gift */
     , (800915,  2174,      2)  /* Archer's Gift */
     , (800915,  2674,      2)  /* Vicious Rebuke */
     , (800915,  2698,      2)  /* Aerfalle's Embrace */
     , (800915,  3948,    2.4)  /* Flame Wave */
     , (800915,  4333,    2.1)  /* Incantation of Nullify All Magic Self */
     , (800915,  5582,    2.1)  /* Nullify All Rares */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800915,  5 /* HeartBeat */,  0.025, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435539 /* Twitch3 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800915,  5 /* HeartBeat */,   0.05, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435538 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800915,  5 /* HeartBeat */,  0.055, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800915,  5 /* HeartBeat */,  0.025, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435539 /* Twitch3 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800915,  5 /* HeartBeat */,   0.05, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435538 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800915,  5 /* HeartBeat */,  0.055, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
