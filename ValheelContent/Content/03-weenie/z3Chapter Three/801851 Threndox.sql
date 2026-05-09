DELETE FROM `weenie` WHERE `class_Id` = 801851;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801851, 'Threndox3', 10, '2023-01-07 12:30:26') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801851,   1,         16) /* ItemType - Creature */
     , (801851,   2,         22) /* CreatureType - Shadow */
     , (801851,   6,         -1) /* ItemsCapacity */
     , (801851,   7,         -1) /* ContainersCapacity */
     , (801851,  16,          1) /* ItemUseable - No */
     , (801851,  25,        750) /* Level */
     , (801851,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (801851, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (801851, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801851, 140,          1) /* AiOptions - CanOpenDoors */
     , (801851, 146,          5) /* XpOverride */
     , (801851, 332,          5) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801851,   1, True ) /* Stuck */
     , (801851,  12, True ) /* ReportCollisions */
     , (801851,  14, True ) /* GravityStatus */
     , (801851,  19, True ) /* Attackable */
     , (801851,  29, True ) /* NoCorpse */
     , (801851,  42, True ) /* AllowEdgeSlide */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801851,   1,       5) /* HeartbeatInterval */
     , (801851,   2,       0) /* HeartbeatTimestamp */
     , (801851,   3,     0.7) /* HealthRate */
     , (801851,   4,     2.5) /* StaminaRate */
     , (801851,   5,       1) /* ManaRate */
     , (801851,  12,     0.5) /* Shade */
     , (801851,  13,      22) /* ArmorModVsSlash */
     , (801851,  14,      22) /* ArmorModVsPierce */
     , (801851,  15,      22) /* ArmorModVsBludgeon */
     , (801851,  16,      22) /* ArmorModVsCold */
     , (801851,  17,      22) /* ArmorModVsFire */
     , (801851,  18,      22) /* ArmorModVsAcid */
     , (801851,  19,      22) /* ArmorModVsElectric */
     , (801851,  31,      22) /* VisualAwarenessRange */
     , (801851,  34,     1.1) /* PowerupTime */
     , (801851,  36,       1) /* ChargeSpeed */
     , (801851,  39,     1.8) /* DefaultScale */
     , (801851,  64,     0.1) /* ResistSlash */
     , (801851,  65,     0.1) /* ResistPierce */
     , (801851,  66,      13) /* ResistBludgeon */
     , (801851,  67,      13) /* ResistFire */
     , (801851,  68,     0.1) /* ResistCold */
     , (801851,  69,     0.1) /* ResistAcid */
     , (801851,  70,     0.1) /* ResistElectric */
     , (801851,  71,       1) /* ResistHealthBoost */
     , (801851,  72,       1) /* ResistStaminaDrain */
     , (801851,  73,       1) /* ResistStaminaBoost */
     , (801851,  74,       1) /* ResistManaDrain */
     , (801851,  75,       1) /* ResistManaBoost */
     , (801851,  76,     0.5) /* Translucency */
     , (801851,  80,       3) /* AiUseMagicDelay */
     , (801851, 104,      10) /* ObviousRadarRange */
     , (801851, 122,       2) /* AiAcquireHealth */
     , (801851, 125,       1) /* ResistHealthDrain */
     , (801851, 165,      22) /* ArmorModVsNether */
     , (801851, 166,       5) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801851,   1, 'Threndox') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801851,   1, 0x020013F1) /* Setup */
     , (801851,   2, 0x09000001) /* MotionTable */
     , (801851,   3, 0x20000001) /* SoundTable */
     , (801851,   4, 0x30000028) /* CombatTable */
     , (801851,   8, 0x06001BBE) /* Icon */
     , (801851,  22, 0x34000063) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801851,  0,  4,  0,    0, 2480, 1240, 1240, 1240, 1240, 1240, 1240, 1240,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801851,  1,  4,  0,    0, 2480, 1240, 1240, 1240, 1240, 1240, 1240, 1240,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801851,  2,  4,  0,    0, 2480, 1240, 1240, 1240, 1240, 1240, 1240, 1240,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801851,  3,  4,  0,    0, 2480, 1240, 1240, 1240, 1240, 1240, 1240, 1240,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801851,  4,  4,  0,    0, 2480, 1240, 1240, 1240, 1240, 1240, 1240, 1240,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801851,  5,  4,1000, 0.75, 2480, 1240, 1240, 1240, 1240, 1240, 1240, 1240,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801851,  6,  4,  0,    0, 2480, 1240, 1240, 1240, 1240, 1240, 1240, 1240,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801851,  7,  4,  0,    0, 2480, 1240, 1240, 1240, 1240, 1240, 1240, 1240,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801851,  8,  4,1000, 0.75, 2480, 1240, 1240, 1240, 1240, 1240, 1240, 1240,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801851,   1,1280, 0, 0) /* Strength */
     , (801851,   2, 300, 0, 0) /* Endurance */
     , (801851,   3, 300, 0, 0) /* Quickness */
     , (801851,   4, 280, 0, 0) /* Coordination */
     , (801851,   5, 360, 0, 0) /* Focus */
     , (801851,   6, 380, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801851,   1,2350000, 0, 0,2500000) /* MaxHealth */
     , (801851,   3, 30000, 0, 0,60000) /* MaxStamina */
     , (801851,   5, 24000, 0, 0,62000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801851,  6, 0, 3, 0, 315, 0, 0) /* MeleeDefense        Specialized */
     , (801851,  7, 0, 3, 0, 410, 0, 0) /* MissileDefense      Specialized */
     , (801851, 14, 0, 3, 0, 320, 0, 0) /* ArcaneLore          Specialized */
     , (801851, 15, 0, 3, 0, 256, 0, 0) /* MagicDefense        Specialized */
     , (801851, 20, 0, 3, 0, 150, 0, 0) /* Deception           Specialized */
     , (801851, 31, 0, 3, 0, 225, 0, 0) /* CreatureEnchantment Specialized */
     , (801851, 33, 0, 3, 0, 225, 0, 0) /* LifeMagic           Specialized */
     , (801851, 34, 0, 3, 0, 225, 0, 0) /* WarMagic            Specialized */
     , (801851, 44, 0, 3, 0, 313, 0, 0) /* HeavyWeapons        Specialized */
     , (801851, 45, 0, 3, 0, 313, 0, 0) /* LightWeapons        Specialized */
     , (801851, 46, 0, 3, 0, 313, 0, 0) /* FinesseWeapons      Specialized */
     , (801851, 48, 0, 3, 0, 100, 0, 0) /* Shield              Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801851, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'Threndox falls to his knees. His body withers away into ashes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 23 /* StartEvent */, 0, 1, NULL, 'ThrendoxBoss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 24 /* StopEvent */, 0, 1, NULL, 'ThrendoxBoss1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

