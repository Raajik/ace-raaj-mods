DELETE FROM `weenie` WHERE `class_Id` = 801291;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801291, 'Thorrisin1', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801291,   1,         16) /* ItemType - Creature */
     , (801291,   2,          3) /* CreatureType - Drudge */
     , (801291,   3,         47) /* PaletteTemplate - PastyYellow */
     , (801291,   6,         -1) /* ItemsCapacity */
     , (801291,   7,         -1) /* ContainersCapacity */
     , (801291,  16,          1) /* ItemUseable - No */
     , (801291,  25,        450) /* Level */
     , (801291,  27,          0) /* ArmorType - None */
     , (801291,  40,          2) /* CombatMode - Melee */
     , (801291,  68,          0x80) /* TargetingTactic - Random, TopDamager */
     , (801291,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801291, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (801291, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801291, 140,          1) /* AiOptions - CanOpenDoors */
     , (801291, 146,     500000) /* XpOverride */
     , (801291, 332,     200000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801291,   1, True ) /* Stuck */
     , (801291,  11, False) /* IgnoreCollisions */
     , (801291,  12, True ) /* ReportCollisions */
     , (801291,  13, False) /* Ethereal */
     , (801291,  65, True ) /* IgnoreMagicResist */
     , (801291,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801291,   1,       5) /* HeartbeatInterval */
     , (801291,   2,       0) /* HeartbeatTimestamp */
     , (801291,   3,   0.067) /* HealthRate */
     , (801291,   4,       3) /* StaminaRate */
     , (801291,   5,       1) /* ManaRate */
     , (801291,  12,     0.5) /* Shade */
     , (801291,  13,       1) /* ArmorModVsSlash */
     , (801291,  14,       1) /* ArmorModVsPierce */
     , (801291,  15,       1) /* ArmorModVsBludgeon */
     , (801291,  16,     0.9) /* ArmorModVsCold */
     , (801291,  17,       1) /* ArmorModVsFire */
     , (801291,  18,       1) /* ArmorModVsAcid */
     , (801291,  19,       1) /* ArmorModVsElectric */
     , (801291,  31,      12) /* VisualAwarenessRange */
     , (801291,  34,       1) /* PowerupTime */
     , (801291,  36,       1) /* ChargeSpeed */
     , (801291,  39,       2) /* DefaultScale */
     , (801291,  64,     0.1) /* ResistSlash */
     , (801291,  65,     0.1) /* ResistPierce */
     , (801291,  66,     0.1) /* ResistBludgeon */
     , (801291,  67,     0.1) /* ResistFire */
     , (801291,  68,     0.5) /* ResistCold */
     , (801291,  69,     0.1) /* ResistAcid */
     , (801291,  70,     0.1) /* ResistElectric */
     , (801291,  71,       1) /* ResistHealthBoost */
     , (801291,  72,       1) /* ResistStaminaDrain */
     , (801291,  73,       1) /* ResistStaminaBoost */
     , (801291,  74,       1) /* ResistManaDrain */
     , (801291,  75,       1) /* ResistManaBoost */
     , (801291, 104,      10) /* ObviousRadarRange */
     , (801291, 125,    0.03) /* ResistHealthDrain */
     , (801291, 166,    0.12) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801291,   1, 'Thorrisin') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801291,   1,   33556445) /* Setup */
     , (801291,   2,  150994952) /* MotionTable */
     , (801291,   3,  536870919) /* SoundTable */
     , (801291,   4,  805306372) /* CombatTable */
     , (801291,   6,   67112812) /* PaletteBase */
     , (801291,   7,  268435972) /* ClothingBase */
     , (801291,   8,  100667445) /* Icon */
     , (801291,  22,  872415258) /* PhysicsEffectTable */
     , (801291,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801291,   1, 1500, 0, 0) /* Strength */
     , (801291,   2, 1500, 0, 0) /* Endurance */
     , (801291,   3, 500, 0, 0) /* Quickness */
     , (801291,   4, 500, 0, 0) /* Coordination */
     , (801291,   5, 500, 0, 0) /* Focus */
     , (801291,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801291,   1, 60000, 0, 0, 60000) /* MaxHealth */
     , (801291,   3, 50550, 0, 0, 50550) /* MaxStamina */
     , (801291,   5, 20000, 0, 0, 20000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801291,  6, 0, 2, 0,  360, 0, 0) /* MeleeDefense        Trained */
     , (801291,  7, 0, 2, 0,  320, 0, 0) /* MissileDefense      Trained */
     , (801291, 15, 0, 2, 0,  340, 0, 0) /* MagicDefense        Trained */
     , (801291, 16, 0, 2, 0,  200, 0, 0) /* ManaConversion      Trained */
     , (801291, 31, 0, 2, 0,  400, 0, 0) /* CreatureEnchantment Trained */
     , (801291, 33, 0, 2, 0,  400, 0, 0) /* LifeMagic           Trained */
     , (801291, 34, 0, 2, 0, 1400, 0, 0) /* WarMagic            Trained */
     , (801291, 41, 0, 2, 0, 4240, 0, 0) /* TwoHandedCombat     Trained */
     , (801291, 44, 0, 2, 0, 3740, 0, 0) /* HeavyWeapons        Trained */
     , (801291, 45, 0, 2, 0, 3250, 0, 0) /* LightWeapons        Trained */
     , (801291, 46, 0, 2, 0, 4140, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801291,  0,  4, 2500, 0.75,  2500, 1500, 1500, 1500, 11500, 1500, 1500, 1500, 12000, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801291,  1,  4, 2500, 0.75,  2500, 1500, 1500, 1500, 11500, 1500, 1500, 1500, 12000, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801291,  2,  4, 2500, 0.75,  2500, 1500, 1500, 1500, 11500, 1500, 1500, 1500, 12000, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801291,  3,  4, 2500, 0.75,  2500, 1500, 1500, 1500, 11500, 1500, 1500, 1500, 12000, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801291,  4,  4, 2500, 0.75,  2500, 1500, 1500, 1500, 11500, 1500, 1500, 1500, 12000, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801291,  5,  4, 2500, 0.75,  2500, 1500, 1500, 1500, 11500, 1500, 1500, 1500, 12000, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801291,  6,  4, 2500, 0.75,  2500, 1500, 1500, 1500, 11500, 1500, 1500, 1500, 12000, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801291,  7,  4, 2500, 0.75,  2500, 1500, 1500, 1500, 11500, 1500, 1500, 1500, 12000, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801291,  8,  4, 2500, 0.75,  2500, 1500, 1500, 1500, 11500, 1500, 1500, 1500, 12000, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (801291,  94)
     , (801291, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801291,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  23 /* StartEvent */, 0, 1, NULL, 'IRBoss2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  24 /* StopEvent */, 0.5, 1, NULL, 'IRBoss1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  16 /* WorldBroadcast */, 0, 1, NULL, 'Thorrison has been vanquished!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
