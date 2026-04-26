DELETE FROM `weenie` WHERE `class_Id` = 850148;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850148, 'ace840148-humankou-anworshippermage', 10, '2020-10-16 18:24:12') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850148,   1,         16) /* ItemType - Creature */
     , (850148,   2,         31) /* CreatureType - Human */
     , (850148,   6,         -1) /* ItemsCapacity */
     , (850148,   7,         -1) /* ContainersCapacity */
     , (850148,   8,        120) /* Mass */
     , (850148,  16,          1) /* ItemUseable - No */
     , (850148,  25,        725) /* Level */
     , (850148,  27,          0) /* ArmorType - None */
     , (850148,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (850148,  72,          8) /* FriendType - Tusker */
     , (850148,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850148, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (850148, 113,          1) /* Gender - Male */
     , (850148, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850148, 146,   30000000) /* XpOverride */
     , (850148, 188,          3) /* HeritageGroup - Sho */
	 , (850148, 332,     375000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850148,   1, True ) /* Stuck */
     , (850148,   6, True ) /* AiUsesMana */
     , (850148,  11, False) /* IgnoreCollisions */
     , (850148,  12, True ) /* ReportCollisions */
     , (850148,  13, False) /* Ethereal */
     , (850148,  14, True ) /* GravityStatus */
     , (850148,  19, True ) /* Attackable */
     , (850148,  42, True ) /* AllowEdgeSlide */
     , (850148,  50, True ) /* NeverFailCasting */
     , (850148,  65, True ) /* IgnoreMagicResistence */
     , (850148,  66, True ) /* IgnoreArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850148,   1,       5) /* HeartbeatInterval */
     , (850148,   2,       0) /* HeartbeatTimestamp */
     , (850148,   3,       2) /* HealthRate */
     , (850148,   4,       5) /* StaminaRate */
     , (850148,   5,       1) /* ManaRate */
     , (850148,  12,     0.1) /* Shade */
     , (850148,  13,       1) /* ArmorModVsSlash */
     , (850148,  14,     1.1) /* ArmorModVsPierce */
     , (850148,  15,       1) /* ArmorModVsBludgeon */
     , (850148,  16,       1) /* ArmorModVsCold */
     , (850148,  17,       1) /* ArmorModVsFire */
     , (850148,  18,       1) /* ArmorModVsAcid */
     , (850148,  19,       1) /* ArmorModVsElectric */
     , (850148,  31,      13) /* VisualAwarenessRange */
	 , (850148,  39,    0.75) /* DefaultScale */
     , (850148,  64,    0.01) /* ResistSlash */
     , (850148,  65,    0.05) /* ResistPierce */
     , (850148,  66,    0.01) /* ResistBludgeon */
     , (850148,  67,    0.01) /* ResistFire */
     , (850148,  68,    0.01) /* ResistCold */
     , (850148,  69,    0.01) /* ResistAcid */
     , (850148,  70,    0.01) /* ResistElectric */
     , (850148,  71,       1) /* ResistHealthBoost */
     , (850148,  72,       1) /* ResistStaminaDrain */
     , (850148,  73,       1) /* ResistStaminaBoost */
     , (850148,  74,       1) /* ResistManaDrain */
     , (850148,  75,       1) /* ResistManaBoost */
     , (850148,  80,       2) /* AiUseMagicDelay */
     , (850148, 104,      25) /* ObviousRadarRange */
     , (850148, 117,     0.5) /* FocusedProbability */
	 , (850148, 122,       5) /* AiAcquireHealth */
     , (850148, 125,       1) /* ResistHealthDrain */
     , (850148, 166,    0.03) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850148,   1, 'Kou-an Worshipper') /* Name */
     , (850148,   3, 'Male') /* Sex */
     , (850148,   4, 'Sho') /* HeritageGroup */
     , (850148,  45, 'southernKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850148,   1,   33554433) /* Setup */
     , (850148,   2,  150994945) /* MotionTable */
     , (850148,   3,  536870913) /* SoundTable */
     , (850148,   4,  805306368) /* CombatTable */
     , (850148,   6,   67108990) /* PaletteBase */
     , (850148,   8,  100667446) /* Icon */
     , (850148,   9,   83890508) /* EyesTexture */
     , (850148,  10,   83890551) /* NoseTexture */
     , (850148,  11,   83890655) /* MouthTexture */
     , (850148,  15,   67117069) /* HairPalette */
     , (850148,  16,   67110065) /* EyesPalette */
     , (850148,  17,   67109559) /* SkinPalette */
     , (850148,  22,  872415236) /* PhysicsEffectTable */
     , (850148,  32,        416) /* WieldedTreasureType - 
                                   Wield Clean, Dry Towel (10758) | Palette: Blue (2) | Probability: 50%
                                   Wield Clean, Dry Towel (10758) | Palette: Green (8) | Probability: 50% */
     , (850148,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850148,   1, 520, 0, 0) /* Strength */
     , (850148,   2, 560, 0, 0) /* Endurance */
     , (850148,   3, 340, 0, 0) /* Quickness */
     , (850148,   4, 310, 0, 0) /* Coordination */
     , (850148,   5, 520, 0, 0) /* Focus */
     , (850148,   6, 520, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850148,   1, 300000, 0, 0, 300000) /* MaxHealth */
     , (850148,   3,   1000, 0, 0,   1000) /* MaxStamina */
     , (850148,   5,   7000, 0, 0,   7000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850148,  1, 0, 3, 0,  520, 0, 1356.1) /* Axe                 Specialized */
     , (850148,  2, 0, 3, 0,  520, 0, 1356.1) /* Bow                 Specialized */
     , (850148,  4, 0, 3, 0,  520, 0, 1356.1) /* Dagger              Specialized */
     , (850148,  5, 0, 3, 0,  520, 0, 1356.1) /* Mace                Specialized */
     , (850148,  6, 0, 3, 0,  323, 0, 1356.1) /* MeleeDefense        Specialized */
     , (850148,  7, 0, 3, 0,  345, 0, 1356.1) /* MissileDefense      Specialized */
     , (850148,  9, 0, 3, 0,  520, 0, 1356.1) /* Spear               Specialized */
     , (850148, 10, 0, 3, 0,  520, 0, 1356.1) /* Staff               Specialized */
     , (850148, 11, 0, 3, 0,  520, 0, 1356.1) /* Sword               Specialized */
     , (850148, 13, 0, 3, 0,  520, 0, 1356.1) /* UnarmedCombat       Specialized */
     , (850148, 15, 0, 3, 0,  325, 0, 1356.1) /* MagicDefense        Specialized */
     , (850148, 20, 0, 3, 0,  350, 0, 1356.1) /* Deception           Specialized */
     , (850148, 24, 0, 3, 0,  520, 0, 1356.1) /* Run                 Specialized */
     , (850148, 31, 0, 3, 0, 3515, 0, 1356.1) /* CreatureEnchantment Specialized */
     , (850148, 32, 0, 3, 0, 3515, 0, 1356.1) /* ItemEnchantment     Specialized */
     , (850148, 33, 0, 3, 0, 3515, 0, 1356.1) /* LifeMagic           Specialized */
     , (850148, 34, 0, 3, 0, 3515, 0, 1356.1) /* WarMagic            Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850148,  0,  4,     0,    0,  1160,  534,  560,  586,  404,  404,  260,  156,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (850148,  1,  4,     0,    0,  1160,  534,  560,  586,  404,  404,  260,  156,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (850148,  2,  4,     0,    0,  1160,  534,  560,  586,  404,  404,  260,  156,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (850148,  3,  4,     0,    0,  1160,  534,  560,  586,  404,  404,  260,  156,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (850148,  4,  4,     0,    0,  1160,  534,  560,  586,  404,  404,  260,  156,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (850148,  5,  4,  3000, 0.75,  1160,  534,  560,  586,  404,  404,  260,  156,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (850148,  6,  4,     0,    0,  1160,  534,  560,  586,  404,  404,  260,  156,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (850148,  7,  4,     0,    0,  1160,  534,  560,  586,  404,  404,  260,  156,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (850148,  8,  4,  3000, 0.75,  1160,  534,  560,  586,  404,  404,  260,  156,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850148,  4436,    2.1)  /* Incantation of Blade Volley */
     , (850148,  4422,  2.111)  /* Incantation of Blade Arc */
     , (850148,  4435,  2.125)  /* Incantation of Blade Blast */
     , (850148,  4625,  2.071)  /* Incantation of Missile Weapon Ineptitude Other */
	 , (850148,  4312,    2.1)  /* Incantation of Imperil Other */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850148, 3 /* Death */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850148, 32 /* GotoSet */, 0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333 /* LumAugDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334 /* LumAugDamageReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335 /* LumAugCritDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336 /* LumAugCritReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);