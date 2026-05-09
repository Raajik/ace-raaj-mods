DELETE FROM `weenie` WHERE `class_Id` = 803356;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803356, 'Light of Tthuune', 10, '2024-03-11 10:57:29') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803356,   1,         16) /* ItemType - Creature */
     , (803356,   2,         31) /* CreatureType - Human */
     , (803356,   6,         -1) /* ItemsCapacity */
     , (803356,   7,         -1) /* ContainersCapacity */
     , (803356,  16,         32) /* ItemUseable - Remote */
     , (803356,  25,        275) /* Level */
     , (803356,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (803356,  95,          8) /* RadarBlipColor - Yellow */
     , (803356, 113,          1) /* Gender - Male */
     , (803356, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803356, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (803356, 146,          0) /* XpOverride */
     , (803356, 188,          1) /* HeritageGroup - Aluvian */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803356,   1, True ) /* Stuck */
     , (803356,  19, False) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803356,   1,       5) /* HeartbeatInterval */
     , (803356,   2,       0) /* HeartbeatTimestamp */
     , (803356,   3,       2) /* HealthRate */
     , (803356,   4,       5) /* StaminaRate */
     , (803356,   5,       1) /* ManaRate */
     , (803356,  13,       1) /* ArmorModVsSlash */
     , (803356,  14,       1) /* ArmorModVsPierce */
     , (803356,  15,       1) /* ArmorModVsBludgeon */
     , (803356,  16,       1) /* ArmorModVsCold */
     , (803356,  17,       1) /* ArmorModVsFire */
     , (803356,  18,       1) /* ArmorModVsAcid */
     , (803356,  19,       1) /* ArmorModVsElectric */
     , (803356,  31,      18) /* VisualAwarenessRange */
     , (803356,  39,       1) /* DefaultScale */
     , (803356,  54,       3) /* UseRadius */
     , (803356,  64,       1) /* ResistSlash */
     , (803356,  65,       1) /* ResistPierce */
     , (803356,  66,       1) /* ResistBludgeon */
     , (803356,  67,       1) /* ResistFire */
     , (803356,  68,       1) /* ResistCold */
     , (803356,  69,       1) /* ResistAcid */
     , (803356,  70,       1) /* ResistElectric */
     , (803356,  80,       2) /* AiUseMagicDelay */
     , (803356, 104,      10) /* ObviousRadarRange */
     , (803356, 122,       2) /* AiAcquireHealth */
     , (803356, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803356,   1, 'Light of Tthuune') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803356,   1, 0x020005B6) /* Setup */
     , (803356,   3, 0x20000014) /* SoundTable */
     , (803356,   6, 0x0400007E) /* PaletteBase */
     , (803356,   7, 0x100003E0) /* ClothingBase */
     , (803356,   8, 0x06000FCF) /* Icon */
     , (803356,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803356,  36, 0x0E000016) /* MutateFilter */
     , (803356,  46, 0x38000022) /* TsysMutationFilter */
     , (803356,  52, 0x06005B0C) /* IconUnderlay */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803356,   1, 290, 0, 0) /* Strength */
     , (803356,   2, 260, 0, 0) /* Endurance */
     , (803356,   3, 290, 0, 0) /* Quickness */
     , (803356,   4, 290, 0, 0) /* Coordination */
     , (803356,   5, 200, 0, 0) /* Focus */
     , (803356,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803356,   1,   196, 0, 0,  326) /* MaxHealth */
     , (803356,   3,   196, 0, 0,  456) /* MaxStamina */
     , (803356,   5,   196, 0, 0,  396) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803356,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (803356,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (803356, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (803356, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (803356, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (803356, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (803356, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (803356, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (803356, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (803356, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (803356, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (803356, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (803356, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803356, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 21 /* InqQuest */, 0, 1, NULL, 'ListeningDevice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803356, 12 /* QuestSuccess */, 1, NULL, NULL, NULL, 'ListeningDevice', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 0, 1, NULL, 'The device is on and functioning.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803356, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'ListeningDevice', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 52 /* ForceMotion */, 0, 1, 0x1300007E /* ClapHands */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 0, 1, NULL, 'You place a listening device under the Light of Tthuune.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 18 /* DirectBroadcast */, 0, 1, NULL, 'The Shamen will be listening for intel.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 22 /* StampQuest */, 0, 1, NULL, 'ListeningDevice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

