-- Pathwarden Vendor 4: Eldrin's Pathwarden Depot
-- WCID 850303
-- Location: Town Network 0x0007014B

DELETE FROM `weenie_properties_create_list` WHERE `object_Id` = 850303;
DELETE FROM `weenie_properties_emote_action` WHERE `emote_Id` IN (SELECT `id` FROM `weenie_properties_emote` WHERE `object_Id` = 850303);
DELETE FROM `weenie_properties_emote` WHERE `object_Id` = 850303;
DELETE FROM `weenie_properties_skill` WHERE `object_Id` = 850303;
DELETE FROM `weenie_properties_body_part` WHERE `object_Id` = 850303;
DELETE FROM `weenie_properties_attribute_2nd` WHERE `object_Id` = 850303;
DELETE FROM `weenie_properties_attribute` WHERE `object_Id` = 850303;
DELETE FROM `weenie_properties_d_i_d` WHERE `object_Id` = 850303;
DELETE FROM `weenie_properties_string` WHERE `object_Id` = 850303;
DELETE FROM `weenie_properties_bool` WHERE `object_Id` = 850303;
DELETE FROM `weenie_properties_float` WHERE `object_Id` = 850303;
DELETE FROM `weenie_properties_int` WHERE `object_Id` = 850303;
DELETE FROM `weenie` WHERE `class_Id` = 850303;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850303, 'eldrinsdepot', 12, NOW()) /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850303,   1,         16) /* ItemType - Creature */
     , (850303,   2,         31) /* CreatureType - Human */
     , (850303,   6,         -1) /* ItemsCapacity */
     , (850303,   7,         -1) /* ContainersCapacity */
     , (850303,  16,         32) /* ItemUseable - Remote */
     , (850303,  25,        250) /* Level */
     , (850303,  27,          0) /* ArmorType - None */
     , (850303,  74,          0) /* MerchandiseItemTypes - None */
     , (850303,  75,          0) /* MerchandiseMinValue */
     , (850303,  76,     100000) /* MerchandiseMaxValue */
     , (850303,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (850303, 113,          1) /* Gender - Male */
     , (850303, 126,        125) /* VendorHappyMean */
     , (850303, 127,        125) /* VendorHappyVariance */
     , (850303, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (850303, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850303,   1, True ) /* Stuck */
     , (850303,  19, False) /* Attackable */
     , (850303,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850303,   1,       5) /* HeartbeatInterval */
     , (850303,   2,       0) /* HeartbeatTimestamp */
     , (850303,   3,    0.16) /* HealthRate */
     , (850303,   4,       5) /* StaminaRate */
     , (850303,   5,       1) /* ManaRate */
     , (850303,  11,     300) /* ResetInterval */
     , (850303,  13,     0.9) /* ArmorModVsSlash */
     , (850303,  14,       1) /* ArmorModVsPierce */
     , (850303,  15,     1.1) /* ArmorModVsBludgeon */
     , (850303,  16,     0.4) /* ArmorModVsCold */
     , (850303,  17,     0.4) /* ArmorModVsFire */
     , (850303,  18,       1) /* ArmorModVsAcid */
     , (850303,  19,     0.6) /* ArmorModVsElectric */
     , (850303,  37,       1) /* BuyPrice */
     , (850303,  38,       1) /* SellPrice */
     , (850303,  54,       3) /* UseRadius */
     , (850303,  64,       1) /* ResistSlash */
     , (850303,  65,       1) /* ResistPierce */
     , (850303,  66,       1) /* ResistBludgeon */
     , (850303,  67,       1) /* ResistFire */
     , (850303,  68,       1) /* ResistCold */
     , (850303,  69,       1) /* ResistAcid */
     , (850303,  70,       1) /* ResistElectric */
     , (850303,  71,       1) /* ResistHealthBoost */
     , (850303,  72,       1) /* ResistStaminaDrain */
     , (850303,  73,       1) /* ResistStaminaBoost */
     , (850303,  74,       1) /* ResistManaDrain */
     , (850303,  75,       1) /* ResistManaBoost */
     , (850303, 104,      10) /* ObviousRadarRange */
     , (850303, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850303,   1, 'Eldrin') /* Name */
     , (850303,   5, 'Pathwarden Depot') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850303,   1,   33554433) /* Setup - Male */
     , (850303,   2,  150994945) /* MotionTable */
     , (850303,   3,  536870913) /* SoundTable */
     , (850303,   6,   67108990) /* PaletteBase */
     , (850303,   8,  100667446) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850303,   1, 220, 0, 0) /* Strength */
     , (850303,   2, 270, 0, 0) /* Endurance */
     , (850303,   3, 200, 0, 0) /* Quickness */
     , (850303,   4, 200, 0, 0) /* Coordination */
     , (850303,   5, 290, 0, 0) /* Focus */
     , (850303,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850303,   1,   196, 0, 0, 331) /* MaxHealth */
     , (850303,   3,   196, 0, 0, 466) /* MaxStamina */
     , (850303,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850303,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Ah, a fellow traveler seeking the Pathwarden''s bounty! Eldrin at your service. My depot restocks whenever the world stirs with new events - buy now or risk missing out on quality gear.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850303,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Until our paths cross again!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Inventory: Same 44 items with different prices
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES
-- Academy Weapons (26 items)
 (850303, 4, 12750, 1, 0,  7600, False) /* Academy Dirk */
,(850303, 4, 12751, 1, 0,  6800, False) /* Academy Battle Axe */
,(850303, 4, 12753, 1, 0,  7200, False) /* Academy Cestus */
,(850303, 4, 12755, 1, 0,  6000, False) /* Academy Mace */
,(850303, 4, 12756, 1, 0,  8800, False) /* Academy Trident */
,(850303, 4, 12757, 1, 0,  5200, False) /* Academy Stick */
,(850303, 4, 12758, 1, 0,  5800, False) /* Academy Ken */
,(850303, 4, 12759, 1, 0,  6200, False) /* Academy Wand */
,(850303, 4, 12752, 1, 0,  8400, False) /* Academy Atlatl */
,(850303, 4, 12754, 1, 0,  7000, False) /* Academy Shortbow */
,(850303, 4, 12760, 1, 0,  9000, False) /* Academy Light Crossbow */
,(850303, 4, 41514, 1, 0,  8600, False) /* Academy Spadone */
,(850303, 4, 45531, 1, 0,  7800, False) /* Academy Tungi */
,(850303, 4, 45532, 1, 0,  6400, False) /* Academy Hand Axe */
,(850303, 4, 45535, 1, 0,  7400, False) /* Academy Knife */
,(850303, 4, 45536, 1, 0,  6800, False) /* Academy Dagger */
,(850303, 4, 45539, 1, 0,  8000, False) /* Academy Dabus */
,(850303, 4, 45540, 1, 0,  7200, False) /* Academy Club */
,(850303, 4, 45543, 1, 0,  8200, False) /* Academy Budiaq */
,(850303, 4, 45544, 1, 0,  8600, False) /* Academy Spear */
,(850303, 4, 45547, 1, 0,  9400, False) /* Academy Bastone */
,(850303, 4, 45548, 1, 0,  9200, False) /* Academy Staff */
,(850303, 4, 45551, 1, 0,  9800, False) /* Academy Short Sword */
,(850303, 4, 45552, 1, 0, 10000, False) /* Academy Broad Sword */
,(850303, 4, 45555, 1, 0, 10200, False) /* Academy Handwraps */
,(850303, 4, 45556, 1, 0, 10400, False) /* Academy Knuckles */
-- Pathwarden Robes (4 variants)
,(850303, 4, 40439, 1, 0,  9200, False) /* Pathwarden Robe (Aluvian) */
,(850303, 4, 40454, 1, 0,  9400, False) /* Pathwarden Robe (Gharu'ndim) */
,(850303, 4, 40455, 1, 0,  9600, False) /* Pathwarden Robe (Sho) */
,(850303, 4, 40456, 1, 0,  9800, False) /* Pathwarden Robe (Viamontian) */
-- Pathwarden Armor (12 items)
,(850303, 4, 33597, 1, 0, 10000, False) /* Pathwarden Plate Hauberk */
,(850303, 4, 33598, 1, 0, 10200, False) /* Pathwarden Scale Hauberk */
,(850303, 4, 33599, 1, 0, 10400, False) /* Pathwarden Yoroi Hauberk */
,(850303, 4, 33600, 1, 0, 10600, False) /* Pathwarden Diforsa Hauberk */
,(850303, 4, 33601, 1, 0, 10800, False) /* Pathwarden Plate Leggings */
,(850303, 4, 33602, 1, 0, 11000, False) /* Pathwarden Scale Leggings */
,(850303, 4, 33603, 1, 0, 11200, False) /* Pathwarden Yoroi Leggings */
,(850303, 4, 33604, 1, 0, 11400, False) /* Pathwarden Diforsa Leggings */
,(850303, 4, 33605, 1, 0, 11600, False) /* Pathwarden Sollerets */
,(850303, 4, 33606, 1, 0, 11800, False) /* Pathwarden Gauntlets */
,(850303, 4, 33607, 1, 0, 12000, False) /* Pathwarden Helm */
,(850303, 4, 41513, 1, 0,  5000, False) /* Pathwarden Trinket */
-- SpellSiphon Tools (2 items)
,(850303, 4, 850200, 1, 0,  8000, False) /* SpellSiphon */
,(850303, 4, 850201, 1, 0, 10000, False) /* Mana Lattice */;

-- Wielded clothing (visible on NPC)
INSERT INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond)
VALUES (850303, 2, 40456, 1, 0, 0, False);  /* Pathwarden Robe (Viamontian) - wielded */
