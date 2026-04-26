DELETE FROM `weenie` WHERE `class_Id` = 801745;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801745, 'Grothk the Pure', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801745,   1,         16) /* ItemType - Creature */
     , (801745,   2,         13) /* CreatureType - Golem */
     , (801745,   6,         -1) /* ItemsCapacity */
     , (801745,   7,         -1) /* ContainersCapacity */
     , (801745,  16,          1) /* ItemUseable - No */
     , (801745,  25,        500) /* Level */
     , (801745,  27,          0) /* ArmorType - None */
     , (801745,  40,          2) /* CombatMode - Melee */
     , (801745,  68,          3) /* TargetingTactic - Random, Focused */
     , (801745,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801745, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801745, 146,     600000) /* XpOverride */
     , (801745, 332,      35000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801745,   1, True ) /* Stuck */
     , (801745,   6, True ) /* AiUsesMana */
     , (801745,  11, False) /* IgnoreCollisions */
     , (801745,  12, True ) /* ReportCollisions */
     , (801745,  13, False) /* Ethereal */
     , (801745,  14, True ) /* GravityStatus */
     , (801745,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801745,   1,       5) /* HeartbeatInterval */
     , (801745,   2,       0) /* HeartbeatTimestamp */
     , (801745,   3,     0.8) /* HealthRate */
     , (801745,   4,     0.5) /* StaminaRate */
     , (801745,   5,       2) /* ManaRate */
     , (801745,   6,     0.1) /* HealthUponResurrection */
     , (801745,   7,    0.25) /* StaminaUponResurrection */
     , (801745,   8,     0.3) /* ManaUponResurrection */
     , (801745,  13,       1) /* ArmorModVsSlash */
     , (801745,  14,       1) /* ArmorModVsPierce */
     , (801745,  15,     0.7) /* ArmorModVsBludgeon */
     , (801745,  16,       1) /* ArmorModVsCold */
     , (801745,  17,       1) /* ArmorModVsFire */
     , (801745,  18,       1) /* ArmorModVsAcid */
     , (801745,  19,       1) /* ArmorModVsElectric */
     , (801745,  31,      17) /* VisualAwarenessRange */
     , (801745,  34,     2.3) /* PowerupTime */
     , (801745,  39,     2.5) /* DefaultScale */
     , (801745,  64,     0.1) /* ResistSlash */
     , (801745,  65,     0.1) /* ResistPierce */
     , (801745,  66,     0.3) /* ResistBludgeon */
     , (801745,  67,     0.1) /* ResistFire */
     , (801745,  68,     0.1) /* ResistCold */
     , (801745,  69,     0.1) /* ResistAcid */
     , (801745,  70,     0.1) /* ResistElectric */
     , (801745,  71,       1) /* ResistHealthBoost */
     , (801745,  72,       1) /* ResistStaminaDrain */
     , (801745,  73,       1) /* ResistStaminaBoost */
     , (801745,  74,       1) /* ResistManaDrain */
     , (801745,  75,       1) /* ResistManaBoost */
     , (801745,  80,       3) /* AiUseMagicDelay */
     , (801745, 104,      10) /* ObviousRadarRange */
     , (801745, 122,       2) /* AiAcquireHealth */
     , (801745, 125,       1) /* ResistHealthDrain */
     , (801745, 166,    0.12) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801745,   1, 'Groth''k the Pure') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801745,   1,   33556439) /* Setup */
     , (801745,   2,  150995073) /* MotionTable */
     , (801745,   3,  536870933) /* SoundTable */
     , (801745,   4,  805306376) /* CombatTable */
     , (801745,   8,  100667940) /* Icon */
     , (801745,  22,  872415322) /* PhysicsEffectTable */
     , (801745,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801745,   1, 1000, 0, 0) /* Strength */
     , (801745,   2, 130, 0, 0) /* Endurance */
     , (801745,   3,  20, 0, 0) /* Quickness */
     , (801745,   4,  30, 0, 0) /* Coordination */
     , (801745,   5,  70, 0, 0) /* Focus */
     , (801745,   6,  70, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801745,   1, 20000, 0, 0, 20000) /* MaxHealth */
     , (801745,   3, 300000, 0, 0, 300000) /* MaxStamina */
     , (801745,   5, 300000, 0, 0, 300000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801745,  6, 0, 3, 0,  54, 0, 0) /* MeleeDefense        Specialized */
     , (801745,  7, 0, 3, 0,  86, 0, 0) /* MissileDefense      Specialized */
     , (801745, 14, 0, 3, 0, 150, 0, 0) /* ArcaneLore          Specialized */
     , (801745, 15, 0, 3, 0,  34, 0, 0) /* MagicDefense        Specialized */
     , (801745, 20, 0, 3, 0,  80, 0, 0) /* Deception           Specialized */
     , (801745, 22, 0, 3, 0,  10, 0, 0) /* Jump                Specialized */
     , (801745, 24, 0, 3, 0,  10, 0, 0) /* Run                 Specialized */
     , (801745, 31, 0, 3, 0,  40, 0, 0) /* CreatureEnchantment Specialized */
     , (801745, 33, 0, 3, 0,  40, 0, 0) /* LifeMagic           Specialized */
     , (801745, 34, 0, 3, 0,  40, 0, 0) /* WarMagic            Specialized */
     , (801745, 45, 0, 3, 0,  80, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801745,  0,  5, 500, 0.75, 350, 1131, 1131, 1131, 1131, 1131, 1131, 1131, 1800, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801745,  1,  4, 500, 0.75, 350, 1131, 1131, 1131, 1131, 1131, 1131, 1131, 1800, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801745,  2,  4, 500, 0.75, 350, 1131, 1131, 1131, 1131, 1131, 1131, 1131, 1800, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801745,  3,  4, 500, 0.75, 350, 1131, 1131, 1131, 1131, 1131, 1131, 1131, 1800, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801745,  4,  4, 500, 0.75, 350, 1131, 1131, 1131, 1131, 1131, 1131, 1131, 1800, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801745,  5,  4, 500, 0.75, 350, 1131, 1131, 1131, 1131, 1131, 1131, 1131, 1800, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801745,  6,  4, 500, 0.75, 350, 1131, 1131, 1131, 1131, 1131, 1131, 1131, 1800, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801745,  7,  4, 500, 0.75, 350, 1131, 1131, 1131, 1131, 1131, 1131, 1131, 1800, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801745,  8,  4, 500, 0.75, 350, 1131, 1131, 1131, 1131, 1131, 1131, 1131, 1800, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (801745,  94)
     , (801745, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801745,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  30 /* InqQuestSolves */, 0, 1, NULL, 'Reputation@50000', NULL, 50000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801745, 12 /* QuestSuccess */,      1, NULL, NULL, NULL, 'Reputation@50000', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have maxed out your Reputation. To gain more reputation, you must Prestige.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801745, 12 /* QuestSuccess */,      1, NULL, NULL, NULL, 'Reputation@49999', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have reached the limit of your ability to gain Reputation! To gain more reputation, you must Prestige!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801745, 13 /* QuestFailure */,      1, NULL, NULL, NULL, 'Reputation@50000', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  30 /* InqQuestSolves */, 0, 1, NULL, 'Reputation@49999', NULL, 49999, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801745, 13 /* QuestFailure */,      1, NULL, NULL, NULL, 'Reputation@49999', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 Reputation! You now have %tqc Reputation.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801745, 9, 801744,  0, 0, 1, False) /* Create Purification Stone (801744) for ContainTreasure */
     , (801745, 9, 801744,  0, 0, 1, False) /* Create Purification Stone (801744) for ContainTreasure */
     , (801745, 9, 801744,  0, 0, 1, False) /* Create Purification Stone (801744) for ContainTreasure */
     , (801745, 9, 801744,  0, 0, 1, False) /* Create Purification Stone (801744) for ContainTreasure */
     , (801745, 9, 801744,  0, 0, 1, False) /* Create Purification Stone (801744) for ContainTreasure */
     , (801745, 9, 801744,  0, 0, 1, False) /* Create Purification Stone (801744) for ContainTreasure */
     , (801745, 9, 801744,  0, 0, 1, False) /* Create Purification Stone (801744) for ContainTreasure */
     , (801745, 9, 801744,  0, 0, 1, False) /* Create Purification Stone (801744) for ContainTreasure */
     , (801745, 9, 801744,  0, 0, 1, False) /* Create Purification Stone (801744) for ContainTreasure */;
