DELETE FROM `weenie` WHERE `class_Id` = 850137;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850137, 'ace850137-kou-anwaspswarm', 10, '2022-12-04 19:04:52') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850137,   1,         16) /* ItemType - Creature */
     , (850137,   2,          9) /* CreatureType - PhyntosWasp */
     , (850137,   3,         21) /* PaletteTemplate - Gold */
     , (850137,   6,         -1) /* ItemsCapacity */
     , (850137,   7,         -1) /* ContainersCapacity */
     , (850137,  16,          1) /* ItemUseable - No */
     , (850137,  25,        660) /* Level */
     , (850137,  40,          2) /* CombatMode - Melee */
     , (850137,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (850137,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (850137, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (850137, 146,   23100000) /* XpOverride */
     , (850137, 332,     325000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850137,   1, True ) /* Stuck */
     , (850137,   6, True ) /* AiUsesMana */
     , (850137,  11, False) /* IgnoreCollisions */
     , (850137,  12, True ) /* ReportCollisions */
     , (850137,  13, False) /* Ethereal */
     , (850137,  14, True ) /* GravityStatus */
     , (850137,  19, True ) /* Attackable */
     , (850137,  42, True ) /* AllowEdgeSlide */
     , (850137,  50, True ) /* NeverFailCasting */
     , (850137,  65, True ) /* IgnoreMagicResist */
     , (850137,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850137,   1,       5) /* HeartbeatInterval */
     , (850137,   2,       0) /* HeartbeatTimestamp */
     , (850137,   3,       2) /* HealthRate */
     , (850137,   4,       5) /* StaminaRate */
     , (850137,   5,       1) /* ManaRate */
     , (850137,  12,     0.1) /* Shade */
     , (850137,  13,       1) /* ArmorModVsSlash */
     , (850137,  14,       1) /* ArmorModVsPierce */
     , (850137,  15,       1) /* ArmorModVsBludgeon */
     , (850137,  16,       1) /* ArmorModVsCold */
     , (850137,  17,       1) /* ArmorModVsFire */
     , (850137,  18,     1.1) /* ArmorModVsAcid */
     , (850137,  19,       1) /* ArmorModVsElectric */
     , (850137,  31,      13) /* VisualAwarenessRange */
     , (850137,  39,    0.75) /* DefaultScale */
     , (850137,  64,    0.01) /* ResistSlash */
     , (850137,  65,    0.01) /* ResistPierce */
     , (850137,  66,    0.01) /* ResistBludgeon */
     , (850137,  67,    0.01) /* ResistFire */
     , (850137,  68,    0.01) /* ResistCold */
     , (850137,  69,    0.05) /* ResistAcid */
     , (850137,  70,    0.01) /* ResistElectric */
     , (850137,  71,       1) /* ResistHealthBoost */
     , (850137,  72,       1) /* ResistStaminaDrain */
     , (850137,  73,       1) /* ResistStaminaBoost */
     , (850137,  74,       1) /* ResistManaDrain */
     , (850137,  75,       1) /* ResistManaBoost */
     , (850137,  80,     3.2) /* AiUseMagicDelay */
     , (850137, 104,      25) /* ObviousRadarRange */
     , (850137, 117,     0.5) /* FocusedProbability */
     , (850137, 122,       5) /* AiAcquireHealth */
     , (850137, 125,       1) /* ResistHealthDrain */
     , (850137, 166,   0.035) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850137,   1, 'Kou-an Wasp Swarm') /* Name */
     , (850137,  45, 'northernKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850137,   1,   33558818) /* Setup */
     , (850137,   2,  150995304) /* MotionTable */
     , (850137,   3,  536870926) /* SoundTable */
     , (850137,   4,  805306385) /* CombatTable */
     , (850137,   6,   67115262) /* PaletteBase */
     , (850137,   7,  268436836) /* ClothingBase */
     , (850137,   8,  100667450) /* Icon */
     , (850137,  22,  872415266) /* PhysicsEffectTable */
     , (850137,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850137,   1, 2420, 0, 0) /* Strength */
     , (850137,   2, 800, 0, 0) /* Endurance */
     , (850137,   3, 800, 0, 0) /* Quickness */
     , (850137,   4, 800, 0, 0) /* Coordination */
     , (850137,   5, 800, 0, 0) /* Focus */
     , (850137,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850137,   1, 200100, 0, 0, 200100) /* MaxHealth */
     , (850137,   3, 14000, 0, 0, 14000) /* MaxStamina */
     , (850137,   5,  2000, 0, 0, 2000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (850137,  6, 0, 2, 0, 530, 0, 0) /* MeleeDefense        Trained */
     , (850137,  7, 0, 2, 0, 550, 0, 0) /* MissileDefense      Trained */
     , (850137, 15, 0, 2, 0, 350, 0, 0) /* MagicDefense        Trained */
     , (850137, 16, 0, 2, 0, 350, 0, 0) /* ManaConversion      Trained */
     , (850137, 31, 0, 2, 0, 350, 0, 0) /* CreatureEnchantment Trained */
     , (850137, 33, 0, 2, 0, 350, 0, 0) /* LifeMagic           Trained */
     , (850137, 34, 0, 2, 0, 3350, 0, 0) /* WarMagic            Trained */
     , (850137, 41, 0, 2, 0, 2417, 0, 0) /* TwoHandedCombat     Trained */
     , (850137, 43, 0, 2, 0, 3350, 0, 0) /* VoidMagic           Trained */
     , (850137, 44, 0, 2, 0, 2417, 0, 0) /* HeavyWeapons        Trained */
     , (850137, 45, 0, 2, 0, 2417, 0, 0) /* LightWeapons        Trained */
     , (850137, 46, 0, 2, 0, 2424, 0, 0) /* FinesseWeapons      Trained */
     , (850137, 47, 0, 2, 0, 3230, 0, 0) /* MissileWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (850137,  0,  2, 3000, 0.75,  900,  344,  344,  344,  344,  430,  344,  430,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (850137, 16,  4,  0,    0,  900,  344,  344,  344,  344,  430,  344,  430,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (850137, 17,  1, 3000, 0.75,  900,  344,  344,  344,  344,  430,  344,  430,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (850137, 21,  4,  0,    0,  900,  344,  344,  344,  344,  430,  344,  430,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (850137,  4312,    2.1)  /* Incantation of Imperil Other */
     , (850137,  4439,  2.125)  /* Incantation of Flame Bolt */
     , (850137,  4440,  2.111)  /* Incantation of Flame Streak */
     , (850137,  4441,    2.1)  /* Incantation of Flame Volley */
     , (850137,  5426,  2.071)  /* Incantation of Void Magic Ineptitude Other */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850137,  3 /* Death */,    0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850137, 32 /* GotoSet */,   0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  4,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
