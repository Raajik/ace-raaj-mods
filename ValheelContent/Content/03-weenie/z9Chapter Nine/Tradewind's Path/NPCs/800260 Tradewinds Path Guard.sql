DELETE FROM `weenie` WHERE `class_Id` = 800260;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800260, 'tradewindspathguard', 10, '2025-05-11 01:02:06') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800260,   1,         16) /* ItemType - Creature */
     , (800260,   2,         31) /* CreatureType - Human */
     , (800260,   6,         -1) /* ItemsCapacity */
     , (800260,   7,         -1) /* ContainersCapacity */
     , (800260,  16,         32) /* ItemUseable - Remote */
     , (800260,  25,      10000) /* Level */
     , (800260,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (800260,  95,          8) /* RadarBlipColor - Yellow */
     , (800260, 113,          1) /* Gender - Male */
     , (800260, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800260, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (800260, 146,          0) /* XpOverride */
     , (800260, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800260,   1, True ) /* Stuck */
     , (800260,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800260,   1,       5) /* HeartbeatInterval */
     , (800260,   2,       0) /* HeartbeatTimestamp */
     , (800260,   3,       2) /* HealthRate */
     , (800260,   4,       5) /* StaminaRate */
     , (800260,   5,       1) /* ManaRate */
     , (800260,  13,       1) /* ArmorModVsSlash */
     , (800260,  14,       1) /* ArmorModVsPierce */
     , (800260,  15,       1) /* ArmorModVsBludgeon */
     , (800260,  16,       1) /* ArmorModVsCold */
     , (800260,  17,       1) /* ArmorModVsFire */
     , (800260,  18,       1) /* ArmorModVsAcid */
     , (800260,  19,       1) /* ArmorModVsElectric */
     , (800260,  31,      18) /* VisualAwarenessRange */
     , (800260,  39,       2) /* DefaultScale */
     , (800260,  54,       3) /* UseRadius */
     , (800260,  64,       1) /* ResistSlash */
     , (800260,  65,       1) /* ResistPierce */
     , (800260,  66,       1) /* ResistBludgeon */
     , (800260,  67,       1) /* ResistFire */
     , (800260,  68,       1) /* ResistCold */
     , (800260,  69,       1) /* ResistAcid */
     , (800260,  70,       1) /* ResistElectric */
     , (800260,  80,       2) /* AiUseMagicDelay */
     , (800260, 104,      10) /* ObviousRadarRange */
     , (800260, 122,       2) /* AiAcquireHealth */
     , (800260, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800260,   1, 'Tradewind''s Path Guardian') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800260,   1, 0x02001902) /* Setup */
     , (800260,   3, 0x20000014) /* SoundTable */
     , (800260,   6, 0x0400007E) /* PaletteBase */
     , (800260,   7, 0x10000278) /* ClothingBase */
     , (800260,   8, 0x06000FD5) /* Icon */
     , (800260,  22, 0x3400002B) /* PhysicsEffectTable */
     , (800260,  31,     800538) /* LinkedPortal1 */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800260,  0,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800260,  1,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800260,  2,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800260,  3,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800260,  4,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800260,  5,  4,  4, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800260,  6,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800260,  7,  4,  0,    0,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800260,  8,  4,  8, 0.75,  250,  125,  125,  125,  125,  125,  125,  125,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800260,   1, 290, 0, 0) /* Strength */
     , (800260,   2, 260, 0, 0) /* Endurance */
     , (800260,   3, 290, 0, 0) /* Quickness */
     , (800260,   4, 290, 0, 0) /* Coordination */
     , (800260,   5, 200, 0, 0) /* Focus */
     , (800260,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800260,   1,   196, 0, 0,  326) /* MaxHealth */
     , (800260,   3,   196, 0, 0,  456) /* MaxStamina */
     , (800260,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800260,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (800260,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (800260, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (800260, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (800260, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (800260, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (800260, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (800260, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (800260, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (800260, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (800260, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (800260, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (800260, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800260, 6 /* Give */, 1, 800258, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0.5, 1, NULL, 'The Guard summons a portal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 14 /* CastSpell */, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 157 /* Summon Primary Portal I */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 23 /* StartEvent */, 0, 1, NULL, 'TPEvent1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 17 /* LocalBroadcast */, 0.5, 1, NULL, 'Death is not an option.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 88 /* LocalSignal */, 0, 1, NULL, 'ActivateArenaOne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800260, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'The Guardian of Tradewind''s Path will only allow entrance by handing a ticket over.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

