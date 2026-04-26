DELETE FROM `weenie` WHERE `class_Id` = 803255;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803255, 'Drakin Forge', 12, '2005-02-09 10:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803255,   1,         16) /* ItemType - Creature */
     , (803255,   2,         38) /* CreatureType - Human */
     , (803255,   6,         -1) /* ItemsCapacity */
     , (803255,   7,         -1) /* ContainersCapacity */
     , (803255,   8,        120) /* Mass */
     , (803255,  16,         32) /* ItemUseable - Remote */
     , (803255,  25,       5000) /* Level */
     , (803255,  27,          0) /* ArmorType - None */
     , (803255,  74,    4481568) /* MerchandiseItemTypes - VendorGrocer */
     , (803255,  75,          0) /* MerchandiseMinValue */
     , (803255,  76,    1000000) /* MerchandiseMaxValue */
     , (803255,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (803255, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803255, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803255, 146,         20) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803255,   1, True ) /* Stuck */
     , (803255,  12, True ) /* ReportCollisions */
     , (803255,  13, False) /* Ethereal */
     , (803255,  19, False) /* Attackable */
     , (803255,  39, True ) /* DealMagicalItems */
     , (803255,  41, True ) /* ReportCollisionsAsEnvironment */
     , (803255,  52, True ) /* AiImmobile */
     , (803255,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (803255,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803255,   1,       5) /* HeartbeatInterval */
     , (803255,   2,       0) /* HeartbeatTimestamp */
     , (803255,   3,    0.16) /* HealthRate */
     , (803255,   4,       5) /* StaminaRate */
     , (803255,   5,       1) /* ManaRate */
     , (803255,  11,     300) /* ResetInterval */
     , (803255,  13,     0.9) /* ArmorModVsSlash */
     , (803255,  14,       1) /* ArmorModVsPierce */
     , (803255,  15,     1.1) /* ArmorModVsBludgeon */
     , (803255,  16,     0.4) /* ArmorModVsCold */
     , (803255,  17,     0.4) /* ArmorModVsFire */
     , (803255,  18,       1) /* ArmorModVsAcid */
     , (803255,  19,     0.6) /* ArmorModVsElectric */
     , (803255,  37,     0.9) /* BuyPrice */
     , (803255,  38,       1) /* SellPrice */
     , (803255,  54,       3) /* UseRadius */
     , (803255,  64,       1) /* ResistSlash */
     , (803255,  65,       1) /* ResistPierce */
     , (803255,  66,       1) /* ResistBludgeon */
     , (803255,  67,       1) /* ResistFire */
     , (803255,  68,       1) /* ResistCold */
     , (803255,  69,       1) /* ResistAcid */
     , (803255,  70,       1) /* ResistElectric */
     , (803255,  71,       1) /* ResistHealthBoost */
     , (803255,  72,       1) /* ResistStaminaDrain */
     , (803255,  73,       1) /* ResistStaminaBoost */
     , (803255,  74,       1) /* ResistManaDrain */
     , (803255,  75,       1) /* ResistManaBoost */
     , (803255, 104,      10) /* ObviousRadarRange */
     , (803255, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803255,   1, 'Drakin Forge') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803255,   1,   33559115) /* Setup */
     /* , (803255,   2,  150995147) /* MotionTable */
     , (803255,   3,  536870932) /* SoundTable */
     , (803255,   4,  805306398) /* CombatTable */
     , (803255,   8,  100677341) /* Icon */
     , (803255,  22,  872415274) /* PhysicsEffectTable */
     , (803255,  57,     803254) /* AlternateCurrency - AshCoin */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803255,   1,  20, 0, 0) /* Strength */
     , (803255,   2,  25, 0, 0) /* Endurance */
     , (803255,   3,  45, 0, 0) /* Quickness */
     , (803255,   4,  35, 0, 0) /* Coordination */
     , (803255,   5,  35, 0, 0) /* Focus */
     , (803255,   6,  25, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803255,   1,    25, 0, 0, 38) /* MaxHealth */
     , (803255,   3,    50, 0, 0, 75) /* MaxStamina */
     , (803255,   5,    20, 0, 0, 45) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803255,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'The Drakin Forge crackles.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803255,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'You forge an item in the Drakin Forge.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803255, 4, 803249,  0, 0, 1, False) /* Create Drakin Forge Hammer for Wield */
     , (803255, 4, 803250,  0, 0, 1, False) /* Create Drakin Forge Whittling Knife for Wield */
     , (803255, 4, 803251,  0, 0, 1, False) /* Create Drakin Forge Weapon Hammer for Wield */
     , (803255, 4, 803253,  0, 0, 1, False) /* Create Drakin Forge Orb for Wield */;
