DELETE FROM `weenie` WHERE `class_Id` = 850126;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850126, 'ace850126-kou-anpalacost', 10, '2023-04-15 21:10:12') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850126,   1,         16) /* ItemType - Creature */
     , (850126,   2,         22) /* CreatureType - Shadow */
     , (850126,   6,         -1) /* ItemsCapacity */
     , (850126,   7,         -1) /* ContainersCapacity */
     , (850126,   8,         90) /* Mass */
     , (850126,  16,          1) /* ItemUseable - No */
     , (850126,  25,        680) /* Level */
     , (850126,  27,          0) /* ArmorType - None */
	 , (850126,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */    
	 , (850126,  81,          1) /* MaxGeneratedObjects */
     , (850126,  82,          0) /* InitGeneratedObjects */
     , (850126,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (850126, 103,          1) /* GeneratorDestructionType - Nothing */
     , (850126, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (850126, 146,   23100000) /* XpOverride */
     , (850126, 332,     325000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850126,   1, True ) /* Stuck */
     , (850126,   6, True ) /* AiUsesMana */
     , (850126,  11, False) /* IgnoreCollisions */
     , (850126,  12, True ) /* ReportCollisions */
     , (850126,  13, False) /* Ethereal */
     , (850126,  14, True ) /* GravityStatus */
     , (850126,  19, True ) /* Attackable */
     , (850126,  42, True ) /* AllowEdgeSlide */
     , (850126,  50, True ) /* NeverFailCasting */
     , (850126,  65, True ) /* IgnoreMagicResistence */
     , (850126,  66, True ) /* IgnoreArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850126,   1,       5) /* HeartbeatInterval */
     , (850126,   2,       0) /* HeartbeatTimestamp */
     , (850126,   3,       2) /* HealthRate */
     , (850126,   4,       5) /* StaminaRate */
     , (850126,   5,       1) /* ManaRate */
     , (850126,  12,     0.1) /* Shade */
     , (850126,  13,       1) /* ArmorModVsSlash */
     , (850126,  14,       1) /* ArmorModVsPierce */
     , (850126,  15,       1) /* ArmorModVsBludgeon */
     , (850126,  16,       1) /* ArmorModVsCold */
     , (850126,  17,       1) /* ArmorModVsFire */
     , (850126,  18,     1.1) /* ArmorModVsAcid */
     , (850126,  19,       1) /* ArmorModVsElectric */
     , (850126,  31,      13) /* VisualAwarenessRange */
	 , (850126,  39,     0.5) /* DefaultScale */
     , (850126,  64,    0.01) /* ResistSlash */
     , (850126,  65,    0.01) /* ResistPierce */
     , (850126,  66,    0.01) /* ResistBludgeon */
     , (850126,  67,    0.01) /* ResistFire */
     , (850126,  68,    0.01) /* ResistCold */
     , (850126,  69,    0.05) /* ResistAcid */
     , (850126,  70,    0.01) /* ResistElectric */
     , (850126,  71,       1) /* ResistHealthBoost */
     , (850126,  72,       1) /* ResistStaminaDrain */
     , (850126,  73,       1) /* ResistStaminaBoost */
     , (850126,  74,       1) /* ResistManaDrain */
     , (850126,  75,       1) /* ResistManaBoost */
     , (850126,  76,     0.5) /* Translucency */
     , (850126,  80,     3.2) /* AiUseMagicDelay */
     , (850126, 104,      25) /* ObviousRadarRange */
     , (850126, 117,     0.5) /* FocusedProbability */
	 , (850126, 122,       5) /* AiAcquireHealth */
     , (850126, 125,       1) /* ResistHealthDrain */
     , (850126, 166,    0.03) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850126,   1, 'Kou-an Palacost') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850126,   1,   33560358) /* Setup */
     , (850126,   2,  150995091) /* MotionTable */
     , (850126,   3,  536870914) /* SoundTable */
     , (850126,   4,  805306368) /* CombatTable */
     , (850126,   8,  100670398) /* Icon */
     , (850126,  22,  872415331) /* PhysicsEffectTable */
	 , (850126,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850126,   1, 2200, 0, 0) /* Strength */
     , (850126,   2, 1200, 0, 0) /* Endurance */
     , (850126,   3,  800, 0, 0) /* Quickness */
     , (850126,   4,  800, 0, 0) /* Coordination */
     , (850126,   5,  800, 0, 0) /* Focus */
     , (850126,   6,  800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850126,   1, 148000, 0, 0, 148000) /* MaxHealth */
     , (850126,   3,  11600, 0, 0,  11600) /* MaxStamina */
     , (850126,   5,  14450, 0, 0,  14450) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850126,  6, 0, 3, 0,  375, 0, 0) /* MeleeDefense        Specialized */
     , (850126,  7, 0, 3, 0,  460, 0, 0) /* MissileDefense      Specialized */
     , (850126, 14, 0, 3, 0,  180, 0, 0) /* ArcaneLore          Specialized */
     , (850126, 15, 0, 3, 0,  375, 0, 0) /* MagicDefense        Specialized */
     , (850126, 20, 0, 3, 0,  150, 0, 0) /* Deception           Specialized */
     , (850126, 34, 0, 3, 0, 3350, 0, 0) /* WarMagic            Specialized */
	 , (850126, 45, 0, 3, 0, 3260, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850126,  0,  4,     0,    0,  850,  234,  260,  286,  104,  104,  260,  156,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (850126,  1,  4,     0,    0,  850,  225,  250,  275,  100,  100,  250,  150,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (850126,  2,  4,     0,    0,  850,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (850126,  3,  4,     0,    0,  850,  216,  240,  264,   96,   96,  240,  144,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (850126,  4,  4,     0,    0,  850,  216,  240,  264,   96,   96,  240,  144,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (850126,  5,  4,  3000, 0.75,  850,  216,  240,  264,   96,   96,  240,  144,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (850126,  6,  4,     0,    0,  850,  234,  260,  286,  104,  104,  260,  156,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (850126,  7,  4,     0,    0,  850,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (850126,  8,  4,  3000, 0.75,  850,  221,  245,  270,   98,   98,  245,  147,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850126,  2672,   2.04)  /* Ring of True Pain */
     , (850126,  2673,   2.04)  /* Ring of Unspeakable Agony */
	 , (850126,  4239,   2.02)  /* Ring of Death */
	 , (850126,  4967,   2.02)  /* Cleansing Ring of Fire */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850126, 3 /* Death */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850126, 32 /* GotoSet */, 0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333 /* LumAugDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334 /* LumAugDamageReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335 /* LumAugCritDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336 /* LumAugCritReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);