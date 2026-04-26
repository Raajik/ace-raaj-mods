DELETE FROM `weenie` WHERE `class_Id` = 802101;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802101, 'AgitatedWasp', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802101,   1,         16) /* ItemType - Creature */
     , (802101,   2,          9) /* CreatureType - PhyntosWasp */
     , (802101,   3,         29) /* PaletteTemplate - DarkRedMetal */
     , (802101,   6,         -1) /* ItemsCapacity */
     , (802101,   7,         -1) /* ContainersCapacity */
     , (802101,  16,          1) /* ItemUseable - No */
     , (802101,  25,        160) /* Level */
     , (802101,  40,          2) /* CombatMode - Melee */
     , (802101,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (802101,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802101, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802101, 146,    1000000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802101,   1, True ) /* Stuck */
     , (802101,   6, True ) /* AiUsesMana */
     , (802101,  11, False) /* IgnoreCollisions */
     , (802101,  12, True ) /* ReportCollisions */
     , (802101,  13, False) /* Ethereal */
     , (802101,  19, True ) /* Attackable */
     , (802101,  50, True ) /* NeverFailCasting */
     , (802101, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802101,   1,       5) /* HeartbeatInterval */
     , (802101,   2,       0) /* HeartbeatTimestamp */
     , (802101,   3,   0.067) /* HealthRate */
     , (802101,   4,     0.5) /* StaminaRate */
     , (802101,   5,       2) /* ManaRate */
     , (802101,  13,     0.8) /* ArmorModVsSlash */
     , (802101,  14,     0.8) /* ArmorModVsPierce */
     , (802101,  15,     0.5) /* ArmorModVsBludgeon */
     , (802101,  16,    0.35) /* ArmorModVsCold */
     , (802101,  17,    0.28) /* ArmorModVsFire */
     , (802101,  18,    0.28) /* ArmorModVsAcid */
     , (802101,  19,    0.28) /* ArmorModVsElectric */
     , (802101,  31,      10) /* VisualAwarenessRange */
     , (802101,  34,     1.8) /* PowerupTime */
     , (802101,  36,       1) /* ChargeSpeed */
     , (802101,  39,     1.2) /* DefaultScale */
     , (802101,  64,       1) /* ResistSlash */
     , (802101,  65,       1) /* ResistPierce */
     , (802101,  66,       1) /* ResistBludgeon */
     , (802101,  67,     0.9) /* ResistFire */
     , (802101,  68,     0.8) /* ResistCold */
     , (802101,  69,     0.9) /* ResistAcid */
     , (802101,  70,     0.9) /* ResistElectric */
     , (802101,  71,       1) /* ResistHealthBoost */
     , (802101,  72,       1) /* ResistStaminaDrain */
     , (802101,  73,       1) /* ResistStaminaBoost */
     , (802101,  74,       1) /* ResistManaDrain */
     , (802101,  75,       1) /* ResistManaBoost */
     , (802101,  80,       3) /* AiUseMagicDelay */
     , (802101, 104,      10) /* ObviousRadarRange */
     , (802101, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802101,   1, 'Agitated Wasp') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802101,   1,   33558817) /* Setup */
     , (802101,   2,  150995303) /* MotionTable */
     , (802101,   3,  536870926) /* SoundTable */
     , (802101,   4,  805306385) /* CombatTable */
     , (802101,   6,   67115262) /* PaletteBase */
     , (802101,   7,  268436836) /* ClothingBase */
     , (802101,   8,  100667450) /* Icon */
     , (802101,  22,  872415266) /* PhysicsEffectTable */
     , (802101,  35,       5105) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802101,   1, 340, 0, 0) /* Strength */
     , (802101,   2, 380, 0, 0) /* Endurance */
     , (802101,   3, 450, 0, 0) /* Quickness */
     , (802101,   4, 450, 0, 0) /* Coordination */
     , (802101,   5, 340, 0, 0) /* Focus */
     , (802101,   6, 300, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802101,   1,  1660, 0, 0, 1850) /* MaxHealth */
     , (802101,   3,  2000, 0, 0, 2380) /* MaxStamina */
     , (802101,   5,  2080, 0, 0, 2380) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802101,  6, 0, 3, 0, 325, 0, 0) /* MeleeDefense        Specialized */
     , (802101,  7, 0, 3, 0, 400, 0, 0) /* MissileDefense      Specialized */
     , (802101, 14, 0, 2, 0, 200, 0, 0) /* ArcaneLore          Trained */
     , (802101, 15, 0, 3, 0, 275, 0, 0) /* MagicDefense        Specialized */
     , (802101, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (802101, 22, 0, 2, 0,  80, 0, 0) /* Jump                Trained */
     , (802101, 24, 0, 2, 0,  40, 0, 0) /* Run                 Trained */
     , (802101, 33, 0, 3, 0, 190, 0, 0) /* LifeMagic           Specialized */
     , (802101, 34, 0, 3, 0, 210, 0, 0) /* WarMagic            Specialized */
     , (802101, 45, 0, 3, 0, 350, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802101,  0,  1, 220,  0.5,  400,  320,  320,  200,  140,  112,  112,  112,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (802101, 16,  1,  0,    0,  400,  320,  320,  200,  140,  112,  112,  112,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (802101, 17,  1, 230,  0.6,  400,  320,  320,  200,  140,  112,  112,  112,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (802101, 21,  1,  0,    0,  400,  320,  320,  200,  140,  112,  112,  112,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802101,    63,   2.07)  /* Acid Stream VI */
     , (802101,   102,   2.14)  /* Acid Blast VI */
     , (802101,   130,   2.14)  /* Acid Volley VI */
     , (802101,  1327,   2.05)  /* Imperil Other VI */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802101,  94)
     , (802101, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802101,  5 /* HeartBeat */,  0.085, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802101,  5 /* HeartBeat */,    0.1, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435538 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802101,  5 /* HeartBeat */,   0.15, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435539 /* Twitch3 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802101,  5 /* HeartBeat */,    0.2, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435540 /* Twitch4 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802101, 9, 24477,  1, 0, 0.1, False) /* Create Sturdy Steel Key (24477) for ContainTreasure */
     , (802101, 9, 802098,  0, 0, 0.5, False) /* Create  (7300000) for ContainTreasure */;
