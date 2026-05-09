DELETE FROM `weenie` WHERE `class_Id` = 803050;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803050, 'Cordial Dummy', 10, '2023-11-09 08:42:46') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803050,   1,         16) /* ItemType - Creature */
     , (803050,   2,          3) /* CreatureType - Drudge */
     , (803050,   3,         46) /* PaletteTemplate - Tan */
     , (803050,   6,         -1) /* ItemsCapacity */
     , (803050,   7,         -1) /* ContainersCapacity */
     , (803050,  16,          1) /* ItemUseable - No */
     , (803050,  25,          1) /* Level */
     , (803050,  27,          0) /* ArmorType - None */
     , (803050,  40,          2) /* CombatMode - Melee */
     , (803050,  67,          1) /* Tolerance - NoAttack */
     , (803050,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (803050,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803050, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803050, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803050, 146,          1) /* XpOverride */
     , (803050, 332,          1) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803050,   1, True ) /* Stuck */
     , (803050,  11, False) /* IgnoreCollisions */
     , (803050,  12, True ) /* ReportCollisions */
     , (803050,  13, False) /* Ethereal */
     , (803050,  29, True ) /* NoCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803050,   1,       5) /* HeartbeatInterval */
     , (803050,   2,       0) /* HeartbeatTimestamp */
     , (803050,   3,   0.067) /* HealthRate */
     , (803050,   4,       5) /* StaminaRate */
     , (803050,   5,       1) /* ManaRate */
     , (803050,  12,       1) /* Shade */
     , (803050,  13,     3.2) /* ArmorModVsSlash */
     , (803050,  14,     3.2) /* ArmorModVsPierce */
     , (803050,  15,     3.2) /* ArmorModVsBludgeon */
     , (803050,  16,     3.2) /* ArmorModVsCold */
     , (803050,  17,     3.2) /* ArmorModVsFire */
     , (803050,  18,     3.2) /* ArmorModVsAcid */
     , (803050,  19,     3.2) /* ArmorModVsElectric */
     , (803050,  31,     0.3) /* VisualAwarenessRange */
     , (803050,  34,       1) /* PowerupTime */
     , (803050,  36,       1) /* ChargeSpeed */
     , (803050,  39,     1.2) /* DefaultScale */
     , (803050,  64,   0.008) /* ResistSlash */
     , (803050,  65,   0.008) /* ResistPierce */
     , (803050,  66,   0.008) /* ResistBludgeon */
     , (803050,  67,   0.008) /* ResistFire */
     , (803050,  68,   0.008) /* ResistCold */
     , (803050,  69,   0.008) /* ResistAcid */
     , (803050,  70,   0.008) /* ResistElectric */
     , (803050,  71,       1) /* ResistHealthBoost */
     , (803050,  72,       1) /* ResistStaminaDrain */
     , (803050,  73,       1) /* ResistStaminaBoost */
     , (803050,  74,       1) /* ResistManaDrain */
     , (803050,  75,       1) /* ResistManaBoost */
     , (803050, 104,      10) /* ObviousRadarRange */
     , (803050, 125,   0.008) /* ResistHealthDrain */
     , (803050, 166,   0.008) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803050,   1, 'Cordial Dummy') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803050,   1, 0x02001815) /* Setup */
     , (803050,   2, 0x09000068) /* MotionTable */
     , (803050,   3, 0x20000041) /* SoundTable */
     , (803050,   4, 0x30000019) /* CombatTable */
     , (803050,   6, 0x04000C00) /* PaletteBase */
     , (803050,   7, 0x1000010F) /* ClothingBase */
     , (803050,   8, 0x060016C0) /* Icon */
     , (803050,  22, 0x34000030) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803050,  0,  4,  0,    0, 20000, 2750, 2750, 2750, 2750, 2750, 2750, 2750,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803050,  1,  4,  0,    0, 20000, 2750, 2750, 2750, 2750, 2750, 2750, 2750,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803050,  2,  4,  0,    0, 20000, 2750, 2750, 2750, 2750, 2750, 2750, 2750,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803050,  3,  4,  0,    0, 20000, 2750, 2750, 2750, 2750, 2750, 2750, 2750,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803050,  4,  4,  0,    0, 20000, 2750, 2750, 2750, 2750, 2750, 2750, 2750,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803050,  5,  4,25000, 0.75, 20000, 2750, 2750, 2750, 2750, 2750, 2750, 2750,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803050,  6,  4,  0,    0, 20000, 2750, 2750, 2750, 2750, 2750, 2750, 2750,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803050,  7,  4,  0,    0, 20000, 2750, 2750, 2750, 2750, 2750, 2750, 2750,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803050,  8,  4,25000, 0.75, 20000, 2750, 2750, 2750, 2750, 2750, 2750, 2750,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803050,   1,   500, 0, 0) /* Strength */
     , (803050,   2,   500, 0, 0) /* Endurance */
     , (803050,   3,   500, 0, 0) /* Quickness */
     , (803050,   4,   500, 0, 0) /* Coordination */
     , (803050,   5,   500, 0, 0) /* Focus */
     , (803050,   6,   500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803050,   1, 99999999, 0, 0,99999999) /* MaxHealth */
     , (803050,   3, 99999999, 0, 0,99999999) /* MaxStamina */
     , (803050,   5, 99999999, 0, 0,99999999) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803050, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'DummyKill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

