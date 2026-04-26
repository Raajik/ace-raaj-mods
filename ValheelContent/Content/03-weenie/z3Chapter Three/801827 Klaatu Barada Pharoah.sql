DELETE FROM `weenie` WHERE `class_Id` = 801827;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801827, 'Klaatu Barada Pharoah', 10, '2020-11-24 09:41:58') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801827,   1,         16) /* ItemType - Creature */
     , (801827,   2,         14) /* CreatureType - Undead */
     , (801827,   6,        255) /* ItemsCapacity */
     , (801827,   7,        255) /* ContainersCapacity */
     , (801827,  16,          1) /* ItemUseable - No */
     , (801827,  25,        510) /* Level */
     , (801827,  27,          2) /* ArmorType */
	 , (801827,  67,          2) /* Tolerance - Appraise */
     , (801827,  68,          3) /* TargetingTactic - Random, Focused */
     , (801827, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801827, 140,          1) /* AiOptions - CanOpenDoors */
     , (801827, 146,   10000000) /* XpOverride */
     , (801827, 307,          5) /* DamageRating */
     , (801827, 308,         10) /* DamageResistRating */
     , (801827, 310,          5) /* AugmentationDamageReduction */
     , (801827, 312,          2) /* HealOverTime */
     , (801827, 313,          5) /* CritRating */
     , (801827, 314,         10) /* CritDamageRating */
     , (801827, 315,          5) /* CritResistRating */
     , (801827, 316,          5) /* CritDamageResistRating */
     , (801827, 331,         25) /* NetherResistRating */
     , (801827, 332,     500000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801827,   1, True ) /* Stuck */
     , (801827,   6, True ) /* AiUsesMana */
     , (801827,  11, False) /* IgnoreCollisions */
     , (801827,  12, True ) /* ReportCollisions */
     , (801827,  13, False) /* Ethereal */
     , (801827,  14, True ) /* GravityStatus */
     , (801827,  19, True ) /* Attackable */
	 , (801827,  50, True ) /* NeverFailCasting */
     , (801827,  65, True ) /* IgnoreMagicResist */
	 , (801827, 101, True ) /* CanGenerateRare */
     , (801827, 102, True ) /* CorpseGeneratedRare */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801827,   1,       5) /* HeartbeatInterval */
     , (801827,   2,       0) /* HeartbeatTimestamp */
     , (801827,   3,       8) /* HealthRate */
     , (801827,   4,      20) /* StaminaRate */
     , (801827,   5,       2) /* ManaRate */
     , (801827,  12,     0.5) /* Shade */
	 , (801827,  13,      22) /* ArmorModVsSlash */
     , (801827,  14,      22) /* ArmorModVsPierce */
     , (801827,  15,      22) /* ArmorModVsBludgeon */
     , (801827,  16,      22) /* ArmorModVsCold */
     , (801827,  17,      22) /* ArmorModVsFire */
     , (801827,  18,      22) /* ArmorModVsAcid */
     , (801827,  19,      22) /* ArmorModVsElectric */
     , (801827,  31,      25) /* VisualAwarenessRange */
     , (801827,  34,       3) /* PowerupTime */
     , (801827,  36,       1) /* ChargeSpeed */
     , (801827,  39,     1.8) /* DefaultScale */
	 , (801827,  41,      30) /* RegenerationInterval */
     , (801827,  64,     0.1) /* ResistSlash */
     , (801827,  65,     0.1) /* ResistPierce */
     , (801827,  66,     0.1) /* ResistBludgeon */
     , (801827,  67,     0.1) /* ResistFire */
     , (801827,  68,      13) /* ResistCold */
     , (801827,  69,     0.1) /* ResistAcid */
     , (801827,  70,     0.1) /* ResistElectric */
     , (801827,  71,       1) /* ResistHealthBoost */
     , (801827,  72,       1) /* ResistStaminaDrain */
     , (801827,  73,       1) /* ResistStaminaBoost */
     , (801827,  74,       1) /* ResistManaDrain */
     , (801827,  75,       1) /* ResistManaBoost */
     , (801827,  76,    0.25) /* Translucency */
	 , (801827,  80,       1) /* AiUseMagicDelay */
     , (801827, 104,      10) /* ObviousRadarRange */
     , (801827, 117,     0.5) /* FocusedProbability */
	 , (801827, 122,       2) /* AiAcquireHealth */
     , (801827, 125,       1) /* ResistHealthDrain */
	 , (801827, 127,       2) /* AiCounteractEnchantment */
	 , (801827, 138,       2) /* SlayerDamageBonus */
     , (801827, 165,      22) /* ArmorModVsNether */
     , (801827, 166,     0.6) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801827,   1, 'Klaatu Barada Pharoah') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801827,   1,   33558436) /* Setup */
     , (801827,   2,  150994967) /* MotionTable */
     , (801827,   3,  536870934) /* SoundTable */
     , (801827,   6,   67114480) /* PaletteBase */
     , (801827,   8,  100674805) /* Icon */
     , (801827,  22,  872415272) /* PhysicsEffectTable */
     , (801827,  35,       3111) /* DeathTreasureType - Loot Tier: 9+ */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801827,  0,  1,  0,    0,  1500,  300,  300,  300,  300,  300,  300,  300,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801827,  1,  1,  0,    0,  1500,  300,  300,  300,  300,  300,  300,  300,    0, 2, 0.44, 0.23,    0, 0.44, 0.23,    0, 0.44, 0.23,    0, 0.44, 0.23,    0) /* Chest */
     , (801827,  2,  1,  0,    0,  1500,  300,  300,  300,  300,  300,  300,  300,    0, 3,    0, 0.23,  0.1,    0, 0.23,  0.2,    0, 0.17, 0.45,    0, 0.17, 0.45) /* Abdomen */
     , (801827,  3,  1,  0,    0,  1500,  300,  300,  300,  300,  300,  300,  300,    0, 1, 0.23, 0.04,  0.2, 0.23, 0.04,  0.1, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801827,  4,  1,  0,    0,  1500,  300,  300,  300,  300,  300,  300,  300,    0, 2,    0,  0.3,  0.3,    0,  0.3,  0.4,    0,  0.3,  0.1,    0,  0.3,  0.1) /* LowerArm */
     , (801827,  5,  1, 500,  0.5,  1500,  300,  300,  300,  300,  300,  300,  300,    0, 2,    0,  0.2,  0.3,    0,  0.2,  0.2,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801827, 17,  1, 500,  0.5,  1500,  300,  300,  300,  300,  300,  300,  300,    0, 3,    0,    0,  0.1,    0,    0,  0.1,    0, 0.13, 0.45,    0, 0.13, 0.45) /* Tail */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801827,   1, 400, 0, 0) /* Strength */
     , (801827,   2, 400, 0, 0) /* Endurance */
     , (801827,   3, 400, 0, 0) /* Quickness */
     , (801827,   4, 400, 0, 0) /* Coordination */
     , (801827,   5, 800, 0, 0) /* Focus */
     , (801827,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801827,   1,  785000, 0, 0, 785000) /* MaxHealth */
     , (801827,   3,  13000, 0, 0, 13000) /* MaxStamina */
     , (801827,   5,  15000, 0, 0, 15000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801827,  6, 0, 3, 0, 310, 0, 0) /* MeleeDefense         Specialized */
     , (801827,  7, 0, 3, 0, 375, 0, 0) /* MissileDefense       Specialized */
     , (801827, 14, 0, 3, 0, 300, 0, 0) /* ArcaneLore           Specialized */
     , (801827, 15, 0, 3, 0, 400, 0, 0) /* MagicDefense         Specialized */
     , (801827, 16, 0, 3, 0, 400, 0, 0) /* ManaConversion       Specialized */
     , (801827, 24, 0, 3, 0, 400, 0, 0) /* Run                  Specialized */
     , (801827, 31, 0, 3, 0, 500, 0, 0) /* CreatureEnchantment  Specialized */
     , (801827, 33, 0, 3, 0, 600, 0, 0) /* LifeMagic            Specialized */
     , (801827, 34, 0, 3, 0, 900, 0, 0) /* WarMagic             Specialized */
     , (801827, 43, 0, 3, 0, 600, 0, 0) /* VoidMagic            Specialized */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801827,  4302,    2.02) /* Incantation of Feeblemind Other */
     , (801827,  4306,    2.02) /* Incantation of Frailty Other */
     , (801827,  4311,    2.02) /* Incantation of Heal Self */
     , (801827,  4312,   2.025) /* Incantation of Imperil Other */
     , (801827,  4436,    2.01) /* Incantation of Blade Volley */
     , (801827,  4439,    2.01) /* Incantation of Flame Bolt */
     , (801827,  4441,    2.01) /* Incantation of Flame Volley */
     , (801827,  4443,   2.024) /* Incantation of Force Bolt */
     , (801827,  4447,   2.024) /* Incantation of Frost Bolt */
     , (801827,  4449,   2.024) /* Incantation of Frost Volley */
     , (801827,  4451,   2.024) /* Incantation of Lightning Bolt */
     , (801827,  4453,   2.024) /* Incantation of Lightning Volley */
     , (801827,  4457,   2.024) /* Incantation of Whirling Blade */
     , (801827,  5356,    2.02) /* Incantation of Nether Bolt */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801827, 3 /* Death */, 0.55, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Reputation@50000', NULL, 50000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801827, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'Reputation@50000', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have maxed out your Reputation. To gain more reputation, you must Prestige.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801827, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Reputation@50000', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Reputation@49999', NULL, 49999, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801827, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'Reputation@49999', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have reached the limit of your ability to gain Reputation! To gain more reputation, you must Prestige!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801827, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Reputation@49999', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 Reputation! You now have %tqc Reputation.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
