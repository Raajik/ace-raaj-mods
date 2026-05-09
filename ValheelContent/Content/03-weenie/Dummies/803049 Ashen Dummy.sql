DELETE FROM `weenie` WHERE `class_Id` = 803049;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803049, 'Ashen Dummy', 10, '2023-11-09 08:42:46') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803049,   1,         16) /* ItemType - Creature */
     , (803049,   2,          3) /* CreatureType - Drudge */
     , (803049,   3,         46) /* PaletteTemplate - Tan */
     , (803049,   6,         -1) /* ItemsCapacity */
     , (803049,   7,         -1) /* ContainersCapacity */
     , (803049,  16,          1) /* ItemUseable - No */
     , (803049,  25,          1) /* Level */
     , (803049,  27,          0) /* ArmorType - None */
     , (803049,  40,          2) /* CombatMode - Melee */
     , (803049,  67,          1) /* Tolerance - NoAttack */
     , (803049,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (803049,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803049, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803049, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803049, 146,          1) /* XpOverride */
     , (803049, 332,          1) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803049,   1, True ) /* Stuck */
     , (803049,  11, False) /* IgnoreCollisions */
     , (803049,  12, True ) /* ReportCollisions */
     , (803049,  13, False) /* Ethereal */
     , (803049,  29, True ) /* NoCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803049,   1,       5) /* HeartbeatInterval */
     , (803049,   2,       0) /* HeartbeatTimestamp */
     , (803049,   3,   0.067) /* HealthRate */
     , (803049,   4,       5) /* StaminaRate */
     , (803049,   5,       1) /* ManaRate */
     , (803049,  12,       1) /* Shade */
     , (803049,  13,     2.6) /* ArmorModVsSlash */
     , (803049,  14,     2.6) /* ArmorModVsPierce */
     , (803049,  15,     2.6) /* ArmorModVsBludgeon */
     , (803049,  16,     2.6) /* ArmorModVsCold */
     , (803049,  17,     2.6) /* ArmorModVsFire */
     , (803049,  18,     2.6) /* ArmorModVsAcid */
     , (803049,  19,     2.6) /* ArmorModVsElectric */
     , (803049,  31,     0.3) /* VisualAwarenessRange */
     , (803049,  34,       1) /* PowerupTime */
     , (803049,  36,       1) /* ChargeSpeed */
     , (803049,  39,     1.2) /* DefaultScale */
     , (803049,  64,    0.05) /* ResistSlash */
     , (803049,  65,    0.05) /* ResistPierce */
     , (803049,  66,    0.05) /* ResistBludgeon */
     , (803049,  67,    0.05) /* ResistFire */
     , (803049,  68,    0.05) /* ResistCold */
     , (803049,  69,    0.05) /* ResistAcid */
     , (803049,  70,    0.05) /* ResistElectric */
     , (803049,  71,       1) /* ResistHealthBoost */
     , (803049,  72,       1) /* ResistStaminaDrain */
     , (803049,  73,       1) /* ResistStaminaBoost */
     , (803049,  74,       1) /* ResistManaDrain */
     , (803049,  75,       1) /* ResistManaBoost */
     , (803049, 104,      10) /* ObviousRadarRange */
     , (803049, 125,    0.03) /* ResistHealthDrain */
     , (803049, 166,    0.03) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803049,   1, 'Ashen Dummy') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803049,   1, 0x02000A0B) /* Setup */
     , (803049,   2, 0x09000006) /* MotionTable */
     , (803049,   3, 0x2000000A) /* SoundTable */
     , (803049,   4, 0x30000003) /* CombatTable */
     , (803049,   6, 0x040010C6) /* PaletteBase */
     , (803049,   7, 0x1000048A) /* ClothingBase */
     , (803049,   8, 0x06001037) /* Icon */
     , (803049,  22, 0x3400001E) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803049,  0,  4,20000,  0.3, 18000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803049,  1,  4,20000,  0.3, 18000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803049,  2,  4,20000,  0.3, 18000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803049,  3,  4,20000,  0.3, 18000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803049,  4,  4,20000,  0.3, 18000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803049,  5,  4,20000,  0.3, 18000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803049,  6,  4,20000,  0.3, 18000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803049,  7,  4,20000,  0.3, 18000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803049,  8,  4,20000,  0.3, 18000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803049,   1,   500, 0, 0) /* Strength */
     , (803049,   2,   500, 0, 0) /* Endurance */
     , (803049,   3,   500, 0, 0) /* Quickness */
     , (803049,   4,   500, 0, 0) /* Coordination */
     , (803049,   5,   500, 0, 0) /* Focus */
     , (803049,   6,   500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803049,   1, 99999999, 0, 0,99999999) /* MaxHealth */
     , (803049,   3, 99999999, 0, 0,99999999) /* MaxStamina */
     , (803049,   5, 99999999, 0, 0,99999999) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803049, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 33 /* IncrementQuest */, 0, 1, NULL, 'DummyKill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

