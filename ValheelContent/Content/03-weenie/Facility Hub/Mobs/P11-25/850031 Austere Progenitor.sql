DELETE FROM `weenie` WHERE `class_Id` = 850031;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850031, 'ace850031-austereprogenitor', 10, '2025-04-08 01:35:13') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850031,   0,          0) /*  */
     , (850031,   1,         16) /* ItemType - Creature */
     , (850031,   2,          1) /* CreatureType - Olthoi */
     , (850031,   3,         14) /* PaletteTemplate - Red */
     , (850031,   6,         -1) /* ItemsCapacity */
     , (850031,   7,         -1) /* ContainersCapacity */
     , (850031,   8,       8000) /* Mass */
     , (850031,  16,          1) /* ItemUseable - No */
     , (850031,  25,        500) /* Level */
     , (850031,  27,          0) /* ArmorType - None */
     , (850031,  40,          2) /* CombatMode - Melee */
     , (850031,  68,       0x80) /* TargetingTactic - Random, LastDamager */
     , (850031,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850031, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850031, 140,          1) /* AiOptions - CanOpenDoors */
     , (850031, 146,   33318660) /* XpOverride */
     , (850031, 332,      45000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850031,   1, True ) /* Stuck */
     , (850031,  11, False) /* IgnoreCollisions */
     , (850031,  12, True ) /* ReportCollisions */
     , (850031,  13, False) /* Ethereal */
     , (850031,  14, True ) /* GravityStatus */
     , (850031,  19, True ) /* Attackable */
     , (850031,  42, True ) /* AllowEdgeSlide */
     , (850031,  65, True ) /* IgnoreMagicResist */
     , (850031, 101, True ) /* CanGenerateRare */
     , (850031, 102, True ) /* CorpseGeneratedRare */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850031,   1,       5) /* HeartbeatInterval */
     , (850031,   2,       0) /* HeartbeatTimestamp */
     , (850031,   3,     0.4) /* HealthRate */
     , (850031,   4,     2.5) /* StaminaRate */
     , (850031,   5,       1) /* ManaRate */
     , (850031,  12,     0.1) /* Shade */
     , (850031,  13,       1) /* ArmorModVsSlash */
     , (850031,  14,     0.5) /* ArmorModVsPierce */
     , (850031,  15,     0.5) /* ArmorModVsBludgeon */
     , (850031,  16,       1) /* ArmorModVsCold */
     , (850031,  17,       1) /* ArmorModVsFire */
     , (850031,  18,       1) /* ArmorModVsAcid */
     , (850031,  19,       1) /* ArmorModVsElectric */
     , (850031,  31,      20) /* VisualAwarenessRange */
     , (850031,  34,     0.9) /* PowerupTime */
     , (850031,  36,       1) /* ChargeSpeed */
     , (850031,  39,       1) /* DefaultScale */
     , (850031,  64,     0.1) /* ResistSlash */
     , (850031,  65,    0.12) /* ResistPierce */
     , (850031,  66,    0.12) /* ResistBludgeon */
     , (850031,  67,     0.1) /* ResistFire */
     , (850031,  68,     0.1) /* ResistCold */
     , (850031,  69,     0.1) /* ResistAcid */
     , (850031,  70,     0.1) /* ResistElectric */
     , (850031,  71,       1) /* ResistHealthBoost */
     , (850031,  72,       1) /* ResistStaminaDrain */
     , (850031,  73,       1) /* ResistStaminaBoost */
     , (850031,  74,       1) /* ResistManaDrain */
     , (850031,  75,       1) /* ResistManaBoost */
     , (850031,  76,     0.5) /* Translucency */
     , (850031,  80,     3.2) /* AiUseMagicDelay */
     , (850031, 104,      10) /* ObviousRadarRange */
     , (850031, 122,       5) /* AiAcquireHealth */
     , (850031, 125,    0.03) /* ResistHealthDrain */
     , (850031, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850031,   1, 'Austere Progenitor') /* Name */
     , (850031,  45, 'dampKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850031,   1, 0x02000FB3) /* Setup */
     , (850031,   2, 0x09000135) /* MotionTable */
     , (850031,   3, 0x200000A1) /* SoundTable */
     , (850031,   4, 0x30000039) /* CombatTable */
     , (850031,   6, 0x04001606) /* PaletteBase */
     , (850031,   7, 0x100004C7) /* ClothingBase */
     , (850031,   8, 0x06002D3E) /* Icon */
     , (850031,  19, 0x00000057) /* ActivationAnimation */
     , (850031,  22, 0x340000A8) /* PhysicsEffectTable */
     , (850031,  30,         86) /* PhysicsScript - BreatheAcid */
     , (850031,  35,       4111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850031,  0,  4,2000,  0.5, 2600, 1300, 1300, 1300, 1300, 1300, 1300, 1300,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (850031, 16,  4,2000,  0.5, 2600, 1300, 1300, 1300, 1300, 1300, 1300, 1300,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (850031, 18,  2,2000,  0.5, 2600, 1300, 1300, 1300, 1300, 1300, 1300, 1300,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (850031, 19,  2,2000,  0.5, 2600, 1300, 1300, 1300, 1300, 1300, 1300, 1300,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (850031, 20,  1,2000,  0.5, 2600, 1300, 1300, 1300, 1300, 1300, 1300, 1300,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (850031, 22, 32,2000,  0.2,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850031,   1,1400, 0, 0) /* Strength */
     , (850031,   2, 380, 0, 0) /* Endurance */
     , (850031,   3, 240, 0, 0) /* Quickness */
     , (850031,   4, 500, 0, 0) /* Coordination */
     , (850031,   5, 160, 0, 0) /* Focus */
     , (850031,   6, 160, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850031,   1, 22450, 0, 0,22450) /* MaxHealth */
     , (850031,   3, 18600, 0, 0,19000) /* MaxStamina */
     , (850031,   5,     0, 0, 0,  160) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850031,  6, 0, 3, 0, 330, 0, 0) /* MeleeDefense        Specialized */
     , (850031,  7, 0, 3, 0, 325, 0, 0) /* MissileDefense      Specialized */
     , (850031, 15, 0, 3, 0, 350, 0, 0) /* MagicDefense        Specialized */
     , (850031, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (850031, 22, 0, 2, 0, 200, 0, 0) /* Jump                Trained */
     , (850031, 24, 0, 2, 0, 250, 0, 0) /* Run                 Trained */
     , (850031, 45, 0, 2, 0, 350, 0, 0) /* LightWeapons        Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850031, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 58 /* InqFellowQuest */, 0, 1, NULL, 'IsPlayerInFellow?@5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850031, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'IsPlayerInFellow?@5', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +1 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850031, 3 /* Death */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Prestige@10000_45', NULL, 10000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850031, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Prestige@10000_45', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 67 /* Goto */, 0, 1, NULL, 'RepRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850031, 32 /* GotoSet */, 0.5, NULL, NULL, NULL, 'RepRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +3 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850031, 14 /* Taunt */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 114 /* InqInt64Stat */, 0, 1, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL, 300000000, 9223372036854775807, NULL, NULL, 6 /* AvailableLuminance */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850031, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 112 /* SpendLuminance */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (850031, 9,801669,  0, 0, 0.01, False) /* Create Living Proto Key (801669) for ContainTreasure */;

