DELETE FROM `weenie` WHERE `class_Id` = 803032;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803032, 'Little Fallun', 10, '2023-10-28 09:29:48') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803032,   1,         16) /* ItemType - Creature */
     , (803032,   2,         31) /* CreatureType - Human */
     , (803032,   6,         -1) /* ItemsCapacity */
     , (803032,   7,         -1) /* ContainersCapacity */
     , (803032,  16,         32) /* ItemUseable - Remote */
     , (803032,  25,        275) /* Level */
     , (803032,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (803032,  95,          8) /* RadarBlipColor - Yellow */
     , (803032, 113,          1) /* Gender - Male */
     , (803032, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803032, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803032, 188,          3) /* HeritageGroup - Sho */
     , (803032, 307,          5) /* DamageRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803032,   1, True ) /* Stuck */
     , (803032,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803032,  39,     0.7) /* DefaultScale */
     , (803032,  54,       3) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803032,   1, 'Little Fallun') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803032,   1, 0x0200004E) /* Setup */
     , (803032,   2, 0x09000001) /* MotionTable */
     , (803032,   3, 0x20000002) /* SoundTable */
     , (803032,   6, 0x0400007E) /* PaletteBase */
     , (803032,   8, 0x06001036) /* Icon */
     , (803032,   9, 0x05001065) /* EyesTexture */
     , (803032,  10, 0x05001080) /* NoseTexture */
     , (803032,  11, 0x050010B0) /* MouthTexture */
     , (803032,  15, 0x04002016) /* HairPalette */
     , (803032,  16, 0x040004AF) /* EyesPalette */
     , (803032,  17, 0x0400049D) /* SkinPalette */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803032,   1, 290, 0, 0) /* Strength */
     , (803032,   2, 260, 0, 0) /* Endurance */
     , (803032,   3, 290, 0, 0) /* Quickness */
     , (803032,   4, 290, 0, 0) /* Coordination */
     , (803032,   5, 200, 0, 0) /* Focus */
     , (803032,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803032,   1,   196, 0, 0,  326) /* MaxHealth */
     , (803032,   3,   196, 0, 0,  456) /* MaxStamina */
     , (803032,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803032, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Why are you picking on me?? I didn''t do nothin'' wrong!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 5 /* Motion */, 0, 1, 0x1300007F /* Cry */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803032, 2,  2587,  0,14,    1, False) /* Create Shirt (2587) for Wield */
     , (803032, 2,  2601,  0,14,    1, False) /* Create Pants (2601) for Wield */;

