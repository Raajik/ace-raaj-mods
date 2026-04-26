DELETE FROM `weenie` WHERE `class_Id` = 800389;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800389, 'Round One', 10, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800389,   1,         16) /* ItemType - Creature */
     , (800389,   2,         63) /* CreatureType - Statue */
     , (800389,   6,         -1) /* ItemsCapacity */
     , (800389,   7,         -1) /* ContainersCapacity */
     , (800389,   8,        120) /* Mass */
     , (800389,  16,         32) /* ItemUseable - Remote */
     , (800389,  25,        999) /* Level */
     , (800389,  27,          0) /* ArmorType - None */
     , (800389,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (800389,  95,          3) /* RadarBlipColor - White */
     , (800389, 133,          0) /* ShowableOnRadar - Undefined */
     , (800389, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800389, 146,          1) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800389,   1, True ) /* Stuck */
     , (800389,   8, False ) /* AllowGive */
     , (800389,  12, True ) /* ReportCollisions */
     , (800389,  13, False) /* Ethereal */
     , (800389,  19, False) /* Attackable */
     , (800389,  41, True ) /* ReportCollisionsAsEnvironment */
     , (800389,  42, True ) /* AllowEdgeSlide */
     , (800389,  52, True ) /* AiImmobile */
     , (800389,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (800389,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800389,   1,       5) /* HeartbeatInterval */
     , (800389,   2,       0) /* HeartbeatTimestamp */
     , (800389,   3,     1.1) /* HealthRate */
     , (800389,   4,     0.5) /* StaminaRate */
     , (800389,   5,       2) /* ManaRate */
     , (800389,  13,    0.79) /* ArmorModVsSlash */
     , (800389,  14,    0.79) /* ArmorModVsPierce */
     , (800389,  15,     0.8) /* ArmorModVsBludgeon */
     , (800389,  16,       1) /* ArmorModVsCold */
     , (800389,  17,       1) /* ArmorModVsFire */
     , (800389,  18,       1) /* ArmorModVsAcid */
     , (800389,  19,       1) /* ArmorModVsElectric */
     , (800389,  39,     1.2) /* DefaultScale */
     , (800389,  54,       3) /* UseRadius */
     , (800389,  64,       1) /* ResistSlash */
     , (800389,  65,       1) /* ResistPierce */
     , (800389,  66,       1) /* ResistBludgeon */
     , (800389,  67,       1) /* ResistFire */
     , (800389,  68,       1) /* ResistCold */
     , (800389,  69,       1) /* ResistAcid */
     , (800389,  70,       1) /* ResistElectric */
     , (800389,  71,       1) /* ResistHealthBoost */
     , (800389,  72,       1) /* ResistStaminaDrain */
     , (800389,  73,       1) /* ResistStaminaBoost */
     , (800389,  74,       1) /* ResistManaDrain */
     , (800389,  75,       1) /* ResistManaBoost */
     , (800389, 104,      10) /* ObviousRadarRange */
     , (800389, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800389,   1, 'Round One: Murph the Destroyer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800389,   1,   33557925) /* Setup */
     , (800389,   2,  150995147) /* MotionTable */
     , (800389,   3,  536871052) /* SoundTable */
     , (800389,   4,  805306398) /* CombatTable */
     , (800389,   8,  100673507) /* Icon */
     , (800389,  22,  872415274) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800389,   1, 380, 0, 0) /* Strength */
     , (800389,   2, 340, 0, 0) /* Endurance */
     , (800389,   3, 250, 0, 0) /* Quickness */
     , (800389,   4, 330, 0, 0) /* Coordination */
     , (800389,   5, 250, 0, 0) /* Focus */
     , (800389,   6, 285, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800389,   1,   200, 0, 0, 370) /* MaxHealth */
     , (800389,   3,   151, 0, 0, 491) /* MaxStamina */
     , (800389,   5,   201, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800389, 14, 0, 3, 0, 200, 0, 1309.5332744880977) /* ArcaneLore          Specialized */
     , (800389, 16, 0, 3, 0, 200, 0, 1309.5332744880977) /* ManaConversion      Specialized */
     , (800389, 22, 0, 3, 0, 200, 0, 1309.5332744880977) /* Jump                Specialized */
     , (800389, 24, 0, 3, 0, 200, 0, 1309.5332744880977) /* Run                 Specialized */
     , (800389, 31, 0, 3, 0, 900, 0, 1309.5332744880977) /* CreatureEnchantment Specialized */
     , (800389, 33, 0, 3, 0, 900, 0, 1309.5332744880977) /* LifeMagic           Specialized */
     , (800389, 34, 0, 3, 0, 900, 0, 1309.5332744880977) /* WarMagic            Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800389,  0,  4,  0,    0,  200,  158,  158,  160,  200,  200,  200,  200,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800389,  1,  4,  0,    0,  200,  158,  158,  160,  200,  200,  200,  200,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800389,  2,  4,  0,    0,  200,  158,  158,  160,  200,  200,  200,  200,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800389,  3,  4,  0,    0,  200,  158,  158,  160,  200,  200,  200,  200,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800389,  4,  4,  0,    0,  200,  158,  158,  160,  200,  200,  200,  200,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800389,  5,  4, 90, 0.75,  200,  158,  158,  160,  200,  200,  200,  200,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800389,  6,  4,  0,    0,  200,  158,  158,  160,  200,  200,  200,  200,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800389,  7,  4,  0,    0,  200,  158,  158,  160,  200,  200,  200,  200,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800389,  8,  4, 90, 0.75,  200,  158,  158,  160,  200,  200,  200,  200,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800389,  7 /* Use */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  1,  72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800232, 1, 800244, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) /* Generate Master of Wind (87753) (x1 up to max of 1) - Regenerate upon Death - Location to (re)Generate: Scatter */;
