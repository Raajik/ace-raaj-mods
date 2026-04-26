DELETE FROM `weenie` WHERE `class_Id` = 800658;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800658, 'King Murph1', 10, '2025-05-10 07:56:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800658,   1,         16) /* ItemType - Creature */
     , (800658,   2,         92) /* CreatureType - ParadoxOlthoi */
     , (800658,   3,         13) /* PaletteTemplate - Purple */
     , (800658,   6,         -1) /* ItemsCapacity */
     , (800658,   7,         -1) /* ContainersCapacity */
     , (800658,  16,          1) /* ItemUseable - No */
     , (800658,  25,        700) /* Level */
     , (800658,  68,       0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800658,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800658, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800658, 146,    5000000) /* XpOverride */
     , (800658, 332,    1000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800658,   1, True ) /* Stuck */
     , (800658,  50, True ) /* NeverFailCasting */
     , (800658,  65, True ) /* IgnoreMagicResist */
     , (800658,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800658,   1,       5) /* HeartbeatInterval */
     , (800658,   2,       0) /* HeartbeatTimestamp */
     , (800658,   3,     0.4) /* HealthRate */
     , (800658,   4,       5) /* StaminaRate */
     , (800658,   5,       1) /* ManaRate */
     , (800658,  13,      10) /* ArmorModVsSlash */
     , (800658,  14,      10) /* ArmorModVsPierce */
     , (800658,  15,      10) /* ArmorModVsBludgeon */
     , (800658,  16,      10) /* ArmorModVsCold */
     , (800658,  17,      10) /* ArmorModVsFire */
     , (800658,  18,      10) /* ArmorModVsAcid */
     , (800658,  19,      10) /* ArmorModVsElectric */
     , (800658,  31,      30) /* VisualAwarenessRange */
     , (800658,  34,       1) /* PowerupTime */
     , (800658,  36,       1) /* ChargeSpeed */
     , (800658,  39,     2.7) /* DefaultScale */
     , (800658,  64,   0.001) /* ResistSlash */
     , (800658,  65,   0.001) /* ResistPierce */
     , (800658,  66,   0.001) /* ResistBludgeon */
     , (800658,  67,   0.001) /* ResistFire */
     , (800658,  68,   0.001) /* ResistCold */
     , (800658,  69,   0.001) /* ResistAcid */
     , (800658,  70,   0.001) /* ResistElectric */
     , (800658,  71,       1) /* ResistHealthBoost */
     , (800658,  72,       1) /* ResistStaminaDrain */
     , (800658,  73,       1) /* ResistStaminaBoost */
     , (800658,  74,       1) /* ResistManaDrain */
     , (800658,  75,       1) /* ResistManaBoost */
     , (800658,  80,       3) /* AiUseMagicDelay */
     , (800658, 104,      10) /* ObviousRadarRange */
     , (800658, 117,     0.5) /* FocusedProbability */
     , (800658, 122,       2) /* AiAcquireHealth */
     , (800658, 125,   0.001) /* ResistHealthDrain */
     , (800658, 166,   0.001) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800658,   1, 'King Murph the Destroyer') /* Name */
     , (800658,  45, 'KingMurphKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800658,   1, 0x0200171C) /* Setup */
     , (800658,   2, 0x0900000C) /* MotionTable */
     , (800658,   3, 0x20000011) /* SoundTable */
     , (800658,   4, 0x3000000B) /* CombatTable */
     , (800658,   6, 0x0400102F) /* PaletteBase */
     , (800658,   7, 0x10000403) /* ClothingBase */
     , (800658,   8, 0x06001033) /* Icon */
     , (800658,  22, 0x34000027) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800658,  0,1024,150000, 0.75,55000,27500,27500,27500,27500,27500,27500,27500,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (800658, 16,1024,150000,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (800658, 18,1024,150000,  0.5,55000,27500,27500,27500,27500,27500,27500,27500,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (800658, 19,1024,150000,    0,55000,27500,27500,27500,27500,27500,27500,27500,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (800658, 20,1024,150000, 0.75,55000,27500,27500,27500,27500,27500,27500,27500,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (800658, 22,1024,150000,  0.5,55000,27500,27500,27500,27500,27500,27500,27500,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800658,   1,150000, 0, 0) /* Strength */
     , (800658,   2,150000, 0, 0) /* Endurance */
     , (800658,   3, 800, 0, 0) /* Quickness */
     , (800658,   4, 800, 0, 0) /* Coordination */
     , (800658,   5, 800, 0, 0) /* Focus */
     , (800658,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800658,   1,25000000, 0, 0,25000000) /* MaxHealth */
     , (800658,   3,25000000, 0, 0,25000000) /* MaxStamina */
     , (800658,   5,25000000, 0, 0,25000000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800658,  6, 0, 2, 0, 260, 0, 0) /* MeleeDefense        Trained */
     , (800658,  7, 0, 2, 0, 220, 0, 0) /* MissileDefense      Trained */
     , (800658, 15, 0, 2, 0, 240, 0, 0) /* MagicDefense        Trained */
     , (800658, 16, 0, 2, 0, 200, 0, 0) /* ManaConversion      Trained */
     , (800658, 31, 0, 2, 0, 400, 0, 0) /* CreatureEnchantment Trained */
     , (800658, 33, 0, 2, 0,6400, 0, 0) /* LifeMagic           Trained */
     , (800658, 34, 0, 2, 0,1400, 0, 0) /* WarMagic            Trained */
     , (800658, 41, 0, 2, 0,4240, 0, 0) /* TwoHandedCombat     Trained */
     , (800658, 44, 0, 2, 0,3740, 0, 0) /* HeavyWeapons        Trained */
     , (800658, 45, 0, 2, 0,3250, 0, 0) /* LightWeapons        Trained */
     , (800658, 46, 0, 2, 0,4140, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800658, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800658, 20 /* ReceiveCritical */, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4658 /* Incantation of Stamina to Health Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 19 /* CastSpellInstant */, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4656 /* Incantation of Mana to Stamina Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800658, 14 /* Taunt */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800658, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 23 /* StartEvent */, 0, 1, NULL, 'TPEvent2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 24 /* StopEvent */, 0, 1, NULL, 'TPEvent1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 16 /* WorldBroadcast */, 0, 1, NULL, 'King Murph the Destroyer has been bested! Let''s see if our champions can survive the next Challenge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

