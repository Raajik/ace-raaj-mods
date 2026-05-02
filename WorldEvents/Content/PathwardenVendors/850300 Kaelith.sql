-- Pathwarden Vendor 1: Kaelith's Provisions
-- WCID 850300
-- Location: Town Network 0x0007013F

DELETE FROM `weenie_properties_create_list` WHERE `object_Id` = 850300;
DELETE FROM `weenie_properties_emote_action` WHERE `emote_Id` IN (SELECT `id` FROM `weenie_properties_emote` WHERE `object_Id` = 850300);
DELETE FROM `weenie_properties_emote` WHERE `object_Id` = 850300;
DELETE FROM `weenie_properties_skill` WHERE `object_Id` = 850300;
DELETE FROM `weenie_properties_body_part` WHERE `object_Id` = 850300;
DELETE FROM `weenie_properties_attribute_2nd` WHERE `object_Id` = 850300;
DELETE FROM `weenie_properties_attribute` WHERE `object_Id` = 850300;
DELETE FROM `weenie_properties_d_i_d` WHERE `object_Id` = 850300;
DELETE FROM `weenie_properties_string` WHERE `object_Id` = 850300;
DELETE FROM `weenie_properties_bool` WHERE `object_Id` = 850300;
DELETE FROM `weenie_properties_float` WHERE `object_Id` = 850300;
DELETE FROM `weenie_properties_int` WHERE `object_Id` = 850300;
DELETE FROM `weenie` WHERE `class_Id` = 850300;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850300, 'kaelithsprovisions', 12, NOW()) /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850300,   1,         16) /* ItemType - Creature */
     , (850300,   2,         31) /* CreatureType - Human */
     , (850300,   6,         -1) /* ItemsCapacity */
     , (850300,   7,         -1) /* ContainersCapacity */
     , (850300,  16,         32) /* ItemUseable - Remote */
     , (850300,  25,        250) /* Level */
     , (850300,  27,          0) /* ArmorType - None */
     , (850300,  74,          0) /* MerchandiseItemTypes - None */
     , (850300,  75,          0) /* MerchandiseMinValue */
     , (850300,  76,     100000) /* MerchandiseMaxValue */
     , (850300,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (850300, 113,          1) /* Gender - Male */
     , (850300, 126,        125) /* VendorHappyMean */
     , (850300, 127,        125) /* VendorHappyVariance */
     , (850300, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (850300, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850300,   1, True ) /* Stuck */
     , (850300,  19, False) /* Attackable */
     , (850300,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850300,   1,       5) /* HeartbeatInterval */
     , (850300,   2,       0) /* HeartbeatTimestamp */
     , (850300,   3,    0.16) /* HealthRate */
     , (850300,   4,       5) /* StaminaRate */
     , (850300,   5,       1) /* ManaRate */
     , (850300,  11,     300) /* ResetInterval */
     , (850300,  13,     0.9) /* ArmorModVsSlash */
     , (850300,  14,       1) /* ArmorModVsPierce */
     , (850300,  15,     1.1) /* ArmorModVsBludgeon */
     , (850300,  16,     0.4) /* ArmorModVsCold */
     , (850300,  17,     0.4) /* ArmorModVsFire */
     , (850300,  18,       1) /* ArmorModVsAcid */
     , (850300,  19,     0.6) /* ArmorModVsElectric */
     , (850300,  37,       1) /* BuyPrice */
     , (850300,  38,       1) /* SellPrice */
     , (850300,  54,       3) /* UseRadius */
     , (850300,  64,       1) /* ResistSlash */
     , (850300,  65,       1) /* ResistPierce */
     , (850300,  66,       1) /* ResistBludgeon */
     , (850300,  67,       1) /* ResistFire */
     , (850300,  68,       1) /* ResistCold */
     , (850300,  69,       1) /* ResistAcid */
     , (850300,  70,       1) /* ResistElectric */
     , (850300,  71,       1) /* ResistHealthBoost */
     , (850300,  72,       1) /* ResistStaminaDrain */
     , (850300,  73,       1) /* ResistStaminaBoost */
     , (850300,  74,       1) /* ResistManaDrain */
     , (850300,  75,       1) /* ResistManaBoost */
     , (850300, 104,      10) /* ObviousRadarRange */
     , (850300, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850300,   1, 'Kaelith') /* Name */
     , (850300,   5, 'Provisions') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850300,   1,   33554433) /* Setup */
     , (850300,   2,  150994945) /* MotionTable */
     , (850300,   3,  536870913) /* SoundTable */
     , (850300,   6,   67108990) /* PaletteBase */
     , (850300,   8,  100667446) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850300,   1, 220, 0, 0) /* Strength */
     , (850300,   2, 270, 0, 0) /* Endurance */
     , (850300,   3, 200, 0, 0) /* Quickness */
     , (850300,   4, 200, 0, 0) /* Coordination */
     , (850300,   5, 290, 0, 0) /* Focus */
     , (850300,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850300,   1,   196, 0, 0, 331) /* MaxHealth */
     , (850300,   3,   196, 0, 0, 466) /* MaxStamina */
     , (850300,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850300,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome, traveler. I offer the tools of the Pathwarden - weapons and armor for those beginning their journey. My stock changes with the winds of fate... or whenever the Arcanum mages decide to send more.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850300,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'May your path be guarded.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Inventory: Academy weapons (26), Pathwarden armor (16), SpellSiphon (1), Mana Lattice (1) = 44 items
-- destination_Type = 4 (Shop), stack_Size = 1 (limited quantity)
-- Prices in shade field: 5000-12000 pyreals

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES
-- Academy Weapons (26 items)
 (850300, 4, 12750, 1, 0,  5000, False) /* Academy Dirk */
,(850300, 4, 12751, 1, 0,  5200, False) /* Academy Battle Axe */
,(850300, 4, 12753, 1, 0,  5400, False) /* Academy Cestus */
,(850300, 4, 12755, 1, 0,  5600, False) /* Academy Mace */
,(850300, 4, 12756, 1, 0,  5800, False) /* Academy Trident */
,(850300, 4, 12757, 1, 0,  6000, False) /* Academy Stick */
,(850300, 4, 12758, 1, 0,  6200, False) /* Academy Ken */
,(850300, 4, 12759, 1, 0,  6400, False) /* Academy Wand */
,(850300, 4, 12752, 1, 0,  6600, False) /* Academy Atlatl */
,(850300, 4, 12754, 1, 0,  6800, False) /* Academy Shortbow */
,(850300, 4, 12760, 1, 0,  7000, False) /* Academy Light Crossbow */
,(850300, 4, 41514, 1, 0,  7200, False) /* Academy Spadone */
,(850300, 4, 45531, 1, 0,  7400, False) /* Academy Tungi */
,(850300, 4, 45532, 1, 0,  7600, False) /* Academy Hand Axe */
,(850300, 4, 45535, 1, 0,  7800, False) /* Academy Knife */
,(850300, 4, 45536, 1, 0,  8000, False) /* Academy Dagger */
,(850300, 4, 45539, 1, 0,  8200, False) /* Academy Dabus */
,(850300, 4, 45540, 1, 0,  8400, False) /* Academy Club */
,(850300, 4, 45543, 1, 0,  8600, False) /* Academy Budiaq */
,(850300, 4, 45544, 1, 0,  8800, False) /* Academy Spear */
,(850300, 4, 45547, 1, 0,  9000, False) /* Academy Bastone */
,(850300, 4, 45548, 1, 0,  9200, False) /* Academy Staff */
,(850300, 4, 45551, 1, 0,  9400, False) /* Academy Short Sword */
,(850300, 4, 45552, 1, 0,  9600, False) /* Academy Broad Sword */
,(850300, 4, 45555, 1, 0,  9800, False) /* Academy Handwraps */
,(850300, 4, 45556, 1, 0, 10000, False) /* Academy Knuckles */
-- Pathwarden Robes (4 variants)
,(850300, 4, 40439, 1, 0,  8000, False) /* Pathwarden Robe (Aluvian) */
,(850300, 4, 40440, 1, 0,  8200, False) /* Pathwarden Robe (Gharu'ndim) */
,(850300, 4, 40441, 1, 0,  8400, False) /* Pathwarden Robe (Sho) */
,(850300, 4, 40442, 1, 0,  8600, False) /* Pathwarden Robe (Viamontian) */
-- Pathwarden Armor (12 items)
,(850300, 4, 40443, 1, 0,  8800, False) /* Plate Hauberk */
,(850300, 4, 40444, 1, 0,  9000, False) /* Scale Hauberk */
,(850300, 4, 40445, 1, 0,  9200, False) /* Yoroi Hauberk */
,(850300, 4, 40446, 1, 0,  9400, False) /* Diforsa Hauberk */
,(850300, 4, 40447, 1, 0,  9600, False) /* Plate Leggings */
,(850300, 4, 40448, 1, 0,  9800, False) /* Scale Leggings */
,(850300, 4, 40449, 1, 0, 10000, False) /* Yoroi Leggings */
,(850300, 4, 40450, 1, 0, 10200, False) /* Diforsa Leggings */
,(850300, 4, 40451, 1, 0, 10400, False) /* Sollerets */
,(850300, 4, 40452, 1, 0, 10600, False) /* Gauntlets */
,(850300, 4, 40453, 1, 0, 10800, False) /* Helm */
,(850300, 4, 40454, 1, 0, 11000, False) /* Pathwarden Trinket */
-- SpellSiphon Tools (2 items)
,(850300, 4, 850200, 1, 0, 10000, False) /* SpellSiphon */
,(850300, 4, 850201, 1, 0,  5000, False) /* Mana Lattice */;

-- Wielded clothing (visible on NPC)
INSERT INTO weenie_properties_create_list (object_Id, destination_Type, weenie_Class_Id, stack_Size, palette, shade, try_To_Bond)
VALUES (850300, 2, 40439, 1, 0, 0, False);  /* Pathwarden Robe (Aluvian) - wielded */
