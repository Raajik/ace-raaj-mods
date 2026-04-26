DELETE FROM `weenie` WHERE `class_Id` = 801322;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801322, 'Acolyte of Fire', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801322,   1,         16) /* ItemType - Creature */
     , (801322,   2,         34) /* CreatureType - ParadoxOlthoi */
     , (801322,   3,         13) /* PaletteTemplate - Purple */
     , (801322,   6,         -1) /* ItemsCapacity */
     , (801322,   7,         -1) /* ContainersCapacity */
     , (801322,  16,          1) /* ItemUseable - No */
     , (801322,  25,        700) /* Level */
     , (801322,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801322,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801322, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801322, 146,  500000000) /* XpOverride */
     , (801322, 332,   10000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801322,   1, True ) /* Stuck */
     , (801322,  65, True ) /* IgnoreMagicResist */
     , (801322,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801322,   1,       5) /* HeartbeatInterval */
     , (801322,   2,       0) /* HeartbeatTimestamp */
     , (801322,   3,     400) /* HealthRate */
     , (801322,   4,       4) /* StaminaRate */
     , (801322,   5,       2) /* ManaRate */
     , (801322,  13,    1.15) /* ArmorModVsSlash */
     , (801322,  14,     1.1) /* ArmorModVsPierce */
     , (801322,  15,     1.1) /* ArmorModVsBludgeon */
     , (801322,  16,    1.25) /* ArmorModVsCold */
     , (801322,  17,    1.25) /* ArmorModVsFire */
     , (801322,  18,    1.25) /* ArmorModVsAcid */
     , (801322,  19,    1.25) /* ArmorModVsElectric */
     , (801322,  31,      24) /* VisualAwarenessRange */
     , (801322,  34,       1) /* PowerupTime */
     , (801322,  36,       1) /* ChargeSpeed */
     , (801322,  39,     2.3) /* DefaultScale */
     , (801322,  64,    0.15) /* ResistSlash */
     , (801322,  65,    0.65) /* ResistPierce */
     , (801322,  66,    0.75) /* ResistBludgeon */
     , (801322,  67,     0.1) /* ResistFire */
     , (801322,  68,    0.05) /* ResistCold */
     , (801322,  69,    0.05) /* ResistAcid */
     , (801322,  70,     0.5) /* ResistElectric */
     , (801322,  77,       1) /* PhysicsScriptIntensity */
     , (801322, 104,      10) /* ObviousRadarRange */
     , (801322, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801322,   1, 'Acolyte of Fire') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801322,   1,   33556882) /* Setup */
     , (801322,   2,  150995104) /* MotionTable */
     , (801322,   3,  536871018) /* SoundTable */
     , (801322,   4,  805306403) /* CombatTable */
     , (801322,   6,   67112872) /* PaletteBase */
     , (801322,   7,  268436086) /* ClothingBase */
     , (801322,   8,  100671185) /* Icon */
     , (801322,  22,  872415337) /* PhysicsEffectTable */
     , (801322,  30,         86) /* PhysicsScript - BreatheAcid */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801322,   1, 1500, 0, 0) /* Strength */
     , (801322,   2, 1500, 0, 0) /* Endurance */
     , (801322,   3, 800, 0, 0) /* Quickness */
     , (801322,   4, 800, 0, 0) /* Coordination */
     , (801322,   5, 800, 0, 0) /* Focus */
     , (801322,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801322,   1, 3099600, 0, 0, 3000000) /* MaxHealth */
     , (801322,   3, 89200, 0, 0, 90000) /* MaxStamina */
     , (801322,   5, 199200, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801322,  6, 0, 2, 0, 60, 0, 0) /* MeleeDefense        Trained */
     , (801322,  7, 0, 2, 0, 20, 0, 0) /* MissileDefense      Trained */
     , (801322, 15, 0, 2, 0, 40, 0, 0) /* MagicDefense        Trained */
     , (801322, 16, 0, 2, 0, 200, 0, 0) /* ManaConversion      Trained */
     , (801322, 31, 0, 2, 0, 400, 0, 0) /* CreatureEnchantment Trained */
     , (801322, 33, 0, 2, 0, 400, 0, 0) /* LifeMagic           Trained */
     , (801322, 34, 0, 2, 0, 1400, 0, 0) /* WarMagic            Trained */
     , (801322, 41, 0, 2, 0, 4240, 0, 0) /* TwoHandedCombat     Trained */
     , (801322, 44, 0, 2, 0, 3740, 0, 0) /* HeavyWeapons        Trained */
     , (801322, 45, 0, 2, 0, 3250, 0, 0) /* LightWeapons        Trained */
     , (801322, 46, 0, 2, 0, 4140, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801322,  0,  2, 500, 0.75,  1500,  1500,  1500,  1500,  1500,  1500,  1500,  1500,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (801322, 16,  4,  500,    0,  1500,  1500,  1500,  1500,  1500,  1500,  1500,  1500,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (801322, 18,  1, 500,  0.5,  1500,  1500,  1500,  1500,  1500,  1500,  1500,  1500,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (801322, 19,  1,  500,    0,  1500,  1500,  1500,  1500,  1500,  1500,  1500,  1500,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (801322, 20,  1, 500, 0.75,  1500,  1500,  1500,  1500,  1500,  1500,  1500,  1500,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (801322, 22, 32, 500,  0.5,  1500,  1500,  1500,  1500,  1500,  1500,  1500,  1500,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801322,  3 /* Death */,    1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 1, 23 /* StartEvent */, 0, 1, NULL, 'IRBoss10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)   
     , (@parent_id, 2, 24 /* StopEvent */, 0.5, 1, NULL, 'IRBoss9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 16 /* WorldBroadcast */, 0, 1, NULL, 'The flame withers into a puff of smoke as the Acolyte of Fire is destroyed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
