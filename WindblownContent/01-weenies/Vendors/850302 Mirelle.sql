-- Pathwarden Vendor 3: Mirelle's Armory
-- WCID 850302
-- Location: Town Network 0x00070178

DELETE FROM `weenie_properties_create_list` WHERE `object_Id` = 850302;
DELETE FROM `weenie_properties_emote_action` WHERE `emote_Id` IN (SELECT `id` FROM `weenie_properties_emote` WHERE `object_Id` = 850302);
DELETE FROM `weenie_properties_emote` WHERE `object_Id` = 850302;
DELETE FROM `weenie_properties_skill` WHERE `object_Id` = 850302;
DELETE FROM `weenie_properties_body_part` WHERE `object_Id` = 850302;
DELETE FROM `weenie_properties_attribute_2nd` WHERE `object_Id` = 850302;
DELETE FROM `weenie_properties_attribute` WHERE `object_Id` = 850302;
DELETE FROM `weenie_properties_d_i_d` WHERE `object_Id` = 850302;
DELETE FROM `weenie_properties_string` WHERE `object_Id` = 850302;
DELETE FROM `weenie_properties_bool` WHERE `object_Id` = 850302;
DELETE FROM `weenie_properties_float` WHERE `object_Id` = 850302;
DELETE FROM `weenie_properties_int` WHERE `object_Id` = 850302;
DELETE FROM `weenie` WHERE `class_Id` = 850302;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850302, 'mirellesarmory', 12, NOW()) /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850302,   1,         16) /* ItemType - Creature */
     , (850302,   2,         31) /* CreatureType - Human */
     , (850302,   6,         -1) /* ItemsCapacity */
     , (850302,   7,         -1) /* ContainersCapacity */
     , (850302,  16,         32) /* ItemUseable - Remote */
     , (850302,  25,        250) /* Level */
     , (850302,  27,          0) /* ArmorType - None */
     , (850302,  74,          0) /* MerchandiseItemTypes - None */
     , (850302,  75,          0) /* MerchandiseMinValue */
     , (850302,  76,     100000) /* MerchandiseMaxValue */
     , (850302,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (850302, 113,          2) /* Gender - Female */
     , (850302, 126,        125) /* VendorHappyMean */
     , (850302, 127,        125) /* VendorHappyVariance */
     , (850302, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (850302, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850302,   1, True ) /* Stuck */
     , (850302,  19, False) /* Attackable */
     , (850302,  39, True ) /* DealMagicalItems */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850302,   1,       5) /* HeartbeatInterval */
     , (850302,   2,       0) /* HeartbeatTimestamp */
     , (850302,   3,    0.16) /* HealthRate */
     , (850302,   4,       5) /* StaminaRate */
     , (850302,   5,       1) /* ManaRate */
     , (850302,  11,     300) /* ResetInterval */
     , (850302,  13,     0.9) /* ArmorModVsSlash */
     , (850302,  14,       1) /* ArmorModVsPierce */
     , (850302,  15,     1.1) /* ArmorModVsBludgeon */
     , (850302,  16,     0.4) /* ArmorModVsCold */
     , (850302,  17,     0.4) /* ArmorModVsFire */
     , (850302,  18,       1) /* ArmorModVsAcid */
     , (850302,  19,     0.6) /* ArmorModVsElectric */
     , (850302,  37,       1) /* BuyPrice */
     , (850302,  38,       1) /* SellPrice */
     , (850302,  54,       3) /* UseRadius */
     , (850302,  64,       1) /* ResistSlash */
     , (850302,  65,       1) /* ResistPierce */
     , (850302,  66,       1) /* ResistBludgeon */
     , (850302,  67,       1) /* ResistFire */
     , (850302,  68,       1) /* ResistCold */
     , (850302,  69,       1) /* ResistAcid */
     , (850302,  70,       1) /* ResistElectric */
     , (850302,  71,       1) /* ResistHealthBoost */
     , (850302,  72,       1) /* ResistStaminaDrain */
     , (850302,  73,       1) /* ResistStaminaBoost */
     , (850302,  74,       1) /* ResistManaDrain */
     , (850302,  75,       1) /* ResistManaBoost */
     , (850302, 104,      10) /* ObviousRadarRange */
     , (850302, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850302,   1, 'Mirelle') /* Name */
     , (850302,   5, 'Armory') /* Template */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850302,   1,   33554434) /* Setup - Female */
     , (850302,   2,  150994945) /* MotionTable */
     , (850302,   3,  536870913) /* SoundTable */
     , (850302,   6,   67108990) /* PaletteBase */
     , (850302,   8,  100667446) /* Icon */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (850302,   1, 220, 0, 0) /* Strength */
     , (850302,   2, 270, 0, 0) /* Endurance */
     , (850302,   3, 200, 0, 0) /* Quickness */
     , (850302,   4, 200, 0, 0) /* Coordination */
     , (850302,   5, 290, 0, 0) /* Focus */
     , (850302,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (850302,   1,   196, 0, 0, 331) /* MaxHealth */
     , (850302,   3,   196, 0, 0, 466) /* MaxStamina */
     , (850302,   5,   196, 0, 0, 486) /* MaxMana */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850302,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Welcome to my armory! I carry the finest Pathwarden gear - everything a new adventurer needs. Prices shift each time the world changes, so grab what you need before the next event!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (850302,  2 /* Vendor */,      1, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Go forth armed and protected!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Inventory: Same 44 items with different prices
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES
-- Academy Weapons (26 items)
 (850302, 4, 12750, 1, 0,  5800, False) /* Academy Dirk */
,(850302, 4, 12751, 1, 0,  7200, False) /* Academy Battle Axe */
,(850302, 4, 12753, 1, 0,  5600, False) /* Academy Cestus */
,(850302, 4, 12755, 1, 0,  6400, False) /* Academy Mace */
,(850302, 4, 12756, 1, 0,  8200, False) /* Academy Trident */
,(850302, 4, 12757, 1, 0,  5000, False) /* Academy Stick */
,(850302, 4, 12758, 1, 0,  6600, False) /* Academy Ken */
,(850302, 4, 12759, 1, 0,  6800, False) /* Academy Wand */
,(850302, 4, 12752, 1, 0,  7400, False) /* Academy Atlatl */
,(850302, 4, 12754, 1, 0,  6200, False) /* Academy Shortbow */
,(850302, 4, 12760, 1, 0,  7800, False) /* Academy Light Crossbow */
,(850302, 4, 41514, 1, 0,  9200, False) /* Academy Spadone */
,(850302, 4, 45531, 1, 0,  7000, False) /* Academy Tungi */
,(850302, 4, 45532, 1, 0,  5400, False) /* Academy Hand Axe */
,(850302, 4, 45535, 1, 0,  8000, False) /* Academy Knife */
,(850302, 4, 45536, 1, 0,  6000, False) /* Academy Dagger */
,(850302, 4, 45539, 1, 0,  8600, False) /* Academy Dabus */
,(850302, 4, 45540, 1, 0,  8800, False) /* Academy Club */
,(850302, 4, 45543, 1, 0,  9000, False) /* Academy Budiaq */
,(850302, 4, 45544, 1, 0,  7600, False) /* Academy Spear */
,(850302, 4, 45547, 1, 0,  8400, False) /* Academy Bastone */
,(850302, 4, 45548, 1, 0,  9600, False) /* Academy Staff */
,(850302, 4, 45551, 1, 0, 10000, False) /* Academy Short Sword */
,(850302, 4, 45552, 1, 0,  9400, False) /* Academy Broad Sword */
,(850302, 4, 45555, 1, 0, 10200, False) /* Academy Handwraps */
,(850302, 4, 45556, 1, 0,  9800, False) /* Academy Knuckles */
-- Pathwarden Robes (4 variants)
,(850302, 4, 40439, 1, 0,  8400, False) /* Pathwarden Robe (Aluvian) */
,(850302, 4, 40440, 1, 0,  8800, False) /* Pathwarden Robe (Gharu'ndim) */
,(850302, 4, 40441, 1, 0,  8600, False) /* Pathwarden Robe (Sho) */
,(850302, 4, 40442, 1, 0,  9000, False) /* Pathwarden Robe (Viamontian) */
-- Pathwarden Armor (12 items)
,(850302, 4, 40443, 1, 0,  9200, False) /* Plate Hauberk */
,(850302, 4, 40444, 1, 0,  9600, False) /* Scale Hauberk */
,(850302, 4, 40445, 1, 0,  9400, False) /* Yoroi Hauberk */
,(850302, 4, 40446, 1, 0,  9800, False) /* Diforsa Hauberk */
,(850302, 4, 40447, 1, 0, 10000, False) /* Plate Leggings */
,(850302, 4, 40448, 1, 0, 10400, False) /* Scale Leggings */
,(850302, 4, 40449, 1, 0, 10200, False) /* Yoroi Leggings */
,(850302, 4, 40450, 1, 0, 10600, False) /* Diforsa Leggings */
,(850302, 4, 40451, 1, 0, 10800, False) /* Sollerets */
,(850302, 4, 40452, 1, 0, 11000, False) /* Gauntlets */
,(850302, 4, 40453, 1, 0, 11200, False) /* Helm */
,(850302, 4, 40454, 1, 0, 11400, False) /* Pathwarden Trinket */
-- SpellSiphon Tools (2 items)
,(850302, 4, 850200, 1, 0, 10000, False) /* SpellSiphon */
,(850302, 4, 850201, 1, 0,  5000, False) /* Mana Lattice */
-- Equipped Clothing
,(850302, 2, 40441, 0, 0, 0, False) /* Wear Pathwarden Robe (Sho) */
,(850302, 2, 40452, 0, 0, 0, False) /* Wear Pathwarden Gauntlets */;
