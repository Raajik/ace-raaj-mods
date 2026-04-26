DELETE FROM `weenie` WHERE `class_Id` = 803378;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803378, 'DrakinRaidTwo', 10, '2025-05-07 03:05:26') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803378,   1,         16) /* ItemType - Creature */
     , (803378,   2,         71) /* CreatureType - Margul */
     , (803378,   3,         11) /* PaletteTemplate - Maroon */
     , (803378,   6,         -1) /* ItemsCapacity */
     , (803378,   7,         -1) /* ContainersCapacity */
     , (803378,  16,          1) /* ItemUseable - No */
     , (803378,  25,       5000) /* Level */
     , (803378,  27,          0) /* ArmorType - None */
     , (803378,  40,          2) /* CombatMode - Melee */
     , (803378,  68,       0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (803378,  72,         22) /* FriendType - Shadow */
     , (803378,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803378, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803378, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803378, 140,          1) /* AiOptions - CanOpenDoors */
     , (803378, 146,   99999999) /* XpOverride */
     , (803378, 332,   30000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803378,   1, True ) /* Stuck */
     , (803378,   6, True ) /* AiUsesMana */
     , (803378,  11, False) /* IgnoreCollisions */
     , (803378,  12, True ) /* ReportCollisions */
     , (803378,  13, False) /* Ethereal */
     , (803378,  14, True ) /* GravityStatus */
     , (803378,  19, True ) /* Attackable */
     , (803378,  65, True ) /* IgnoreMagicResist */
     , (803378,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803378,   1,       5) /* HeartbeatInterval */
     , (803378,   2,       0) /* HeartbeatTimestamp */
     , (803378,   3,     0.4) /* HealthRate */
     , (803378,   4,       5) /* StaminaRate */
     , (803378,   5,       1) /* ManaRate */
     , (803378,  13,      10) /* ArmorModVsSlash */
     , (803378,  14,      10) /* ArmorModVsPierce */
     , (803378,  15,      10) /* ArmorModVsBludgeon */
     , (803378,  16,      10) /* ArmorModVsCold */
     , (803378,  17,      10) /* ArmorModVsFire */
     , (803378,  18,      10) /* ArmorModVsAcid */
     , (803378,  19,      10) /* ArmorModVsElectric */
     , (803378,  31,      30) /* VisualAwarenessRange */
     , (803378,  34,       1) /* PowerupTime */
     , (803378,  36,       1) /* ChargeSpeed */
     , (803378,  39,       4) /* DefaultScale */
     , (803378,  64,   0.001) /* ResistSlash */
     , (803378,  65,   0.001) /* ResistPierce */
     , (803378,  66,   0.001) /* ResistBludgeon */
     , (803378,  67,   0.001) /* ResistFire */
     , (803378,  68,   0.001) /* ResistCold */
     , (803378,  69,   0.001) /* ResistAcid */
     , (803378,  70,   0.001) /* ResistElectric */
     , (803378,  71,       1) /* ResistHealthBoost */
     , (803378,  72,       1) /* ResistStaminaDrain */
     , (803378,  73,       1) /* ResistStaminaBoost */
     , (803378,  74,       1) /* ResistManaDrain */
     , (803378,  75,       1) /* ResistManaBoost */
     , (803378,  80,       3) /* AiUseMagicDelay */
     , (803378, 104,      10) /* ObviousRadarRange */
     , (803378, 117,     0.5) /* FocusedProbability */
     , (803378, 122,       2) /* AiAcquireHealth */
     , (803378, 125,   0.001) /* ResistHealthDrain */
     , (803378, 166,   0.001) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803378,   1, 'Aun Drakin of the Dark') /* Name */
     , (803378,  45, 'raid2KT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803378,   1, 0x02001532) /* Setup */
     , (803378,   2, 0x09000194) /* MotionTable */
     , (803378,   3, 0x200000C3) /* SoundTable */
     , (803378,   4, 0x30000000) /* CombatTable */
     , (803378,   6, 0x04001EE3) /* PaletteBase */
     , (803378,   7, 0x10000645) /* ClothingBase */
     , (803378,   8, 0x0600629E) /* Icon */
     , (803378,  22, 0x340000B9) /* PhysicsEffectTable */
     , (803378,  30,         85) /* PhysicsScript - BreatheFrost */
     , (803378,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803378,  0,  4,150000, 0.75,55000,27500,27500,27500,27500,27500,27500,27500,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (803378,  5,  1,150000, 0.75,55000,27500,27500,27500,27500,27500,27500,27500,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Hand */
     , (803378, 16,  4,150000,  0.5,55000,27500,27500,27500,27500,27500,27500,27500,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (803378, 18,  2,150000,  0.5,55000,27500,27500,27500,27500,27500,27500,27500,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (803378, 19,  2,150000, 0.75,55000,27500,27500,27500,27500,27500,27500,27500,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (803378, 22, 32,150000,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803378,   1,150000, 0, 0) /* Strength */
     , (803378,   2,150000, 0, 0) /* Endurance */
     , (803378,   3, 320, 0, 0) /* Quickness */
     , (803378,   4, 750, 0, 0) /* Coordination */
     , (803378,   5,1400, 0, 0) /* Focus */
     , (803378,   6,1400, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803378,   1,25000000, 0, 0,25000000) /* MaxHealth */
     , (803378,   3,25000000, 0, 0,25000000) /* MaxStamina */
     , (803378,   5,25000000, 0, 0,25000000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803378,  6, 0, 3, 0, 350, 0, 0) /* MeleeDefense        Specialized */
     , (803378,  7, 0, 3, 0, 350, 0, 0) /* MissileDefense      Specialized */
     , (803378, 15, 0, 3, 0, 350, 0, 0) /* MagicDefense        Specialized */
     , (803378, 31, 0, 3, 0,2405, 0, 0) /* CreatureEnchantment Specialized */
     , (803378, 32, 0, 3, 0,2405, 0, 0) /* ItemEnchantment     Specialized */
     , (803378, 33, 0, 3, 0,2405, 0, 0) /* LifeMagic           Specialized */
     , (803378, 34, 0, 3, 0,3400, 0, 0) /* WarMagic            Specialized */
     , (803378, 45, 0, 3, 0,4450, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803378, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 24 /* StopEvent */, 0, 1, NULL, 'TownBossBaishi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803378, 20 /* ReceiveCritical */, 0.005, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 99 /* TeleportTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x5964010A /* 0x5964010A [20.525148 -89.55777 0.005] 0.999985 0 0 0.005403 */, 20.525148, -89.55777, 0.005, 0.999985, 0, 0, 0.005403);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803378, 20 /* ReceiveCritical */, 0.007, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4658 /* Incantation of Stamina to Health Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 19 /* CastSpellInstant */, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4656 /* Incantation of Mana to Stamina Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803378, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 23 /* StartEvent */, 0, 1, NULL, 'TownBossBaishi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803378, 20 /* ReceiveCritical */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 5, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803378, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803378, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803325,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803379,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803379,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803379,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803379,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803379,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803379,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803379,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803379,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803378, 9,803379,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */;

