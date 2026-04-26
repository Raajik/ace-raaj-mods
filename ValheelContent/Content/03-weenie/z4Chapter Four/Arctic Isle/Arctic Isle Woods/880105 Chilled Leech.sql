DELETE FROM `weenie` WHERE `class_Id` = 880105;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (880105, 'Chilled Leech', 10, '2023-03-02 09:44:42') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (880105,   1,         16) /* ItemType - Creature */
     , (880105,   2,         45) /* CreatureType */
     , (880105,   3,         10) /* PaletteTemplate */
     , (880105,   6,         -1) /* ItemsCapacity */
     , (880105,   7,         -1) /* ContainersCapacity */
     , (880105,  16,          1) /* ItemUseable - No */
     , (880105,  25,        635) /* Level */
     , (880105,  27,          0) /* ArmorType - None */
     , (880105,  40,          2) /* CombatMode - Melee */
     , (880105,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (880105,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (880105, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (880105, 146,    1100000) /* XpOverride */
     , (880105, 332,      75000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (880105,   1, True ) /* Stuck */
     , (880105,   6, False) /* AiUsesMana */
     , (880105,  12, True ) /* ReportCollisions */
     , (880105,  13, False) /* Ethereal */
     , (880105,  14, True ) /* GravityStatus */
     , (880105,  19, True ) /* Attackable */
     , (880105,  65, True ) /* IgnoreMagicResist */
     , (880105, 101, True ) /* CanGenerateRare */
     , (880105, 102, True ) /* CorpseGeneratedRare */
     , (880105, 103, True ) /* NonProjectileMagicImmune */
     , (880105, 120, False) /* TreasureCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (880105,   1,       5) /* HeartbeatInterval */
     , (880105,   2,       0) /* HeartbeatTimestamp */
     , (880105,   3,     0.4) /* HealthRate */
     , (880105,   4,       5) /* StaminaRate */
     , (880105,   5,       1) /* ManaRate */
     , (880105,  13,       1) /* ArmorModVsSlash */
     , (880105,  14,     1.1) /* ArmorModVsPierce */
     , (880105,  15,       1) /* ArmorModVsBludgeon */
     , (880105,  16,       1) /* ArmorModVsCold */
     , (880105,  17,     1.1) /* ArmorModVsFire */
     , (880105,  18,       1) /* ArmorModVsAcid */
     , (880105,  19,       1) /* ArmorModVsElectric */
     , (880105,  31,      30) /* VisualAwarenessRange */
     , (880105,  34,       1) /* PowerupTime */
     , (880105,  36,       1) /* ChargeSpeed */
     , (880105,  39,     1.4) /* DefaultScale */
     , (880105,  64,    0.01) /* ResistSlash */
     , (880105,  65,    0.05) /* ResistPierce */
     , (880105,  66,    0.01) /* ResistBludgeon */
     , (880105,  67,    0.05) /* ResistFire */
     , (880105,  68,    0.01) /* ResistCold */
     , (880105,  69,    0.01) /* ResistAcid */
     , (880105,  70,    0.01) /* ResistElectric */
     , (880105,  71,       1) /* ResistHealthBoost */
     , (880105,  72,       1) /* ResistStaminaDrain */
     , (880105,  73,       1) /* ResistStaminaBoost */
     , (880105,  74,       1) /* ResistManaDrain */
     , (880105,  75,       1) /* ResistManaBoost */
     , (880105,  80,       3) /* AiUseMagicDelay */
     , (880105, 104,      10) /* ObviousRadarRange */
     , (880105, 117,     0.5) /* FocusedProbability */
     , (880105, 122,       2) /* AiAcquireHealth */
     , (880105, 125,       1) /* ResistHealthDrain */
     , (880105, 166,    0.03) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (880105,   1, 'Chilled Leech') /* Name */
     , (880105,  45, 'INSERTKTHERE') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (880105,   1, 0x020014A0) /* Setup */
     , (880105,   2, 0x09000193) /* MotionTable */
     , (880105,   3, 0x20000062) /* SoundTable */
     , (880105,   4, 0x3000002A) /* CombatTable */
     , (880105,   6, 0x04001EDC) /* PaletteBase */
     , (880105,   7, 0x10000639) /* ClothingBase */
     , (880105,   8, 0x06001DF1) /* Icon */
     , (880105,  22, 0x340000B8) /* PhysicsEffectTable */
     , (880105,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (880105,  0,  4,1800, 0.75,  450,  325,  325,  325,  325,  325,  325,  325,    0, 1, 0.44,  0.3,    0,  0.4,  0.1,    0, 0.44,  0.3,    0,  0.4,  0.1,    0) /* Head */
     , (880105, 16,  4,  0,    0,  450,  325,  325,  325,  325,  325,  325,  325,    0, 2,  0.5, 0.48,  0.1,  0.5,  0.6,  0.1,  0.5, 0.48,  0.1,  0.5,  0.6, 0.22) /* Torso */
     , (880105, 21,  4,  0,    0,  450,  325,  325,  325,  325,  325,  325,  325,    0, 2,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0, 0.28) /* Wings */
     , (880105, 24,  4,  0,    0,  450,  325,  325,  325,  325,  325,  325,  325,    0, 2, 0.06, 0.22,  0.3,  0.1,  0.2,  0.3, 0.06, 0.22,  0.3,  0.1,  0.2, 0.22) /* UpperTentacle */
     , (880105, 25,  4,1800,  0.5,  450,  325,  325,  325,  325,  325,  325,  325,    0, 3,    0,    0,  0.3,    0,  0.1,  0.3,    0,    0,  0.3,    0,  0.1, 0.28) /* LowerTentacle */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (880105,   1,2540, 0, 0) /* Strength */
     , (880105,   2,1575, 0, 0) /* Endurance */
     , (880105,   3, 520, 0, 0) /* Quickness */
     , (880105,   4, 500, 0, 0) /* Coordination */
     , (880105,   5, 150, 0, 0) /* Focus */
     , (880105,   6, 150, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (880105,   1,140000, 0, 0,140000) /* MaxHealth */
     , (880105,   3, 15000, 0, 0,15000) /* MaxStamina */
     , (880105,   5,  5000, 0, 0, 5000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (880105,  6, 0, 3, 0, 250, 0, 0) /* MeleeDefense        Specialized */
     , (880105,  7, 0, 3, 0, 250, 0, 0) /* MissileDefense      Specialized */
     , (880105, 15, 0, 3, 0, 250, 0, 0) /* MagicDefense        Specialized */
     , (880105, 20, 0, 3, 0, 320, 0, 0) /* Deception           Specialized */
     , (880105, 22, 0, 3, 0, 370, 0, 0) /* Jump                Specialized */
     , (880105, 24, 0, 3, 0, 310, 0, 0) /* Run                 Specialized */
     , (880105, 44, 0, 3, 0,9492, 0, 0) /* HeavyWeapons        Specialized */
     , (880105, 45, 0, 3, 0,9492, 0, 0) /* LightWeapons        Specialized */
     , (880105, 46, 0, 3, 0,9442, 0, 0) /* FinesseWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880105, 3 /* Death */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Reputation@2.1474836E+09', NULL, 2147483647, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880105, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'Reputation@2.1474836E+09', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have capped out the infinite scale. How did you do this? You are a ValHeel god.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880105, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Reputation@2.1474836E+09', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Reputation@35000-2.1474836E+09', NULL, 35000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880105, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'Reputation@35000-2.1474836E+09', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have been granted +3 Reputation! You now have %tqc Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880105, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Reputation@35000-2.1474836E+09', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Reputation@15000-34999', NULL, 15000, 34999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880105, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'Reputation@15000-34999', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have been granted +2 Reputation! You now have %tqc Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880105, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Reputation@15000-34999', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Reputation@0-14999', NULL, 0, 14999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880105, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'Reputation@0-14999', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have been granted +1 Reputation! You now have %tqc Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880105, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Reputation@0-14999', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'You can not currently earn Reputation.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (880105, 9,801928,  1, 0, 0.25, False) /* Create  (801928) for ContainTreasure */;

