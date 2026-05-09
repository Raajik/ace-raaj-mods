DELETE FROM `weenie` WHERE `class_Id` = 800077;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800077, 'Corroded Stone Golem', 10, '2023-09-17 10:57:35') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800077,   0,          0) /*  */
     , (800077,   1,         16) /* ItemType - Creature */
     , (800077,   2,         13) /* CreatureType - Golem */
     , (800077,   6,         -1) /* ItemsCapacity */
     , (800077,   7,         -1) /* ContainersCapacity */
     , (800077,  16,          1) /* ItemUseable - No */
     , (800077,  25,        280) /* Level */
     , (800077,  27,          0) /* ArmorType - None */
     , (800077,  40,          2) /* CombatMode - Melee */
     , (800077,  68,       0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800077,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800077, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800077, 146,    7867485) /* XpOverride */
     , (800077, 332,      10000) /* LuminanceAward */; 

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800077,   1, True ) /* Stuck */
     , (800077,   6, True ) /* AiUsesMana */
     , (800077,  11, False) /* IgnoreCollisions */
     , (800077,  12, True ) /* ReportCollisions */
     , (800077,  13, False) /* Ethereal */
     , (800077,  14, True ) /* GravityStatus */
     , (800077,  19, True ) /* Attackable */
     , (800077,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800077,   1,       5) /* HeartbeatInterval */
     , (800077,   2,       0) /* HeartbeatTimestamp */
     , (800077,   3,    0.45) /* HealthRate */
     , (800077,   4,     0.5) /* StaminaRate */
     , (800077,   5,       2) /* ManaRate */
     , (800077,  12,     0.5) /* Shade */
     , (800077,  13,       1) /* ArmorModVsSlash */
     , (800077,  14,       1) /* ArmorModVsPierce */
     , (800077,  15,     0.7) /* ArmorModVsBludgeon */
     , (800077,  16,       1) /* ArmorModVsCold */
     , (800077,  17,       1) /* ArmorModVsFire */
     , (800077,  18,       1) /* ArmorModVsAcid */
     , (800077,  19,       1) /* ArmorModVsElectric */
     , (800077,  31,      35) /* VisualAwarenessRange */
     , (800077,  34,     1.1) /* PowerupTime */
     , (800077,  36,       2) /* ChargeSpeed */
     , (800077,  39,     1.2) /* DefaultScale */
     , (800077,  64,     0.1) /* ResistSlash */
     , (800077,  65,     0.1) /* ResistPierce */
     , (800077,  66,     0.5) /* ResistBludgeon */
     , (800077,  67,     0.1) /* ResistFire */
     , (800077,  68,     0.1) /* ResistCold */
     , (800077,  69,     0.1) /* ResistAcid */
     , (800077,  70,     0.1) /* ResistElectric */
     , (800077,  71,       1) /* ResistHealthBoost */
     , (800077,  72,       1) /* ResistStaminaDrain */
     , (800077,  73,       1) /* ResistStaminaBoost */
     , (800077,  74,       1) /* ResistManaDrain */
     , (800077,  75,       1) /* ResistManaBoost */
     , (800077,  80,       3) /* AiUseMagicDelay */
     , (800077, 104,      10) /* ObviousRadarRange */
     , (800077, 122,       2) /* AiAcquireHealth */
     , (800077, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800077,   1, 'Corroded Stone Golem') /* Name */
     , (800077,  45, 'CandethGolemKilltask') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800077,   1, 0x020007D8) /* Setup */
     , (800077,   2, 0x09000081) /* MotionTable */
     , (800077,   3, 0x20000015) /* SoundTable */
     , (800077,   4, 0x30000008) /* CombatTable */
     , (800077,   8, 0x06001224) /* Icon */
     , (800077,  22, 0x3400005F) /* PhysicsEffectTable */
     , (800077,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800077,  0,  4,  0,    0,  500,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800077,  1,  4,  0,    0,  500,  250,  250,  250,  250,  250,  250,  250,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800077,  2,  4,  0,    0,  500,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800077,  3,  4,  0,    0,  500,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800077,  4,  4,  0,    0,  500,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800077,  5,  4,600, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800077,  6,  4,  0,    0,  500,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800077,  7,  4,  0,    0,  500,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800077,  8,  4,600, 0.75,  500,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800077,   1, 650, 0, 0) /* Strength */
     , (800077,   2, 680, 0, 0) /* Endurance */
     , (800077,   3, 370, 0, 0) /* Quickness */
     , (800077,   4,1580, 0, 0) /* Coordination */
     , (800077,   5, 340, 0, 0) /* Focus */
     , (800077,   6, 340, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800077,   1,  4000, 0, 0, 4000) /* MaxHealth */
     , (800077,   3,  6170, 0, 0, 6350) /* MaxStamina */
     , (800077,   5,  1200, 0, 0, 1340) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800077,  6, 0, 2, 0,  65, 0, 0) /* MeleeDefense        Trained */
     , (800077,  7, 0, 3, 0, 320, 0, 0) /* MissileDefense      Specialized */
     , (800077, 14, 0, 2, 0, 200, 0, 0) /* ArcaneLore          Trained */
     , (800077, 15, 0, 3, 0, 257, 0, 0) /* MagicDefense        Specialized */
     , (800077, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (800077, 22, 0, 2, 0,  10, 0, 0) /* Jump                Trained */
     , (800077, 24, 0, 2, 0, 210, 0, 0) /* Run                 Trained */
     , (800077, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (800077, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (800077, 34, 0, 3, 0, 320, 0, 0) /* WarMagic            Specialized */
     , (800077, 45, 0, 3, 0, 400, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800077,   234,  2.007) /* Vulnerability Other VI */
     , (800077,  1396,  2.007) /* Clumsiness Other VI */
     , (800077,  1420,  2.007) /* Slowness Other VI */
     , (800077,  2723,  2.016) /* Force Arc VI */
     , (800077,  2731,  2.016) /* Frost Arc VII */
     , (800077,  2738,  2.016) /* Lightning Arc VII */
     , (800077,  2752,  2.016) /* Shock Arc VII */
     , (800077,  2759,  2.016) /* Blade Arc VII */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800077, 3 /* Death */, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 76 /* InqOwnsItems */, 0, 1, NULL, 'OwnsItem-802609_4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802609, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800077, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'OwnsItem-802609_4', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 36 /* InqIntStat */, 0, 1, NULL, 'Level_276-350_4', NULL, 276, 350, NULL, NULL, NULL, NULL, 25 /* Level */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800077, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'Level_276-350_4', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 802614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800077, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'Level_276-350_4', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800077, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'OwnsItem-802609_4', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800077, 9,  3692,  0, 0, 0.03, False) /* Create Black Stone (3692) for ContainTreasure */;

