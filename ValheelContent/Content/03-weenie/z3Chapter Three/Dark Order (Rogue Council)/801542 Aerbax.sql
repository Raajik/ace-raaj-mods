DELETE FROM `weenie` WHERE `class_Id` = 801542;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801542, 'Aerbax DO', 10, '2023-01-01 08:23:03') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801542,   1,         16) /* ItemType - Creature */
     , (801542,   2,         96) /* CreatureType - Aerbax */
     , (801542,   6,         -1) /* ItemsCapacity */
     , (801542,   7,         -1) /* ContainersCapacity */
     , (801542,  16,          1) /* ItemUseable - No */
     , (801542,  25,        500) /* Level */
     , (801542,  27,          0) /* ArmorType - None */
     , (801542,  40,          2) /* CombatMode - Melee */
     , (801542,  68,          3) /* TargetingTactic - Random, Focused */
     , (801542,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801542, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (801542, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801542, 140,          1) /* AiOptions - CanOpenDoors */
     , (801542, 146,     999999) /* XpOverride */
     , (801542, 332,    1000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801542,   1, True ) /* Stuck */
     , (801542,  12, True ) /* ReportCollisions */
     , (801542,  14, True ) /* GravityStatus */
     , (801542,  19, True ) /* Attackable */
     , (801542,  29, True ) /* NoCorpse */
     , (801542,  42, True ) /* AllowEdgeSlide */
     , (801542,  65, True ) /* IgnoreMagicResist */
     , (801542,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801542,   1,       5) /* HeartbeatInterval */
     , (801542,   2,       0) /* HeartbeatTimestamp */
     , (801542,   3,     400) /* HealthRate */
     , (801542,   4,       4) /* StaminaRate */
     , (801542,   5,       2) /* ManaRate */
     , (801542,  13,       1) /* ArmorModVsSlash */
     , (801542,  14,       1) /* ArmorModVsPierce */
     , (801542,  15,       1) /* ArmorModVsBludgeon */
     , (801542,  16,       1) /* ArmorModVsCold */
     , (801542,  17,     0.9) /* ArmorModVsFire */
     , (801542,  18,       1) /* ArmorModVsAcid */
     , (801542,  19,       1) /* ArmorModVsElectric */
     , (801542,  31,      24) /* VisualAwarenessRange */
     , (801542,  34,       1) /* PowerupTime */
     , (801542,  36,       1) /* ChargeSpeed */
     , (801542,  39,     2.3) /* DefaultScale */
     , (801542,  64,     0.1) /* ResistSlash */
     , (801542,  65,     0.1) /* ResistPierce */
     , (801542,  66,     0.1) /* ResistBludgeon */
     , (801542,  67,     0.3) /* ResistFire */
     , (801542,  68,     0.1) /* ResistCold */
     , (801542,  69,     0.1) /* ResistAcid */
     , (801542,  70,     0.1) /* ResistElectric */
     , (801542,  77,       1) /* PhysicsScriptIntensity */
     , (801542, 104,      10) /* ObviousRadarRange */
     , (801542, 125,    0.03) /* ResistHealthDrain */
     , (801542, 166,    0.04) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801542,   1, 'Aerbax') /* Name */
     , (801542,  45, 'DarkOrderKT2') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801542,   1,   33560393) /* Setup */
     , (801542,   2,  150995409) /* MotionTable */
     , (801542,   3,  536870930) /* SoundTable */
     , (801542,   4,  805306381) /* CombatTable */
     , (801542,   8,  100667943) /* Icon */
     , (801542,  22,  872415273) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801542,   1, 5000, 0, 0) /* Strength */
     , (801542,   2, 1500, 0, 0) /* Endurance */
     , (801542,   3, 500, 0, 0) /* Quickness */
     , (801542,   4, 500, 0, 0) /* Coordination */
     , (801542,   5, 500, 0, 0) /* Focus */
     , (801542,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801542,   1, 300000, 0, 0, 300000) /* MaxHealth */
     , (801542,   3, 500000, 0, 0, 500000) /* MaxStamina */
     , (801542,   5, 500000, 0, 0, 500000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801542,  6, 0, 2, 0, 300, 0, 0) /* MeleeDefense        Trained */
     , (801542,  7, 0, 2, 0, 300, 0, 0) /* MissileDefense      Trained */
     , (801542, 15, 0, 2, 0, 300, 0, 0) /* MagicDefense        Trained */
     , (801542, 20, 0, 2, 0, 300, 0, 0) /* Deception           Trained */
     , (801542, 45, 0, 2, 0, 5350, 0, 0) /* LightWeapons        Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801542,  0, 64, 3500, 0.15, 3500, 1375, 1375, 1375, 1375, 1375, 1375, 1375,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801542,  1, 64, 3500, 0.15, 3500, 1375, 1375, 1375, 1375, 1375, 1375, 1375,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801542,  2, 64, 3500, 0.15, 3500, 1375, 1375, 1375, 1375, 1375, 1375, 1375,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801542,  3, 64, 3500, 0.15, 3500, 1375, 1375, 1375, 1375, 1375, 1375, 1375,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801542,  4, 64, 3500, 0.15, 3500, 1375, 1375, 1375, 1375, 1375, 1375, 1375,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801542,  5, 64, 3500, 0.15, 3500, 1375, 1375, 1375, 1375, 1375, 1375, 1375,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801542,  6, 64, 3500, 0.15, 3500, 1375, 1375, 1375, 1375, 1375, 1375, 1375,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801542,  7, 64, 3500, 0.15, 3500, 1375, 1375, 1375, 1375, 1375, 1375, 1375,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801542,  8, 64, 3500, 0.15, 3500, 1375, 1375, 1375, 1375, 1375, 1375, 1375,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801542,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  24 /* StopEvent */, 0, 1, NULL, 'DOBoss5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  24 /* StopEvent */, 0, 1, NULL, 'DOBoss4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  24 /* StopEvent */, 0, 1, NULL, 'DOBoss3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  24 /* StopEvent */, 0, 1, NULL, 'DOBoss2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  4,  24 /* StopEvent */, 0, 1, NULL, 'DOBoss1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  5,  24 /* StopEvent */, 0, 1, NULL, 'DOActive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  6,  17 /* LocalBroadcast */, 0.5, 1, NULL, 'Aerbax, leader of the Dark Order, has finally been killed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  7,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  8,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +50 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
