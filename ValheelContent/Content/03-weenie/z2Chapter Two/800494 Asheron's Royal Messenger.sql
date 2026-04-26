DELETE FROM `weenie` WHERE `class_Id` = 800494;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800494, 'Asheron''s Royal Messenger', 10, '2024-05-28 01:29:08') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800494,   1,         16) /* ItemType - Creature */
     , (800494,   2,         31) /* CreatureType - Human */
     , (800494,   6,         -1) /* ItemsCapacity */
     , (800494,   7,         -1) /* ContainersCapacity */
     , (800494,  16,         32) /* ItemUseable - Remote */
     , (800494,  25,        275) /* Level */
     , (800494,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (800494,  95,          8) /* RadarBlipColor - Yellow */
     , (800494, 113,          2) /* Gender - Female */
     , (800494, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800494, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800494, 188,          3) /* HeritageGroup - Sho */
     , (800494, 307,          5) /* DamageRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800494,   1, True ) /* Stuck */
     , (800494,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800494,  54,       3) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800494,   1, 'Asheron''s Royal Messenger') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800494,   1, 0x0200004E) /* Setup */
     , (800494,   2, 0x09000001) /* MotionTable */
     , (800494,   3, 0x20000002) /* SoundTable */
     , (800494,   6, 0x0400007E) /* PaletteBase */
     , (800494,   8, 0x06001036) /* Icon */
     , (800494,   9, 0x05001065) /* EyesTexture */
     , (800494,  10, 0x05001080) /* NoseTexture */
     , (800494,  11, 0x050010B0) /* MouthTexture */
     , (800494,  15, 0x04002016) /* HairPalette */
     , (800494,  16, 0x040004AF) /* EyesPalette */
     , (800494,  17, 0x0400049D) /* SkinPalette */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800494,   1, 290, 0, 0) /* Strength */
     , (800494,   2, 260, 0, 0) /* Endurance */
     , (800494,   3, 290, 0, 0) /* Quickness */
     , (800494,   4, 290, 0, 0) /* Coordination */
     , (800494,   5, 200, 0, 0) /* Focus */
     , (800494,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800494,   1,   196, 0, 0,  326) /* MaxHealth */
     , (800494,   3,   196, 0, 0,  456) /* MaxStamina */
     , (800494,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800494, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 21 /* InqQuest */, 0, 1, NULL, 'DerethsLightOrdersGiven', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800494, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'DerethsLightOrdersGiven', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'There is nothing more I can help you with.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800494, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'DerethsLightOrdersGiven', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 5 /* Motion */, 0, 1, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 12 /* TurnToTarget */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 10 /* Tell */, 1, 1, NULL, 'The next step in our plan is under way. We need this message to get to Commander Forestor. He is in the Northwest mountains of Mayoi located at 59.3S, 80.5E.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 3 /* Give */, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 800399, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 22 /* StampQuest */, 0, 1, NULL, 'DerethsLightOrdersGiven', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800494, 2,   130,  0,14,  0.5, False) /* Create Shirt (130) for Wield */
     , (800494, 2,   127,  0,14,0.4909, False) /* Create Pants (127) for Wield */
     , (800494, 2, 21150,  0,93,    0, False) /* Create Covenant Sollerets (21150) for Wield */
     , (800494, 2, 21151,  0,93,    0, False) /* Create Covenant Bracers (21151) for Wield */
     , (800494, 2, 21152,  0,93,    0, False) /* Create Covenant Breastplate (21152) for Wield */
     , (800494, 2, 21153,  0,93,    0, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (800494, 2, 21154,  0,93,    0, False) /* Create Covenant Girth (21154) for Wield */
     , (800494, 2, 21155,  0,93,    0, False) /* Create Covenant Greaves (21155) for Wield */
     , (800494, 2, 21156,  0,93,    0, False) /* Create Covenant Helm (21156) for Wield */
     , (800494, 2, 21157,  0,93,    0, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (800494, 2, 21159,  0,93,    0, False) /* Create Covenant Tassets (21159) for Wield */
     , (800494, 2, 71356,  0, 0,    0, False) /* Create Royal Knight Cloak (71356) for Wield */;

