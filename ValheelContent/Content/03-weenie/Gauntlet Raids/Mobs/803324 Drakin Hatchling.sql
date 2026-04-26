DELETE FROM `weenie` WHERE `class_Id` = 803324;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803324, 'Drakin Hatchling', 10, '2024-02-09 09:35:02') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803324,   1,         16) /* ItemType - Creature */
     , (803324,   2,         82) /* CreatureType - Thrungus */
     , (803324,   3,          5) /* PaletteTemplate - DarkBlue */
     , (803324,   6,         -1) /* ItemsCapacity */
     , (803324,   7,         -1) /* ContainersCapacity */
     , (803324,  16,          1) /* ItemUseable - No */
     , (803324,  25,        900) /* Level */
     , (803324,  27,          1) /* ArmorType - Cloth */
     , (803324,  40,          2) /* CombatMode - Melee */
     , (803324,  68,         13) /* TargetingTactic - Random, Focused */
     , (803324,  72,         22) /* FriendType - Shadow */
     , (803324,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803324, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803324, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803324, 140,          1) /* AiOptions - CanOpenDoors */
     , (803324, 146,          1) /* XpOverride */
     , (803324, 332,     825000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803324,   1, False) /* Stuck */
     , (803324,   6, True ) /* AiUsesMana */
     , (803324,  11, False) /* IgnoreCollisions */
     , (803324,  12, True ) /* ReportCollisions */
     , (803324,  13, False) /* Ethereal */
     , (803324,  19, True ) /* Attackable */
     , (803324,  50, True ) /* NeverFailCasting */
     , (803324,  65, True ) /* IgnoreMagicResist */
     , (803324,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803324,   1,       5) /* HeartbeatInterval */
     , (803324,   2,       0) /* HeartbeatTimestamp */
     , (803324,   3,     0.4) /* HealthRate */
     , (803324,   4,       5) /* StaminaRate */
     , (803324,   5,       1) /* ManaRate */
     , (803324,  13,       3) /* ArmorModVsSlash */
     , (803324,  14,     3.5) /* ArmorModVsPierce */
     , (803324,  15,       3) /* ArmorModVsBludgeon */
     , (803324,  16,       3) /* ArmorModVsCold */
     , (803324,  17,       3) /* ArmorModVsFire */
     , (803324,  18,       3) /* ArmorModVsAcid */
     , (803324,  19,       3) /* ArmorModVsElectric */
     , (803324,  31,      30) /* VisualAwarenessRange */
     , (803324,  34,       1) /* PowerupTime */
     , (803324,  36,       1) /* ChargeSpeed */
     , (803324,  39,     1.4) /* DefaultScale */
     , (803324,  64,   0.001) /* ResistSlash */
     , (803324,  65,   0.006) /* ResistPierce */
     , (803324,  66,   0.001) /* ResistBludgeon */
     , (803324,  67,   0.001) /* ResistFire */
     , (803324,  68,   0.001) /* ResistCold */
     , (803324,  69,   0.001) /* ResistAcid */
     , (803324,  70,   0.001) /* ResistElectric */
     , (803324,  71,       1) /* ResistHealthBoost */
     , (803324,  72,       1) /* ResistStaminaDrain */
     , (803324,  73,       1) /* ResistStaminaBoost */
     , (803324,  74,       1) /* ResistManaDrain */
     , (803324,  75,       1) /* ResistManaBoost */
     , (803324,  80,       3) /* AiUseMagicDelay */
     , (803324, 104,      10) /* ObviousRadarRange */
     , (803324, 117,     0.5) /* FocusedProbability */
     , (803324, 122,       2) /* AiAcquireHealth */
     , (803324, 125,   0.006) /* ResistHealthDrain */
     , (803324, 166,   0.006) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803324,   1, 'Drakin Hatchling') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803324,   1, 0x0200101A) /* Setup */
     , (803324,   2, 0x0900013F) /* MotionTable */
     , (803324,   3, 0x200000A8) /* SoundTable */
     , (803324,   4, 0x3000003A) /* CombatTable */
     , (803324,   6, 0x040016E8) /* PaletteBase */
     , (803324,   7, 0x100004FD) /* ClothingBase */
     , (803324,   8, 0x0600304D) /* Icon */
     , (803324,  19, 0x00000055) /* ActivationAnimation */
     , (803324,  22, 0x340000A9) /* PhysicsEffectTable */
     , (803324,  30,         85) /* PhysicsScript - BreatheFrost */
     , (803324,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803324,  0, 16,30000,  0.3, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803324,  1,  4,  0,    0, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803324,  2,  4,  0,    0, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803324,  3,  4,  0,    0, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803324,  4,  4,  0,    0, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803324,  5, 16,30000,  0.4, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803324,  6,  4,  0,    0, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803324,  7,  4,  0,    0, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803324,  8, 16,30000,  0.4, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */
     , (803324, 22, 32,30000,  0.3, 7000, 3500, 3500, 3500, 3500, 3500, 3500, 3500,    0, 2, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803324,   1,9500, 0, 0) /* Strength */
     , (803324,   2, 560, 0, 0) /* Endurance */
     , (803324,   3, 550, 0, 0) /* Quickness */
     , (803324,   4, 500, 0, 0) /* Coordination */
     , (803324,   5, 540, 0, 0) /* Focus */
     , (803324,   6, 590, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803324,   1,215000, 0, 0,215000) /* MaxHealth */
     , (803324,   3,200000, 0, 0,200000) /* MaxStamina */
     , (803324,   5,200000, 0, 0,200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803324,  6, 0, 3, 0,2300, 0, 0) /* MeleeDefense        Specialized */
     , (803324,  7, 0, 3, 0,1375, 0, 0) /* MissileDefense      Specialized */
     , (803324, 14, 0, 3, 0, 220, 0, 0) /* ArcaneLore          Specialized */
     , (803324, 15, 0, 3, 0, 600, 0, 0) /* MagicDefense        Specialized */
     , (803324, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (803324, 31, 0, 3, 0,1205, 0, 0) /* CreatureEnchantment Specialized */
     , (803324, 33, 0, 3, 0,1205, 0, 0) /* LifeMagic           Specialized */
     , (803324, 34, 0, 3, 0,1205, 0, 0) /* WarMagic            Specialized */
     , (803324, 45, 0, 3, 0,3700, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803324, 3 /* Death */, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 24 /* StopEvent */, 0, 1, NULL, 'TownBossAyan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

