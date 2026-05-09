DELETE FROM `weenie` WHERE `class_Id` = 801301;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801301, 'Ruushi', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801301,   1,         16) /* ItemType - Creature */
     , (801301,   2,         92) /* CreatureType - ParadoxOlthoi */
     , (801301,   3,         13) /* PaletteTemplate - Purple */
     , (801301,   6,         -1) /* ItemsCapacity */
     , (801301,   7,         -1) /* ContainersCapacity */
     , (801301,  16,          1) /* ItemUseable - No */
     , (801301,  25,        450) /* Level */
     , (801301,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801301,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801301, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801301, 146,     500000) /* XpOverride */
     , (801301, 332,     200000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801301,   1, True ) /* Stuck */
     , (801301,  65, True ) /* IgnoreMagicResist */
     , (801301,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801301,   1,       5) /* HeartbeatInterval */
     , (801301,   2,       0) /* HeartbeatTimestamp */
     , (801301,   3,     400) /* HealthRate */
     , (801301,   4,       4) /* StaminaRate */
     , (801301,   5,       2) /* ManaRate */
     , (801301,  13,     0.7) /* ArmorModVsSlash */
     , (801301,  14,       1) /* ArmorModVsPierce */
     , (801301,  15,       1) /* ArmorModVsBludgeon */
     , (801301,  16,       1) /* ArmorModVsCold */
     , (801301,  17,       1) /* ArmorModVsFire */
     , (801301,  18,       1) /* ArmorModVsAcid */
     , (801301,  19,       1) /* ArmorModVsElectric */
     , (801301,  31,      24) /* VisualAwarenessRange */
     , (801301,  34,       1) /* PowerupTime */
     , (801301,  36,       1) /* ChargeSpeed */
     , (801301,  39,     1.8) /* DefaultScale */
     , (801301,  64,     0.5) /* ResistSlash */
     , (801301,  65,     0.1) /* ResistPierce */
     , (801301,  66,     0.1) /* ResistBludgeon */
     , (801301,  67,     0.1) /* ResistFire */
     , (801301,  68,     0.1) /* ResistCold */
     , (801301,  69,     0.1) /* ResistAcid */
     , (801301,  70,     0.1) /* ResistElectric */
     , (801301,  77,       1) /* PhysicsScriptIntensity */
     , (801301, 104,      10) /* ObviousRadarRange */
     , (801301, 125,    0.03) /* ResistHealthDrain */
     , (801301, 166,    0.10) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801301,   1, 'Ruushi') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801301,   1,   33558814) /* Setup */
     , (801301,   2,  150994967) /* MotionTable */
     , (801301,   3,  536870934) /* SoundTable */
     , (801301,   4,  805306368) /* CombatTable */
     , (801301,   6,   67115246) /* PaletteBase */
     , (801301,   7,  268436834) /* ClothingBase */
     , (801301,   8,  100676639) /* Icon */
     , (801301,  22,  872415272) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801301,   1, 3500, 0, 0) /* Strength */
     , (801301,   2, 1500, 0, 0) /* Endurance */
     , (801301,   3, 800, 0, 0) /* Quickness */
     , (801301,   4, 800, 0, 0) /* Coordination */
     , (801301,   5, 800, 0, 0) /* Focus */
     , (801301,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801301,   1, 95000, 0, 0, 95000) /* MaxHealth */
     , (801301,   3, 89200, 0, 0, 90000) /* MaxStamina */
     , (801301,   5, 199200, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801301,  6, 0, 2, 0,  360, 0, 0) /* MeleeDefense        Trained */
     , (801301,  7, 0, 2, 0,  320, 0, 0) /* MissileDefense      Trained */
     , (801301, 15, 0, 2, 0,  340, 0, 0) /* MagicDefense        Trained */
     , (801301, 16, 0, 2, 0,  200, 0, 0) /* ManaConversion      Trained */
     , (801301, 31, 0, 2, 0,  400, 0, 0) /* CreatureEnchantment Trained */
     , (801301, 33, 0, 2, 0,  400, 0, 0) /* LifeMagic           Trained */
     , (801301, 34, 0, 2, 0, 1400, 0, 0) /* WarMagic            Trained */
     , (801301, 41, 0, 2, 0, 4240, 0, 0) /* TwoHandedCombat     Trained */
     , (801301, 44, 0, 2, 0, 3740, 0, 0) /* HeavyWeapons        Trained */
     , (801301, 45, 0, 2, 0, 3250, 0, 0) /* LightWeapons        Trained */
     , (801301, 46, 0, 2, 0, 4140, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801301,  0,  2, 2800, 0.75,  2800, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (801301, 16,  4, 2800,    0,  2800, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (801301, 18,  1, 2800,  0.5,  2800, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (801301, 19,  1, 2800,    0,  2800, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (801301, 20,  1, 2800, 0.75,  2800, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (801301, 22, 32, 2800,  0.5,  2800, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801301,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  23 /* StartEvent */, 0, 1, NULL, 'IRBoss5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  24 /* StopEvent */, 0.5, 1, NULL, 'IRBoss4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  16 /* WorldBroadcast */, 0, 1, NULL, 'Ruushi has fallen and shame is cast upon his family!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801301, 2, 801293,  1, 93, 0, False) /* Create  (801293) for Wield */;
