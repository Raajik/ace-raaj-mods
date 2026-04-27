-- Lorewalker Zahir Scavenger Hunt Turn-In NPC
-- WCID 850016
-- Simple human creature NPC used by the WorldEvents Scavenger Hunt system.
-- The mod spawns this dynamically and handles all player interaction via code.

-- Clean up any existing entries for this WCID
DELETE FROM `weenie_properties_create_list` WHERE `object_Id` = 850016;
DELETE FROM `weenie_properties_emote_action` WHERE `emote_Id` IN (SELECT `id` FROM `weenie_properties_emote` WHERE `object_Id` = 850016);
DELETE FROM `weenie_properties_emote` WHERE `object_Id` = 850016;
DELETE FROM `weenie_properties_skill` WHERE `object_Id` = 850016;
DELETE FROM `weenie_properties_body_part` WHERE `object_Id` = 850016;
DELETE FROM `weenie_properties_attribute_2nd` WHERE `object_Id` = 850016;
DELETE FROM `weenie_properties_attribute` WHERE `object_Id` = 850016;
DELETE FROM `weenie_properties_d_i_d` WHERE `object_Id` = 850016;
DELETE FROM `weenie_properties_string` WHERE `object_Id` = 850016;
DELETE FROM `weenie_properties_bool` WHERE `object_Id` = 850016;
DELETE FROM `weenie_properties_float` WHERE `object_Id` = 850016;
DELETE FROM `weenie_properties_int` WHERE `object_Id` = 850016;
DELETE FROM `weenie` WHERE `class_Id` = 850016;

-- Base weenie entry
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`) VALUES
(850016, 'lorewalkerzahirscavenger', 10, NOW());

-- Integer properties
INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`) VALUES
(850016,   1,         16) /* ItemType - Creature */,
(850016,   2,         31) /* CreatureType - Human */,
(850016,   6,         -1) /* ItemsCapacity */,
(850016,   7,         -1) /* ContainersCapacity */,
(850016,  16,         32) /* ItemUseable - Remote */,
(850016,  25,        100) /* Level */,
(850016,  93,    6292504) /* PhysicsState */,
(850016,  95,          8) /* RadarBlipColor - Yellow */,
(850016, 113,          1) /* Gender - Male */,
(850016, 133,          4) /* ShowableOnRadar - ShowAlways */,
(850016, 134,         16) /* PlayerKillerStatus - RubberGlue */;

-- Boolean properties
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`) VALUES
(850016,   1, True ) /* Stuck */,
(850016,  19, False) /* Attackable */;

-- Float properties
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`) VALUES
(850016,  54,       3) /* UseRadius */;

-- String properties
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`) VALUES
(850016,   1, 'Lorewalker Zahir') /* Name */;

-- DID properties
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`) VALUES
(850016,   1, 0x02000001) /* Setup */,
(850016,   2, 0x09000001) /* MotionTable */,
(850016,   3, 0x20000001) /* SoundTable */,
(850016,   6, 0x0400007E) /* PaletteBase */,
(850016,   8, 0x06001036) /* Icon */;

-- Attribute properties
INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`) VALUES
(850016,   1, 200, 0, 0) /* Strength */,
(850016,   2, 200, 0, 0) /* Endurance */,
(850016,   3, 200, 0, 0) /* Quickness */,
(850016,   4, 200, 0, 0) /* Coordination */,
(850016,   5, 200, 0, 0) /* Focus */,
(850016,   6, 200, 0, 0) /* Self */;

-- Secondary attribute (vitals) properties
INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`) VALUES
(850016,   1,     0, 0, 0,  100) /* MaxHealth */,
(850016,   3,     0, 0, 0,  100) /* MaxStamina */,
(850016,   5,     0, 0, 0,  100) /* MaxMana */;
