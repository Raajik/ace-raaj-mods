DELETE FROM `weenie` WHERE `class_Id` = 850100;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850100, 'ace850100-cayshreth', 10, '2021-01-05 18:24:05') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850100,   1,         16) /* ItemType - Creature */
     , (850100,   2,         32) /* CreatureType - Shreth */
     , (850100,   3,         41) /* PaletteTemplate - SandyYellow */
     , (850100,   6,         -1) /* ItemsCapacity */
     , (850100,   7,         -1) /* ContainersCapacity */
     , (850100,  16,          1) /* ItemUseable - No */
     , (850100,  25,        615) /* Level */
     , (850100,  27,          0) /* ArmorType - None */
     , (850100,  40,          2) /* CombatMode - Melee */
     , (850100,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (850100,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850100, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850100, 146,   15000000) /* XpOverride */
     , (850100, 332,      75000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850100,   1, True ) /* Stuck */
     , (850100,   6, False) /* AiUsesMana */
     , (850100,  12, True ) /* ReportCollisions */
     , (850100,  13, False) /* Ethereal */
     , (850100,  14, True ) /* GravityStatus */
     , (850100,  19, True ) /* Attackable */
     , (850100,  65, True ) /* IgnoreMagicResist */
     , (850100, 101, True ) /* CanGenerateRare */
     , (850100, 102, True ) /* CorpseGeneratedRare */
     , (850100, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850100,   1,       5) /* HeartbeatInterval */
     , (850100,   2,       0) /* HeartbeatTimestamp */
     , (850100,   3,     0.4) /* HealthRate */
     , (850100,   4,       5) /* StaminaRate */
     , (850100,   5,       1) /* ManaRate */
     , (850100,  13,       1) /* ArmorModVsSlash */
     , (850100,  14,       1) /* ArmorModVsPierce */
     , (850100,  15,       1) /* ArmorModVsBludgeon */
     , (850100,  16,     1.8) /* ArmorModVsCold */
     , (850100,  17,       1) /* ArmorModVsFire */
     , (850100,  18,       1) /* ArmorModVsAcid */
     , (850100,  19,       1) /* ArmorModVsElectric */
     , (850100,  31,      30) /* VisualAwarenessRange */
     , (850100,  34,       1) /* PowerupTime */
     , (850100,  36,       1) /* ChargeSpeed */
     , (850100,  39,       1) /* DefaultScale */
     , (850100,  64,    0.01) /* ResistSlash */
     , (850100,  65,    0.01) /* ResistPierce */
     , (850100,  66,    0.01) /* ResistBludgeon */
     , (850100,  67,    0.01) /* ResistFire */
     , (850100,  68,     0.1) /* ResistCold */
     , (850100,  69,    0.01) /* ResistAcid */
     , (850100,  70,    0.01) /* ResistElectric */
     , (850100,  71,       1) /* ResistHealthBoost */
     , (850100,  72,       1) /* ResistStaminaDrain */
     , (850100,  73,       1) /* ResistStaminaBoost */
     , (850100,  74,       1) /* ResistManaDrain */
     , (850100,  75,       1) /* ResistManaBoost */
     , (850100,  80,       3) /* AiUseMagicDelay */
     , (850100, 104,      10) /* ObviousRadarRange */
     , (850100, 117,     0.5) /* FocusedProbability */
     , (850100, 122,       2) /* AiAcquireHealth */
     , (850100, 125,       1) /* ResistHealthDrain */
     , (850100, 166,    0.06) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850100,   1, 'Cay Shreth') /* Name */
     , (850100,  45, 'coastalKT2') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850100,   1,   33555908) /* Setup */
     , (850100,   2,  150995072) /* MotionTable */
     , (850100,   3,  536870986) /* SoundTable */
     , (850100,   4,  805306399) /* CombatTable */
     , (850100,   6,   67112444) /* PaletteBase */
     , (850100,   7,  268435840) /* ClothingBase */
     , (850100,   8,  100669720) /* Icon */
     , (850100,  22,  872415333) /* PhysicsEffectTable */
     , (850100,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850100,   1, 1540, 0, 0) /* Strength */
     , (850100,   2, 1575, 0, 0) /* Endurance */
     , (850100,   3, 520, 0, 0) /* Quickness */
     , (850100,   4, 500, 0, 0) /* Coordination */
     , (850100,   5, 150, 0, 0) /* Focus */
     , (850100,   6, 150, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850100,   1, 45000, 0, 0, 45000) /* MaxHealth */
     , (850100,   3, 15000, 0, 0, 15000) /* MaxStamina */
     , (850100,   5,  5000, 0, 0, 5000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850100,  6, 0, 3, 0, 350, 0, 0) /* MeleeDefense        Specialized */
     , (850100,  7, 0, 3, 0, 400, 0, 0) /* MissileDefense      Specialized */
     , (850100, 15, 0, 3, 0, 400, 0, 0) /* MagicDefense        Specialized */
     , (850100, 20, 0, 3, 0, 320, 0, 0) /* Deception           Specialized */
     , (850100, 22, 0, 3, 0, 370, 0, 0) /* Jump                Specialized */
     , (850100, 24, 0, 3, 0, 310, 0, 0) /* Run                 Specialized */
     , (850100, 44, 0, 3, 0, 9492, 0, 0) /* HeavyWeapons        Specialized */
     , (850100, 45, 0, 3, 0, 9492, 0, 0) /* LightWeapons        Specialized */
     , (850100, 46, 0, 3, 0, 9442, 0, 0) /* FinesseWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850100,  0,  4, 500, 0.75,  450, 5158, 5158, 5158, 5158, 5158, 5158, 5158, 2200, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (850100,  1,  4, 500, 0.75,  450, 5158, 5158, 5158, 5158, 5158, 5158, 5158, 2200, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (850100,  2,  4, 500, 0.75,  450, 5158, 5158, 5158, 5158, 5158, 5158, 5158, 2200, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (850100,  3,  4, 500, 0.75,  450, 5158, 5158, 5158, 5158, 5158, 5158, 5158, 2200, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (850100,  4,  4, 500, 0.75,  450, 5158, 5158, 5158, 5158, 5158, 5158, 5158, 2200, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (850100,  5,  4, 500, 0.75,  450, 5158, 5158, 5158, 5158, 5158, 5158, 5158, 2200, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (850100,  6,  4, 500, 0.75,  450, 5158, 5158, 5158, 5158, 5158, 5158, 5158, 2200, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (850100,  7,  4, 500, 0.75,  450, 5158, 5158, 5158, 5158, 5158, 5158, 5158, 2200, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (850100,  8,  4, 500, 0.75,  450, 5158, 5158, 5158, 5158, 5158, 5158, 5158, 2200, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850100,  5 /* HeartBeat */,  0.025, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435533 /* ChestBeat */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850100,  5 /* HeartBeat */,  0.075, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850100,  5 /* HeartBeat */,    0.1, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435538 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850100,  5 /* HeartBeat */,  0.025, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435533 /* ChestBeat */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850100,  5 /* HeartBeat */,  0.075, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435537 /* Twitch1 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850100,  5 /* HeartBeat */,    0.1, NULL, 2147483709 /* NonCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 268435538 /* Twitch2 */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
