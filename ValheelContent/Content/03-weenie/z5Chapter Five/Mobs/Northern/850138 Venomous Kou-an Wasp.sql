DELETE FROM `weenie` WHERE `class_Id` = 850138;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850138, 'ace850138-venomouskou-anwasp', 10, '2023-04-16 19:12:49') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850138,   1,         16) /* ItemType - Creature */
     , (850138,   2,          9) /* CreatureType - PhyntosWasp */
     , (850138,   6,         -1) /* ItemsCapacity */
     , (850138,   7,         -1) /* ContainersCapacity */
     , (850138,  16,          1) /* ItemUseable - No */
     , (850138,  25,        665) /* Level */
     , (850138,  40,          2) /* CombatMode - Melee */
     , (850138,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (850138,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (850138, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (850138, 146,   23100000) /* XpOverride */
     , (850138, 332,     325000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850138,   1, True ) /* Stuck */
     , (850138,   6, True ) /* AiUsesMana */
     , (850138,  11, False) /* IgnoreCollisions */
     , (850138,  12, True ) /* ReportCollisions */
     , (850138,  13, False) /* Ethereal */
     , (850138,  14, True ) /* GravityStatus */
     , (850138,  19, True ) /* Attackable */
     , (850138,  42, True ) /* AllowEdgeSlide */
     , (850138,  50, True ) /* NeverFailCasting */
     , (850138,  65, True ) /* IgnoreMagicResistence */
     , (850138,  66, True ) /* IgnoreArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850138,   1,       5) /* HeartbeatInterval */
     , (850138,   2,       0) /* HeartbeatTimestamp */
     , (850138,   3,       2) /* HealthRate */
     , (850138,   4,       5) /* StaminaRate */
     , (850138,   5,       1) /* ManaRate */
     , (850138,  12,     0.1) /* Shade */
     , (850138,  13,       1) /* ArmorModVsSlash */
     , (850138,  14,       1) /* ArmorModVsPierce */
     , (850138,  15,       1) /* ArmorModVsBludgeon */
     , (850138,  16,       1) /* ArmorModVsCold */
     , (850138,  17,       1) /* ArmorModVsFire */
     , (850138,  18,     1.1) /* ArmorModVsAcid */
     , (850138,  19,       1) /* ArmorModVsElectric */
     , (850138,  31,      13) /* VisualAwarenessRange */
	 , (850138,  39,     1.6) /* DefaultScale */
     , (850138,  64,    0.01) /* ResistSlash */
     , (850138,  65,    0.01) /* ResistPierce */
     , (850138,  66,    0.01) /* ResistBludgeon */
     , (850138,  67,    0.01) /* ResistFire */
     , (850138,  68,    0.01) /* ResistCold */
     , (850138,  69,    0.05) /* ResistAcid */
     , (850138,  70,    0.01) /* ResistElectric */
     , (850138,  71,       1) /* ResistHealthBoost */
     , (850138,  72,       1) /* ResistStaminaDrain */
     , (850138,  73,       1) /* ResistStaminaBoost */
     , (850138,  74,       1) /* ResistManaDrain */
     , (850138,  75,       1) /* ResistManaBoost */
     , (850138,  80,     3.2) /* AiUseMagicDelay */
     , (850138, 104,      25) /* ObviousRadarRange */
     , (850138, 117,     0.5) /* FocusedProbability */
	 , (850138, 122,       5) /* AiAcquireHealth */
     , (850138, 125,       1) /* ResistHealthDrain */
     , (850138, 166,   0.035) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850138,   1, 'Venomous Kou-an Wasp') /* Name */
     , (850138,  45, 'northernKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850138,   1,   33558817) /* Setup */
     , (850138,   2,  150995303) /* MotionTable */
     , (850138,   3,  536870926) /* SoundTable */
	 , (850138,   4, 0x30000011) /* CombatTable */
     , (850138,   6,   67115262) /* PaletteBase */
	 , (850138,   7, 0x10000564) /* ClothingBase */
     , (850138,   8,  100667450) /* Icon */
     , (850138,  22,  872415266) /* PhysicsEffectTable */
	 , (850138,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850138,   1, 2400, 0, 0) /* Strength */
     , (850138,   2, 2400, 0, 0) /* Endurance */
     , (850138,   3, 2400, 0, 0) /* Quickness */
     , (850138,   4, 2400, 0, 0) /* Coordination */
     , (850138,   5, 2500, 0, 0) /* Focus */
     , (850138,   6, 2500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850138,   1, 210500, 0, 0, 210500) /* MaxHealth */
     , (850138,   3,  15000, 0, 0,  15000) /* MaxStamina */
     , (850138,   5,   2000, 0, 0,   2000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850138,  6, 0, 2, 0,  530, 0, 0) /* MeleeDefense        Trained */
     , (850138,  7, 0, 2, 0,  550, 0, 0) /* MissileDefense      Trained */
     , (850138, 15, 0, 2, 0,  340, 0, 0) /* MagicDefense        Trained */
     , (850138, 16, 0, 2, 0,  300, 0, 0) /* ManaConversion      Trained */
     , (850138, 31, 0, 2, 0,  300, 0, 0) /* CreatureEnchantment Trained */
     , (850138, 33, 0, 2, 0,  300, 0, 0) /* LifeMagic           Trained */
     , (850138, 34, 0, 2, 0, 3300, 0, 0) /* WarMagic            Trained */
     , (850138, 41, 0, 2, 0, 2500, 0, 0) /* TwoHandedCombat     Trained */
     , (850138, 43, 0, 2, 0, 3300, 0, 0) /* VoidMagic           Trained */
     , (850138, 44, 0, 2, 0, 2500, 0, 0) /* HeavyWeapons        Trained */
     , (850138, 45, 0, 2, 0, 2500, 0, 0) /* LightWeapons        Trained */
     , (850138, 46, 0, 2, 0, 2500, 0, 0) /* FinesseWeapons      Trained */
     , (850138, 47, 0, 2, 0, 3220, 0, 0) /* MissileWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850138,  0,  2, 3000, 0.75,  950,  344,  344,  344,  344,  430,  344,  430,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (850138, 16,  4,    0,    0,  950,  344,  344,  344,  344,  430,  344,  430,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (850138, 17,  1, 3000, 0.75,  950,  344,  344,  344,  344,  430,  344,  430,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (850138, 21,  4,    0,    0,  950,  344,  344,  344,  344,  430,  344,  430,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850138,  4453,    2.1)  /* Incantation of Lightning Volley */
     , (850138,  4452,  2.111)  /* Incantation of Lightning Streak */
     , (850138,  4451,  2.125)  /* Incantation of Lightning Bolt */
     , (850138,  5082,  2.071)  /* Incantation of Two Handed Combat Ineptitude */
	 , (850138,  4312,    2.1)  /* Incantation of Imperil Other */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850138, 3 /* Death */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850138, 32 /* GotoSet */, 0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333 /* LumAugDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334 /* LumAugDamageReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335 /* LumAugCritDamageRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336 /* LumAugCritReductionRating */, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
