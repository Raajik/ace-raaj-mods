DELETE FROM `weenie` WHERE `class_Id` = 803518;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803518, 'CastBot', 10, '2024-05-04 08:41:16') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803518,   1,         16) /* ItemType - Creature */
     , (803518,   2,         31) /* CreatureType - Human */
     , (803518,   6,         -1) /* ItemsCapacity */
     , (803518,   7,         -1) /* ContainersCapacity */
     , (803518,   8,        120) /* Mass */
     , (803518,  16,          1) /* ItemUseable - No */
     , (803518,  25,        999) /* Level */
     , (803518,  27,          0) /* ArmorType - None */
     , (803518,  93,    6292508) /* PhysicsState - Ethereal, ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (803518,  95,          8) /* RadarBlipColor - Yellow */
     , (803518, 133,          0) /* ShowableOnRadar - Undefined */
     , (803518, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803518, 146,       1894) /* XpOverride */
     , (803518, 290,          1) /* ReceiveLocalSignals */
     , (803518, 291,         40) /* ReceiveLocalSignalRange */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803518,   1, True ) /* Stuck */
     , (803518,  12, True ) /* ReportCollisions */
     , (803518,  13, True ) /* Ethereal */
     , (803518,  18, True ) /* Visibility */
     , (803518,  19, False) /* Attackable */
     , (803518,  41, True ) /* ReportCollisionsAsEnvironment */
     , (803518,  42, True ) /* AllowEdgeSlide */
     , (803518,  50, True ) /* NeverFailCasting */
     , (803518,  52, True ) /* AiImmobile */
     , (803518,  65, True ) /* IgnoreMagicResist */
     , (803518,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803518,   1,       2) /* HeartbeatInterval */
     , (803518,   2,       0) /* HeartbeatTimestamp */
     , (803518,   3,    0.16) /* HealthRate */
     , (803518,   4,       5) /* StaminaRate */
     , (803518,   5,       1) /* ManaRate */
     , (803518,  13,     0.9) /* ArmorModVsSlash */
     , (803518,  14,       1) /* ArmorModVsPierce */
     , (803518,  15,     1.1) /* ArmorModVsBludgeon */
     , (803518,  16,     0.4) /* ArmorModVsCold */
     , (803518,  17,     0.4) /* ArmorModVsFire */
     , (803518,  18,       1) /* ArmorModVsAcid */
     , (803518,  19,     0.6) /* ArmorModVsElectric */
     , (803518,  54,       3) /* UseRadius */
     , (803518,  64,       1) /* ResistSlash */
     , (803518,  65,       1) /* ResistPierce */
     , (803518,  66,       1) /* ResistBludgeon */
     , (803518,  67,       1) /* ResistFire */
     , (803518,  68,       1) /* ResistCold */
     , (803518,  69,       1) /* ResistAcid */
     , (803518,  70,       1) /* ResistElectric */
     , (803518,  71,       1) /* ResistHealthBoost */
     , (803518,  72,       1) /* ResistStaminaDrain */
     , (803518,  73,       1) /* ResistStaminaBoost */
     , (803518,  74,       1) /* ResistManaDrain */
     , (803518,  75,       1) /* ResistManaBoost */
     , (803518, 104,      10) /* ObviousRadarRange */
     , (803518, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803518,   1, 'Exalt''s Fury') /* Name */
     , (803518,   3, 'Male') /* Sex */
     , (803518,   4, 'Sho') /* HeritageGroup */
     , (803518,   5, 'Invisible Event Controller') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803518,   1, 0x02000001) /* Setup */
     , (803518,   2, 0x09000001) /* MotionTable */
     , (803518,   3, 0x20000001) /* SoundTable */
     , (803518,   4, 0x30000000) /* CombatTable */
     , (803518,   8, 0x06001036) /* Icon */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803518,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803518,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803518,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803518,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803518,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803518,  5,  4,25000, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803518,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803518,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803518,  8,  4,25000, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803518,   1,500000, 0, 0) /* Strength */
     , (803518,   2,500000, 0, 0) /* Endurance */
     , (803518,   3,500000, 0, 0) /* Quickness */
     , (803518,   4,500000, 0, 0) /* Coordination */
     , (803518,   5,5000000, 0, 0) /* Focus */
     , (803518,   6,5000000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803518,   1,3000000, 0, 0,3000000) /* MaxHealth */
     , (803518,   3,3000000, 0, 0,3000000) /* MaxStamina */
     , (803518,   5,3000000, 0, 0,3000000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803518,  6, 0, 2, 0, 800, 0,500000) /* MeleeDefense        Trained */
     , (803518,  7, 0, 2, 0, 800, 0,500000) /* MissileDefense      Trained */
     , (803518, 13, 0, 2, 0, 800, 0,500000) /* UnarmedCombat       Trained */
     , (803518, 33, 0, 3, 0, 800, 0,500000) /* LifeMagic            Specialized */
     , (803518, 34, 0, 3, 0, 800, 0,500000) /* WarMagic            Specialized */
     , (803518, 43, 0, 3, 0, 800, 0,500000) /* VoidMagic            Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803518, 37 /* ReceiveLocalSignal */, 0.1, NULL, NULL, NULL, 'UnleashFury', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3818 /* Curse of Raven Fury */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 77 /* DeleteSelf */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

