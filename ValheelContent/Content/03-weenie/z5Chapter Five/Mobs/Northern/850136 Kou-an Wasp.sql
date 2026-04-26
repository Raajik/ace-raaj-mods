DELETE FROM `weenie` WHERE `class_Id` = 850136;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850136, 'ace850136-kou-anwasp', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850136,   1,         16) /* ItemType - Creature */
     , (850136,   2,          9) /* CreatureType - PhyntosWasp */
     , (850136,   3,         27) /* PaletteTemplate - DarkGreenMetal */
     , (850136,   6,         -1) /* ItemsCapacity */
     , (850136,   7,         -1) /* ContainersCapacity */
     , (850136,  16,          1) /* ItemUseable - No */
     , (850136,  25,        650) /* Level */
     , (850136,  40,          2) /* CombatMode - Melee */
     , (850136,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (850136,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (850136, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (850136, 146,   23100000) /* XpOverride */
     , (850136, 332,     325000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850136,   1, True ) /* Stuck */
     , (850136,   6, True ) /* AiUsesMana */
     , (850136,  11, False) /* IgnoreCollisions */
     , (850136,  12, True ) /* ReportCollisions */
     , (850136,  13, False) /* Ethereal */
     , (850136,  14, True ) /* GravityStatus */
     , (850136,  19, True ) /* Attackable */
     , (850136,  42, True ) /* AllowEdgeSlide */
     , (850136,  50, True ) /* NeverFailCasting */
     , (850136,  65, True ) /* IgnoreMagicResistence */
     , (850136,  66, True ) /* IgnoreArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850136,   1,       5) /* HeartbeatInterval */
     , (850136,   2,       0) /* HeartbeatTimestamp */
     , (850136,   3,       2) /* HealthRate */
     , (850136,   4,       5) /* StaminaRate */
     , (850136,   5,       1) /* ManaRate */
     , (850136,  12,     0.1) /* Shade */
     , (850136,  13,       1) /* ArmorModVsSlash */
     , (850136,  14,       1) /* ArmorModVsPierce */
     , (850136,  15,       1) /* ArmorModVsBludgeon */
     , (850136,  16,       1) /* ArmorModVsCold */
     , (850136,  17,       1) /* ArmorModVsFire */
     , (850136,  18,     1.1) /* ArmorModVsAcid */
     , (850136,  19,       1) /* ArmorModVsElectric */
     , (850136,  31,      13) /* VisualAwarenessRange */
	 , (850136,  39,     1.6) /* DefaultScale */
     , (850136,  64,    0.01) /* ResistSlash */
     , (850136,  65,    0.01) /* ResistPierce */
     , (850136,  66,    0.01) /* ResistBludgeon */
     , (850136,  67,    0.01) /* ResistFire */
     , (850136,  68,    0.01) /* ResistCold */
     , (850136,  69,    0.05) /* ResistAcid */
     , (850136,  70,    0.01) /* ResistElectric */
     , (850136,  71,       1) /* ResistHealthBoost */
     , (850136,  72,       1) /* ResistStaminaDrain */
     , (850136,  73,       1) /* ResistStaminaBoost */
     , (850136,  74,       1) /* ResistManaDrain */
     , (850136,  75,       1) /* ResistManaBoost */
     , (850136,  80,     3.2) /* AiUseMagicDelay */
     , (850136, 104,      25) /* ObviousRadarRange */
     , (850136, 117,     0.5) /* FocusedProbability */
	 , (850136, 122,       5) /* AiAcquireHealth */
     , (850136, 125,       1) /* ResistHealthDrain */
     , (850136, 166,   0.035) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850136,   1, 'Kou-an Wasp') /* Name */
     , (850136,  45, 'northernKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850136,   1, 0x02001121) /* Setup */
     , (850136,   2, 0x09000167) /* MotionTable */
     , (850136,   3, 0x2000000E) /* SoundTable */
     , (850136,   4, 0x30000011) /* CombatTable */
     , (850136,   6, 0x040018FE) /* PaletteBase */
     , (850136,   7, 0x10000564) /* ClothingBase */
     , (850136,   8, 0x0600103A) /* Icon */
     , (850136,  22, 0x34000022) /* PhysicsEffectTable */
     , (850136,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850136,   1, 2380, 0, 0) /* Strength */
     , (850136,   2, 2300, 0, 0) /* Endurance */
     , (850136,   3, 2400, 0, 0) /* Quickness */
     , (850136,   4, 2380, 0, 0) /* Coordination */
     , (850136,   5, 2380, 0, 0) /* Focus */
     , (850136,   6, 2380, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850136,   1, 180500, 0, 0, 180500) /* MaxHealth */
     , (850136,   3,  14000, 0, 0,  14000) /* MaxStamina */
     , (850136,   5,   2000, 0, 0,   2000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850136,  6, 0, 2, 0,  520, 0, 0) /* MeleeDefense        Trained */
     , (850136,  7, 0, 2, 0,  550, 0, 0) /* MissileDefense      Trained */
     , (850136, 15, 0, 2, 0,  350, 0, 0) /* MagicDefense        Trained */
     , (850136, 16, 0, 2, 0,  360, 0, 0) /* ManaConversion      Trained */
     , (850136, 31, 0, 2, 0,  360, 0, 0) /* CreatureEnchantment Trained */
     , (850136, 33, 0, 2, 0,  360, 0, 0) /* LifeMagic           Trained */
     , (850136, 34, 0, 2, 0, 3360, 0, 0) /* WarMagic            Trained */
     , (850136, 41, 0, 2, 0, 2514, 0, 0) /* TwoHandedCombat     Trained */
     , (850136, 43, 0, 2, 0, 3360, 0, 0) /* VoidMagic           Trained */
     , (850136, 44, 0, 2, 0, 2514, 0, 0) /* HeavyWeapons        Trained */
     , (850136, 45, 0, 2, 0, 2514, 0, 0) /* LightWeapons        Trained */
     , (850136, 46, 0, 2, 0, 2507, 0, 0) /* FinesseWeapons      Trained */
     , (850136, 47, 0, 2, 0, 2250, 0, 0) /* MissileWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850136,  0,  2, 3000, 0.75,  830,  344,  344,  344,  344,  430,  344,  430,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (850136, 16,  4,    0,    0,  830,  344,  344,  344,  344,  430,  344,  430,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (850136, 17,  1, 3000, 0.75,  830,  344,  344,  344,  344,  430,  344,  430,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (850136, 21,  4,    0,    0,  830,  344,  344,  344,  344,  430,  344,  430,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850136,  4434,    2.1)  /* Incantation of Acid Volley */
     , (850136,  4432,  2.111)  /* Incantation of Acid Streak */
     , (850136,  4433,  2.125)  /* Incantation of Acid Stream */
     , (850136,  4635,  2.071)  /* Incantation of War Magic Ineptitude Other */
	 , (850136,  4312,    2.1)  /* Incantation of Imperil Other */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850136, 3 /* Death */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850136, 32 /* GotoSet */, 0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333 /* LumAugDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334 /* LumAugDamageReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335 /* LumAugCritDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336 /* LumAugCritReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);