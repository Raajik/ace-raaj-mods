DELETE FROM `weenie` WHERE `class_Id` = 800079;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800079, 'Infected King of the Mountain', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800079,   1,         16) /* ItemType - Creature */
     , (800079,   2,         13) /* CreatureType - Golem */
     , (800079,   6,         -1) /* ItemsCapacity */
     , (800079,   7,         -1) /* ContainersCapacity */
     , (800079,  16,          1) /* ItemUseable - No */
     , (800079,  25,        300) /* Level */
     , (800079,  27,          0) /* ArmorType - None */
     , (800079,  40,          2) /* CombatMode - Melee */
     , (800079,  68,          3) /* TargetingTactic - Random, Focused */
     , (800079,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800079, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800079, 146,   17500000) /* XpOverride */
     , (800079, 332,     100000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800079,   1, True ) /* Stuck */
     , (800079,   6, True ) /* AiUsesMana */
     , (800079,  11, False) /* IgnoreCollisions */
     , (800079,  12, True ) /* ReportCollisions */
     , (800079,  13, False) /* Ethereal */
     , (800079,  14, True ) /* GravityStatus */
     , (800079,  19, True ) /* Attackable */
     , (800079,  50, True ) /* NeverFailCasting */
     , (800079,  65, True ) /* IgnoreMagicResist */
     , (800079,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800079,   1,       5) /* HeartbeatInterval */
     , (800079,   2,       0) /* HeartbeatTimestamp */
     , (800079,   3,     0.6) /* HealthRate */
     , (800079,   4,     0.5) /* StaminaRate */
     , (800079,   5,       2) /* ManaRate */
     , (800079,   6,     0.1) /* HealthUponResurrection */
     , (800079,   7,    0.25) /* StaminaUponResurrection */
     , (800079,   8,     0.3) /* ManaUponResurrection */
     , (800079,  13,       1) /* ArmorModVsSlash */
     , (800079,  14,       1) /* ArmorModVsPierce */
     , (800079,  15,     0.6) /* ArmorModVsBludgeon */
     , (800079,  16,       1) /* ArmorModVsCold */
     , (800079,  17,       1) /* ArmorModVsFire */
     , (800079,  18,       1) /* ArmorModVsAcid */
     , (800079,  19,       1) /* ArmorModVsElectric */
     , (800079,  31,      25) /* VisualAwarenessRange */
     , (800079,  34,       2) /* PowerupTime */
     , (800079,  39,       3) /* DefaultScale */
     , (800079,  64,     0.1) /* ResistSlash */
     , (800079,  65,     0.1) /* ResistPierce */
     , (800079,  66,     0.5) /* ResistBludgeon */
     , (800079,  67,     0.1) /* ResistFire */
     , (800079,  68,     0.1) /* ResistCold */
     , (800079,  69,     0.1) /* ResistAcid */
     , (800079,  70,     0.1) /* ResistElectric */
     , (800079,  71,       1) /* ResistHealthBoost */
     , (800079,  72,       1) /* ResistStaminaDrain */
     , (800079,  73,       1) /* ResistStaminaBoost */
     , (800079,  74,       1) /* ResistManaDrain */
     , (800079,  75,       1) /* ResistManaBoost */
     , (800079,  80,       3) /* AiUseMagicDelay */
     , (800079, 104,      10) /* ObviousRadarRange */
     , (800079, 122,       2) /* AiAcquireHealth */
     , (800079, 125,       1) /* ResistHealthDrain */
     , (800079, 166,     0.1) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800079,   1, 'Infected King of the Mountain') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800079,   1,   33556440) /* Setup */
     , (800079,   2,  150995073) /* MotionTable */
     , (800079,   3,  536870933) /* SoundTable */
     , (800079,   4,  805306376) /* CombatTable */
     , (800079,   8,  100667940) /* Icon */
     , (800079,  22,  872415327) /* PhysicsEffectTable */
     , (800079,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800079,   1, 1850, 0, 0) /* Strength */
     , (800079,   2, 680, 0, 0) /* Endurance */
     , (800079,   3, 370, 0, 0) /* Quickness */
     , (800079,   4, 480, 0, 0) /* Coordination */
     , (800079,   5, 340, 0, 0) /* Focus */
     , (800079,   6, 340, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800079,   1, 10000, 0, 0, 10000) /* MaxHealth */
     , (800079,   3, 16170, 0, 0, 16350) /* MaxStamina */
     , (800079,   5, 11200, 0, 0, 11340) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800079,  6, 0, 2, 0, 215, 0, 0) /* MeleeDefense        Trained */
     , (800079,  7, 0, 2, 0, 220, 0, 0) /* MissileDefense      Trained */
     , (800079, 14, 0, 2, 0, 300, 0, 0) /* ArcaneLore          Trained */
     , (800079, 15, 0, 3, 0, 257, 0, 0) /* MagicDefense        Specialized */
     , (800079, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (800079, 22, 0, 2, 0,  10, 0, 0) /* Jump                Trained */
     , (800079, 24, 0, 2, 0, 310, 0, 0) /* Run                 Trained */
     , (800079, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (800079, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (800079, 34, 0, 3, 0, 320, 0, 0) /* WarMagic            Specialized */
     , (800079, 45, 0, 3, 0, 800, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800079,  0,  4,  0,    0, 1500, 1500, 1264,  600, 1500, 1263, 1500, 1500,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800079,  1,  4,  0,    0, 1500, 1500, 1264,  600, 1500, 1263, 1500, 1500,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800079,  2,  4,  0,    0, 1500, 1500, 1264,  600, 1500, 1263, 1500, 1500,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800079,  3,  4,  0,    0, 1500, 1500, 1264,  600, 1500, 1263, 1500, 1500,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800079,  4,  4,  0,    0, 1500, 1500, 1264,  600, 1500, 1263, 1500, 1500,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800079,  5,  4, 95, 0.75, 1500, 1500, 1264,  600, 1500, 1263, 1500, 1500,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800079,  6,  4,  0,    0, 1500, 1500, 1264,  600, 1500, 1263, 1500, 1500,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800079,  7,  4,  0,    0, 1500, 1500, 1264,  600, 1500, 1263, 1500, 1500,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800079,  8,  4, 95, 0.75, 1500, 1500, 1264,  600, 1500, 1263, 1500, 1500,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800079,   234,  2.007)  /* Vulnerability Other VI */
     , (800079,  1396,  2.007)  /* Clumsiness Other VI */
     , (800079,  1420,  2.007)  /* Slowness Other VI */
     , (800079,  2723,  2.016)  /* Force Arc VI */
     , (800079,  2731,  2.016)  /* Frost Arc VII */
     , (800079,  2738,  2.016)  /* Lightning Arc VII */
     , (800079,  2752,  2.016)  /* Shock Arc VII */
     , (800079,  2759,  2.016)  /* Blade Arc VII */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800079,  94)
     , (800079, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800079,  5 /* HeartBeat */,  0.075, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800079,  5 /* HeartBeat */,      1, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 1090519043 /* Ready */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0)
     , (@parent_id,  1,   5 /* Motion */, 0, 1, 1090519060 /* Sleeping */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800079, 9, 800019,  0, 0, 0.2, False) /* Create Shemtar's Sollerets of Enlightenment (800019) for ContainTreasure */;
