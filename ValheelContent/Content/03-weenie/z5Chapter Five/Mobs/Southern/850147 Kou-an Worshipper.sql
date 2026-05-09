DELETE FROM `weenie` WHERE `class_Id` = 850147;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850147, 'ace850147-humankou-anworshipper', 10, '2020-10-16 18:24:12') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850147,   1,         16) /* ItemType - Creature */
     , (850147,   2,         31) /* CreatureType - Human */
     , (850147,   6,         -1) /* ItemsCapacity */
     , (850147,   7,         -1) /* ContainersCapacity */
     , (850147,   8,        120) /* Mass */
     , (850147,  16,          1) /* ItemUseable - No */
     , (850147,  25,        725) /* Level */
     , (850147,  27,          0) /* ArmorType - None */
     , (850147,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (850147,  72,          8) /* FriendType - Tusker */
     , (850147,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850147, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (850147, 113,          2) /* Gender - Female */
     , (850147, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850147, 146,   30000000) /* XpOverride */
     , (850147, 188,          3) /* HeritageGroup - Sho */
	 , (850147, 332,     375000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850147,   1, True ) /* Stuck */
     , (850147,   6, True ) /* AiUsesMana */
     , (850147,  11, False) /* IgnoreCollisions */
     , (850147,  12, True ) /* ReportCollisions */
     , (850147,  13, False) /* Ethereal */
     , (850147,  14, True ) /* GravityStatus */
     , (850147,  19, True ) /* Attackable */
     , (850147,  42, True ) /* AllowEdgeSlide */
     , (850147,  50, True ) /* NeverFailCasting */
     , (850147,  65, True ) /* IgnoreMagicResistence */
     , (850147,  66, True ) /* IgnoreArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850147,   1,       5) /* HeartbeatInterval */
     , (850147,   2,       0) /* HeartbeatTimestamp */
     , (850147,   3,       2) /* HealthRate */
     , (850147,   4,       5) /* StaminaRate */
     , (850147,   5,       1) /* ManaRate */
     , (850147,  12,     0.1) /* Shade */
     , (850147,  13,       1) /* ArmorModVsSlash */
     , (850147,  14,     1.1) /* ArmorModVsPierce */
     , (850147,  15,       1) /* ArmorModVsBludgeon */
     , (850147,  16,       1) /* ArmorModVsCold */
     , (850147,  17,       1) /* ArmorModVsFire */
     , (850147,  18,       1) /* ArmorModVsAcid */
     , (850147,  19,       1) /* ArmorModVsElectric */
     , (850147,  31,      13) /* VisualAwarenessRange */
	 , (850147,  39,    0.75) /* DefaultScale */
     , (850147,  64,    0.01) /* ResistSlash */
     , (850147,  65,    0.05) /* ResistPierce */
     , (850147,  66,    0.01) /* ResistBludgeon */
     , (850147,  67,    0.01) /* ResistFire */
     , (850147,  68,    0.01) /* ResistCold */
     , (850147,  69,    0.01) /* ResistAcid */
     , (850147,  70,    0.01) /* ResistElectric */
     , (850147,  71,       1) /* ResistHealthBoost */
     , (850147,  72,       1) /* ResistStaminaDrain */
     , (850147,  73,       1) /* ResistStaminaBoost */
     , (850147,  74,       1) /* ResistManaDrain */
     , (850147,  75,       1) /* ResistManaBoost */
     , (850147,  80,       2) /* AiUseMagicDelay */
     , (850147, 104,      25) /* ObviousRadarRange */
     , (850147, 117,     0.5) /* FocusedProbability */
	 , (850147, 122,       5) /* AiAcquireHealth */
     , (850147, 125,       1) /* ResistHealthDrain */
     , (850147, 166,    0.03) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850147,   1, 'Kou-an Worshipper') /* Name */
     , (850147,   3, 'Female') /* Sex */
     , (850147,   4, 'Sho') /* HeritageGroup */
     , (850147,  45, 'southernKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850147,   1,   33554510) /* Setup */
     , (850147,   2,  150994945) /* MotionTable */
     , (850147,   3,  536870914) /* SoundTable */
     , (850147,   4,  805306368) /* CombatTable */
     , (850147,   6,   67108990) /* PaletteBase */
     , (850147,   8,  100667446) /* Icon */
     , (850147,   9,   83890283) /* EyesTexture */
     , (850147,  10,   83890317) /* NoseTexture */
     , (850147,  11,   83890324) /* MouthTexture */
     , (850147,  15,   67116992) /* HairPalette */
     , (850147,  16,   67109566) /* EyesPalette */
     , (850147,  17,   67109558) /* SkinPalette */
     , (850147,  22,  872415236) /* PhysicsEffectTable */
     , (850147,  32,        418) /* WieldedTreasureType - 
                                   Wield Clean, Dry Towel (10758) | Palette: Blue (2) | Probability: 50%
                                   Wield Clean, Dry Towel (10758) | Palette: Green (8) | Probability: 50%
                                   Wield Bandit Dagger (22777) | Probability: 12.5%
                                   Wield Jambiya (22780) | Probability: 12.5%
                                   Wield Khanjar (22783) | Probability: 12.5%
                                   Wield Knife (22786) | Probability: 12.5%
                                   Wield Bandit Simi (22789) | Probability: 12.5%
                                   Wield Bandit Rapier (22792) | Probability: 12.5%
                                   Wield Bandit Short Sword (22795) | Probability: 12.5%
                                   Wield Bandit Yaoji (22798) | Probability: 12.5% */
     , (850147,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850147,   1, 500, 0, 0) /* Strength */
     , (850147,   2, 380, 0, 0) /* Endurance */
     , (850147,   3, 500, 0, 0) /* Quickness */
     , (850147,   4, 500, 0, 0) /* Coordination */
     , (850147,   5, 440, 0, 0) /* Focus */
     , (850147,   6, 400, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850147,   1, 300000, 0, 0, 300000) /* MaxHealth */
     , (850147,   3,   7000, 0, 0,   7000) /* MaxStamina */
     , (850147,   5,   1000, 0, 0,   1000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850147,  1, 0, 3, 0, 3520, 0, 1356.1) /* Axe                 Specialized */
     , (850147,  2, 0, 3, 0, 3520, 0, 1356.1) /* Bow                 Specialized */
     , (850147,  4, 0, 3, 0, 3520, 0, 1356.1) /* Dagger              Specialized */
     , (850147,  5, 0, 3, 0, 3520, 0, 1356.1) /* Mace                Specialized */
     , (850147,  6, 0, 3, 0,  350, 0, 1356.1) /* MeleeDefense        Specialized */
     , (850147,  7, 0, 3, 0,  350, 0, 1356.1) /* MissileDefense      Specialized */
     , (850147,  9, 0, 3, 0, 3520, 0, 1356.1) /* Spear               Specialized */
     , (850147, 10, 0, 3, 0, 3520, 0, 1356.1) /* Staff               Specialized */
     , (850147, 11, 0, 3, 0, 3520, 0, 1356.1) /* Sword               Specialized */
     , (850147, 13, 0, 3, 0, 3520, 0, 1356.1) /* UnarmedCombat       Specialized */
     , (850147, 15, 0, 3, 0,  325, 0, 1356.1) /* MagicDefense        Specialized */
     , (850147, 20, 0, 3, 0,  310, 0, 1356.1) /* Deception           Specialized */
     , (850147, 24, 0, 3, 0,  320, 0, 1356.1) /* Run                 Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850147,  0,  4,     0,    0,  1260,  234,  260,  286,  104,  104,  260,  156,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (850147,  1,  4,     0,    0,  1260,  234,  260,  286,  104,  104,  260,  156,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (850147,  2,  4,     0,    0,  1260,  234,  260,  286,  104,  104,  260,  156,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (850147,  3,  4,     0,    0,  1260,  234,  260,  286,  104,  104,  260,  156,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (850147,  4,  4,     0,    0,  1260,  234,  260,  286,  104,  104,  260,  156,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (850147,  5,  4,  3000, 0.75,  1260,  234,  260,  286,  104,  104,  260,  156,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (850147,  6,  4,     0,    0,  1260,  234,  260,  286,  104,  104,  260,  156,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (850147,  7,  4,     0,    0,  1260,  234,  260,  286,  104,  104,  260,  156,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (850147,  8,  4,  3000, 0.75,  1260,  234,  260,  286,  104,  104,  260,  156,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850147, 3 /* Death */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850147, 32 /* GotoSet */, 0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333 /* LumAugDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334 /* LumAugDamageReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335 /* LumAugCritDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336 /* LumAugCritReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);