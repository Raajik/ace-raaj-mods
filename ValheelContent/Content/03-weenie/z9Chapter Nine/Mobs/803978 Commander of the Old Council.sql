DELETE FROM `weenie` WHERE `class_Id` = 803978;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803978, 'Commander of the Old Council', 10, '2025-05-07 03:05:26') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803978,   1,         16) /* ItemType - Creature */
     , (803978,   2,         31) /* CreatureType - Margul */
     , (803978,   3,         11) /* PaletteTemplate - Maroon */
     , (803978,   6,         -1) /* ItemsCapacity */
     , (803978,   7,         -1) /* ContainersCapacity */
     , (803978,  16,          1) /* ItemUseable - No */
     , (803978,  25,       5000) /* Level */
     , (803978,  27,          0) /* ArmorType - None */
     , (803978,  40,          2) /* CombatMode - Melee */
     , (803978,  68,       0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (803978,  72,         22) /* FriendType - Shadow */
     , (803978,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803978, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803978, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803978, 140,          1) /* AiOptions - CanOpenDoors */
     , (803978, 146,   99999999) /* XpOverride */
     , (803978, 332,   30000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803978,   1, True ) /* Stuck */
     , (803978,   6, True ) /* AiUsesMana */
     , (803978,  11, False) /* IgnoreCollisions */
     , (803978,  12, True ) /* ReportCollisions */
     , (803978,  13, False) /* Ethereal */
     , (803978,  14, True ) /* GravityStatus */
     , (803978,  19, True ) /* Attackable */
     , (803978,  65, True ) /* IgnoreMagicResist */
     , (803978,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803978,   1,       5) /* HeartbeatInterval */
     , (803978,   2,       0) /* HeartbeatTimestamp */
     , (803978,   3,     0.4) /* HealthRate */
     , (803978,   4,       5) /* StaminaRate */
     , (803978,   5,       1) /* ManaRate */
     , (803978,  13,      10) /* ArmorModVsSlash */
     , (803978,  14,      10) /* ArmorModVsPierce */
     , (803978,  15,      10) /* ArmorModVsBludgeon */
     , (803978,  16,      10) /* ArmorModVsCold */
     , (803978,  17,      10) /* ArmorModVsFire */
     , (803978,  18,      10) /* ArmorModVsAcid */
     , (803978,  19,      10) /* ArmorModVsElectric */
     , (803978,  31,      30) /* VisualAwarenessRange */
     , (803978,  34,       1) /* PowerupTime */
     , (803978,  36,       1) /* ChargeSpeed */
     , (803978,  39,       2) /* DefaultScale */
     , (803978,  64,   0.001) /* ResistSlash */
     , (803978,  65,   0.001) /* ResistPierce */
     , (803978,  66,   0.001) /* ResistBludgeon */
     , (803978,  67,   0.001) /* ResistFire */
     , (803978,  68,   0.001) /* ResistCold */
     , (803978,  69,   0.001) /* ResistAcid */
     , (803978,  70,   0.001) /* ResistElectric */
     , (803978,  71,       1) /* ResistHealthBoost */
     , (803978,  72,       1) /* ResistStaminaDrain */
     , (803978,  73,       1) /* ResistStaminaBoost */
     , (803978,  74,       1) /* ResistManaDrain */
     , (803978,  75,       1) /* ResistManaBoost */
     , (803978,  80,       3) /* AiUseMagicDelay */
     , (803978, 104,      10) /* ObviousRadarRange */
     , (803978, 117,     0.5) /* FocusedProbability */
     , (803978, 122,       2) /* AiAcquireHealth */
     , (803978, 125,   0.001) /* ResistHealthDrain */
     , (803978, 166,   0.001) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803978,   1, 'Commander of the Old Council') /* Name */
     , (803978,  45, 'oldcouncilcommanderKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803978,   1,   33554433) /* Setup */
     , (803978,   2,  150994945) /* MotionTable */
     , (803978,   3,  536870913) /* SoundTable */
     , (803978,   4,  805306368) /* CombatTable */
     , (803978,   7,  268437191) /* ClothingBase */
     , (803978,   8,  100667446) /* Icon */
     , (803978,   9,   83890465) /* EyesTexture */
     , (803978,  10,   83890550) /* NoseTexture */
     , (803978,  11,   83890664) /* MouthTexture */
     , (803978,  15,   67117077) /* HairPalette */
     , (803978,  16,   67110065) /* EyesPalette */
     , (803978,  17,   67109561) /* SkinPalette */
     , (803978,  22,  872415236) /* PhysicsEffectTable */
     , (803978,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803978,  0,  4,  0,    0,  55000,  340,  360,  220,  168,  400,  400,  168,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803978,  1,  4,  0,    0,  55000,  340,  360,  220,  168,  400,  400,  168,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803978,  2,  4,  0,    0,  55000,  340,  360,  220,  168,  400,  400,  168,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803978,  3,  4,  0,    0,  55000,  340,  360,  220,  168,  400,  400,  168,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803978,  4,  4,  0,    0,  55000,  340,  360,  220,  168,  400,  400,  168,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803978,  5,  4, 150000, 0.75,  55000,  340,  360,  220,  168,  400,  400,  168,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803978,  6,  4,  0,    0,  55000,  340,  360,  220,  168,  400,  400,  168,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803978,  7,  4,  0,    0,  55000,  340,  360,  220,  168,  400,  400,  168,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803978,  8,  4, 150000, 0.75,  55000,  340,  360,  220,  168,  400,  400,  168,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803978,   1,150000, 0, 0) /* Strength */
     , (803978,   2,150000, 0, 0) /* Endurance */
     , (803978,   3, 320, 0, 0) /* Quickness */
     , (803978,   4, 750, 0, 0) /* Coordination */
     , (803978,   5,1400, 0, 0) /* Focus */
     , (803978,   6,1400, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803978,   1,25000000, 0, 0,25000000) /* MaxHealth */
     , (803978,   3,25000000, 0, 0,25000000) /* MaxStamina */
     , (803978,   5,25000000, 0, 0,25000000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803978,  6, 0, 3, 0, 350, 0, 0) /* MeleeDefense        Specialized */
     , (803978,  7, 0, 3, 0, 350, 0, 0) /* MissileDefense      Specialized */
     , (803978, 15, 0, 3, 0, 350, 0, 0) /* MagicDefense        Specialized */
     , (803978, 31, 0, 3, 0,2405, 0, 0) /* CreatureEnchantment Specialized */
     , (803978, 32, 0, 3, 0,2405, 0, 0) /* ItemEnchantment     Specialized */
     , (803978, 33, 0, 3, 0,2405, 0, 0) /* LifeMagic           Specialized */
     , (803978, 34, 0, 3, 0,3400, 0, 0) /* WarMagic            Specialized */
     , (803978, 45, 0, 3, 0,4450, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803978, 20 /* ReceiveCritical */, 0.007, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4658 /* Incantation of Stamina to Health Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 19 /* CastSpellInstant */, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4656 /* Incantation of Mana to Stamina Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803978, 20 /* ReceiveCritical */, 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 23 /* StartEvent */, 0, 1, NULL, 'TownBossBaishi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803978, 20 /* ReceiveCritical */, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 5, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803978, 14 /* Taunt */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 114 /* InqInt64Stat */, 0, 1, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL, 300000000, 9223372036854775807, NULL, NULL, 6 /* AvailableLuminance */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803978, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'AvailableLuminance_300000000_6', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 112 /* SpendLuminance */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803978, 2,   130,  0,84,    1, False) /* Create Shirt (130) for Wield */
     , (803978, 2,   127,  0, 8,0.9818, False) /* Create Pants (127) for Wield */
     , (803978, 2, 37214,  0,21,0.6164, False) /* Create Olthoi Celdon Breastplate (37214) for Wield */
     , (803978, 2, 37192,  0,21,0.6164, False) /* Create Olthoi Celdon Girth (37192) for Wield */
     , (803978, 2, 37205,  0,21,0.6164, False) /* Create Olthoi Celdon Sleeves (37205) for Wield */
     , (803978, 2, 37197,  0,21,0.6164, False) /* Create Olthoi Celdon Helm (37197) for Wield */
     , (803978, 2, 37189,  0,21,0.3288, False) /* Create Olthoi Celdon Gauntlets (37189) for Wield */
     , (803978, 2, 37202,  0,21,0.6164, False) /* Create Olthoi Celdon Leggings (37202) for Wield */
     , (803978, 2, 37209,  0,21,0.6164, False) /* Create Olthoi Celdon Sollerets (37209) for Wield */;