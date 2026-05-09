DELETE FROM `weenie` WHERE `class_Id` = 803065;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803065, 'Rotting Spore', 10, '2024-02-09 09:35:02') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803065,   1,         16) /* ItemType - Creature */
     , (803065,   2,         82) /* CreatureType - Thrungus */
     , (803065,   3,          5) /* PaletteTemplate - DarkBlue */
     , (803065,   6,         -1) /* ItemsCapacity */
     , (803065,   7,         -1) /* ContainersCapacity */
     , (803065,  16,          1) /* ItemUseable - No */
     , (803065,  25,        900) /* Level */
     , (803065,  27,          1) /* ArmorType - Cloth */
     , (803065,  40,          2) /* CombatMode - Melee */
     , (803065,  68,         13) /* TargetingTactic - Random, Focused */
     , (803065,  72,         22) /* FriendType - Shadow */
     , (803065,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803065, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803065, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803065, 140,          1) /* AiOptions - CanOpenDoors */
     , (803065, 146,          1) /* XpOverride */
     , (803065, 332,     825000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803065,   1, False) /* Stuck */
     , (803065,   6, True ) /* AiUsesMana */
     , (803065,  11, False) /* IgnoreCollisions */
     , (803065,  12, True ) /* ReportCollisions */
     , (803065,  13, False) /* Ethereal */
     , (803065,  19, True ) /* Attackable */
     , (803065,  50, True ) /* NeverFailCasting */
     , (803065,  65, True ) /* IgnoreMagicResist */
     , (803065,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803065,   1,       5) /* HeartbeatInterval */
     , (803065,   2,       0) /* HeartbeatTimestamp */
     , (803065,   3,     0.4) /* HealthRate */
     , (803065,   4,       5) /* StaminaRate */
     , (803065,   5,       1) /* ManaRate */
     , (803065,  13,       3) /* ArmorModVsSlash */
     , (803065,  14,     3.5) /* ArmorModVsPierce */
     , (803065,  15,       3) /* ArmorModVsBludgeon */
     , (803065,  16,       3) /* ArmorModVsCold */
     , (803065,  17,       3) /* ArmorModVsFire */
     , (803065,  18,       3) /* ArmorModVsAcid */
     , (803065,  19,       3) /* ArmorModVsElectric */
     , (803065,  31,      30) /* VisualAwarenessRange */
     , (803065,  34,       1) /* PowerupTime */
     , (803065,  36,       1) /* ChargeSpeed */
     , (803065,  39,     1.4) /* DefaultScale */
     , (803065,  64,   0.001) /* ResistSlash */
     , (803065,  65,   0.006) /* ResistPierce */
     , (803065,  66,   0.001) /* ResistBludgeon */
     , (803065,  67,   0.001) /* ResistFire */
     , (803065,  68,   0.001) /* ResistCold */
     , (803065,  69,   0.001) /* ResistAcid */
     , (803065,  70,   0.001) /* ResistElectric */
     , (803065,  71,       1) /* ResistHealthBoost */
     , (803065,  72,       1) /* ResistStaminaDrain */
     , (803065,  73,       1) /* ResistStaminaBoost */
     , (803065,  74,       1) /* ResistManaDrain */
     , (803065,  75,       1) /* ResistManaBoost */
     , (803065,  80,       3) /* AiUseMagicDelay */
     , (803065, 104,      10) /* ObviousRadarRange */
     , (803065, 117,     0.5) /* FocusedProbability */
     , (803065, 122,       2) /* AiAcquireHealth */
     , (803065, 125,   0.006) /* ResistHealthDrain */
     , (803065, 166,   0.006) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803065,   1, 'Rotting Spore') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803065,   1, 0x02001253) /* Setup */
     , (803065,   2, 0x0900017C) /* MotionTable */
     , (803065,   3, 0x200000BB) /* SoundTable */
     , (803065,   4, 0x30000041) /* CombatTable */
     , (803065,   6, 0x04001D4D) /* PaletteBase */
     , (803065,   7, 0x1000059A) /* ClothingBase */
     , (803065,   8, 0x060036F7) /* Icon */
     , (803065,  22, 0x340000B3) /* PhysicsEffectTable */
     , (803065,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803065,  0, 16,30000,  0.3, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803065,  1,  4,  0,    0, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803065,  2,  4,  0,    0, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803065,  3,  4,  0,    0, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803065,  4,  4,  0,    0, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803065,  5, 16,30000,  0.4, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803065,  6,  4,  0,    0, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803065,  7,  4,  0,    0, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803065,  8, 16,30000,  0.4, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */
     , (803065, 22, 32,30000,  0.3, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 2, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803065,   1,9500, 0, 0) /* Strength */
     , (803065,   2, 560, 0, 0) /* Endurance */
     , (803065,   3, 550, 0, 0) /* Quickness */
     , (803065,   4, 500, 0, 0) /* Coordination */
     , (803065,   5, 540, 0, 0) /* Focus */
     , (803065,   6, 590, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803065,   1,215000, 0, 0,215000) /* MaxHealth */
     , (803065,   3,200000, 0, 0,200000) /* MaxStamina */
     , (803065,   5,200000, 0, 0,200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803065,  6, 0, 3, 0,2300, 0, 0) /* MeleeDefense        Specialized */
     , (803065,  7, 0, 3, 0,1375, 0, 0) /* MissileDefense      Specialized */
     , (803065, 14, 0, 3, 0, 220, 0, 0) /* ArcaneLore          Specialized */
     , (803065, 15, 0, 3, 0, 600, 0, 0) /* MagicDefense        Specialized */
     , (803065, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (803065, 31, 0, 3, 0,1205, 0, 0) /* CreatureEnchantment Specialized */
     , (803065, 33, 0, 3, 0,1205, 0, 0) /* LifeMagic           Specialized */
     , (803065, 34, 0, 3, 0,1205, 0, 0) /* WarMagic            Specialized */
     , (803065, 45, 0, 3, 0,3700, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803065, 3 /* Death */, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 24 /* StopEvent */, 0, 1, NULL, 'TownBossAyan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

