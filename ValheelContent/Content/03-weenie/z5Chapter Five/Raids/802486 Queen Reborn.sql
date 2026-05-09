DELETE FROM `weenie` WHERE `class_Id` = 802486;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802486, 'QueenReborn', 10, '2023-04-01 10:03:13') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802486,   1,         16) /* ItemType - Creature */
     , (802486,   2,         44) /* CreatureType - Grievver */
     , (802486,   3,          5) /* PaletteTemplate - DarkBlue */
     , (802486,   6,         -1) /* ItemsCapacity */
     , (802486,   7,         -1) /* ContainersCapacity */
     , (802486,  16,          1) /* ItemUseable - No */
     , (802486,  25,        750) /* Level */
     , (802486,  27,          1) /* ArmorType - Cloth */
     , (802486,  40,          2) /* CombatMode - Melee */
     , (802486,  67,         64) /* Tolerance - Attack if Attacked */
     , (802486,  68,          3) /* TargetingTactic - Random, Focused */
     , (802486,  72,         22) /* FriendType - Shadow */
     , (802486,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802486, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (802486, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802486, 140,          1) /* AiOptions - CanOpenDoors */
     , (802486, 146,  999999999) /* XpOverride */
     , (802486, 332,  300000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802486,   1, False) /* Stuck */
     , (802486,   6, True ) /* AiUsesMana */
     , (802486,  11, False) /* IgnoreCollisions */
     , (802486,  12, True ) /* ReportCollisions */
     , (802486,  13, False) /* Ethereal */
     , (802486,  19, True ) /* Attackable */
     , (802486,  50, True ) /* NeverFailCasting */
     , (802486,  65, True ) /* IgnoreMagicResist */
     , (802486,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802486,   1,       5) /* HeartbeatInterval */
     , (802486,   2,       0) /* HeartbeatTimestamp */
     , (802486,   3,     0.4) /* HealthRate */
     , (802486,   4,       5) /* StaminaRate */
     , (802486,   5,       1) /* ManaRate */
     , (802486,  13,       2) /* ArmorModVsSlash */
     , (802486,  14,      22) /* ArmorModVsPierce */
     , (802486,  15,      22) /* ArmorModVsBludgeon */
     , (802486,  16,       2) /* ArmorModVsCold */
     , (802486,  17,       2) /* ArmorModVsFire */
     , (802486,  18,       2) /* ArmorModVsAcid */
     , (802486,  19,       2) /* ArmorModVsElectric */
     , (802486,  31,      30) /* VisualAwarenessRange */
     , (802486,  34,       1) /* PowerupTime */
     , (802486,  36,       1) /* ChargeSpeed */
     , (802486,  39,     1.4) /* DefaultScale */
     , (802486,  64,   0.005) /* ResistSlash */
     , (802486,  65,     0.4) /* ResistPierce */
     , (802486,  66,     0.4) /* ResistBludgeon */
     , (802486,  67,   0.005) /* ResistFire */
     , (802486,  68,   0.005) /* ResistCold */
     , (802486,  69,   0.005) /* ResistAcid */
     , (802486,  70,   0.005) /* ResistElectric */
     , (802486,  71,       1) /* ResistHealthBoost */
     , (802486,  72,       1) /* ResistStaminaDrain */
     , (802486,  73,       1) /* ResistStaminaBoost */
     , (802486,  74,       1) /* ResistManaDrain */
     , (802486,  75,       1) /* ResistManaBoost */
     , (802486,  80,       3) /* AiUseMagicDelay */
     , (802486, 104,      10) /* ObviousRadarRange */
     , (802486, 117,       1) /* FocusedProbability */
     , (802486, 122,       2) /* AiAcquireHealth */
     , (802486, 125,       1) /* ResistHealthDrain */
     , (802486, 166,     0.3) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802486,   1, 'Queen Reborn') /* Name */
     , (802486,  45, 'queenrebornKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802486,   1,   33560333) /* Setup */
     , (802486,   2,  150995411) /* MotionTable */
     , (802486,   3,  536871037) /* SoundTable */
     , (802486,   4,  805306419) /* CombatTable */
     , (802486,   6,   67113288) /* PaletteBase */
     , (802486,   7,  268437210) /* ClothingBase */
     , (802486,   8,  100667623) /* Icon */
     , (802486,  22,  872415379) /* PhysicsEffectTable */
     , (802486,  30,         86) /* PhysicsScript - BreatheAcid */
     , (802486,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802486,   1, 35000, 0, 0) /* Strength */
     , (802486,   2, 35000, 0, 0) /* Endurance */
     , (802486,   3, 550, 0, 0) /* Quickness */
     , (802486,   4, 700, 0, 0) /* Coordination */
     , (802486,   5, 1240, 0, 0) /* Focus */
     , (802486,   6, 1290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802486,   1, 150000,  0, 0, 190000) /* MaxHealth */
     , (802486,   3, 200000,  0, 0, 200000) /* MaxStamina */
     , (802486,   5, 200000,  0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802486,  6, 0, 3, 0, 500, 0, 0) /* MeleeDefense        Specialized */
     , (802486,  7, 0, 3, 0, 575, 0, 0) /* MissileDefense      Specialized */
     , (802486, 14, 0, 3, 0, 520, 0, 0) /* ArcaneLore          Specialized */
     , (802486, 15, 0, 3, 0, 365, 0, 0) /* MagicDefense        Specialized */
     , (802486, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (802486, 31, 0, 3, 0, 205, 0, 0) /* CreatureEnchantment Specialized */
     , (802486, 33, 0, 3, 0, 205, 0, 0) /* LifeMagic           Specialized */
     , (802486, 34, 0, 3, 0, 205, 0, 0) /* WarMagic            Specialized */
     , (802486, 45, 0, 3, 0, 5380, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802486,  0,  2, 50000, 0.75,  8000,  350,  350,  350,  350,  350,  350,  350,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (802486, 16,  4,  0,    0,    8000,  350,  350,  350,  350,  350,  350,  350,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (802486, 18,  1, 50000,  0.5,  8000,  350,  350,  350,  350,  350,  350,  350,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (802486, 19,  1,  0,    0,    8000,  350,  350,  350,  350,  350,  350,  350,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (802486, 20,  1, 50000, 0.75,  8000,  350,  350,  350,  350,  350,  350,  350,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (802486, 22, 32, 50000,  0.5,  8000,  350,  350,  350,  350,  350,  350,  350,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802486,  3 /* Death */,    0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802486, 32 /* GotoSet */,   0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  4,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802486, 9, 850012,  0, 0, 0.1111, False) /* Create Acid Soaked Tentacle (802376) for ContainTreasure */
     , (802486, 9, 850013,  0, 0, 0.1111, False) /* Create Acid Soaked Tentacle (802376) for ContainTreasure */
     , (802486, 9, 850014,  0, 0, 0.1111, False) /* Create Acid Soaked Tentacle (802376) for ContainTreasure */
     , (802486, 9, 850015,  0, 0, 0.1111, False) /* Create Acid Soaked Tentacle (802376) for ContainTreasure */
     , (802486, 9, 850016,  0, 0, 0.1111, False) /* Create Acid Soaked Tentacle (802376) for ContainTreasure */
     , (802486, 9, 850017,  0, 0, 0.1111, False) /* Create Acid Soaked Tentacle (802376) for ContainTreasure */
     , (802486, 9, 850018,  0, 0, 0.1111, False) /* Create Acid Soaked Tentacle (802376) for ContainTreasure */
     , (802486, 9, 850019,  0, 0, 0.1111, False) /* Create Acid Soaked Tentacle (802376) for ContainTreasure */
     , (802486, 9, 850020,  0, 0, 0.1111, False) /* Create Acid Soaked Tentacle (802376) for ContainTreasure */;
