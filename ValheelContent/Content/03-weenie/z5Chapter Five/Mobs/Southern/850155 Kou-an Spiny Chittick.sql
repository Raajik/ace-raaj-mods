DELETE FROM `weenie` WHERE `class_Id` = 850155;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850155, 'ace850153-kou-anchittspiny', 10, '2020-10-16 18:24:12') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850155,   1,         16) /* ItemType - Creature */
     , (850155,   2,         33) /* CreatureType - Chittick */
     , (850155,   6,         -1) /* ItemsCapacity */
     , (850155,   7,         -1) /* ContainersCapacity */
     , (850155,  16,          1) /* ItemUseable - No */
     , (850155,  25,        625) /* Level */
     , (850155,  40,          2) /* CombatMode - Melee */
     , (850155,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (850155,  72,         33) /* FriendType - Chittick */
     , (850155,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850155, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (850155, 146,   23100000) /* XpOverride */
     , (850155, 332,     325000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850155,   1, True ) /* Stuck */
     , (850155,   6, True ) /* AiUsesMana */
     , (850155,  11, False) /* IgnoreCollisions */
     , (850155,  12, True ) /* ReportCollisions */
     , (850155,  13, False) /* Ethereal */
     , (850155,  14, True ) /* GravityStatus */
     , (850155,  19, True ) /* Attackable */
     , (850155,  42, True ) /* AllowEdgeSlide */
     , (850155,  50, True ) /* NeverFailCasting */
     , (850155,  65, True ) /* IgnoreMagicResistence */
     , (850155,  66, True ) /* IgnoreArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850155,   1,       5) /* HeartbeatInterval */
     , (850155,   2,       0) /* HeartbeatTimestamp */
     , (850155,   3,       2) /* HealthRate */
     , (850155,   4,       5) /* StaminaRate */
     , (850155,   5,       1) /* ManaRate */
     , (850155,  12,     0.1) /* Shade */
     , (850155,  13,       1) /* ArmorModVsSlash */
     , (850155,  14,     1.1) /* ArmorModVsPierce */
     , (850155,  15,       1) /* ArmorModVsBludgeon */
     , (850155,  16,       1) /* ArmorModVsCold */
     , (850155,  17,       1) /* ArmorModVsFire */
     , (850155,  18,       1) /* ArmorModVsAcid */
     , (850155,  19,       1) /* ArmorModVsElectric */
     , (850155,  31,      13) /* VisualAwarenessRange */
	 , (850155,  39,     1.6) /* DefaultScale */
     , (850155,  64,    0.01) /* ResistSlash */
     , (850155,  65,    0.05) /* ResistPierce */
     , (850155,  66,    0.01) /* ResistBludgeon */
     , (850155,  67,    0.01) /* ResistFire */
     , (850155,  68,    0.01) /* ResistCold */
     , (850155,  69,    0.01) /* ResistAcid */
     , (850155,  70,    0.01) /* ResistElectric */
     , (850155,  71,       1) /* ResistHealthBoost */
     , (850155,  72,       1) /* ResistStaminaDrain */
     , (850155,  73,       1) /* ResistStaminaBoost */
     , (850155,  74,       1) /* ResistManaDrain */
     , (850155,  75,       1) /* ResistManaBoost */
     , (850155,  80,     3.2) /* AiUseMagicDelay */
     , (850155, 104,      25) /* ObviousRadarRange */
     , (850155, 117,     0.5) /* FocusedProbability */
	 , (850155, 122,       5) /* AiAcquireHealth */
     , (850155, 125,       1) /* ResistHealthDrain */
     , (850155, 166,   0.025) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850155,   1, 'Kou-an Spiny Chittick') /* Name */
     , (850155,  45, 'southernKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850155,   1,   33558118) /* Setup */
     , (850155,   2,  150995065) /* MotionTable */
     , (850155,   3,  536870982) /* SoundTable */
     , (850155,   4,  805306402) /* CombatTable */
     , (850155,   8,  100669115) /* Icon */
     , (850155,  22,  872415336) /* PhysicsEffectTable */
     , (850155,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850155,   1, 2380, 0, 0) /* Strength */
     , (850155,   2,  800, 0, 0) /* Endurance */
     , (850155,   3,  800, 0, 0) /* Quickness */
     , (850155,   4, 2380, 0, 0) /* Coordination */
     , (850155,   5,  800, 0, 0) /* Focus */
     , (850155,   6,  800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850155,   1, 150500, 0, 0, 150500) /* MaxHealth */
     , (850155,   3,  14000, 0, 0,  14000) /* MaxStamina */
     , (850155,   5,   2000, 0, 0,   2000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850155,  6, 0, 3, 0,  345, 0, 0) /* MeleeDefense        Specialized */
     , (850155,  7, 0, 3, 0,  400, 0, 0) /* MissileDefense      Specialized */
     , (850155, 12, 0, 3, 0, 2165, 0, 0) /* ThrownWeapon        Specialized */
     , (850155, 13, 0, 3, 0, 2293, 0, 0) /* UnarmedCombat       Specialized */
     , (850155, 15, 0, 3, 0,  284, 0, 0) /* MagicDefense        Specialized */
     , (850155, 20, 0, 3, 0,  360, 0, 0) /* Deception           Specialized */
     , (850155, 22, 0, 3, 0,  320, 0, 0) /* Jump                Specialized */
     , (850155, 24, 0, 3, 0,  380, 0, 0) /* Run                 Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850155,  0,  1, 2200, 0.75, 1190,  654,  663,  672,  663,  634,  630,  663,    0, 1,  0.7, 0.34,    0,  0.7, 0.34,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (850155,  9,  1, 2250, 0.75, 1190,  654,  663,  672,  663,  634,  630,  663,    0, 1,  0.3, 0.33,    0,  0.3, 0.33,    0,    0,    0,    0,    0,    0,    0) /* Horn */
     , (850155, 16,  1, 2350, 0.75, 1190,  654,  663,  672,  663,  634,  630,  663,    0, 2,    0, 0.33,  0.3,    0, 0.33,  0.3,  0.5, 0.34,  0.3,  0.5, 0.34,  0.3) /* Torso */
     , (850155, 17,  2, 2200, 0.75, 1190,  654,  663,  672,  663,  634,  630,  663,    0, 2,    0,    0,    0,    0,    0,    0,  0.5, 0.33,    0,  0.5, 0.33,    0) /* Tail */
     , (850155, 19,  4,    0,    0, 1190,  654,  663,  672,  663,  634,  630,  663,    0, 3,    0,    0,  0.7,    0,    0,  0.7,    0, 0.33,  0.7,    0, 0.33,  0.7) /* Leg */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850155,  5 /* HeartBeat */,    0.1, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850155,  5 /* HeartBeat */,    0.1, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850155, 3 /* Death */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850155, 32 /* GotoSet */, 0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333 /* LumAugDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334 /* LumAugDamageReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335 /* LumAugCritDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336 /* LumAugCritReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);