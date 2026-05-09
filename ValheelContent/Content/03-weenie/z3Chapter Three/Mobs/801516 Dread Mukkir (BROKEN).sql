DELETE FROM `weenie` WHERE `class_Id` = 801516;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801516, 'Dread Mukkir', 10, '2023-07-02 05:11:10') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801516,   1,         16) /* ItemType - Creature */
     , (801516,   2,         89) /* CreatureType - Mukkir */
     , (801516,   3,         39) /* PaletteTemplate - Black */
     , (801516,   6,         -1) /* ItemsCapacity */
     , (801516,   7,         -1) /* ContainersCapacity */
     , (801516,  16,          1) /* ItemUseable - No */
     , (801516,  25,        415) /* Level */
     , (801516,  32,      85000) /* ChannelsActive - Advocate1, Help, Fellow, Monarch, Holtburg */
     , (801516,  40,          1) /* CombatMode - NonCombat */
     , (801516,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801516, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801516, 146,    27116535) /* XpOverride */
     , (801516, 332,      25000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801516,   1, True ) /* Stuck */
     , (801516,  12, True ) /* ReportCollisions */
     , (801516,  14, True ) /* GravityStatus */
     , (801516,  19, True ) /* Attackable */
     , (801516,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801516,   1,       5) /* HeartbeatInterval */
     , (801516,   2,       0) /* HeartbeatTimestamp */
     , (801516,   3,     0.6) /* HealthRate */
     , (801516,   4,       3) /* StaminaRate */
     , (801516,   5,       1) /* ManaRate */
     , (801516,  12,     0.5) /* Shade */
     , (801516,  13,     0.7) /* ArmorModVsSlash */
     , (801516,  14,       1) /* ArmorModVsPierce */
     , (801516,  15,       1) /* ArmorModVsBludgeon */
     , (801516,  16,       1) /* ArmorModVsCold */
     , (801516,  17,       1) /* ArmorModVsFire */
     , (801516,  18,       1) /* ArmorModVsAcid */
     , (801516,  19,       1) /* ArmorModVsElectric */
     , (801516,  31,      24) /* VisualAwarenessRange */
     , (801516,  34,       1) /* PowerupTime */
     , (801516,  36,       1) /* ChargeSpeed */
     , (801516,  39,     1.7) /* DefaultScale */
     , (801516,  64,     0.3) /* ResistSlash */
     , (801516,  65,     0.1) /* ResistPierce */
     , (801516,  66,     0.1) /* ResistBludgeon */
     , (801516,  67,     0.1) /* ResistFire */
     , (801516,  68,     0.1) /* ResistCold */
     , (801516,  69,     0.1) /* ResistAcid */
     , (801516,  70,     0.1) /* ResistElectric */
     , (801516,  71,       1) /* ResistHealthBoost */
     , (801516,  72,    0.85) /* ResistStaminaDrain */
     , (801516,  73,       1) /* ResistStaminaBoost */
     , (801516,  74,    0.85) /* ResistManaDrain */
     , (801516,  75,       1) /* ResistManaBoost */
     , (801516,  80,       2) /* AiUseMagicDelay */
     , (801516, 104,      10) /* ObviousRadarRange */
     , (801516, 125,    0.03) /* ResistHealthDrain */
     , (801516, 127,       2) /* AiCounteractEnchantment */
     , (801516, 166,    0.25) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801516,   1, 'Dread Mukkir') /* Name */
     , (801516,  45, 'TrexxoKT3') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801516,   1, 0x020014BD) /* Setup */
     , (801516,   2, 0x09000194) /* MotionTable */
     , (801516,   3, 0x200000C3) /* SoundTable */
     , (801516,   4, 0x30000000) /* CombatTable */
     , (801516,   6, 0x04001EE3) /* PaletteBase */
     , (801516,   7, 0x10000645) /* ClothingBase */
     , (801516,   8, 0x0600629E) /* Icon */
     , (801516,  22, 0x340000B9) /* PhysicsEffectTable */
     , (801516,  30,         86) /* PhysicsScript - BreatheAcid */
     , (801516,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801516,  0,  4,1200, 0.75,  1800,  250,  250,  250,  250,  250,  250,  250,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (801516,  5,  1,1200, 0.75,  1800,  250,  250,  250,  250,  250,  250,  250,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Hand */
     , (801516, 16,  4,1200, 0.75,  1800,  250,  250,  250,  250,  250,  250,  250,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (801516, 18,  2,1200, 0.75,  1800,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (801516, 19,  2,1200, 0.75,  1800,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (801516, 22, 32,1200, 0.75,  1800,  250,  250,  250,  250,  250,  250,  250,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801516,   1,1900, 0, 0) /* Strength */
     , (801516,   2,1410, 0, 0) /* Endurance */
     , (801516,   3, 365, 0, 0) /* Quickness */
     , (801516,   4, 400, 0, 0) /* Coordination */
     , (801516,   5, 285, 0, 0) /* Focus */
     , (801516,   6, 285, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801516,   1, 10000, 0, 0,10000) /* MaxHealth */
     , (801516,   3,150000, 0, 0,150000) /* MaxStamina */
     , (801516,   5,150000, 0, 0,150000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801516,  6, 0, 3, 0, 185, 0, 0) /* MeleeDefense        Specialized */
     , (801516,  7, 0, 3, 0, 110, 0, 0) /* MissileDefense      Specialized */
     , (801516, 15, 0, 3, 0, 170, 0, 0) /* MagicDefense        Specialized */
     , (801516, 20, 0, 2, 0,  40, 0, 0) /* Deception           Trained */
     , (801516, 31, 0, 3, 0,450, 0, 0) /* CreatureEnchantment Specialized */
     , (801516, 33, 0, 3, 0,450, 0, 0) /* LifeMagic           Specialized */
     , (801516, 34, 0, 3, 0,450, 0, 0) /* WarMagic            Specialized */
     , (801516, 45, 0, 3, 0,450, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801516,  2122,   2.15) /* Disintegration */
     , (801516,  2146,   2.02) /* Evisceration */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801516, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 58 /* InqFellowQuest */, 0, 1, NULL, 'IsPlayerInFellow?@21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801516, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'IsPlayerInFellow?@21', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +1 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801516, 3 /* Death */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Prestige@10000_61', NULL, 10000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801516, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Prestige@10000_61', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 67 /* Goto */, 0, 1, NULL, 'RepRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801516, 32 /* GotoSet */, 0.5, NULL, NULL, NULL, 'RepRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +3 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801516, 9,801517,  0, 0,  0.1, False) /* Create Island Shreth Hide (800849) for ContainTreasure */;

