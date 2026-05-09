DELETE FROM `weenie` WHERE `class_Id` = 850142;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850142, 'ace850142-humankou-ankinmage', 10, '2020-10-16 18:24:12') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850142,   1,         16) /* ItemType - Creature */
     , (850142,   2,         31) /* CreatureType - Human */
     , (850142,   6,         -1) /* ItemsCapacity */
     , (850142,   7,         -1) /* ContainersCapacity */
     , (850142,   8,        120) /* Mass */
     , (850142,  16,          1) /* ItemUseable - No */
     , (850142,  25,        620) /* Level */
     , (850142,  27,          0) /* ArmorType - None */
     , (850142,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (850142,  72,          8) /* FriendType - Tusker */
     , (850142,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850142, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (850142, 113,          1) /* Gender - Male */
     , (850142, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850142, 146,   20000000) /* XpOverride */
     , (850142, 188,          3) /* HeritageGroup - Sho */
	 , (850142, 332,     300000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850142,   1, True ) /* Stuck */
     , (850142,   6, True ) /* AiUsesMana */
     , (850142,  11, False) /* IgnoreCollisions */
     , (850142,  12, True ) /* ReportCollisions */
     , (850142,  13, False) /* Ethereal */
     , (850142,  14, True ) /* GravityStatus */
     , (850142,  19, True ) /* Attackable */
     , (850142,  42, True ) /* AllowEdgeSlide */
     , (850142,  50, True ) /* NeverFailCasting */
     , (850142,  65, True ) /* IgnoreMagicResistence */
     , (850142,  66, True ) /* IgnoreArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850142,   1,       5) /* HeartbeatInterval */
     , (850142,   2,       0) /* HeartbeatTimestamp */
     , (850142,   3,       2) /* HealthRate */
     , (850142,   4,       5) /* StaminaRate */
     , (850142,   5,       1) /* ManaRate */
     , (850142,  12,     0.1) /* Shade */
     , (850142,  13,       1) /* ArmorModVsSlash */
     , (850142,  14,     1.1) /* ArmorModVsPierce */
     , (850142,  15,       1) /* ArmorModVsBludgeon */
     , (850142,  16,       1) /* ArmorModVsCold */
     , (850142,  17,       1) /* ArmorModVsFire */
     , (850142,  18,       1) /* ArmorModVsAcid */
     , (850142,  19,       1) /* ArmorModVsElectric */
     , (850142,  31,      13) /* VisualAwarenessRange */
	 , (850142,  39,    0.75) /* DefaultScale */
     , (850142,  64,    0.01) /* ResistSlash */
     , (850142,  65,    0.05) /* ResistPierce */
     , (850142,  66,    0.01) /* ResistBludgeon */
     , (850142,  67,    0.01) /* ResistFire */
     , (850142,  68,    0.01) /* ResistCold */
     , (850142,  69,    0.01) /* ResistAcid */
     , (850142,  70,    0.01) /* ResistElectric */
     , (850142,  71,       1) /* ResistHealthBoost */
     , (850142,  72,       1) /* ResistStaminaDrain */
     , (850142,  73,       1) /* ResistStaminaBoost */
     , (850142,  74,       1) /* ResistManaDrain */
     , (850142,  75,       1) /* ResistManaBoost */
     , (850142,  80,       2) /* AiUseMagicDelay */
     , (850142, 104,      25) /* ObviousRadarRange */
     , (850142, 117,     0.5) /* FocusedProbability */
	 , (850142, 122,       5) /* AiAcquireHealth */
     , (850142, 125,       1) /* ResistHealthDrain */
     , (850142, 166,    0.03) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850142,   1, 'Kou-an Kin') /* Name */
     , (850142,   3, 'Male') /* Sex */
     , (850142,   4, 'Sho') /* HeritageGroup */
     , (850142,  45, 'southernKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850142,   1,   33554433) /* Setup */
     , (850142,   2,  150994945) /* MotionTable */
     , (850142,   3,  536870913) /* SoundTable */
     , (850142,   4,  805306368) /* CombatTable */
     , (850142,   6,   67108990) /* PaletteBase */
     , (850142,   8,  100667446) /* Icon */
     , (850142,   9,   83890516) /* EyesTexture */
     , (850142,  10,   83890518) /* NoseTexture */
     , (850142,  11,   83890613) /* MouthTexture */
     , (850142,  15,   67116992) /* HairPalette */
     , (850142,  16,   67109566) /* EyesPalette */
     , (850142,  17,   67109558) /* SkinPalette */
     , (850142,  22,  872415236) /* PhysicsEffectTable */
     , (850142,  32,        416) /* WieldedTreasureType - 
                                   Wield Clean, Dry Towel (10758) | Palette: Blue (2) | Probability: 50%
                                   Wield Clean, Dry Towel (10758) | Palette: Green (8) | Probability: 50% */
     , (850142,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850142,   1, 340, 0, 0) /* Strength */
     , (850142,   2, 350, 0, 0) /* Endurance */
     , (850142,   3, 330, 0, 0) /* Quickness */
     , (850142,   4, 330, 0, 0) /* Coordination */
     , (850142,   5, 530, 0, 0) /* Focus */
     , (850142,   6, 530, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850142,   1, 250000, 0, 0, 250000) /* MaxHealth */
     , (850142,   3,   1000, 0, 0,   1000) /* MaxStamina */
     , (850142,   5,   7000, 0, 0,   7000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850142,  1, 0, 3, 0,  520, 0, 1356.1) /* Axe                 Specialized */
     , (850142,  2, 0, 3, 0,  520, 0, 1356.1) /* Bow                 Specialized */
     , (850142,  4, 0, 3, 0,  520, 0, 1356.1) /* Dagger              Specialized */
     , (850142,  5, 0, 3, 0,  520, 0, 1356.1) /* Mace                Specialized */
     , (850142,  6, 0, 3, 0,  323, 0, 1356.1) /* MeleeDefense        Specialized */
     , (850142,  7, 0, 3, 0,  345, 0, 1356.1) /* MissileDefense      Specialized */
     , (850142,  9, 0, 3, 0,  520, 0, 1356.1) /* Spear               Specialized */
     , (850142, 10, 0, 3, 0,  520, 0, 1356.1) /* Staff               Specialized */
     , (850142, 11, 0, 3, 0,  520, 0, 1356.1) /* Sword               Specialized */
     , (850142, 13, 0, 3, 0,  520, 0, 1356.1) /* UnarmedCombat       Specialized */
     , (850142, 15, 0, 3, 0,  325, 0, 1356.1) /* MagicDefense        Specialized */
     , (850142, 20, 0, 3, 0,  350, 0, 1356.1) /* Deception           Specialized */
     , (850142, 24, 0, 3, 0,  520, 0, 1356.1) /* Run                 Specialized */
     , (850142, 31, 0, 3, 0, 2015, 0, 1356.1) /* CreatureEnchantment Specialized */
     , (850142, 32, 0, 3, 0, 2015, 0, 1356.1) /* ItemEnchantment     Specialized */
     , (850142, 33, 0, 3, 0, 2015, 0, 1356.1) /* LifeMagic           Specialized */
     , (850142, 34, 0, 3, 0, 2015, 0, 1356.1) /* WarMagic            Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850142,  0,  4,     0,    0,  840,  126,  140,  154,   56,   56,  140,   84,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (850142,  1,  4,     0,    0,  840,  126,  140,  154,   56,   56,  140,   84,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (850142,  2,  4,     0,    0,  840,  126,  140,  154,   56,   56,  140,   84,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (850142,  3,  4,     0,    0,  840,  126,  140,  154,   56,   56,  140,   84,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (850142,  4,  4,     0,    0,  840,  126,  140,  154,   56,   56,  140,   84,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (850142,  5,  4,  2000, 0.75,  840,  126,  140,  154,   56,   56,  140,   84,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (850142,  6,  4,     0,    0,  840,  126,  140,  154,   56,   56,  140,   84,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (850142,  7,  4,     0,    0,  840,  126,  140,  154,   56,   56,  140,   84,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (850142,  8,  4,  2000, 0.75,  840,  126,  140,  154,   56,   56,  140,   84,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850142,  4434,    2.1)  /* Incantation of Acid Volley */
     , (850142,  4432,  2.111)  /* Incantation of Acid Streak */
     , (850142,  4433,  2.125)  /* Incantation of Acid Stream */
     , (850142,  4635,  2.071)  /* Incantation of War Magic Ineptitude Other */
	 , (850142,  4312,    2.1)  /* Incantation of Imperil Other */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850142, 3 /* Death */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850142, 32 /* GotoSet */, 0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333 /* LumAugDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334 /* LumAugDamageReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335 /* LumAugCritDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336 /* LumAugCritReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);