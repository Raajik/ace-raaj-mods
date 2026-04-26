DELETE FROM `weenie` WHERE `class_Id` = 802412;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802412, 'Living Rock', 10, '2023-04-01 10:03:13') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802412,   1,         16) /* ItemType - Creature */
     , (802412,   2,         50) /* CreatureType - Idol */
     , (802412,   3,          5) /* PaletteTemplate - DarkBlue */
     , (802412,   6,         -1) /* ItemsCapacity */
     , (802412,   7,         -1) /* ContainersCapacity */
     , (802412,  16,          1) /* ItemUseable - No */
     , (802412,  25,        685) /* Level */
     , (802412,  27,          1) /* ArmorType - Cloth */
     , (802412,  40,          2) /* CombatMode - Melee */
     , (802412,  68,          3) /* TargetingTactic - Random, Focused */
     , (802412,  72,         22) /* FriendType - Shadow */
     , (802412,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802412, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (802412, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802412, 140,          1) /* AiOptions - CanOpenDoors */
     , (802412, 146,    3100000) /* XpOverride */
     , (802412, 332,     125000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802412,   1, False) /* Stuck */
     , (802412,   6, True ) /* AiUsesMana */
     , (802412,  11, False) /* IgnoreCollisions */
     , (802412,  12, True ) /* ReportCollisions */
     , (802412,  13, False) /* Ethereal */
     , (802412,  19, True ) /* Attackable */
     , (802412,  50, True ) /* NeverFailCasting */
     , (802412,  65, True ) /* IgnoreMagicResist */
     , (802412,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802412,   1,       5) /* HeartbeatInterval */
     , (802412,   2,       0) /* HeartbeatTimestamp */
     , (802412,   3,     0.4) /* HealthRate */
     , (802412,   4,       5) /* StaminaRate */
     , (802412,   5,       1) /* ManaRate */
     , (802412,  13,       1) /* ArmorModVsSlash */
     , (802412,  14,       1) /* ArmorModVsPierce */
     , (802412,  15,     1.1) /* ArmorModVsBludgeon */
     , (802412,  16,       1) /* ArmorModVsCold */
     , (802412,  17,       1) /* ArmorModVsFire */
     , (802412,  18,       1) /* ArmorModVsAcid */
     , (802412,  19,       1) /* ArmorModVsElectric */
     , (802412,  31,      30) /* VisualAwarenessRange */
     , (802412,  34,       1) /* PowerupTime */
     , (802412,  36,       1) /* ChargeSpeed */
     , (802412,  39,     1.4) /* DefaultScale */
     , (802412,  64,    0.01) /* ResistSlash */
     , (802412,  65,    0.01) /* ResistPierce */
     , (802412,  66,    0.05) /* ResistBludgeon */
     , (802412,  67,    0.01) /* ResistFire */
     , (802412,  68,    0.01) /* ResistCold */
     , (802412,  69,    0.01) /* ResistAcid */
     , (802412,  70,    0.01) /* ResistElectric */
     , (802412,  71,       1) /* ResistHealthBoost */
     , (802412,  72,       1) /* ResistStaminaDrain */
     , (802412,  73,       1) /* ResistStaminaBoost */
     , (802412,  74,       1) /* ResistManaDrain */
     , (802412,  75,       1) /* ResistManaBoost */
     , (802412,  80,       3) /* AiUseMagicDelay */
     , (802412, 104,      10) /* ObviousRadarRange */
     , (802412, 117,     0.5) /* FocusedProbability */
     , (802412, 122,       2) /* AiAcquireHealth */
     , (802412, 125,       1) /* ResistHealthDrain */
     , (802412, 166,    0.03) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802412,   1, 'Living Rock') /* Name */
     , (802412,  45, 'INSERTKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802412,   1,   33556893) /* Setup */
     , (802412,   2,  150995105) /* MotionTable */
     , (802412,   3,  536871017) /* SoundTable */
     , (802412,   4,  805306414) /* CombatTable */
     , (802412,   6,   67113068) /* PaletteBase */
     , (802412,   7,  268436089) /* ClothingBase */
     , (802412,   8,  100671204) /* Icon */
     , (802412,  19,         84) /* ActivationAnimation */
     , (802412,  22,  872415369) /* PhysicsEffectTable */
     , (802412,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802412,   1, 6250, 0, 0) /* Strength */
     , (802412,   2, 560, 0, 0) /* Endurance */
     , (802412,   3, 550, 0, 0) /* Quickness */
     , (802412,   4, 500, 0, 0) /* Coordination */
     , (802412,   5, 540, 0, 0) /* Focus */
     , (802412,   6, 590, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802412,   1, 150000, 0, 0, 150000) /* MaxHealth */
     , (802412,   3, 200000, 0, 0, 200000) /* MaxStamina */
     , (802412,   5, 200000, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802412,  6, 0, 3, 0, 300, 0, 0) /* MeleeDefense        Specialized */
     , (802412,  7, 0, 3, 0, 375, 0, 0) /* MissileDefense      Specialized */
     , (802412, 14, 0, 3, 0, 220, 0, 0) /* ArcaneLore          Specialized */
     , (802412, 15, 0, 3, 0, 365, 0, 0) /* MagicDefense        Specialized */
     , (802412, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (802412, 31, 0, 3, 0, 205, 0, 0) /* CreatureEnchantment Specialized */
     , (802412, 33, 0, 3, 0, 205, 0, 0) /* LifeMagic           Specialized */
     , (802412, 34, 0, 3, 0, 205, 0, 0) /* WarMagic            Specialized */
     , (802412, 45, 0, 3, 0, 5380, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802412,  0,  4, 3000, 0.75, 1500,  450,  450,  450,  450,  450,  450,  450,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (802412,  1,  4, 3000, 0.75, 1500,  450,  450,  450,  450,  450,  450,  450,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Chest */
     , (802412,  2,  4, 3000, 0.75, 1500,  450,  450,  450,  450,  450,  450,  450,    0, 3,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Abdomen */
     , (802412,  5,  4, 3000, 0.75, 1500,  450,  450,  450,  450,  450,  450,  450,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Hand */
     , (802412, 22, 16, 3500, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802412,  3 /* Death */,    0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802412, 32 /* GotoSet */,   0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  4,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
