DELETE FROM `weenie` WHERE `class_Id` = 801292;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801292, 'Quenlar', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801292,   1,         16) /* ItemType - Creature */
     , (801292,   2,          5) /* CreatureType - Lugian */
     , (801292,   3,          2) /* PaletteTemplate - Blue */
     , (801292,   6,         -1) /* ItemsCapacity */
     , (801292,   7,         -1) /* ContainersCapacity */
     , (801292,   8,       8000) /* Mass */
     , (801292,  16,          1) /* ItemUseable - No */
     , (801292,  25,        450) /* Level */
     , (801292,  27,          0) /* ArmorType - None */
     , (801292,  40,          2) /* CombatMode - Melee */
     , (801292,  67,         64) /* Tolerance - Retaliate */
     , (801292,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801292,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801292, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (801292, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801292, 140,          1) /* AiOptions - CanOpenDoors */
     , (801292, 146,     500000) /* XpOverride */
     , (801292, 332,     200000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801292,   1, True ) /* Stuck */
     , (801292,  11, False) /* IgnoreCollisions */
     , (801292,  12, True ) /* ReportCollisions */
     , (801292,  13, False) /* Ethereal */
     , (801292,  14, True ) /* GravityStatus */
     , (801292,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801292,   1,       5) /* HeartbeatInterval */
     , (801292,   2,       0) /* HeartbeatTimestamp */
     , (801292,   3,     0.9) /* HealthRate */
     , (801292,   4,       4) /* StaminaRate */
     , (801292,   5,       2) /* ManaRate */
     , (801292,  12,     0.5) /* Shade */
     , (801292,  13,       1) /* ArmorModVsSlash */
     , (801292,  14,       1) /* ArmorModVsPierce */
     , (801292,  15,       1) /* ArmorModVsBludgeon */
     , (801292,  16,       1) /* ArmorModVsCold */
     , (801292,  17,       1) /* ArmorModVsFire */
     , (801292,  18,       1) /* ArmorModVsAcid */
     , (801292,  19,     0.9) /* ArmorModVsElectric */
     , (801292,  31,      23) /* VisualAwarenessRange */
     , (801292,  34,       3) /* PowerupTime */
     , (801292,  36,       1) /* ChargeSpeed */
     , (801292,  39,     1.3) /* DefaultScale */
     , (801292,  64,     0.1) /* ResistSlash */
     , (801292,  65,     0.1) /* ResistPierce */
     , (801292,  66,     0.1) /* ResistBludgeon */
     , (801292,  67,     0.1) /* ResistFire */
     , (801292,  68,     0.1) /* ResistCold */
     , (801292,  69,     0.1) /* ResistAcid */
     , (801292,  70,     0.5) /* ResistElectric */
     , (801292,  71,       1) /* ResistHealthBoost */
     , (801292,  72,       1) /* ResistStaminaDrain */
     , (801292,  73,       1) /* ResistStaminaBoost */
     , (801292,  74,       1) /* ResistManaDrain */
     , (801292,  75,       1) /* ResistManaBoost */
     , (801292, 104,      10) /* ObviousRadarRange */
     , (801292, 117,     0.5) /* FocusedProbability */
     , (801292, 125,    0.03) /* ResistHealthDrain */
     , (801292, 166,    0.11) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801292,   1, 'Brother Quenlar') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801292,   1,   33557003) /* Setup */
     , (801292,   2,  150994950) /* MotionTable */
     , (801292,   3,  536870922) /* SoundTable */
     , (801292,   4,  805306371) /* CombatTable */
     , (801292,   6,   67113158) /* PaletteBase */
     , (801292,   7,  268436157) /* ClothingBase */
     , (801292,   8,  100667447) /* Icon */
     , (801292,  22,  872415262) /* PhysicsEffectTable */
     , (801292,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801292,   1, 2500, 0, 0) /* Strength */
     , (801292,   2, 1500, 0, 0) /* Endurance */
     , (801292,   3, 400, 0, 0) /* Quickness */
     , (801292,   4, 400, 0, 0) /* Coordination */
     , (801292,   5, 435, 0, 0) /* Focus */
     , (801292,   6, 470, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801292,   1, 70000, 0, 0, 70000) /* MaxHealth */
     , (801292,   3, 231500, 0, 0, 234100) /* MaxStamina */
     , (801292,   5, 15000, 0, 0, 15700) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801292,  6, 0, 2, 0,  370, 0, 0) /* MeleeDefense        Trained */
     , (801292,  7, 0, 3, 0,  380, 0, 0) /* MissileDefense      Specialized */
     , (801292, 15, 0, 3, 0,  350, 0, 0) /* MagicDefense        Specialized */
     , (801292, 16, 0, 3, 0,  440, 0, 0) /* ManaConversion      Specialized */
     , (801292, 31, 0, 3, 0,  440, 0, 0) /* CreatureEnchantment Specialized */
     , (801292, 33, 0, 3, 0,  470, 0, 0) /* LifeMagic           Specialized */
     , (801292, 34, 0, 3, 0,  670, 0, 0) /* WarMagic            Specialized */
     , (801292, 41, 0, 3, 0,  683, 0, 0) /* TwoHandedCombat     Specialized */
     , (801292, 43, 0, 3, 0,  670, 0, 0) /* VoidMagic           Specialized */
     , (801292, 44, 0, 3, 0, 2683, 0, 0) /* HeavyWeapons        Specialized */
     , (801292, 45, 0, 3, 0, 2683, 0, 0) /* LightWeapons        Specialized */
     , (801292, 46, 0, 3, 0, 2683, 0, 0) /* FinesseWeapons      Specialized */
     , (801292, 47, 0, 3, 0, 2580, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801292,  0,  4, 2600,  0.3,  2600, 1600, 1600, 1600, 1300, 1300, 1600, 1300, 12000, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801292,  1,  4, 2600,  0.3,  2600, 1600, 1600, 1600, 1300, 1300, 1600, 1300, 12000, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801292,  2,  4, 2600,  0.3,  2600, 1600, 1600, 1600, 1300, 1300, 1600, 1300, 12000, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801292,  3,  4, 2600,  0.3,  2600, 1600, 1600, 1600, 1300, 1300, 1600, 1300, 12000, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801292,  4,  4, 2600,  0.3,  2600, 1600, 1600, 1600, 1300, 1300, 1600, 1300, 12000, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801292,  5,  4, 2600, 0.75,  2600, 1600, 1600, 1600, 1300, 1300, 1600, 1300, 12000, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801292,  6,  4, 2600,  0.3,  2600, 1600, 1600, 1600, 1300, 1300, 1600, 1300, 12000, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801292,  7,  4, 2600,  0.3,  2600, 1600, 1600, 1600, 1300, 1300, 1600, 1300, 12000, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801292,  8,  4, 2600, 0.75,  2600, 1600, 1600, 1600, 1300, 1300, 1600, 1300, 12000, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (801292,  94)
     , (801292, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801292,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  1,  23 /* StartEvent */, 0, 1, NULL, 'IRBoss3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  24 /* StopEvent */, 0.5, 1, NULL, 'IRBoss2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  16 /* WorldBroadcast */, 0, 1, NULL, 'Quenlar''s remains smolder and the ashes are swept away by the breeze!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801292, 2, 801293,  1, 2, 0, False) /* Create  (801293) for Wield */;
