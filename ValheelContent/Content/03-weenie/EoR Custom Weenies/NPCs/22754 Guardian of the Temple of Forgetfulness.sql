DELETE FROM `weenie` WHERE `class_Id` = 22754;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (22754, 'guardiantempleforgetfulness', 10, '2024-05-11 05:54:02') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (22754,   1,         16) /* ItemType - Creature */
     , (22754,   2,         63) /* CreatureType - Statue */
     , (22754,   6,         -1) /* ItemsCapacity */
     , (22754,   7,         -1) /* ContainersCapacity */
     , (22754,   8,        120) /* Mass */
     , (22754,  16,         32) /* ItemUseable - Remote */
     , (22754,  25,        171) /* Level */
     , (22754,  27,          0) /* ArmorType - None */
     , (22754,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (22754,  95,          3) /* RadarBlipColor - White */
     , (22754, 133,          0) /* ShowableOnRadar - Undefined */
     , (22754, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (22754, 146,      13410) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (22754,   1, True ) /* Stuck */
     , (22754,   8, True ) /* AllowGive */
     , (22754,  12, True ) /* ReportCollisions */
     , (22754,  13, False) /* Ethereal */
     , (22754,  19, False) /* Attackable */
     , (22754,  41, True ) /* ReportCollisionsAsEnvironment */
     , (22754,  42, True ) /* AllowEdgeSlide */
     , (22754,  52, True ) /* AiImmobile */
     , (22754,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (22754,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (22754,   1,       5) /* HeartbeatInterval */
     , (22754,   2,       0) /* HeartbeatTimestamp */
     , (22754,   3,     1.1) /* HealthRate */
     , (22754,   4,     0.5) /* StaminaRate */
     , (22754,   5,       2) /* ManaRate */
     , (22754,  13,    0.79) /* ArmorModVsSlash */
     , (22754,  14,    0.79) /* ArmorModVsPierce */
     , (22754,  15,     0.8) /* ArmorModVsBludgeon */
     , (22754,  16,       1) /* ArmorModVsCold */
     , (22754,  17,       1) /* ArmorModVsFire */
     , (22754,  18,       1) /* ArmorModVsAcid */
     , (22754,  19,       1) /* ArmorModVsElectric */
     , (22754,  39,     1.5) /* DefaultScale */
     , (22754,  54,       2) /* UseRadius */
     , (22754,  64,       1) /* ResistSlash */
     , (22754,  65,       1) /* ResistPierce */
     , (22754,  66,       1) /* ResistBludgeon */
     , (22754,  67,       1) /* ResistFire */
     , (22754,  68,       1) /* ResistCold */
     , (22754,  69,       1) /* ResistAcid */
     , (22754,  70,       1) /* ResistElectric */
     , (22754,  71,       1) /* ResistHealthBoost */
     , (22754,  72,       1) /* ResistStaminaDrain */
     , (22754,  73,       1) /* ResistStaminaBoost */
     , (22754,  74,       1) /* ResistManaDrain */
     , (22754,  75,       1) /* ResistManaBoost */
     , (22754, 104,      10) /* ObviousRadarRange */
     , (22754, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (22754,   1, 'Guardian of the Temple of Forgetfulness') /* Name */
     , (22754,  15, 'A very large empyrean head. It appears to be watching you.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (22754,   1, 0x020003B1) /* Setup */
     , (22754,   2, 0x090000CB) /* MotionTable */
     , (22754,   3, 0x2000008C) /* SoundTable */
     , (22754,   4, 0x3000001E) /* CombatTable */
     , (22754,   8, 0x060010E8) /* Icon */
     , (22754,  22, 0x3400002A) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (22754,  0,  8,  3,  0.5,   20,   10,   10,   10,   10,   10,   10,   10,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (22754, 16, 64,  3,  0.5,   20,   10,   10,   10,   10,   10,   10,   10,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (22754, 17, 64,  3, 0.75,   20,   10,   10,   10,   10,   10,   10,   10,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (22754, 21, 64,  3,  0.5,   10,    5,    5,    5,    5,    5,    5,    5,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (22754,   1, 380, 0, 0) /* Strength */
     , (22754,   2, 340, 0, 0) /* Endurance */
     , (22754,   3, 250, 0, 0) /* Quickness */
     , (22754,   4, 330, 0, 0) /* Coordination */
     , (22754,   5, 250, 0, 0) /* Focus */
     , (22754,   6, 285, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (22754,   1,   200, 0, 0,  370) /* MaxHealth */
     , (22754,   3,   151, 0, 0,  491) /* MaxStamina */
     , (22754,   5,   201, 0, 0,  486) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (22754, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'You are now entering the Temple of Forgetfulness.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 19 /* CastSpellInstant */, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2940 /* Entering the Temple */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

