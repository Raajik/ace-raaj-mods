DELETE FROM `weenie` WHERE `class_Id` = 850139;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850139, 'ace850139-poisonouskou-anwasp', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850139,   1,         16) /* ItemType - Creature */
     , (850139,   2,          9) /* CreatureType - PhyntosWasp */
     , (850139,   3,         27) /* PaletteTemplate - DarkGreenMetal */
     , (850139,   6,         -1) /* ItemsCapacity */
     , (850139,   7,         -1) /* ContainersCapacity */
     , (850139,  16,          1) /* ItemUseable - No */
     , (850139,  25,        680) /* Level */
     , (850139,  81,          1) /* MaxGeneratedObjects */
     , (850139,  82,          0) /* InitGeneratedObjects */
     , (850139,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (850139, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (850139, 146,   23100000) /* XpOverride */
     , (850139, 332,     325000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850139,   1, True ) /* Stuck */
     , (850139,   6, True ) /* AiUsesMana */
     , (850139,  11, False) /* IgnoreCollisions */
     , (850139,  12, True ) /* ReportCollisions */
     , (850139,  13, False) /* Ethereal */
     , (850139,  14, True ) /* GravityStatus */
     , (850139,  19, True ) /* Attackable */
     , (850139,  42, True ) /* AllowEdgeSlide */
     , (850139,  50, True ) /* NeverFailCasting */
     , (850139,  65, True ) /* IgnoreMagicResist */
     , (850139,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850139,   1,       5) /* HeartbeatInterval */
     , (850139,   2,       0) /* HeartbeatTimestamp */
     , (850139,   3,       2) /* HealthRate */
     , (850139,   4,       5) /* StaminaRate */
     , (850139,   5,       1) /* ManaRate */
     , (850139,  12,     0.1) /* Shade */
     , (850139,  13,       1) /* ArmorModVsSlash */
     , (850139,  14,       1) /* ArmorModVsPierce */
     , (850139,  15,       1) /* ArmorModVsBludgeon */
     , (850139,  16,       1) /* ArmorModVsCold */
     , (850139,  17,       1) /* ArmorModVsFire */
     , (850139,  18,     1.1) /* ArmorModVsAcid */
     , (850139,  19,       1) /* ArmorModVsElectric */
     , (850139,  31,      13) /* VisualAwarenessRange */
     , (850139,  39,     1.6) /* DefaultScale */
     , (850139,  64,    0.01) /* ResistSlash */
     , (850139,  65,    0.01) /* ResistPierce */
     , (850139,  66,    0.01) /* ResistBludgeon */
     , (850139,  67,    0.01) /* ResistFire */
     , (850139,  68,    0.01) /* ResistCold */
     , (850139,  69,    0.05) /* ResistAcid */
     , (850139,  70,    0.01) /* ResistElectric */
     , (850139,  71,       1) /* ResistHealthBoost */
     , (850139,  72,       1) /* ResistStaminaDrain */
     , (850139,  73,       1) /* ResistStaminaBoost */
     , (850139,  74,       1) /* ResistManaDrain */
     , (850139,  75,       1) /* ResistManaBoost */
     , (850139,  80,     3.2) /* AiUseMagicDelay */
     , (850139, 104,      25) /* ObviousRadarRange */
     , (850139, 117,     0.5) /* FocusedProbability */
     , (850139, 122,       5) /* AiAcquireHealth */
     , (850139, 125,       1) /* ResistHealthDrain */
     , (850139, 166,   0.035) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850139,   1, 'Poisonous Kou-an Wasp') /* Name */
     , (850139,  45, 'northernKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850139,   1,   33558817) /* Setup */
     , (850139,   2,  150995303) /* MotionTable */
     , (850139,   3,  536870926) /* SoundTable */
     , (850139,   4,  805306385) /* CombatTable */
     , (850139,   6,   67115262) /* PaletteBase */
     , (850139,   7,  268436836) /* ClothingBase */
     , (850139,   8,  100667450) /* Icon */
     , (850139,  22,  872415266) /* PhysicsEffectTable */
     , (850139,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850139,   1, 2400, 0, 0) /* Strength */
     , (850139,   2, 800, 0, 0) /* Endurance */
     , (850139,   3, 800, 0, 0) /* Quickness */
     , (850139,   4, 800, 0, 0) /* Coordination */
     , (850139,   5, 800, 0, 0) /* Focus */
     , (850139,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850139,   1, 225500, 0, 0, 225500) /* MaxHealth */
     , (850139,   3, 16000, 0, 0, 16000) /* MaxStamina */
     , (850139,   5,  2000, 0, 0, 2000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850139,  6, 0, 2, 0, 530, 0, 0) /* MeleeDefense        Trained */
     , (850139,  7, 0, 2, 0, 550, 0, 0) /* MissileDefense      Trained */
     , (850139, 15, 0, 2, 0, 340, 0, 0) /* MagicDefense        Trained */
     , (850139, 16, 0, 2, 0, 300, 0, 0) /* ManaConversion      Trained */
     , (850139, 31, 0, 2, 0, 300, 0, 0) /* CreatureEnchantment Trained */
     , (850139, 33, 0, 2, 0, 300, 0, 0) /* LifeMagic           Trained */
     , (850139, 34, 0, 2, 0, 3300, 0, 0) /* WarMagic            Trained */
     , (850139, 41, 0, 2, 0, 2500, 0, 0) /* TwoHandedCombat     Trained */
     , (850139, 43, 0, 2, 0, 3300, 0, 0) /* VoidMagic           Trained */
     , (850139, 44, 0, 2, 0, 2500, 0, 0) /* HeavyWeapons        Trained */
     , (850139, 45, 0, 2, 0, 2500, 0, 0) /* LightWeapons        Trained */
     , (850139, 46, 0, 2, 0, 2500, 0, 0) /* FinesseWeapons      Trained */
     , (850139, 47, 0, 2, 0, 3220, 0, 0) /* MissileWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850139,  0,  2, 3000, 0.75,  980,  344,  344,  344,  344,  430,  344,  430,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (850139, 16,  4,  0,    0,  980,  344,  344,  344,  344,  430,  344,  430,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (850139, 17,  1, 3000, 0.75,  980,  344,  344,  344,  344,  430,  344,  430,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (850139, 21,  4,  0,    0,  980,  344,  344,  344,  344,  430,  344,  430,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850139,  4312,    2.1)  /* Incantation of Imperil Other */
     , (850139,  4422,  2.111)  /* Incantation of Blade Arc */
     , (850139,  4435,  2.125)  /* Incantation of Blade Blast */
     , (850139,  4436,    2.1)  /* Incantation of Blade Volley */
     , (850139,  4625,  2.071)  /* Incantation of Missile Weapon Ineptitude Other */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850139,  3 /* Death */,    0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850139, 32 /* GotoSet */,   0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  4,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
