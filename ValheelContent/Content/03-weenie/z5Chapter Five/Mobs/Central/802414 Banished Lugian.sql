DELETE FROM `weenie` WHERE `class_Id` = 802414;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802414, 'Banished Lugian', 10, '2023-04-01 10:03:13') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802414,   1,         16) /* ItemType - Creature */
     , (802414,   2,         70) /* CreatureType - GotrokLugian */
     , (802414,   3,          5) /* PaletteTemplate - DarkBlue */
     , (802414,   6,         -1) /* ItemsCapacity */
     , (802414,   7,         -1) /* ContainersCapacity */
     , (802414,  16,          1) /* ItemUseable - No */
     , (802414,  25,        685) /* Level */
     , (802414,  27,          1) /* ArmorType - Cloth */
     , (802414,  40,          2) /* CombatMode - Melee */
     , (802414,  68,          3) /* TargetingTactic - Random, Focused */
     , (802414,  72,         22) /* FriendType - Shadow */
     , (802414,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802414, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (802414, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802414, 140,          1) /* AiOptions - CanOpenDoors */
     , (802414, 146,    3100000) /* XpOverride */
     , (802414, 332,     125000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802414,   1, False) /* Stuck */
     , (802414,   6, True ) /* AiUsesMana */
     , (802414,  11, False) /* IgnoreCollisions */
     , (802414,  12, True ) /* ReportCollisions */
     , (802414,  13, False) /* Ethereal */
     , (802414,  19, True ) /* Attackable */
     , (802414,  50, True ) /* NeverFailCasting */
     , (802414,  65, True ) /* IgnoreMagicResist */
     , (802414,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802414,   1,       5) /* HeartbeatInterval */
     , (802414,   2,       0) /* HeartbeatTimestamp */
     , (802414,   3,     0.4) /* HealthRate */
     , (802414,   4,       5) /* StaminaRate */
     , (802414,   5,       1) /* ManaRate */
     , (802414,  13,       1) /* ArmorModVsSlash */
     , (802414,  14,       1) /* ArmorModVsPierce */
     , (802414,  15,       1) /* ArmorModVsBludgeon */
     , (802414,  16,       1) /* ArmorModVsCold */
     , (802414,  17,       1) /* ArmorModVsFire */
     , (802414,  18,       1) /* ArmorModVsAcid */
     , (802414,  19,     1.1) /* ArmorModVsElectric */
     , (802414,  31,      30) /* VisualAwarenessRange */
     , (802414,  34,       1) /* PowerupTime */
     , (802414,  36,       1) /* ChargeSpeed */
     , (802414,  39,     1.4) /* DefaultScale */
     , (802414,  64,    0.01) /* ResistSlash */
     , (802414,  65,    0.01) /* ResistPierce */
     , (802414,  66,    0.01) /* ResistBludgeon */
     , (802414,  67,    0.01) /* ResistFire */
     , (802414,  68,    0.01) /* ResistCold */
     , (802414,  69,    0.01) /* ResistAcid */
     , (802414,  70,    0.05) /* ResistElectric */
     , (802414,  71,       1) /* ResistHealthBoost */
     , (802414,  72,       1) /* ResistStaminaDrain */
     , (802414,  73,       1) /* ResistStaminaBoost */
     , (802414,  74,       1) /* ResistManaDrain */
     , (802414,  75,       1) /* ResistManaBoost */
     , (802414,  80,       3) /* AiUseMagicDelay */
     , (802414, 104,      10) /* ObviousRadarRange */
     , (802414, 117,     0.5) /* FocusedProbability */
     , (802414, 122,       2) /* AiAcquireHealth */
     , (802414, 125,       1) /* ResistHealthDrain */
     , (802414, 166,    0.03) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802414,   1, 'Banished Lugian') /* Name */
     , (802414,  45, 'centralKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802414,   1,   33557003) /* Setup */
     , (802414,   2,  150994950) /* MotionTable */
     , (802414,   3,  536870922) /* SoundTable */
     , (802414,   4,  805306371) /* CombatTable */
     , (802414,   6,   67113158) /* PaletteBase */
     , (802414,   7,  268436154) /* ClothingBase */
     , (802414,   8,  100667447) /* Icon */
     , (802414,  22,  872415262) /* PhysicsEffectTable */
     , (802414,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802414,   1, 6250, 0, 0) /* Strength */
     , (802414,   2, 560, 0, 0) /* Endurance */
     , (802414,   3, 550, 0, 0) /* Quickness */
     , (802414,   4, 500, 0, 0) /* Coordination */
     , (802414,   5, 540, 0, 0) /* Focus */
     , (802414,   6, 590, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802414,   1, 150000, 0, 0, 150000) /* MaxHealth */
     , (802414,   3, 200000, 0, 0, 200000) /* MaxStamina */
     , (802414,   5, 200000, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802414,  6, 0, 3, 0, 300, 0, 0) /* MeleeDefense        Specialized */
     , (802414,  7, 0, 3, 0, 375, 0, 0) /* MissileDefense      Specialized */
     , (802414, 14, 0, 3, 0, 220, 0, 0) /* ArcaneLore          Specialized */
     , (802414, 15, 0, 3, 0, 365, 0, 0) /* MagicDefense        Specialized */
     , (802414, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (802414, 31, 0, 3, 0, 205, 0, 0) /* CreatureEnchantment Specialized */
     , (802414, 33, 0, 3, 0, 205, 0, 0) /* LifeMagic           Specialized */
     , (802414, 34, 0, 3, 0, 205, 0, 0) /* WarMagic            Specialized */
     , (802414, 45, 0, 3, 0, 5380, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802414,  0,  4,  2,  0.3,  1260,  148,  148,  148,   94,   44,  224,  208,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802414,  1,  4, 3000,  0.3,  1265,  151,  151,  151,   95,   45,  228,  212,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802414,  2,  4,  2,  0.3,  1265,  151,  151,  151,   95,   45,  228,  212,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802414,  3,  4,  2,  0.3,  1250,  143,  143,  143,   90,   43,  215,  200,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802414,  4,  4,  2,  0.3,  1265,  151,  151,  151,   95,   45,  228,  212,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802414,  5,  4, 3000, 0.75,  1225,  128,  128,  128,   81,   38,  194,  180,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802414,  6,  4, 1000,  0.3,  1290,  165,  165,  165,  104,   49,  249,  232,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802414,  7,  4, 3000,  0.3,  1290,  165,  165,  165,  104,   49,  249,  232,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802414,  8,  4, 3000, 0.75,  1290,  165,  165,  165,  104,   49,  249,  232,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802414,  3 /* Death */,    0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +5 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  67 /* Goto */, 0, 1, NULL, 'RatingRoll', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802414, 32 /* GotoSet */,   0.03, NULL, NULL, NULL, 'RatingRoll', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 333, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 334, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  54 /* IncrementIntStat */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 336, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  4,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +1 to all ratings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
