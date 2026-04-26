DELETE FROM `weenie` WHERE `class_Id` = 850145;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850145, 'ace850145-humankou-ansycophant', 10, '2020-10-16 18:24:12') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850145,   1,         16) /* ItemType - Creature */
     , (850145,   2,         31) /* CreatureType - Human */
     , (850145,   6,         -1) /* ItemsCapacity */
     , (850145,   7,         -1) /* ContainersCapacity */
     , (850145,   8,        120) /* Mass */
     , (850145,  16,          1) /* ItemUseable - No */
     , (850145,  25,        700) /* Level */
     , (850145,  27,          0) /* ArmorType - None */
     , (850145,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (850145,  72,          8) /* FriendType - Tusker */
     , (850145,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850145, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (850145, 113,          2) /* Gender - Female */
     , (850145, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850145, 146,   27500000) /* XpOverride */
     , (850145, 188,          3) /* HeritageGroup - Sho */
	 , (850145, 332,     350000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850145,   1, True ) /* Stuck */
     , (850145,   6, True ) /* AiUsesMana */
     , (850145,  11, False) /* IgnoreCollisions */
     , (850145,  12, True ) /* ReportCollisions */
     , (850145,  13, False) /* Ethereal */
     , (850145,  14, True ) /* GravityStatus */
     , (850145,  19, True ) /* Attackable */
     , (850145,  42, True ) /* AllowEdgeSlide */
     , (850145,  50, True ) /* NeverFailCasting */
     , (850145,  65, True ) /* IgnoreMagicResistence */
     , (850145,  66, True ) /* IgnoreArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850145,   1,       5) /* HeartbeatInterval */
     , (850145,   2,       0) /* HeartbeatTimestamp */
     , (850145,   3,       2) /* HealthRate */
     , (850145,   4,       5) /* StaminaRate */
     , (850145,   5,       1) /* ManaRate */
     , (850145,  12,     0.1) /* Shade */
     , (850145,  13,       1) /* ArmorModVsSlash */
     , (850145,  14,     1.1) /* ArmorModVsPierce */
     , (850145,  15,       1) /* ArmorModVsBludgeon */
     , (850145,  16,       1) /* ArmorModVsCold */
     , (850145,  17,       1) /* ArmorModVsFire */
     , (850145,  18,       1) /* ArmorModVsAcid */
     , (850145,  19,       1) /* ArmorModVsElectric */
     , (850145,  31,      13) /* VisualAwarenessRange */
	 , (850145,  39,    0.75) /* DefaultScale */
     , (850145,  64,    0.01) /* ResistSlash */
     , (850145,  65,    0.05) /* ResistPierce */
     , (850145,  66,    0.01) /* ResistBludgeon */
     , (850145,  67,    0.01) /* ResistFire */
     , (850145,  68,    0.01) /* ResistCold */
     , (850145,  69,    0.01) /* ResistAcid */
     , (850145,  70,    0.01) /* ResistElectric */
     , (850145,  71,       1) /* ResistHealthBoost */
     , (850145,  72,       1) /* ResistStaminaDrain */
     , (850145,  73,       1) /* ResistStaminaBoost */
     , (850145,  74,       1) /* ResistManaDrain */
     , (850145,  75,       1) /* ResistManaBoost */
     , (850145,  80,       2) /* AiUseMagicDelay */
     , (850145, 104,      25) /* ObviousRadarRange */
     , (850145, 117,     0.5) /* FocusedProbability */
	 , (850145, 122,       5) /* AiAcquireHealth */
     , (850145, 125,       1) /* ResistHealthDrain */
     , (850145, 166,    0.03) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850145,   1, 'Kou-an Sycophant') /* Name */
     , (850145,   3, 'Female') /* Sex */
     , (850145,   4, 'Sho') /* HeritageGroup */
     , (850145,  45, 'southernKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850145,   1,   33554510) /* Setup */
     , (850145,   2,  150994945) /* MotionTable */
     , (850145,   3,  536870914) /* SoundTable */
     , (850145,   4,  805306368) /* CombatTable */
     , (850145,   8,  100667446) /* Icon */
     , (850145,   9,   83890275) /* EyesTexture */
     , (850145,  10,   83890289) /* NoseTexture */
     , (850145,  11,   83890353) /* MouthTexture */
     , (850145,  15,   67117070) /* HairPalette */
     , (850145,  16,   67109565) /* EyesPalette */
     , (850145,  17,   67109560) /* SkinPalette */
     , (850145,  22,  872415236) /* PhysicsEffectTable */
     , (850145,  32,        417) /* WieldedTreasureType - 
                                   Wield Clean, Dry Towel (10758) | Palette: Blue (2) | Probability: 50%
                                   Wield Clean, Dry Towel (10758) | Palette: Green (8) | Probability: 50%
                                   Wield Bandit Dagger (22776) | Probability: 12.5%
                                   Wield Jambiya (22779) | Probability: 12.5%
                                   Wield Khanjar (22782) | Probability: 12.5%
                                   Wield Knife (22785) | Probability: 12.5%
                                   Wield Bandit Simi (22788) | Probability: 12.5%
                                   Wield Bandit Rapier (22791) | Probability: 12.5%
                                   Wield Bandit Short Sword (22794) | Probability: 12.5%
                                   Wield Bandit Yaoji (22797) | Probability: 12.5% */
     , (850145,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850145,   1, 530, 0, 0) /* Strength */
     , (850145,   2, 350, 0, 0) /* Endurance */
     , (850145,   3, 520, 0, 0) /* Quickness */
     , (850145,   4, 520, 0, 0) /* Coordination */
     , (850145,   5, 340, 0, 0) /* Focus */
     , (850145,   6, 320, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850145,   1, 285000, 0, 0, 285000) /* MaxHealth */
     , (850145,   3,   7000, 0, 0,   7000) /* MaxStamina */
     , (850145,   5,   1000, 0, 0,   1000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850145,  1, 0, 3, 0, 3020, 0, 1356.1) /* Axe                 Specialized */
     , (850145,  2, 0, 3, 0, 3020, 0, 1356.1) /* Bow                 Specialized */
     , (850145,  4, 0, 3, 0, 3020, 0, 1356.1) /* Dagger              Specialized */
     , (850145,  5, 0, 3, 0, 3020, 0, 1356.1) /* Mace                Specialized */
     , (850145,  6, 0, 3, 0,  350, 0, 1356.1) /* MeleeDefense        Specialized */
     , (850145,  7, 0, 3, 0,  350, 0, 1356.1) /* MissileDefense      Specialized */
     , (850145,  9, 0, 3, 0, 3020, 0, 1356.1) /* Spear               Specialized */
     , (850145, 10, 0, 3, 0, 3020, 0, 1356.1) /* Staff               Specialized */
     , (850145, 11, 0, 3, 0, 3020, 0, 1356.1) /* Sword               Specialized */
     , (850145, 13, 0, 3, 0, 3020, 0, 1356.1) /* UnarmedCombat       Specialized */
     , (850145, 15, 0, 3, 0,  325, 0, 1356.1) /* MagicDefense        Specialized */
     , (850145, 20, 0, 3, 0,  310, 0, 1356.1) /* Deception           Specialized */
     , (850145, 24, 0, 3, 0,  320, 0, 1356.1) /* Run                 Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850145,  0,  4,     0,    0, 1020,  288,  320,  352,  128,  128,  320,  192,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (850145,  1,  4,     0,    0, 1020,  288,  320,  352,  128,  128,  320,  192,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (850145,  2,  4,     0,    0, 1020,  288,  320,  352,  128,  128,  320,  192,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (850145,  3,  4,     0,    0, 1020,  288,  320,  352,  128,  128,  320,  192,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (850145,  4,  4,     0,    0, 1020,  288,  320,  352,  128,  128,  320,  192,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (850145,  5,  4,  2750, 0.75, 1020,  288,  320,  352,  128,  128,  320,  192,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (850145,  6,  4,     0,    0, 1020,  288,  320,  352,  128,  128,  320,  192,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (850145,  7,  4,     0,    0, 1020,  288,  320,  352,  128,  128,  320,  192,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (850145,  8,  4,  2750, 0.75, 1020,  288,  320,  352,  128,  128,  320,  192,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;


INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850145, 3 /* Death */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850145, 32 /* GotoSet */, 0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333 /* LumAugDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334 /* LumAugDamageReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335 /* LumAugCritDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336 /* LumAugCritReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);