-- Pathwarden Vendor 2: Thornwick Supply Cache
-- WCID 850301
-- Location: Town Network 0x00070114

DELETE FROM `weenie_properties_create_list` WHERE `object_Id` = 850301;
DELETE FROM `weenie_properties_emote_action` WHERE `emote_Id` IN (SELECT `id` FROM `weenie_properties_emote` WHERE `object_Id` = 850301);
DELETE FROM `weenie_properties_emote` WHERE `object_Id` = 850301;
DELETE FROM `weenie_properties_skill` WHERE `object_Id` = 850301;
DELETE FROM `weenie_properties_body_part` WHERE `object_Id` = 850301;
DELETE FROM `weenie_properties_attribute_2nd` WHERE `object_Id` = 850301;
DELETE FROM `weenie_properties_attribute` WHERE `object_Id` = 850301;
DELETE FROM `weenie_properties_d_i_d` WHERE `object_Id` = 850301;
DELETE FROM `weenie_properties_string` WHERE `object_Id` = 850301;
DELETE FROM `weenie_properties_bool` WHERE `object_Id` = 850301;
DELETE FROM `weenie_properties_float` WHERE `object_Id` = 850301;
DELETE FROM `weenie_properties_int` WHERE `object_Id` = 850301;
DELETE FROM `weenie` WHERE `class_Id` = 850301;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850301, 'thornwicksupplycache', 12, NOW()) /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850301,   1,         16) /* ItemType - Creature */
     , (850301,   2,         31) /* CreatureType - Human */
     , (850301,   6,         -1) /* ItemsCapacity */
     , (850301,   7,         -1) /* ContainersCapacity */
     , (850301,  16,         32) /* ItemUseable - Remote */
     , (850301,  25,        250) /* Level */
     , (850301,  27,          0) /* ArmorType - None */
     , (850301,  74,          0) /* MerchandiseItemTypes - None */
     , (850301,  75,          0) /* MerchandiseMinValue */
     , (850301,  76,     100000) /* MerchandiseMaxValue */
     , (850301,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (850301, 113,          1) /* Gender - Male */
     , (850301, 126,        125) /* VendorHappyMean */
     , (850301, 127,        125) /* VendorHappyVariance */
     , (850301, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (850301, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850301,   1, True ) /* Stuck */
     , (850301,  19, False) /* Attackable */
     , (850301,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850301,   1,       5) /* HeartbeatInterval */
     , (850301,   2,       0) /* HeartbeatTimestamp */
     , (850301,   3,    0.16) /* HealthRate */
     , (850301,   4,       5) /* StaminaRate */
     , (850301,   5,       1) /* ManaRate */
     , (850301,  11,     300) /* ResetInterval */
     , (850301,  13,     0.9) /* ArmorModVsSlash */
     , (850301,  14,       1) /* ArmorModVsPierce */
     , (850301,  15,     1.1) /* ArmorModVsBludgeon */
     , (850301,  16,     0.4) /* ArmorModVsCold */
     , (850301,  17,     0.4) /* ArmorModVsFire */
     , (850301,  18,       1) /* ArmorModVsAcid */
     , (850301,  19,     0.6) /* ArmorModVsElectric */
     , (850301,  37,       1) /* BuyPrice */
     , (850301,  38,       1) /* SellPrice */
     , (850301,  54,       3) /* UseRadius */
     , (850301,  64,       1) /* ResistSlash */
     , (850301,  65,       1) /* ResistPierce */
     , (850301,  66,       1) /* ResistBludgeon */
     , (850301,  67,       1) /* ResistFire */
     , (850301,  68,       1) /* ResistCold */
     , (850301,  69,       1) /* ResistAcid */
     , (850301,  70,       1) /* ResistElectric */
     , (850301,  71,       1) /* ResistHealthBoost */
     , (850301,  72,       1) /* ResistStaminaDrain */
     , (850301,  73,       1) /* ResistStaminaBoost */
     , (850301,  74,       1) /* ResistManaDrain */
     , (850301,  75,       1) /* ResistManaBoost */
     , (850301, 104,      10) /* ObviousRadarRange */
     , (850301, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850301,   1, 'Thornwick') /* Name */
     , (850301,   5, 'Supply Cache') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850301,   1,   33554510) /* Setup - Female */
     , (850301,   2,  150994945) /* MotionTable */
     , (850301,   3,  536870913) /* SoundTable */
     , (850301,   6,   67108990) /* PaletteBase */
     , (850301,   8,  100667446) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850301,   1, 220, 0, 0) /* Strength */
     , (850301,   2, 270, 0, 0) /* Endurance */
     , (850301,   3, 200, 0, 0) /* Quickness */
     , (850301,   4, 200, 0, 0) /* Coordination */
     , (850301,   5, 290, 0, 0) /* Focus */
     , (850301,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850301,   1,   196, 0, 0, 331) /* MaxHealth */
     , (850301,   3,   196, 0, 0, 466) /* MaxStamina */
     , (850301,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850301,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Greetings! I am Thornwick, keeper of supplies for new Pathwardens. My cache refreshes when the world events shift - best to buy quickly before someone else snatches the good stuff!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850301,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Safe travels, friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Inventory: Same 44 items with shuffled/randomized prices
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES
-- Academy Weapons (26 items) - different prices
 (850301, 4, 12750, 1, 0,  6200, False) /* Academy Dirk */
,(850301, 4, 12751, 1, 0,  5800, False) /* Academy Battle Axe */
,(850301, 4, 12753, 1, 0,  7200, False) /* Academy Cestus */
,(850301, 4, 12755, 1, 0,  5400, False) /* Academy Mace */
,(850301, 4, 12756, 1, 0,  8000, False) /* Academy Trident */
,(850301, 4, 12757, 1, 0,  5600, False) /* Academy Stick */
,(850301, 4, 12758, 1, 0,  6800, False) /* Academy Ken */
,(850301, 4, 12759, 1, 0,  6400, False) /* Academy Wand */
,(850301, 4, 12752, 1, 0,  7000, False) /* Academy Atlatl */
,(850301, 4, 12754, 1, 0,  6600, False) /* Academy Shortbow */
,(850301, 4, 12760, 1, 0,  7600, False) /* Academy Light Crossbow */
,(850301, 4, 41514, 1, 0,  8800, False) /* Academy Spadone */
,(850301, 4, 45531, 1, 0,  7400, False) /* Academy Tungi */
,(850301, 4, 45532, 1, 0,  6000, False) /* Academy Hand Axe */
,(850301, 4, 45535, 1, 0,  7800, False) /* Academy Knife */
,(850301, 4, 45536, 1, 0,  5200, False) /* Academy Dagger */
,(850301, 4, 45539, 1, 0,  8200, False) /* Academy Dabus */
,(850301, 4, 45540, 1, 0,  9400, False) /* Academy Club */
,(850301, 4, 45543, 1, 0,  8600, False) /* Academy Budiaq */
,(850301, 4, 45544, 1, 0,  9000, False) /* Academy Spear */
,(850301, 4, 45547, 1, 0,  8400, False) /* Academy Bastone */
,(850301, 4, 45548, 1, 0,  9200, False) /* Academy Staff */
,(850301, 4, 45551, 1, 0,  9600, False) /* Academy Short Sword */
,(850301, 4, 45552, 1, 0, 10000, False) /* Academy Broad Sword */
,(850301, 4, 45555, 1, 0,  9800, False) /* Academy Handwraps */
,(850301, 4, 45556, 1, 0, 10200, False) /* Academy Knuckles */
-- Pathwarden Robes (4 variants)
,(850301, 4, 40439, 1, 0,  9000, False) /* Pathwarden Robe (Aluvian) */
,(850301, 4, 40440, 1, 0,  8600, False) /* Pathwarden Robe (Gharu'ndim) */
,(850301, 4, 40441, 1, 0,  8800, False) /* Pathwarden Robe (Sho) */
,(850301, 4, 40442, 1, 0,  9200, False) /* Pathwarden Robe (Viamontian) */
-- Pathwarden Armor (12 items)
,(850301, 4, 40443, 1, 0,  9400, False) /* Plate Hauberk */
,(850301, 4, 40444, 1, 0,  9600, False) /* Scale Hauberk */
,(850301, 4, 40445, 1, 0,  9800, False) /* Yoroi Hauberk */
,(850301, 4, 40446, 1, 0, 10000, False) /* Diforsa Hauberk */
,(850301, 4, 40447, 1, 0, 10200, False) /* Plate Leggings */
,(850301, 4, 40448, 1, 0, 10400, False) /* Scale Leggings */
,(850301, 4, 40449, 1, 0, 10600, False) /* Yoroi Leggings */
,(850301, 4, 40450, 1, 0, 10800, False) /* Diforsa Leggings */
,(850301, 4, 40451, 1, 0, 11000, False) /* Sollerets */
,(850301, 4, 40452, 1, 0, 11200, False) /* Gauntlets */
,(850301, 4, 40453, 1, 0, 11400, False) /* Helm */
,(850301, 4, 40454, 1, 0, 11600, False) /* Pathwarden Trinket */
-- SpellSiphon Tools (2 items)
,(850301, 4, 850200, 1, 0, 10000, False) /* SpellSiphon */
,(850301, 4, 850201, 1, 0,  5000, False) /* Mana Lattice */
-- Equipped Clothing
,(850301, 2, 40439, 0, 0, 0, False) /* Wear Pathwarden Robe (Aluvian) */
,(850301, 2, 40452, 0, 0, 0, False) /* Wear Pathwarden Gauntlets */;
