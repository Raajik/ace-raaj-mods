DELETE FROM `weenie` WHERE `class_Id` = 803321;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803321, 'DrakinRaidOne', 10, '2025-05-07 02:55:45') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803321,   1,         16) /* ItemType - Creature */
     , (803321,   2,         71) /* CreatureType - Margul */
     , (803321,   3,         11) /* PaletteTemplate - Maroon */
     , (803321,   6,         -1) /* ItemsCapacity */
     , (803321,   7,         -1) /* ContainersCapacity */
     , (803321,  16,          1) /* ItemUseable - No */
     , (803321,  25,       5000) /* Level */
     , (803321,  27,          0) /* ArmorType - None */
     , (803321,  40,          2) /* CombatMode - Melee */
     , (803321,  68,       0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (803321,  72,         22) /* FriendType - Shadow */
     , (803321,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803321, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803321, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803321, 140,          1) /* AiOptions - CanOpenDoors */
     , (803321, 146,   99999999) /* XpOverride */
     , (803321, 332,   30000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803321,   1, True ) /* Stuck */
     , (803321,   6, True ) /* AiUsesMana */
     , (803321,  11, False) /* IgnoreCollisions */
     , (803321,  12, True ) /* ReportCollisions */
     , (803321,  13, False) /* Ethereal */
     , (803321,  14, True ) /* GravityStatus */
     , (803321,  19, True ) /* Attackable */
     , (803321,  65, True ) /* IgnoreMagicResist */
     , (803321,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803321,   1,       5) /* HeartbeatInterval */
     , (803321,   2,       0) /* HeartbeatTimestamp */
     , (803321,   3,     0.4) /* HealthRate */
     , (803321,   4,       5) /* StaminaRate */
     , (803321,   5,       1) /* ManaRate */
     , (803321,  13,      10) /* ArmorModVsSlash */
     , (803321,  14,      10) /* ArmorModVsPierce */
     , (803321,  15,      10) /* ArmorModVsBludgeon */
     , (803321,  16,      10) /* ArmorModVsCold */
     , (803321,  17,      10) /* ArmorModVsFire */
     , (803321,  18,      10) /* ArmorModVsAcid */
     , (803321,  19,      10) /* ArmorModVsElectric */
     , (803321,  31,      30) /* VisualAwarenessRange */
     , (803321,  34,       1) /* PowerupTime */
     , (803321,  36,       1) /* ChargeSpeed */
     , (803321,  39,       2) /* DefaultScale */
     , (803321,  64,   0.001) /* ResistSlash */
     , (803321,  65,   0.001) /* ResistPierce */
     , (803321,  66,   0.001) /* ResistBludgeon */
     , (803321,  67,   0.001) /* ResistFire */
     , (803321,  68,   0.001) /* ResistCold */
     , (803321,  69,   0.001) /* ResistAcid */
     , (803321,  70,   0.001) /* ResistElectric */
     , (803321,  71,       1) /* ResistHealthBoost */
     , (803321,  72,       1) /* ResistStaminaDrain */
     , (803321,  73,       1) /* ResistStaminaBoost */
     , (803321,  74,       1) /* ResistManaDrain */
     , (803321,  75,       1) /* ResistManaBoost */
     , (803321,  80,       3) /* AiUseMagicDelay */
     , (803321, 104,      10) /* ObviousRadarRange */
     , (803321, 117,     0.5) /* FocusedProbability */
     , (803321, 122,       2) /* AiAcquireHealth */
     , (803321, 125,   0.001) /* ResistHealthDrain */
     , (803321, 166,   0.001) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803321,   1, 'Dragon of the Deep') /* Name */
     , (803321,  45, 'raid1KT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803321,   1, 0x02001BA3) /* Setup */
     , (803321,   2, 0x0900021D) /* MotionTable */
     , (803321,   3, 0x20000009) /* SoundTable */
     , (803321,   4, 0x30000012) /* CombatTable */
     , (803321,   6, 0x040001BB) /* PaletteBase */
     , (803321,   7, 0x100000AF) /* ClothingBase */
     , (803321,   8, 0x06001222) /* Icon */
     , (803321,  19, 0x00000057) /* ActivationAnimation */
     , (803321,  22, 0x3400001C) /* PhysicsEffectTable */
     , (803321,  30,         87) /* PhysicsScript - BreatheLightning */
     , (803321,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803321,  0, 64,150000, 0.75,55000,27500,27500,27500,27500,27500,27500,27500,    0, 1, 0.44,  0.3,    0, 0.44,    0,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (803321,  1, 64,  0,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 2, 0.33, 0.17,    0, 0.33, 0.17,    0, 0.33, 0.17,    0, 0.33, 0.17,    0) /* Chest */
     , (803321,  2, 64,  0,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0,    0,    0,    0, 0.17,    0) /* Abdomen */
     , (803321,  3, 64,  0,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 1, 0.13, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.17,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803321,  4, 64,  0,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 2,    0,  0.2,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803321,  5, 64,150000, 0.75,55000,27500,27500,27500,27500,27500,27500,27500,    0,20,    0,  0.1,    0,    0,  0.2,    0,    0,    0,    0,    0,  0.2,    0) /* Hand */
     , (803321,  6, 64,  0,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 3,    0, 0.03, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18, 0.44, 0.13, 0.18) /* UpperLeg */
     , (803321,  7, 64,  0,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 3,    0,    0,  0.6,    0,    0,  0.6, 0.44,  0.2,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803321,  8, 64,150000, 0.75,55000,27500,27500,27500,27500,27500,27500,27500,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0, 0.03, 0.22,    0,    0, 0.22) /* Foot */
     , (803321,  9, 64,150000,  0.5,55000,27500,27500,27500,27500,27500,27500,27500,    0, 1,  0.1,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Horn */
     , (803321, 22, 64,150000,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803321,   1,150000, 0, 0) /* Strength */
     , (803321,   2,150000, 0, 0) /* Endurance */
     , (803321,   3, 320, 0, 0) /* Quickness */
     , (803321,   4, 750, 0, 0) /* Coordination */
     , (803321,   5,1400, 0, 0) /* Focus */
     , (803321,   6,1400, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803321,   1,25000000, 0, 0,25000000) /* MaxHealth */
     , (803321,   3,25000000, 0, 0,25000000) /* MaxStamina */
     , (803321,   5,25000000, 0, 0,25000000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803321,  6, 0, 3, 0, 350, 0, 0) /* MeleeDefense        Specialized */
     , (803321,  7, 0, 3, 0, 350, 0, 0) /* MissileDefense      Specialized */
     , (803321, 15, 0, 3, 0, 350, 0, 0) /* MagicDefense        Specialized */
     , (803321, 31, 0, 3, 0,2405, 0, 0) /* CreatureEnchantment Specialized */
     , (803321, 32, 0, 3, 0,2405, 0, 0) /* ItemEnchantment     Specialized */
     , (803321, 33, 0, 3, 0,2405, 0, 0) /* LifeMagic           Specialized */
     , (803321, 34, 0, 3, 0,3400, 0, 0) /* WarMagic            Specialized */
     , (803321, 45, 0, 3, 0,4450, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803321, 20 /* ReceiveCritical */, 0.005, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 99 /* TeleportTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x5964010A /* 0x5964010A [20.525148 -89.55777 0.005] 0.999985 0 0 0.005403 */, 20.525148, -89.55777, 0.005, 0.999985, 0, 0, 0.005403);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803321, 20 /* ReceiveCritical */, 0.007, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4658 /* Incantation of Stamina to Health Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 19 /* CastSpellInstant */, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4656 /* Incantation of Mana to Stamina Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803321, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 23 /* StartEvent */, 0, 1, NULL, 'TownBossAyan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803321, 20 /* ReceiveCritical */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 5, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803321, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803321, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 24 /* StopEvent */, 0, 1, NULL, 'TownBossAyan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803321, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803331,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803331,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803331,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803331,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803331,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803331,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803331,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803331,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803321, 9,803331,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */;

