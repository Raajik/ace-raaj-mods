DELETE FROM `weenie` WHERE `class_Id` = 850112;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850112, 'ace850112-arcticmage', 10, '2023-03-02 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850112,   1,         16) /* ItemType - Creature */
     , (850112,   2,         83) /* CreatureType - ViamontianKnight */
     , (850112,   6,         -1) /* ItemsCapacity */
     , (850112,   7,         -1) /* ContainersCapacity */
     , (850112,  16,          1) /* ItemUseable - No */
     , (850112,  25,        635) /* Level */
     , (850112,  27,          1) /* ArmorType - Cloth */
     , (850112,  40,          2) /* CombatMode - Melee */
     , (850112,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (850112,  72,         83) /* FriendType - ViamontianKnight */
     , (850112,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850112, 113,          1) /* Gender - Male */
     , (850112, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850112, 140,          1) /* AiOptions - CanOpenDoors */
     , (850112, 146,    1100000) /* XpOverride */
     , (850112, 188,          4) /* HeritageGroup - Viamontian */
     , (850112, 332,      75000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850112,   1, True ) /* Stuck */
     , (850112,   6, False) /* AiUsesMana */
     , (850112,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850112,   1,       5) /* HeartbeatInterval */
     , (850112,   2,       0) /* HeartbeatTimestamp */
     , (850112,   3,   0.067) /* HealthRate */
     , (850112,   4,       3) /* StaminaRate */
     , (850112,   5,       1) /* ManaRate */
     , (850112,  13,     1.1) /* ArmorModVsSlash */
     , (850112,  14,     1.1) /* ArmorModVsPierce */
     , (850112,  15,       1) /* ArmorModVsBludgeon */
     , (850112,  16,       1) /* ArmorModVsCold */
     , (850112,  17,       1) /* ArmorModVsFire */
     , (850112,  18,       1) /* ArmorModVsAcid */
     , (850112,  19,       1) /* ArmorModVsElectric */
     , (850112,  31,      20) /* VisualAwarenessRange */
     , (850112,  39,       1) /* DefaultScale */
     , (850112,  64,    0.05) /* ResistSlash */
     , (850112,  65,    0.05) /* ResistPierce */
     , (850112,  66,    0.01) /* ResistBludgeon */
     , (850112,  67,    0.01) /* ResistFire */
     , (850112,  68,    0.01) /* ResistCold */
     , (850112,  69,    0.01) /* ResistAcid */
     , (850112,  70,    0.01) /* ResistElectric */
     , (850112,  71,       1) /* ResistHealthBoost */
     , (850112,  72,       1) /* ResistStaminaDrain */
     , (850112,  73,       1) /* ResistStaminaBoost */
     , (850112,  74,       1) /* ResistManaDrain */
     , (850112,  75,       1) /* ResistManaBoost */
     , (850112, 104,      12) /* ObviousRadarRange */
     , (850112, 125,       1) /* ResistHealthDrain */
     , (850112, 166,    0.03) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850112,   1, 'Arctic Mage') /* Name */
     , (850112,  45, 'AMageKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850112,   1,   33554433) /* Setup */
     , (850112,   2,  150994945) /* MotionTable */
     , (850112,   3,  536870913) /* SoundTable */
     , (850112,   4,  805306368) /* CombatTable */
     , (850112,   6,   67108990) /* PaletteBase */
     , (850112,   8,  100667446) /* Icon */
     , (850112,  17,   67115904) /* SkinPalette */
     , (850112,  22,  872415236) /* PhysicsEffectTable */
     , (850112,  35,        449) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850112,   1, 245, 0, 0) /* Strength */
     , (850112,   2, 185, 0, 0) /* Endurance */
     , (850112,   3, 295, 0, 0) /* Quickness */
     , (850112,   4, 285, 0, 0) /* Coordination */
     , (850112,   5, 445, 0, 0) /* Focus */
     , (850112,   6, 445, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850112,   1,   140000, 0, 0, 140000) /* MaxHealth */
     , (850112,   3,   37005, 0, 0, 50060) /* MaxStamina */
     , (850112,   5,   30075, 0, 0, 80020) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850112,  6, 0, 3, 0, 260, 0, 0) /* MeleeDefense        Specialized */
     , (850112,  7, 0, 3, 0, 300, 0, 0) /* MissileDefense      Specialized */
     , (850112, 15, 0, 3, 0, 250, 0, 0) /* MagicDefense        Specialized */
     , (850112, 20, 0, 2, 0,  30, 0, 0) /* Deception           Trained */
     , (850112, 31, 0, 2, 0, 225, 0, 0) /* CreatureEnchantment Trained */
     , (850112, 33, 0, 3, 0, 235, 0, 0) /* LifeMagic           Specialized */
     , (850112, 34, 0, 3, 0, 235, 0, 0) /* WarMagic            Specialized */
     , (850112, 45, 0, 3, 0, 290, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850112,  0,  4,  0,    0,  450,  653,  653,  544,  544,  435,  544,  435,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (850112,  1,  4,  0,    0,  450,  653,  653,  544,  544,  435,  544,  435,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (850112,  2,  4,  0,    0,  450,  653,  653,  544,  544,  435,  544,  435,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (850112,  3,  4,  0,    0,  450,  653,  653,  544,  544,  435,  544,  435,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (850112,  4,  4,  0,    0,  450,  653,  653,  544,  544,  435,  544,  435,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (850112,  5,  4, 1800,  0.4,  450,  653,  653,  544,  544,  435,  544,  435,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (850112,  6,  4,  0,    0,  450,  653,  653,  544,  544,  435,  544,  435,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (850112,  7,  4,  0,    0,  450,  653,  653,  544,  544,  435,  544,  435,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (850112,  8,  4, 1800,  0.4,  450,  653,  653,  544,  544,  435,  544,  435,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850112,  1237,   2.04)  /* Drain Health Other I */
     , (850112,  1249,   2.04)  /* Drain Stamina Other I */
     , (850112,  1260,  2.004)  /* Drain Mana Other I */
     , (850112,  1783,   2.04)  /* Searing Disc */
     , (850112,  1784,   2.04)  /* Horizon's Blades */
     , (850112,  1785,   2.04)  /* Cassius' Ring of Fire */
     , (850112,  1786,   2.04)  /* Nuhmudira's Spines */
     , (850112,  1788,   2.04)  /* Eye of the Storm */
     , (850112,  1789,   2.04)  /* Tectonic Rifts */
     , (850112,  1841,   2.04)  /* Slithering Flames */
     , (850112,  1882,      2)  /* Nullify All Magic Self */
     , (850112,  2053,      2)  /* Executor's Blessing */
     , (850112,  2074,   2.04)  /* Gossamer Flesh */
     , (850112,  2122,   2.04)  /* Disintegration */
     , (850112,  2128,   2.04)  /* Ilservian's Flame */
     , (850112,  2129,   2.04)  /* Sizzling Fury */
     , (850112,  2136,   2.04)  /* Icy Torment */
     , (850112,  2140,   2.04)  /* Alset's Coil */
     , (850112,  2144,   2.04)  /* Crushing Shame */
     , (850112,  2146,   2.04)  /* Evisceration */
     , (850112,  2149,      2)  /* Caustic Blessing */
     , (850112,  2151,      2)  /* Blessing of the Blade Turner */
     , (850112,  2153,      2)  /* Blessing of the Mace Turner */
     , (850112,  2155,      2)  /* Icy Blessing */
     , (850112,  2157,      2)  /* Fiery Blessing */
     , (850112,  2159,      2)  /* Storm's Blessing */
     , (850112,  2161,      2)  /* Blessing of the Arrow Turner */
     , (850112,  2185,      2)  /* Robustify */
     , (850112,  2281,      2)  /* Aura of Resistance */
     , (850112,  2699,      2)  /* Auroric Whip */
     , (850112,  2700,      2)  /* Corrosive Cloud */
     , (850112,  2701,      2)  /* Elemental Fury */
     , (850112,  2702,      2)  /* Elemental Fury */
     , (850112,  2703,      2)  /* Elemental Fury */
     , (850112,  2704,      2)  /* Elemental Fury */
     , (850112,  2705,      2)  /* Aerfalle's Enforcement */
     , (850112,  2706,      2)  /* Aerfalle's Gaze */
     , (850112,  2708,      2)  /* Stasis Field */
     , (850112,  2710,      2)  /* Volcanic Blast */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880112, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 58 /* InqFellowQuest */, 0, 1, NULL, 'IsPlayerInFellow?@21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880112, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'IsPlayerInFellow?@21', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +1 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880112, 3 /* Death */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 30 /* InqQuestSolves */, 0, 1, NULL, 'Prestige@10000_61', NULL, 10000, 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880112, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'Prestige@10000_61', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 67 /* Goto */, 0, 1, NULL, 'RepRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (880112, 32 /* GotoSet */, 0.5, NULL, NULL, NULL, 'RepRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have earned +4 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (850112, 2, 31824,  1, 4, 0.6, False) /* Create Frost Baton (31824) for Wield */
     , (850112, 2, 850114,  0, 2, 0, False) /* Create Arctic Robe (850114) for Wield */
     , (850112, 2, 28632,  0, 2, 0, False) /* Create Diforsa Gauntlets (28632) for Wield */;
