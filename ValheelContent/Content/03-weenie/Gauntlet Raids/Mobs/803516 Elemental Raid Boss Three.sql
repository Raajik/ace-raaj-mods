DELETE FROM `weenie` WHERE `class_Id` = 803516;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803516, 'ElementalRaidThree', 10, '2024-04-23 09:02:16') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803516,   1,         16) /* ItemType - Creature */
     , (803516,   2,         62) /* CreatureType - Margul */
     , (803516,   3,         21) /* PaletteTemplate - Maroon */
     , (803516,   6,         -1) /* ItemsCapacity */
     , (803516,   7,         -1) /* ContainersCapacity */
     , (803516,  16,          1) /* ItemUseable - No */
     , (803516,  25,       5000) /* Level */
     , (803516,  27,          0) /* ArmorType - None */
     , (803516,  40,          2) /* CombatMode - Melee */
     , (803516,  72,         22) /* FriendType - Shadow */
     , (803516,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803516, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803516, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803516, 140,          1) /* AiOptions - CanOpenDoors */
     , (803516, 146,   99999999) /* XpOverride */
     , (803516, 332,   30000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803516,   1, True ) /* Stuck */
     , (803516,   6, True ) /* AiUsesMana */
     , (803516,  11, False) /* IgnoreCollisions */
     , (803516,  12, True ) /* ReportCollisions */
     , (803516,  13, False) /* Ethereal */
     , (803516,  14, True ) /* GravityStatus */
     , (803516,  19, True ) /* Attackable */
     , (803516,  65, True ) /* IgnoreMagicResist */
     , (803516,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803516,   1,       5) /* HeartbeatInterval */
     , (803516,   2,       0) /* HeartbeatTimestamp */
     , (803516,   3,     0.4) /* HealthRate */
     , (803516,   4,       5) /* StaminaRate */
     , (803516,   5,       1) /* ManaRate */
     , (803516,  13,      10) /* ArmorModVsSlash */
     , (803516,  14,      10) /* ArmorModVsPierce */
     , (803516,  15,      10) /* ArmorModVsBludgeon */
     , (803516,  16,      10) /* ArmorModVsCold */
     , (803516,  17,      10) /* ArmorModVsFire */
     , (803516,  18,      10) /* ArmorModVsAcid */
     , (803516,  19,      10) /* ArmorModVsElectric */
     , (803516,  31,      30) /* VisualAwarenessRange */
     , (803516,  34,       1) /* PowerupTime */
     , (803516,  36,       1) /* ChargeSpeed */
     , (803516,  39,     2.7) /* DefaultScale */
     , (803516,  64,   0.001) /* ResistSlash */
     , (803516,  65,   0.001) /* ResistPierce */
     , (803516,  66,   0.001) /* ResistBludgeon */
     , (803516,  67,   0.001) /* ResistFire */
     , (803516,  68,   0.001) /* ResistCold */
     , (803516,  69,   0.001) /* ResistAcid */
     , (803516,  70,   0.001) /* ResistElectric */
     , (803516,  71,       1) /* ResistHealthBoost */
     , (803516,  72,       1) /* ResistStaminaDrain */
     , (803516,  73,       1) /* ResistStaminaBoost */
     , (803516,  74,       1) /* ResistManaDrain */
     , (803516,  75,       1) /* ResistManaBoost */
     , (803516,  80,       3) /* AiUseMagicDelay */
     , (803516, 104,      10) /* ObviousRadarRange */
     , (803516, 117,     0.5) /* FocusedProbability */
     , (803516, 122,       2) /* AiAcquireHealth */
     , (803516, 125,   0.001) /* ResistHealthDrain */
     , (803516, 166,   0.001) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803516,   1, 'Prismatic Exalt') /* Name */
     , (803516,  45, 'raid3KT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803516,   1, 0x02001919) /* Setup */
     , (803516,   2, 0x090001A8) /* MotionTable */
     , (803516,   3, 0x200000D3) /* SoundTable */
     , (803516,   4, 0x30000000) /* CombatTable */
     , (803516,   8, 0x06002B2E) /* Icon */
     , (803516,  22, 0x34000025) /* PhysicsEffectTable */
     , (803516,  30,         85) /* PhysicsScript - BreatheFrost */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803516,  0,1024,  0,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803516,  1,1024,  0,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803516,  2,1024,  0,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803516,  3,1024,  0,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803516,  4,1024,  0,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803516,  5,1024,150000, 0.75,55000,27500,27500,27500,27500,27500,27500,27500,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803516,  6,1024,  0,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803516,  7,1024,  0,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803516,  8,1024,150000, 0.75,55000,27500,27500,27500,27500,27500,27500,27500,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */
     , (803516, 22,  8,150000,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803516,   1,150000, 0, 0) /* Strength */
     , (803516,   2,150000, 0, 0) /* Endurance */
     , (803516,   3, 320, 0, 0) /* Quickness */
     , (803516,   4, 750, 0, 0) /* Coordination */
     , (803516,   5,1400, 0, 0) /* Focus */
     , (803516,   6,1400, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803516,   1,25000000, 0, 0,25000000) /* MaxHealth */
     , (803516,   3,25000000, 0, 0,25000000) /* MaxStamina */
     , (803516,   5,25000000, 0, 0,25000000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803516,  6, 0, 3, 0, 350, 0, 0) /* MeleeDefense        Specialized */
     , (803516,  7, 0, 3, 0, 350, 0, 0) /* MissileDefense      Specialized */
     , (803516, 15, 0, 3, 0, 350, 0, 0) /* MagicDefense        Specialized */
     , (803516, 31, 0, 3, 0,2405, 0, 0) /* CreatureEnchantment Specialized */
     , (803516, 32, 0, 3, 0,2405, 0, 0) /* ItemEnchantment     Specialized */
     , (803516, 33, 0, 3, 0,2405, 0, 0) /* LifeMagic           Specialized */
     , (803516, 34, 0, 3, 0,3400, 0, 0) /* WarMagic            Specialized */
     , (803516, 45, 0, 3, 0,4450, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803516, 14 /* Taunt */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 88 /* LocalSignal */, 0, 1, NULL, 'UnleashFury', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803516, 14 /* Taunt */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803516, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 21 /* InqQuest */, 0, 1, NULL, 'raid3KT@KillTaskCompleted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803516, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'raid3KT@KillTaskCompleted', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'Well done! You have destroyed the monsters who have taken over my dungeon. Here is your reward.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 801690, 25000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 49 /* AwardLevelProportionalXP */, 0, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 113 /* AwardLuminance */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 250000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 5, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +250,000 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 6, 22 /* StampQuest */, 0, 1, NULL, 'raid3KTTimer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 7, 31 /* EraseQuest */, 0, 1, NULL, 'raid3KT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803516, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'raid3KT@KillTaskCompleted', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803516, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 88 /* LocalSignal */, 0, 1, NULL, 'UnleashFury', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 8 /* Say */, 0, 0, NULL, 'Another mortal soul collected!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 8 /* Say */, 0, 0, NULL, 'Die you Derethian scum!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 8 /* Say */, 0, 0, NULL, 'The taste of blood, how I''ve missed it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803516, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803958,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803958,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803958,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803958,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803958,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803958,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803958,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803958,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803958,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803559,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803559,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803559,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803559,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803559,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803559,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803559,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803559,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803516, 9,803559,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */;

