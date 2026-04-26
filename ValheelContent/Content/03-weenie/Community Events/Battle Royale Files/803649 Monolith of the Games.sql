DELETE FROM `weenie` WHERE `class_Id` = 803649;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803649, 'Monolith of the Games', 10, '2024-06-09 07:46:11') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803649,   1,         16) /* ItemType - Creature */
     , (803649,   6,         -1) /* ItemsCapacity */
     , (803649,   7,         -1) /* ContainersCapacity */
     , (803649,  16,          1) /* ItemUseable - No */
     , (803649,  40,          1) /* CombatMode - NonCombat */
     , (803649,  67,          1) /* Tolerance - NoAttack */
     , (803649,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803649, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803649, 146,    5000000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803649,   1, True ) /* Stuck */
     , (803649,   6, True ) /* AiUsesMana */
     , (803649,  11, False) /* IgnoreCollisions */
     , (803649,  12, True ) /* ReportCollisions */
     , (803649,  13, False) /* Ethereal */
     , (803649,  14, True ) /* GravityStatus */
     , (803649,  19, True ) /* Attackable */
     , (803649,  29, True ) /* NoCorpse */
     , (803649, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803649,   1,       5) /* HeartbeatInterval */
     , (803649,   2,       0) /* HeartbeatTimestamp */
     , (803649,   3,       0) /* HealthRate */
     , (803649,   4,       0) /* StaminaRate */
     , (803649,   5,       0) /* ManaRate */
     , (803649,  13,       1) /* ArmorModVsSlash */
     , (803649,  14,       1) /* ArmorModVsPierce */
     , (803649,  15,       1) /* ArmorModVsBludgeon */
     , (803649,  16,       1) /* ArmorModVsCold */
     , (803649,  17,       1) /* ArmorModVsFire */
     , (803649,  18,       1) /* ArmorModVsAcid */
     , (803649,  19,       1) /* ArmorModVsElectric */
     , (803649,  31,     0.3) /* VisualAwarenessRange */
     , (803649,  34,       1) /* PowerupTime */
     , (803649,  36,       1) /* ChargeSpeed */
     , (803649,  39,       4) /* DefaultScale */
     , (803649,  41,       0) /* RegenerationInterval */
     , (803649,  64,       1) /* ResistSlash */
     , (803649,  65,       1) /* ResistPierce */
     , (803649,  66,       1) /* ResistBludgeon */
     , (803649,  67,       1) /* ResistFire */
     , (803649,  68,       1) /* ResistCold */
     , (803649,  69,       1) /* ResistAcid */
     , (803649,  70,       1) /* ResistElectric */
     , (803649,  71,       1) /* ResistHealthBoost */
     , (803649,  72,     0.5) /* ResistStaminaDrain */
     , (803649,  73,       1) /* ResistStaminaBoost */
     , (803649,  74,     0.5) /* ResistManaDrain */
     , (803649,  75,       1) /* ResistManaBoost */
     , (803649, 104,      10) /* ObviousRadarRange */
     , (803649, 125,     0.5) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803649,   1, 'Monolith of the Games') /* Name */
     , (803649,  15, 'A strange looking pillar constructed by the surrounding Shadows.') /* ShortDesc */
     , (803649,  45, 'KillTaskTouTouPillars0812') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803649,   1, 0x020014FB) /* Setup */
     , (803649,   2, 0x09000229) /* MotionTable */
     , (803649,   3, 0x2000005F) /* SoundTable */
     , (803649,   8, 0x060022C4) /* Icon */
     , (803649,  22, 0x3400006B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803649,  0,  4,  0,    0,  100,   50,   50,   50,   50,   50,   50,   50,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803649,  1,  4,  0,    0,  100,   50,   50,   50,   50,   50,   50,   50,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803649,  2,  4,  0,    0,  100,   50,   50,   50,   50,   50,   50,   50,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803649,  3,  4,  0,    0,  100,   50,   50,   50,   50,   50,   50,   50,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803649,  4,  4,  0,    0,  100,   50,   50,   50,   50,   50,   50,   50,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803649,  5,  4,  1,    0,  100,   50,   50,   50,   50,   50,   50,   50,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803649,  6,  4,  0,    0,  100,   50,   50,   50,   50,   50,   50,   50,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803649,  7,  4,  0,    0,  100,   50,   50,   50,   50,   50,   50,   50,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803649,  8,  4,  1,    0,  100,   50,   50,   50,   50,   50,   50,   50,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803649,   1,  10, 0, 0) /* Strength */
     , (803649,   2,  10, 0, 0) /* Endurance */
     , (803649,   3,  10, 0, 0) /* Quickness */
     , (803649,   4,  10, 0, 0) /* Coordination */
     , (803649,   5,  10, 0, 0) /* Focus */
     , (803649,   6,  10, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803649,   1,  7500, 0, 0, 7500) /* MaxHealth */
     , (803649,   3,  7500, 0, 0, 7500) /* MaxStamina */
     , (803649,   5,  7500, 0, 0, 7500) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803649, 9 /* Generation */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 16 /* WorldBroadcast */, 0, 1, NULL, 'The Monolith of the Games has spawned at 0.7S, 96.9E! To become the victor, you must be the first one to destroy it in order to win! Watch out for your foes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803649, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 16 /* WorldBroadcast */, 0, 1, NULL, '%s has destroyed the Monolith of the Games and is now the Victor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 24 /* StopEvent */, 0, 1, NULL, 'AyanOwnedF1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 24 /* StopEvent */, 0, 1, NULL, 'AyanOwnedF2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 24 /* StopEvent */, 0, 1, NULL, 'AyanOwnedF3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 24 /* StopEvent */, 0, 1, NULL, 'SpawnCragstoneBoss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803649, 20 /* ReceiveCritical */, 0.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'You crack the Monolith, releasing one of its many gems.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

