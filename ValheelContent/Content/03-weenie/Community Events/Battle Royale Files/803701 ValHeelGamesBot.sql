DELETE FROM `weenie` WHERE `class_Id` = 803701;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803701, 'ValHeelGamesBot', 10, '2024-06-17 06:02:20') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803701,   1,         16) /* ItemType - Creature */
     , (803701,   2,         31) /* CreatureType - Human */
     , (803701,   6,         -1) /* ItemsCapacity */
     , (803701,   7,         -1) /* ContainersCapacity */
     , (803701,   8,        120) /* Mass */
     , (803701,  16,          1) /* ItemUseable - No */
     , (803701,  25,        999) /* Level */
     , (803701,  27,          0) /* ArmorType - None */
     , (803701,  93,    6292508) /* PhysicsState - Ethereal, ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (803701,  95,          8) /* RadarBlipColor - Yellow */
     , (803701, 133,          0) /* ShowableOnRadar - Undefined */
     , (803701, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803701, 146,       1894) /* XpOverride */
     , (803701, 290,          1) /* ReceiveLocalSignals */
     , (803701, 291,         40) /* ReceiveLocalSignalRange */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803701,   1, True ) /* Stuck */
     , (803701,  12, True ) /* ReportCollisions */
     , (803701,  13, True ) /* Ethereal */
     , (803701,  18, True ) /* Visibility */
     , (803701,  19, False) /* Attackable */
     , (803701,  41, True ) /* ReportCollisionsAsEnvironment */
     , (803701,  42, True ) /* AllowEdgeSlide */
     , (803701,  50, True ) /* NeverFailCasting */
     , (803701,  52, True ) /* AiImmobile */
     , (803701,  65, True ) /* IgnoreMagicResist */
     , (803701,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803701,   1,       2) /* HeartbeatInterval */
     , (803701,   2,       0) /* HeartbeatTimestamp */
     , (803701,   3,    0.16) /* HealthRate */
     , (803701,   4,       5) /* StaminaRate */
     , (803701,   5,       1) /* ManaRate */
     , (803701,  13,     0.9) /* ArmorModVsSlash */
     , (803701,  14,       1) /* ArmorModVsPierce */
     , (803701,  15,     1.1) /* ArmorModVsBludgeon */
     , (803701,  16,     0.4) /* ArmorModVsCold */
     , (803701,  17,     0.4) /* ArmorModVsFire */
     , (803701,  18,       1) /* ArmorModVsAcid */
     , (803701,  19,     0.6) /* ArmorModVsElectric */
     , (803701,  54,       3) /* UseRadius */
     , (803701,  64,       1) /* ResistSlash */
     , (803701,  65,       1) /* ResistPierce */
     , (803701,  66,       1) /* ResistBludgeon */
     , (803701,  67,       1) /* ResistFire */
     , (803701,  68,       1) /* ResistCold */
     , (803701,  69,       1) /* ResistAcid */
     , (803701,  70,       1) /* ResistElectric */
     , (803701,  71,       1) /* ResistHealthBoost */
     , (803701,  72,       1) /* ResistStaminaDrain */
     , (803701,  73,       1) /* ResistStaminaBoost */
     , (803701,  74,       1) /* ResistManaDrain */
     , (803701,  75,       1) /* ResistManaBoost */
     , (803701, 104,      10) /* ObviousRadarRange */
     , (803701, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803701,   1, 'ValHeelGamesBot') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803701,   1, 0x02000001) /* Setup */
     , (803701,   2, 0x09000001) /* MotionTable */
     , (803701,   3, 0x20000001) /* SoundTable */
     , (803701,   4, 0x30000000) /* CombatTable */
     , (803701,   8, 0x06001036) /* Icon */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803701,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803701,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803701,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803701,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803701,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803701,  5,  4,25000, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803701,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803701,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803701,  8,  4,25000, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803701,   1,500000, 0, 0) /* Strength */
     , (803701,   2,500000, 0, 0) /* Endurance */
     , (803701,   3,500000, 0, 0) /* Quickness */
     , (803701,   4,500000, 0, 0) /* Coordination */
     , (803701,   5,5000000, 0, 0) /* Focus */
     , (803701,   6,5000000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803701,   1,3000000, 0, 0,3000000) /* MaxHealth */
     , (803701,   3,3000000, 0, 0,3000000) /* MaxStamina */
     , (803701,   5,3000000, 0, 0,3000000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803701,  6, 0, 2, 0, 800, 0,500000) /* MeleeDefense        Trained */
     , (803701,  7, 0, 2, 0, 800, 0,500000) /* MissileDefense      Trained */
     , (803701, 13, 0, 2, 0, 800, 0,500000) /* UnarmedCombat       Trained */
     , (803701, 33, 0, 3, 0, 800, 0,500000) /* LifeMagic            Specialized */
     , (803701, 34, 0, 3, 0, 800, 0,500000) /* WarMagic            Specialized */
     , (803701, 43, 0, 3, 0, 800, 0,500000) /* VoidMagic            Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803701, 9 /* Generation */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 16 /* WorldBroadcast */, 60, 1, NULL, 'All warriors have 25 minutes to gear up for the final battle on the Monolith of the Games!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 16 /* WorldBroadcast */, 300, 1, NULL, 'There is 20 minutes remaining until the Monolith of the Games spawns!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 16 /* WorldBroadcast */, 300, 1, NULL, 'There is 15 minutes remaining until the Monolith of the Games spawns!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 16 /* WorldBroadcast */, 300, 1, NULL, 'There is 10 minutes remaining until the Monolith of the Games spawns!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 16 /* WorldBroadcast */, 300, 1, NULL, 'There is 5 minutes remaining until the Monolith of the Games spawns!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 5, 23 /* StartEvent */, 300, 1, NULL, 'SpawnCragstoneBoss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

