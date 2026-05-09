DELETE FROM `weenie` WHERE `class_Id` = 802891;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802891, 'DillonVanBagman', 12, '2022-07-08 05:22:46') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802891,   1,         16) /* ItemType - Creature */
     , (802891,   2,         31) /* CreatureType - Human */
     , (802891,   6,        255) /* ItemsCapacity */
     , (802891,   7,        255) /* ContainersCapacity */
     , (802891,  16,         32) /* ItemUseable - Remote */
     , (802891,  25,        275) /* Level */
     , (802891,  74,          0) /* MerchandiseItemTypes - None */
     , (802891,  75,          0) /* MerchandiseMinValue */
     , (802891,  76,     100000) /* MerchandiseMaxValue */
     , (802891,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (802891, 113,          1) /* Gender - Male */
     , (802891, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802891, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802891, 188,          2) /* HeritageGroup */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802891,   1, True ) /* Stuck */
     , (802891,  11, True ) /* IgnoreCollisions */
     , (802891,  12, True ) /* ReportCollisions */
     , (802891,  13, False) /* Ethereal */
     , (802891,  14, True ) /* GravityStatus */
     , (802891,  19, False) /* Attackable */
     , (802891,  39, True ) /* DealMagicalItems */
     , (802891,  41, True ) /* ReportCollisionsAsEnvironment */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802891,  37,       1) /* BuyPrice */
     , (802891,  38,       1) /* SellPrice */
     , (802891,  39,       1) /* DefaultScale */
     , (802891,  54,       3) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802891,   1, 'Derpy van Bagman') /* Name */
     , (802891,   5, 'Embroidery Specialist') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802891,   1, 0x02000001) /* Setup */
     , (802891,   2, 0x09000001) /* MotionTable */
     , (802891,   3, 0x20000001) /* SoundTable */
     , (802891,   6, 0x0400007E) /* PaletteBase */
     , (802891,   8, 0x06001036) /* Icon */
     , (802891,   9, 0x0500112F) /* EyesTexture */
     , (802891,  10, 0x05001159) /* NoseTexture */
     , (802891,  11, 0x050011E4) /* MouthTexture */
     , (802891,  15, 0x04001FC0) /* HairPalette */
     , (802891,  16, 0x040004B1) /* EyesPalette */
     , (802891,  17, 0x040002B6) /* SkinPalette */
     , (802891,  18, 0x01004813) /* HeadObject */
     , (802891,  57,      20630) /* AlternateCurrency */;

INSERT INTO `weenie_properties_i_i_d` (`object_Id`, `type`, `value`)
VALUES (802891,  16, 0x77FF102B) /* ActivationTarget */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802891,   1, 260, 0, 0) /* Strength */
     , (802891,   2, 290, 0, 0) /* Endurance */
     , (802891,   3, 200, 0, 0) /* Quickness */
     , (802891,   4, 290, 0, 0) /* Coordination */
     , (802891,   5, 290, 0, 0) /* Focus */
     , (802891,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802891,   1,    10, 0, 0,  495) /* MaxHealth */
     , (802891,   3,    10, 0, 0,  790) /* MaxStamina */
     , (802891,   5,    10, 0, 0,  700) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802891, 2 /* Vendor */, 0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Hello, I am Derpy, visiting from Derp Tide. Try out my sack markers.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802891, 2 /* Vendor */, 0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'Thank you for letting me help personalize your sack.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802891, 2 /* Vendor */, 0.8, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 10 /* Tell */, 0, 1, NULL, 'You should be able to locate your sack much easier now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802891, 2,  6046,  0,20,0.54545456, False) /* Create Jollium Gloves (124849) for Wield */
     , (802891, 2,  6047,  0, 9,0.54545456, False) /* Create Jollium Gloves (124849) for Wield */
     , (802891, 2,    77,  0,20, 0.25, False) /* Create Jollium Gloves (124849) for Wield */
     , (802891, 2,124849,  0,20, 0.55, False) /* Create Jollium Gloves (124849) for Wield */
     , (802891, 2,124848,  0,20, 0.55, False) /* Create Jollium Gloves (124849) for Wield */
     , (802891, 2, 32754,  0,20, 0.55, False) /* Create Jollium Gloves (124849) for Wield */
     , (802891, 4,420140,  0,39,    1, False) /* Create Jollium Gloves (124849) for Wield */
     , (802891, 4,420141,  0,39,    1, False) /* Create Jollium Gloves (124849) for Wield */
     , (802891, 4,420142,  0,39,    1, False) /* Create Jollium Gloves (124849) for Wield */
     , (802891, 4,420143,  0,39,    1, False) /* Create Jollium Gloves (124849) for Wield */
     , (802891, 4,420144,  0,39,    1, False) /* Create Jollium Gloves (124849) for Wield */
     , (802891, 4,420145,  0,39,    1, False) /* Create Jollium Gloves (124849) for Wield */
     , (802891, 4,420146,  0,39,    1, False) /* Create Jollium Gloves (124849) for Wield */
     , (802891, 4,420147,  0,39,    1, False) /* Create Jollium Gloves (124849) for Wield */
     , (802891, 4,420148,  0,39,    1, False) /* Create Jollium Gloves (124849) for Wield */;

