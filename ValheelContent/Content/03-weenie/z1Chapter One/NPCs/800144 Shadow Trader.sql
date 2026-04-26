DELETE FROM `weenie` WHERE `class_Id` = 800144;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800144, 'Shadow Trader', 12, '2005-02-09 10:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800144,   1,         16) /* ItemType - Creature */
     , (800144,   2,         31) /* CreatureType - Human */
     , (800144,   6,         -1) /* ItemsCapacity */
     , (800144,   7,         -1) /* ContainersCapacity */
     , (800144,   8,        120) /* Mass */
     , (800144,  16,         32) /* ItemUseable - Remote */
     , (800144,  25,          3) /* Level */
     , (800144,  27,          0) /* ArmorType - None */
     , (800144,  74,    4481568) /* MerchandiseItemTypes - VendorGrocer */
     , (800144,  75,          0) /* MerchandiseMinValue */
     , (800144,  76,    1000000) /* MerchandiseMaxValue */
     , (800144,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (800144, 126,        125) /* VendorHappyMean */
     , (800144, 127,        125) /* VendorHappyVariance */
     , (800144, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800144, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800144, 146,         20) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800144,   1, True ) /* Stuck */
     , (800144,  12, True ) /* ReportCollisions */
     , (800144,  13, False) /* Ethereal */
     , (800144,  19, False) /* Attackable */
     , (800144,  39, True ) /* DealMagicalItems */
     , (800144,  41, True ) /* ReportCollisionsAsEnvironment */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800144,   1,       5) /* HeartbeatInterval */
     , (800144,   2,       0) /* HeartbeatTimestamp */
     , (800144,   3,    0.16) /* HealthRate */
     , (800144,   4,       5) /* StaminaRate */
     , (800144,   5,       1) /* ManaRate */
     , (800144,  11,     300) /* ResetInterval */
     , (800144,  13,     0.9) /* ArmorModVsSlash */
     , (800144,  14,       1) /* ArmorModVsPierce */
     , (800144,  15,     1.1) /* ArmorModVsBludgeon */
     , (800144,  16,     0.4) /* ArmorModVsCold */
     , (800144,  17,     0.4) /* ArmorModVsFire */
     , (800144,  18,       1) /* ArmorModVsAcid */
     , (800144,  19,     0.6) /* ArmorModVsElectric */
     , (800144,  37,     0.9) /* BuyPrice */
     , (800144,  38,       1) /* SellPrice */
     , (800144,  54,       3) /* UseRadius */
     , (800144,  64,       1) /* ResistSlash */
     , (800144,  65,       1) /* ResistPierce */
     , (800144,  66,       1) /* ResistBludgeon */
     , (800144,  67,       1) /* ResistFire */
     , (800144,  68,       1) /* ResistCold */
     , (800144,  69,       1) /* ResistAcid */
     , (800144,  70,       1) /* ResistElectric */
     , (800144,  71,       1) /* ResistHealthBoost */
     , (800144,  72,       1) /* ResistStaminaDrain */
     , (800144,  73,       1) /* ResistStaminaBoost */
     , (800144,  74,       1) /* ResistManaDrain */
     , (800144,  75,       1) /* ResistManaBoost */
     , (800144, 104,      10) /* ObviousRadarRange */
     , (800144, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800144,   1, 'Shadow Trader') /* Name */
     , (800144,   3, 'Male') /* Sex */
     , (800144,   4, 'Aluvian') /* HeritageGroup */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800144,   1,   33554433) /* Setup */
     , (800144,   2,  150994945) /* MotionTable */
     , (800144,   3,  536870913) /* SoundTable */
     , (800144,   4,  805306368) /* CombatTable */
     , (800144,   8,  100667446) /* Icon */
     , (800144,  57,     800112) /* AlternateCurrency - Carnage Token */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800144,   1,  20, 0, 0) /* Strength */
     , (800144,   2,  25, 0, 0) /* Endurance */
     , (800144,   3,  45, 0, 0) /* Quickness */
     , (800144,   4,  35, 0, 0) /* Coordination */
     , (800144,   5,  35, 0, 0) /* Focus */
     , (800144,   6,  25, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800144,   1,    25, 0, 0, 38) /* MaxHealth */
     , (800144,   3,    50, 0, 0, 75) /* MaxStamina */
     , (800144,   5,    20, 0, 0, 45) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800144,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800144,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800144,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800144,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800144,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800144,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800144,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800144,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800144,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800144,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Ahh, you have come to see my goods have you?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800144, 2, 23785, -1, 0, 0, False) /* Create Brilliant Amuli Leggings (23785) for Wield */
     , (800144, 2, 23777, -1, 0, 0, False) /* Create Brilliant Amuli Coat (23777) for Wield */
     , (800144, 2,  8663, -1, 0, 0, False) /* Create Ursuin Hide Helmet (8663) for Wield */
     , (800144, 2,   107, -1, 0, 0, False) /* Create Sollerets (107) for Wield */
     , (800144, 2, 47199, -1, 0, 0, False) /* Create Forging Gloves (47199) for Wield */
     , (800144, 4, 800140, -1, 8, 1, False) /* Create Blue Ball (800140) for Shop */
     , (800144, 4, 800337, -1, 8, 1, False) /* Create Red Ball (800337) for Shop */
     , (800144, 4, 800015, -1, 8, 1, False) /* Create Shemtar's Coat of Enlightenment (800015) for Shop */
     , (800144, 4, 800016, -1, 8, 1, False) /* Create Shemtar's Leggings of Enlightenment (800016) for Shop */
     , (800144, 4, 800121, -1, 8, 1, False) /* Create Shemtar's Gauntlets of Enlightenment (800121) for Shop */
     , (800144, 4, 800019, -1, 8, 1, False) /* Create Shemtar's Sollerets of Enlightenment (800019) for Shop */
     , (800144, 4, 800033, -1, 8, 1, False) /* Create Shemtar's Helm of Enlightenment (800033) for Shop */
     , (800144, 4, 800221, -1, 93, 1, False) /* Create Elorin's Cursed Chiran (800221) for Shop */
     , (800144, 4, 800222, -1, 93, 1, False) /* Create Elorin's Cursed Leggings (800222) for Shop */
     , (800144, 4, 800223, -1, 93, 1, False) /* Create Elorin's Cursed Breastplate (800223) for Shop */
     , (800144, 4, 800224, -1, 93, 1, False) /* Create Elorin's Cursed Girth (800224) for Shop */
     , (800144, 4, 800225, -1, 93, 1, False) /* Create Elorin's Cursed Sleeves (800225) for Shop */
     , (800144, 4, 800158, -1, 8, 1, False) /* Create Subway Carnage Portal Gem (800158) for Shop */
     , (800144, 4, 800168, -1, 8, 1, False) /* Create Creepy Canyons Portal Gem (800168) for Shop */
     , (800144, 4, 800196, -1, 88, 1, False) /* Create Hardened Shadow Olthoi Helm (800196) for Shop */
     , (800144, 4, 800197, -1, 88, 1, False) /* Create Hardened Shadow Gauntlets (800197) for Shop */
     , (800144, 4, 800198, -1, 88, 1, False) /* Create Hardened Shadow Sollerets (800198) for Shop */
     , (800144, 4, 800199, -1, 88, 1, False) /* Create Hardened Shadow Coat (800199) for Shop */
     , (800144, 4, 800200, -1, 88, 1, False) /* Create Hardened Shadow Leggings (800200) for Shop */
     , (800144, 4, 800033, -1, 8, 1, False) /* Create Shemtar's Helm of Enlightenment (800033) for Shop */
     , (800144, 4, 19515, -1, 8, 1, False) /* Create Perfect Diamond Infused Pyreal Ingot (19515) for Shop */
     , (800144, 4, 800356, -1, 8, 1, False) /* Create Tradeable Carnage Token Note (800356) for Shop */
     , (800144, 4, 800322, -1, 8, 1, False) /* Create Great Sword of Vitality (800322) for Shop */
     , (800144, 4, 800323, -1, 8, 1, False) /* Create Sword of Vitality (800323) for Shop */
     , (800144, 4, 800324, -1, 8, 1, False) /* Create Axe of Vitality (800324) for Shop */
     , (800144, 4, 800325, -1, 8, 1, False) /* Create Dagger of Vitality (800325) for Shop */
     , (800144, 4, 800326, -1, 8, 1, False) /* Create Bow of Vitality (800326) for Shop */
     , (800144, 4, 800327, -1, 8, 1, False) /* Create  (800327) for Shop */
     , (800144, 4, 800328, -1, 8, 1, False) /* Create Shadow Gem of Dispelling (800328) for Shop */
     , (800144, 4, 800329, -1, 8, 1, False) /* Create Emblazoned Coal (800329) for Shop */
     , (800144, 4, 800355, -1, 8, 1, False) /* Create Chubby Bunny Slippers (800355) for Shop */
     , (800144, 4,  8530, -1, 8, 1, False) /* Create Scroll of Sanctuary Recall (8530) for Shop */
     , (800144, 4, 72003, -1, 8, 1, False) /* Create Scroll of Viridian Rise Tree Recall (72003) for Shop */
     , (800144, 4, 53302, -1, 8, 1, False) /* Create Scroll of Viridian Rise Recall (53302) for Shop */
     , (800144, 4, 36537, -1, 8, 1, False) /* Create Scroll of Colosseum Recall (36537) for Shop */
     , (800144, 4, 36377, -1, 8, 1, False) /* Create Scroll of 'Infested Area' Recall (36377) for Shop */
     , (800144, 4, 35981, -1, 8, 1, False) /* Create Scroll of Ancient Graveyard Recall (35981) for Shop */
     , (800144, 4, 35479, -1, 8, 1, False) /* Create Scroll of Bur Recall (35479) for Shop */
     , (800144, 4, 32492, -1, 8, 1, False) /* Create Scroll of Glenden Wood Recall (32492) for Shop */
     , (800144, 4, 22932, -1, 8, 1, False) /* Create Recall to the Singularity Caul (22932) for Shop */
     , (800144, 4, 22863, -1, 8, 1, False) /* Create Ulgrim's Recall Scroll (22863) for Shop */
     , (800144, 4, 22078, -1, 8, 1, False) /* Create Scroll of Mount Lethe Recall (22078) for Shop */
     , (800144, 4, 800340, -1, 8, 1, False) /* Create T'thuun Aegis II (800340) for Shop */
     , (800144, 4, 36543, -1, 0, 0, False) /* Create Gladiator Diemos Pass (36543) for Shop */
     , (800144, 4, 45502, -1, 0, 0, False) /* Create Foolproof Aquamarine Gem (45502) for Shop */
     , (800144, 4, 45503, -1, 0, 0, False) /* Create Foolproof Black Garnet Gem (45503) for Shop */
     , (800144, 4, 45504, -1, 0, 0, False) /* Create Foolproof Black Opal Gem (45504) for Shop */
     , (800144, 4, 45505, -1, 0, 0, False) /* Create Foolproof Emerald Gem (45505) for Shop */
     , (800144, 4, 45506, -1, 0, 0, False) /* Create Foolproof Fire Opal Gem (45506) for Shop */
     , (800144, 4, 45507, -1, 0, 0, False) /* Create Foolproof Imperial Topaz Gem (45507) for Shop */
     , (800144, 4, 45508, -1, 0, 0, False) /* Create Foolproof Jet Gem (45508) for Shop */
     , (800144, 4, 45509, -1, 0, 0, False) /* Create Foolproof Red Garnet Gem (45509) for Shop */
     , (800144, 4, 45510, -1, 0, 0, False) /* Create Foolproof Sunstone Gem (45510) for Shop */
     , (800144, 4, 45511, -1, 0, 0, False) /* Create Foolproof White Sapphire Gem (45511) for Shop */
     , (800144, 4, 44636, -1, 0, 0, False) /* Create A'nekshay Slayer Stone (44636) for Shop */
     , (800144, 4, 33687, -1, 0, 0, False) /* Create Mukkir Slayer Stone (33687) for Shop */
     , (800144, 4, 42038, -1, 0, 0, False) /* Create Spectral Skull (42038) for Shop */
     , (800144, 4, 34042, -1, 0, 0, False) /* Create Black Skull of Xikma (34042) for Shop */
     , (800144, 4, 45516, -1, 0, 0, False) /* Create Lucky White Rabbit's Foot Gem (45516) for Shop */
     , (800144, 4, 801431, -1, 0, 0, False) /* Create Nether Staff of Vitality (801431) for Shop */
     , (800144, 4, 11999, -1, 0, 0, False) /* Create Broken Virindi Inquisitor Mask (11999) for Shop */
     , (800144, 4,  3715, -1, 0, 0, False) /* Create Olthoi Helm (3715) for Shop */
     , (800144, 4,  802173, -1, 0, 0, False) /* Create Olthoi Helm (3715) for Shop */;
