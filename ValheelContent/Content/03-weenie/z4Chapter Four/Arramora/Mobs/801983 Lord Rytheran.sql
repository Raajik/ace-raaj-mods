DELETE FROM `weenie` WHERE `class_Id` = 801983;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801983, 'lordrytheranms', 10, '2023-01-30 10:33:36') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801983,   1,         16) /* ItemType - Creature */
     , (801983,   2,         14) /* CreatureType - Undead */
     , (801983,   6,         -1) /* ItemsCapacity */
     , (801983,   7,         -1) /* ContainersCapacity */
     , (801983,  16,          1) /* ItemUseable - No */
     , (801983,  25,        650) /* Level */
     , (801983,  27,         32) /* ArmorType - Metal */
     , (801983,  40,          2) /* CombatMode - Melee */
     , (801983,  68,          3) /* TargetingTactic - Random, Focused */
     , (801983,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801983, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (801983, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801983, 146,     700000) /* XpOverride */
     , (801983, 332,      75000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801983,   1, True ) /* Stuck */
     , (801983,  11, False) /* IgnoreCollisions */
     , (801983,  12, True ) /* ReportCollisions */
     , (801983,  13, False) /* Ethereal */
     , (801983,  14, True ) /* GravityStatus */
     , (801983,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801983,   1,       5) /* HeartbeatInterval */
     , (801983,   2,       0) /* HeartbeatTimestamp */
     , (801983,   3,     0.4) /* HealthRate */
     , (801983,   4,       5) /* StaminaRate */
     , (801983,   5,       1) /* ManaRate */
     , (801983,  13,       1) /* ArmorModVsSlash */
     , (801983,  14,       1) /* ArmorModVsPierce */
     , (801983,  15,       1) /* ArmorModVsBludgeon */
     , (801983,  16,       1) /* ArmorModVsCold */
     , (801983,  17,     1.8) /* ArmorModVsFire */
     , (801983,  18,       1) /* ArmorModVsAcid */
     , (801983,  19,       1) /* ArmorModVsElectric */
     , (801983,  31,      30) /* VisualAwarenessRange */
     , (801983,  34,       1) /* PowerupTime */
     , (801983,  36,       1) /* ChargeSpeed */
     , (801983,  39,     1.5) /* DefaultScale */
     , (801983,  64,    0.01) /* ResistSlash */
     , (801983,  65,    0.01) /* ResistPierce */
     , (801983,  66,    0.01) /* ResistBludgeon */
     , (801983,  67,     0.1) /* ResistFire */
     , (801983,  68,    0.01) /* ResistCold */
     , (801983,  69,    0.01) /* ResistAcid */
     , (801983,  70,    0.01) /* ResistElectric */
     , (801983,  71,       1) /* ResistHealthBoost */
     , (801983,  72,       1) /* ResistStaminaDrain */
     , (801983,  73,       1) /* ResistStaminaBoost */
     , (801983,  74,       1) /* ResistManaDrain */
     , (801983,  75,       1) /* ResistManaBoost */
     , (801983,  80,       3) /* AiUseMagicDelay */
     , (801983, 104,      10) /* ObviousRadarRange */
     , (801983, 117,     0.5) /* FocusedProbability */
     , (801983, 122,       2) /* AiAcquireHealth */
     , (801983, 125,       1) /* ResistHealthDrain */
     , (801983, 166,    0.06) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801983,   1, 'Lord Rytheran') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801983,   1,   33560277) /* Setup */
     , (801983,   2,  150994967) /* MotionTable */
     , (801983,   3,  536870934) /* SoundTable */
     , (801983,   4,  805306368) /* CombatTable */
     , (801983,   6,   67108990) /* PaletteBase */
     , (801983,   7,  268437294) /* ClothingBase */
     , (801983,   8,  100667942) /* Icon */
     , (801983,  22,  872415272) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801983,   1, 8490, 0, 0) /* Strength */
     , (801983,   2, 2000, 0, 0) /* Endurance */
     , (801983,   3, 430, 0, 0) /* Quickness */
     , (801983,   4, 350, 0, 0) /* Coordination */
     , (801983,   5, 450, 0, 0) /* Focus */
     , (801983,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801983,   1, 200000, 0, 0, 200000) /* MaxHealth */
     , (801983,   3, 19000, 0, 0, 20000) /* MaxStamina */
     , (801983,   5,  9500, 0, 0, 10000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801983,  6, 0, 2, 0, 300, 0, 0) /* MeleeDefense        Trained */
     , (801983,  7, 0, 2, 0, 300, 0, 0) /* MissileDefense      Trained */
     , (801983, 15, 0, 2, 0, 340, 0, 0) /* MagicDefense        Trained */
     , (801983, 41, 0, 3, 0, 600, 0, 0) /* TwoHandedCombat     Specialized */
     , (801983, 44, 0, 3, 0, 300, 0, 0) /* HeavyWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801983,  0,  4,  0,    0,  450, 1625, 1625, 1625, 1625, 1625, 1625, 1625,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801983,  1,  4,  0,    0,  450, 1625, 1625, 1625, 1625, 1625, 1625, 1625,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801983,  2,  4,  0,    0,  450, 1625, 1625, 1625, 1625, 1625, 1625, 1625,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801983,  3,  4,  0,    0,  450, 1625, 1625, 1625, 1625, 1625, 1625, 1625,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801983,  4,  4,  0,    0,  450, 1625, 1625, 1625, 1625, 1625, 1625, 1625,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801983,  5,  4, 1400, 0.75,  450, 1625, 1625, 1625, 1625, 1625, 1625, 1625,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801983,  6,  4,  0,    0,  450, 1625, 1625, 1625, 1625, 1625, 1625, 1625,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801983,  7,  4,  0,    0,  450, 1625, 1625, 1625, 1625, 1625, 1625, 1625,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801983,  8,  4, 1400, 0.75,  450, 1625, 1625, 1625, 1625, 1625, 1625, 1625,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801983,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  22 /* StampQuest */, 0, 1, NULL, 'Rytheran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801983, 2, 801989,  0, 86, 0, False) /* Create Sword (801989) for Wield */;
