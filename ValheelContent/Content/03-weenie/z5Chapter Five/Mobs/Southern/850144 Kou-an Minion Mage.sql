DELETE FROM `weenie` WHERE `class_Id` = 850144;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850144, 'ace850144-humankou-anminionmage', 10, '2020-10-16 18:24:12') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850144,   1,         16) /* ItemType - Creature */
     , (850144,   2,         31) /* CreatureType - Human */
     , (850144,   6,         -1) /* ItemsCapacity */
     , (850144,   7,         -1) /* ContainersCapacity */
     , (850144,   8,        120) /* Mass */
     , (850144,  16,          1) /* ItemUseable - No */
     , (850144,  25,        640) /* Level */
     , (850144,  27,          0) /* ArmorType - None */
     , (850144,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (850144,  72,          8) /* FriendType - Tusker */
     , (850144,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850144, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (850144, 113,          1) /* Gender - Male */
     , (850144, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850144, 146,   23100000) /* XpOverride */
     , (850144, 188,          3) /* HeritageGroup - Sho */
	 , (850144, 332,     325000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850144,   1, True ) /* Stuck */
     , (850144,   6, True ) /* AiUsesMana */
     , (850144,  11, False) /* IgnoreCollisions */
     , (850144,  12, True ) /* ReportCollisions */
     , (850144,  13, False) /* Ethereal */
     , (850144,  14, True ) /* GravityStatus */
     , (850144,  19, True ) /* Attackable */
     , (850144,  42, True ) /* AllowEdgeSlide */
     , (850144,  50, True ) /* NeverFailCasting */
     , (850144,  65, True ) /* IgnoreMagicResistence */
     , (850144,  66, True ) /* IgnoreArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850144,   1,       5) /* HeartbeatInterval */
     , (850144,   2,       0) /* HeartbeatTimestamp */
     , (850144,   3,       2) /* HealthRate */
     , (850144,   4,       5) /* StaminaRate */
     , (850144,   5,       1) /* ManaRate */
     , (850144,  12,     0.1) /* Shade */
     , (850144,  13,       1) /* ArmorModVsSlash */
     , (850144,  14,     1.1) /* ArmorModVsPierce */
     , (850144,  15,       1) /* ArmorModVsBludgeon */
     , (850144,  16,       1) /* ArmorModVsCold */
     , (850144,  17,       1) /* ArmorModVsFire */
     , (850144,  18,       1) /* ArmorModVsAcid */
     , (850144,  19,       1) /* ArmorModVsElectric */
     , (850144,  31,      13) /* VisualAwarenessRange */
	 , (850144,  39,    0.75) /* DefaultScale */
     , (850144,  64,    0.01) /* ResistSlash */
     , (850144,  65,    0.05) /* ResistPierce */
     , (850144,  66,    0.01) /* ResistBludgeon */
     , (850144,  67,    0.01) /* ResistFire */
     , (850144,  68,    0.01) /* ResistCold */
     , (850144,  69,    0.01) /* ResistAcid */
     , (850144,  70,    0.01) /* ResistElectric */
     , (850144,  71,       1) /* ResistHealthBoost */
     , (850144,  72,       1) /* ResistStaminaDrain */
     , (850144,  73,       1) /* ResistStaminaBoost */
     , (850144,  74,       1) /* ResistManaDrain */
     , (850144,  75,       1) /* ResistManaBoost */
     , (850144,  80,       2) /* AiUseMagicDelay */
     , (850144, 104,      25) /* ObviousRadarRange */
     , (850144, 117,     0.5) /* FocusedProbability */
	 , (850144, 122,       5) /* AiAcquireHealth */
     , (850144, 125,       1) /* ResistHealthDrain */
     , (850144, 166,    0.03) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850144,   1, 'Kou-an Minion') /* Name */
     , (850144,   3, 'Male') /* Sex */
     , (850144,   4, 'Sho') /* HeritageGroup */
     , (850144,  45, 'southernKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850144,   1,   33554433) /* Setup */
     , (850144,   2,  150994945) /* MotionTable */
     , (850144,   3,  536870913) /* SoundTable */
     , (850144,   4,  805306368) /* CombatTable */
     , (850144,   6,   67108990) /* PaletteBase */
     , (850144,   8,  100667446) /* Icon */
     , (850144,   9,   83890516) /* EyesTexture */
     , (850144,  10,   83890551) /* NoseTexture */
     , (850144,  11,   83890659) /* MouthTexture */
     , (850144,  15,   67117002) /* HairPalette */
     , (850144,  16,   67110065) /* EyesPalette */
     , (850144,  17,   67109560) /* SkinPalette */
     , (850144,  22,  872415236) /* PhysicsEffectTable */
     , (850144,  32,        416) /* WieldedTreasureType - 
                                   Wield Clean, Dry Towel (10758) | Palette: Blue (2) | Probability: 50%
                                   Wield Clean, Dry Towel (10758) | Palette: Green (8) | Probability: 50% */
     , (850144,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850144,   1, 380, 0, 0) /* Strength */
     , (850144,   2, 370, 0, 0) /* Endurance */
     , (850144,   3, 380, 0, 0) /* Quickness */
     , (850144,   4, 360, 0, 0) /* Coordination */
     , (850144,   5, 560, 0, 0) /* Focus */
     , (850144,   6, 560, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850144,   1, 275000, 0, 0, 275000) /* MaxHealth */
     , (850144,   3,   1000, 0, 0,   1000) /* MaxStamina */
     , (850144,   5,   7000, 0, 0,   7000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850144,  1, 0, 3, 0,  520, 0, 1356.1) /* Axe                 Specialized */
     , (850144,  2, 0, 3, 0,  520, 0, 1356.1) /* Bow                 Specialized */
     , (850144,  4, 0, 3, 0,  520, 0, 1356.1) /* Dagger              Specialized */
     , (850144,  5, 0, 3, 0,  520, 0, 1356.1) /* Mace                Specialized */
     , (850144,  6, 0, 3, 0,  323, 0, 1356.1) /* MeleeDefense        Specialized */
     , (850144,  7, 0, 3, 0,  345, 0, 1356.1) /* MissileDefense      Specialized */
     , (850144,  9, 0, 3, 0,  520, 0, 1356.1) /* Spear               Specialized */
     , (850144, 10, 0, 3, 0,  520, 0, 1356.1) /* Staff               Specialized */
     , (850144, 11, 0, 3, 0,  520, 0, 1356.1) /* Sword               Specialized */
     , (850144, 13, 0, 3, 0,  520, 0, 1356.1) /* UnarmedCombat       Specialized */
     , (850144, 15, 0, 3, 0,  325, 0, 1356.1) /* MagicDefense        Specialized */
     , (850144, 20, 0, 3, 0,  350, 0, 1356.1) /* Deception           Specialized */
     , (850144, 24, 0, 3, 0,  520, 0, 1356.1) /* Run                 Specialized */
     , (850144, 31, 0, 3, 0, 2515, 0, 1356.1) /* CreatureEnchantment Specialized */
     , (850144, 32, 0, 3, 0, 2515, 0, 1356.1) /* ItemEnchantment     Specialized */
     , (850144, 33, 0, 3, 0, 2515, 0, 1356.1) /* LifeMagic           Specialized */
     , (850144, 34, 0, 3, 0, 2515, 0, 1356.1) /* WarMagic            Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850144,  0,  4,     0,    0,  900,  180,  200,  220,   80,   80,  200,  120,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (850144,  1,  4,     0,    0,  900,  180,  200,  220,   80,   80,  200,  120,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (850144,  2,  4,     0,    0,  900,  180,  200,  220,   80,   80,  200,  120,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (850144,  3,  4,     0,    0,  900,  180,  200,  220,   80,   80,  200,  120,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (850144,  4,  4,     0,    0,  900,  180,  200,  220,   80,   80,  200,  120,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (850144,  5,  4,  2500, 0.75,  900,  180,  200,  220,   80,   80,  200,  120,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (850144,  6,  4,     0,    0,  900,  180,  200,  220,   80,   80,  200,  120,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (850144,  7,  4,     0,    0,  900,  180,  200,  220,   80,   80,  200,  120,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (850144,  8,  4,  2500, 0.75,  900,  180,  200,  220,   80,   80,  200,  120,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850144,  4441,    2.1)  /* Incantation of Flame Volley */
     , (850144,  4440,  2.111)  /* Incantation of Flame Streak */
     , (850144,  4439,  2.125)  /* Incantation of Flame Bolt */
     , (850144,  5426,  2.071)  /* Incantation of Void Magic Ineptituse Other */
	 , (850144,  4312,    2.1)  /* Incantation of Imperil Other */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850144, 3 /* Death */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850144, 32 /* GotoSet */, 0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333 /* LumAugDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334 /* LumAugDamageReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335 /* LumAugCritDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336 /* LumAugCritReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);