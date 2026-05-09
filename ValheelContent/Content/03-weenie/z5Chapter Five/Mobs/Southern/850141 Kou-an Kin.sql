DELETE FROM `weenie` WHERE `class_Id` = 850141;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850141, 'ace850141-humankou-ankin', 10, '2020-10-16 18:24:12') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850141,   1,         16) /* ItemType - Creature */
     , (850141,   2,         31) /* CreatureType - Human */
     , (850141,   6,         -1) /* ItemsCapacity */
     , (850141,   7,         -1) /* ContainersCapacity */
     , (850141,   8,        120) /* Mass */
     , (850141,  16,          1) /* ItemUseable - No */
     , (850141,  25,        615) /* Level */
     , (850141,  27,          0) /* ArmorType - None */
     , (850141,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (850141,  72,          8) /* FriendType - Tusker */
     , (850141,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850141, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (850141, 113,          2) /* Gender - Female */
     , (850141, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850141, 146,   20000000) /* XpOverride */
     , (850141, 188,          3) /* HeritageGroup - Sho */
	 , (850141, 332,     300000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850141,   1, True ) /* Stuck */
     , (850141,   6, True ) /* AiUsesMana */
     , (850141,  11, False) /* IgnoreCollisions */
     , (850141,  12, True ) /* ReportCollisions */
     , (850141,  13, False) /* Ethereal */
     , (850141,  14, True ) /* GravityStatus */
     , (850141,  19, True ) /* Attackable */
     , (850141,  42, True ) /* AllowEdgeSlide */
     , (850141,  50, True ) /* NeverFailCasting */
     , (850141,  65, True ) /* IgnoreMagicResistence */
     , (850141,  66, True ) /* IgnoreArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850141,   1,       5) /* HeartbeatInterval */
     , (850141,   2,       0) /* HeartbeatTimestamp */
     , (850141,   3,       2) /* HealthRate */
     , (850141,   4,       5) /* StaminaRate */
     , (850141,   5,       1) /* ManaRate */
     , (850141,  12,     0.1) /* Shade */
     , (850141,  13,       1) /* ArmorModVsSlash */
     , (850141,  14,     1.1) /* ArmorModVsPierce */
     , (850141,  15,       1) /* ArmorModVsBludgeon */
     , (850141,  16,       1) /* ArmorModVsCold */
     , (850141,  17,       1) /* ArmorModVsFire */
     , (850141,  18,       1) /* ArmorModVsAcid */
     , (850141,  19,       1) /* ArmorModVsElectric */
     , (850141,  31,      13) /* VisualAwarenessRange */
	 , (850141,  39,    0.75) /* DefaultScale */
     , (850141,  64,    0.01) /* ResistSlash */
     , (850141,  65,    0.05) /* ResistPierce */
     , (850141,  66,    0.01) /* ResistBludgeon */
     , (850141,  67,    0.01) /* ResistFire */
     , (850141,  68,    0.01) /* ResistCold */
     , (850141,  69,    0.01) /* ResistAcid */
     , (850141,  70,    0.01) /* ResistElectric */
     , (850141,  71,       1) /* ResistHealthBoost */
     , (850141,  72,       1) /* ResistStaminaDrain */
     , (850141,  73,       1) /* ResistStaminaBoost */
     , (850141,  74,       1) /* ResistManaDrain */
     , (850141,  75,       1) /* ResistManaBoost */
     , (850141,  80,       2) /* AiUseMagicDelay */
     , (850141, 104,      25) /* ObviousRadarRange */
     , (850141, 117,     0.5) /* FocusedProbability */
	 , (850141, 122,       5) /* AiAcquireHealth */
     , (850141, 125,       1) /* ResistHealthDrain */
     , (850141, 166,    0.03) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850141,   1, 'Kou-an Kin') /* Name */
     , (850141,   3, 'Female') /* Sex */
     , (850141,   4, 'Sho') /* HeritageGroup */
     , (850141,  45, 'southernKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850141,   1,   33554510) /* Setup */
     , (850141,   2,  150994945) /* MotionTable */
     , (850141,   3,  536870914) /* SoundTable */
     , (850141,   4,  805306368) /* CombatTable */
     , (850141,   6,   67108990) /* PaletteBase */
     , (850141,   8,  100667446) /* Icon */
     , (850141,   9,   83890281) /* EyesTexture */
     , (850141,  10,   83890316) /* NoseTexture */
     , (850141,  11,   83890324) /* MouthTexture */
     , (850141,  15,   67117020) /* HairPalette */
     , (850141,  16,   67110062) /* EyesPalette */
     , (850141,  17,   67109559) /* SkinPalette */
     , (850141,  22,  872415236) /* PhysicsEffectTable */
     , (850141,  32,        415) /* WieldedTreasureType - 
                                   Wield Towel (10757) | Palette: Blue (2) | Probability: 50%
                                   Wield Towel (10757) | Palette: Green (8) | Probability: 50%
                                   Wield Bandit Dagger (12052) | Probability: 12.5%
                                   Wield Bandit Jambiya (12057) | Probability: 12.5%
                                   Wield Bandit Khanjar (12062) | Probability: 12.5%
                                   Wield Bandit Knife (12067) | Probability: 12.5%
                                   Wield Bandit Simi (12072) | Probability: 12.5%
                                   Wield Bandit Rapier (12076) | Probability: 2.77%
                                   Wield Bandit Short Sword (12078) | Probability: 12.5%
                                   Wield Bandit Yaoji (12083) | Probability: 12.5% */
     , (850141,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850141,   1, 590, 0, 0) /* Strength */
     , (850141,   2, 350, 0, 0) /* Endurance */
     , (850141,   3, 360, 0, 0) /* Quickness */
     , (850141,   4, 590, 0, 0) /* Coordination */
     , (850141,   5, 380, 0, 0) /* Focus */
     , (850141,   6, 380, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850141,   1, 250000, 0, 0, 250000) /* MaxHealth */
     , (850141,   3,   7000, 0, 0,   7000) /* MaxStamina */
     , (850141,   5,   1000, 0, 0,   1000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850141,  1, 0, 3, 0, 2020, 0, 1356.1) /* Axe                 Specialized */
     , (850141,  2, 0, 3, 0, 2020, 0, 1356.1) /* Bow                 Specialized */
     , (850141,  4, 0, 3, 0, 2020, 0, 1356.1) /* Dagger              Specialized */
     , (850141,  5, 0, 3, 0, 2020, 0, 1356.1) /* Mace                Specialized */
     , (850141,  6, 0, 3, 0,  350, 0, 1356.1) /* MeleeDefense        Specialized */
     , (850141,  7, 0, 3, 0,  350, 0, 1356.1) /* MissileDefense      Specialized */
     , (850141,  9, 0, 3, 0, 2020, 0, 1356.1) /* Spear               Specialized */
     , (850141, 10, 0, 3, 0, 2020, 0, 1356.1) /* Staff               Specialized */
     , (850141, 11, 0, 3, 0, 2020, 0, 1356.1) /* Sword               Specialized */
     , (850141, 13, 0, 3, 0, 2020, 0, 1356.1) /* UnarmedCombat       Specialized */
     , (850141, 15, 0, 3, 0,  325, 0, 1356.1) /* MagicDefense        Specialized */
     , (850141, 20, 0, 3, 0,  310, 0, 1356.1) /* Deception           Specialized */
     , (850141, 24, 0, 3, 0,  320, 0, 1356.1) /* Run                 Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850141,  0,  4,     0,    0,  940,  126,  140,  154,   56,   56,  140,   84,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (850141,  1,  4,     0,    0,  940,  126,  140,  154,   56,   56,  140,   84,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (850141,  2,  4,     0,    0,  940,  126,  140,  154,   56,   56,  140,   84,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (850141,  3,  4,     0,    0,  940,  126,  140,  154,   56,   56,  140,   84,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (850141,  4,  4,     0,    0,  940,  126,  140,  154,   56,   56,  140,   84,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (850141,  5,  4,  2000, 0.75,  940,  126,  140,  154,   56,   56,  140,   84,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (850141,  6,  4,     0,    0,  940,  126,  140,  154,   56,   56,  140,   84,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (850141,  7,  4,     0,    0,  940,  126,  140,  154,   56,   56,  140,   84,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (850141,  8,  4,  2000, 0.75,  940,  126,  140,  154,   56,   56,  140,   84,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850141, 3 /* Death */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850141, 32 /* GotoSet */, 0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333 /* LumAugDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334 /* LumAugDamageReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335 /* LumAugCritDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336 /* LumAugCritReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);