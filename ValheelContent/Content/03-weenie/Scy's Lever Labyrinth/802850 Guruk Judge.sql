DELETE FROM `weenie` WHERE `class_Id` = 802850;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802850, 'Guruk Judge', 10, '2023-08-26 10:16:29') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802850,   1,         16) /* ItemType - Creature */
     , (802850,   2,         75) /* CreatureType - Burun */
     , (802850,   3,          1) /* PaletteTemplate - AquaBlue */
     , (802850,   6,         -1) /* ItemsCapacity */
     , (802850,   7,         -1) /* ContainersCapacity */
     , (802850,  16,          1) /* ItemUseable - No */
     , (802850,  25,          5) /* Level */
     , (802850,  27,          0) /* ArmorType - None */
     , (802850,  40,          2) /* CombatMode - Melee */
     , (802850,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (802850,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802850, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802850, 146,          1) /* XpOverride */
     , (802850, 332,          1) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802850,   1, True ) /* Stuck */
     , (802850,  11, False) /* IgnoreCollisions */
     , (802850,  13, False) /* Ethereal */
     , (802850,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802850,   1,       5) /* HeartbeatInterval */
     , (802850,   2,       0) /* HeartbeatTimestamp */
     , (802850,   3,    0.15) /* HealthRate */
     , (802850,   4,       5) /* StaminaRate */
     , (802850,   5,       2) /* ManaRate */
     , (802850,  12,     0.5) /* Shade */
     , (802850,  13,       1) /* ArmorModVsSlash */
     , (802850,  14,       1) /* ArmorModVsPierce */
     , (802850,  15,     0.7) /* ArmorModVsBludgeon */
     , (802850,  16,       1) /* ArmorModVsCold */
     , (802850,  17,     0.7) /* ArmorModVsFire */
     , (802850,  18,       1) /* ArmorModVsAcid */
     , (802850,  19,       1) /* ArmorModVsElectric */
     , (802850,  31,      18) /* VisualAwarenessRange */
     , (802850,  34,     1.1) /* PowerupTime */
     , (802850,  36,       1) /* ChargeSpeed */
     , (802850,  39,       1) /* DefaultScale */
     , (802850,  64,     0.1) /* ResistSlash */
     , (802850,  65,     0.1) /* ResistPierce */
     , (802850,  66,     0.3) /* ResistBludgeon */
     , (802850,  67,     0.3) /* ResistFire */
     , (802850,  68,     0.1) /* ResistCold */
     , (802850,  69,     0.1) /* ResistAcid */
     , (802850,  70,     0.1) /* ResistElectric */
     , (802850,  71,       1) /* ResistHealthBoost */
     , (802850,  72,       1) /* ResistStaminaDrain */
     , (802850,  73,       1) /* ResistStaminaBoost */
     , (802850,  74,       1) /* ResistManaDrain */
     , (802850,  75,       1) /* ResistManaBoost */
     , (802850, 104,      10) /* ObviousRadarRange */
     , (802850, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802850,   1, 'Guruk Judge') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802850,   1, 0x020010DD) /* Setup */
     , (802850,   2, 0x09000162) /* MotionTable */
     , (802850,   3, 0x200000B5) /* SoundTable */
     , (802850,   4, 0x3000003C) /* CombatTable */
     , (802850,   6, 0x040018BC) /* PaletteBase */
     , (802850,   7, 0x1000055B) /* ClothingBase */
     , (802850,   8, 0x060033C5) /* Icon */
     , (802850,  22, 0x340000AA) /* PhysicsEffectTable */
     , (802850,  32,        475) /* WieldedTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802850,  0,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802850,  1,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802850,  2,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802850,  3,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802850,  4,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802850,  5,  4,  1, 0.75,  200,  100,  100,  100,  100,  100,  100,  100,    0, 2,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0) /* Hand */
     , (802850,  6,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802850,  7,  4,  0,    0,  200,  100,  100,  100,  100,  100,  100,  100,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802850,  8,  4,  1, 0.75,  200,  100,  100,  100,  100,  100,  100,  100,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */
     , (802850, 20,  1,  1, 0.75,  200,  100,  100,  100,  100,  100,  100,  100,    0, 2,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0) /* Claw */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802850,   1,9999, 0, 0) /* Strength */
     , (802850,   2,9999, 0, 0) /* Endurance */
     , (802850,   3,9999, 0, 0) /* Quickness */
     , (802850,   4,9999, 0, 0) /* Coordination */
     , (802850,   5,9999, 0, 0) /* Focus */
     , (802850,   6,9999, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802850,   1,999999, 0, 0,999999) /* MaxHealth */
     , (802850,   3,999999, 0, 0,999999) /* MaxStamina */
     , (802850,   5,999999, 0, 0,999999) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802850,  6, 0, 3, 0,999999, 0,1975.13220214844) /* MeleeDefense        Specialized */
     , (802850,  7, 0, 3, 0,999999, 0,1975.13220214844) /* MissileDefense      Specialized */
     , (802850, 15, 0, 3, 0,999999, 0,1975.13220214844) /* MagicDefense        Specialized */
     , (802850, 20, 0, 3, 0,999999, 0,1975.13220214844) /* Deception           Specialized */
     , (802850, 24, 0, 3, 0,999999, 0,1975.13220214844) /* Run                 Specialized */
     , (802850, 31, 0, 3, 0,999999, 0,1975.13220214844) /* CreatureEnchantment Specialized */
     , (802850, 33, 0, 3, 0,999999, 0,1975.13220214844) /* LifeMagic           Specialized */
     , (802850, 34, 0, 3, 0,999999, 0,1975.13220214844) /* WarMagic            Specialized */
     , (802850, 44, 0, 3, 0,999999, 0,1975.13220214844) /* HeavyWeapons        Specialized */
     , (802850, 45, 0, 3, 0,999999, 0,1975.13220214844) /* LightWeapons        Specialized */
     , (802850, 46, 0, 3, 0,999999, 0,1975.13220214844) /* FinesseWeapons      Specialized */
     , (802850, 47, 0, 3, 0,999999, 0,1975.13220214844) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802850, 18 /* Scream */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 8 /* Say */, 0, 0, NULL, 'You do not have the sight of the great Seer''s of old! Be gone with you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 16 /* WorldBroadcast */, 3, 1, NULL, 'Another warrior has failed Scy''s Lever Labrynth! Shame...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 99 /* TeleportTarget */, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x01AC010C /* 0x01AC010C [11.050175 -20.058971 0.005] -0.693998 0 0 0.719977 */, 11.050175, -20.058971, 0.005, -0.693998, 0, 0, 0.719977);

