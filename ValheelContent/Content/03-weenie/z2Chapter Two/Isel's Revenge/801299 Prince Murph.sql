DELETE FROM `weenie` WHERE `class_Id` = 801299;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801299, 'Prince Murph', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801299,   1,         16) /* ItemType - Creature */
     , (801299,   2,         92) /* CreatureType - ParadoxOlthoi */
     , (801299,   3,         13) /* PaletteTemplate - Purple */
     , (801299,   6,         -1) /* ItemsCapacity */
     , (801299,   7,         -1) /* ContainersCapacity */
     , (801299,  16,          1) /* ItemUseable - No */
     , (801299,  25,        450) /* Level */
     , (801299,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801299,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801299, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801299, 146,     500000) /* XpOverride */
     , (801299, 332,     200000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801299,   1, True ) /* Stuck */
     , (801299,  65, True ) /* IgnoreMagicResist */
     , (801299,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801299,   1,       5) /* HeartbeatInterval */
     , (801299,   2,       0) /* HeartbeatTimestamp */
     , (801299,   3,     400) /* HealthRate */
     , (801299,   4,       4) /* StaminaRate */
     , (801299,   5,       2) /* ManaRate */
     , (801299,  13,       1) /* ArmorModVsSlash */
     , (801299,  14,       1) /* ArmorModVsPierce */
     , (801299,  15,       1) /* ArmorModVsBludgeon */
     , (801299,  16,       1) /* ArmorModVsCold */
     , (801299,  17,     0.7) /* ArmorModVsFire */
     , (801299,  18,       1) /* ArmorModVsAcid */
     , (801299,  19,       1) /* ArmorModVsElectric */
     , (801299,  31,      24) /* VisualAwarenessRange */
     , (801299,  34,       1) /* PowerupTime */
     , (801299,  36,       1) /* ChargeSpeed */
     , (801299,  39,     1.6) /* DefaultScale */
     , (801299,  64,     0.1) /* ResistSlash */
     , (801299,  65,     0.1) /* ResistPierce */
     , (801299,  66,     0.1) /* ResistBludgeon */
     , (801299,  67,     0.5) /* ResistFire */
     , (801299,  68,     0.1) /* ResistCold */
     , (801299,  69,     0.1) /* ResistAcid */
     , (801299,  70,     0.1) /* ResistElectric */
     , (801299,  77,       1) /* PhysicsScriptIntensity */
     , (801299, 104,      10) /* ObviousRadarRange */
     , (801299, 125,    0.03) /* ResistHealthDrain */
     , (801299, 166,    0.10) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801299,   1, 'Prince Murph') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801299,   1,   33560348) /* Setup */
     , (801299,   2,  150994956) /* MotionTable */
     , (801299,   3,  536870929) /* SoundTable */
     , (801299,   4,  805306379) /* CombatTable */
     , (801299,   6,   67113007) /* PaletteBase */
     , (801299,   7,  268436483) /* ClothingBase */
     , (801299,   8,  100667443) /* Icon */
     , (801299,  22,  872415271) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801299,   1, 3000, 0, 0) /* Strength */
     , (801299,   2, 1500, 0, 0) /* Endurance */
     , (801299,   3, 800, 0, 0) /* Quickness */
     , (801299,   4, 800, 0, 0) /* Coordination */
     , (801299,   5, 800, 0, 0) /* Focus */
     , (801299,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801299,   1,   85000, 0, 0, 85000) /* MaxHealth */
     , (801299,   3,   89200, 0, 0, 90000) /* MaxStamina */
     , (801299,   5, 199200, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801299,  6, 0, 2, 0,  360, 0, 0) /* MeleeDefense        Trained */
     , (801299,  7, 0, 2, 0,  320, 0, 0) /* MissileDefense      Trained */
     , (801299, 15, 0, 2, 0,  340, 0, 0) /* MagicDefense        Trained */
     , (801299, 16, 0, 2, 0,  200, 0, 0) /* ManaConversion      Trained */
     , (801299, 31, 0, 2, 0,  400, 0, 0) /* CreatureEnchantment Trained */
     , (801299, 33, 0, 2, 0,  400, 0, 0) /* LifeMagic           Trained */
     , (801299, 34, 0, 2, 0, 1400, 0, 0) /* WarMagic            Trained */
     , (801299, 41, 0, 2, 0, 4240, 0, 0) /* TwoHandedCombat     Trained */
     , (801299, 44, 0, 2, 0, 3740, 0, 0) /* HeavyWeapons        Trained */
     , (801299, 45, 0, 2, 0, 3250, 0, 0) /* LightWeapons        Trained */
     , (801299, 46, 0, 2, 0, 4140, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801299,  0,  2, 2700, 0.75,  2700, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (801299, 16,  4, 2700, 0.75,  2700, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (801299, 18,  1, 2700,  0.5,  2700, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (801299, 19,  1, 2700, 0.75,  2700, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (801299, 20,  1, 2700, 0.75,  2700, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (801299, 22, 32, 2700,  0.5,  2700, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801299,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  1,  23 /* StartEvent */, 0, 1, NULL, 'IRBoss4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  24 /* StopEvent */, 0.5, 1, NULL, 'IRBoss3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  16 /* WorldBroadcast */, 0, 1, NULL, 'Prince Murph failed to avenge his father!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
