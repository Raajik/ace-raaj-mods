DELETE FROM `weenie` WHERE `class_Id` = 803643;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803643, 'Memorial Guard', 10, '2024-05-27 10:46:30') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803643,   1,         16) /* ItemType - Creature */
     , (803643,   2,         31) /* CreatureType - Human */
     , (803643,   6,         -1) /* ItemsCapacity */
     , (803643,   7,         -1) /* ContainersCapacity */
     , (803643,  16,         32) /* ItemUseable - Remote */
     , (803643,  25,        275) /* Level */
     , (803643,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (803643,  95,          8) /* RadarBlipColor - Yellow */
     , (803643, 113,          2) /* Gender - Female */
     , (803643, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803643, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803643, 188,          3) /* HeritageGroup - Sho */
     , (803643, 307,          5) /* DamageRating */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803643,   1, True ) /* Stuck */
     , (803643,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803643,  54,       3) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803643,   1, 'Memorial Guard') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803643,   1, 0x0200004E) /* Setup */
     , (803643,   2, 0x09000001) /* MotionTable */
     , (803643,   3, 0x20000002) /* SoundTable */
     , (803643,   6, 0x0400007E) /* PaletteBase */
     , (803643,   8, 0x06001036) /* Icon */
     , (803643,   9, 0x05001065) /* EyesTexture */
     , (803643,  10, 0x05001080) /* NoseTexture */
     , (803643,  11, 0x050010B0) /* MouthTexture */
     , (803643,  15, 0x04002016) /* HairPalette */
     , (803643,  16, 0x040004AF) /* EyesPalette */
     , (803643,  17, 0x0400049D) /* SkinPalette */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803643,   1, 290, 0, 0) /* Strength */
     , (803643,   2, 260, 0, 0) /* Endurance */
     , (803643,   3, 290, 0, 0) /* Quickness */
     , (803643,   4, 290, 0, 0) /* Coordination */
     , (803643,   5, 200, 0, 0) /* Focus */
     , (803643,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803643,   1,   196, 0, 0,  326) /* MaxHealth */
     , (803643,   3,   196, 0, 0,  456) /* MaxStamina */
     , (803643,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803643, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 5 /* Motion */, 0, 1, 0x1300008A /* Salute */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 52 /* ForceMotion */, 1, 1, 0x1300008A /* Salute */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 10 /* Tell */, 2, 1, NULL, 'It is our duty and honor to protect those who have sacrificed it all, and those who are still serving today.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 10 /* Tell */, 3, 1, NULL, 'Semper Fi, do or die.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 10 /* Tell */, 1, 1, NULL, 'Aim high... Fly-fight-win.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 5, 10 /* Tell */, 1, 1, NULL, 'De oppresso liber.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 6, 10 /* Tell */, 1, 1, NULL, 'Semper Paratus.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 7, 10 /* Tell */, 1, 1, NULL, 'Semper Supra.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803643, 2, 42717,  1, 0,    0, False) /* Create Shield of Borelean's Royal Guard (42717) for Wield */
     , (803643, 2, 24611,  1, 0,    0, False) /* Create Sword of Lost Light (24611) for Wield */
     , (803643, 2,   130,  0,14,  0.5, False) /* Create Shirt (130) for Wield */
     , (803643, 2,   127,  0,14,0.4909, False) /* Create Pants (127) for Wield */
     , (803643, 2, 21150,  0,93,    0, False) /* Create Covenant Sollerets (21150) for Wield */
     , (803643, 2, 21151,  0,93,    0, False) /* Create Covenant Bracers (21151) for Wield */
     , (803643, 2, 21152,  0,93,    0, False) /* Create Covenant Breastplate (21152) for Wield */
     , (803643, 2, 21153,  0,93,    0, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (803643, 2, 21154,  0,93,    0, False) /* Create Covenant Girth (21154) for Wield */
     , (803643, 2, 21155,  0,93,    0, False) /* Create Covenant Greaves (21155) for Wield */
     , (803643, 2, 21156,  0,93,    0, False) /* Create Covenant Helm (21156) for Wield */
     , (803643, 2, 21157,  0,93,    0, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (803643, 2, 21159,  0,93,    0, False) /* Create Covenant Tassets (21159) for Wield */
     , (803643, 2, 71356,  0, 0,    0, False) /* Create Royal Knight Cloak (71356) for Wield */;

