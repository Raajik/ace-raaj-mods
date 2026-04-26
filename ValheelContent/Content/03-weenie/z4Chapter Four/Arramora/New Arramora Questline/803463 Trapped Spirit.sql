DELETE FROM `weenie` WHERE `class_Id` = 803463;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803463, 'Trapped Spirit', 10, '2024-04-07 07:15:48') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803463,   1,         16) /* ItemType - Creature */
     , (803463,   2,         14) /* CreatureType - Undead */
     , (803463,   3,         43) /* PaletteTemplate - LightBrown */
     , (803463,   6,         -1) /* ItemsCapacity */
     , (803463,   7,         -1) /* ContainersCapacity */
     , (803463,   8,        120) /* Mass */
     , (803463,  16,         32) /* ItemUseable - Remote */
     , (803463,  25,        155) /* Level */
     , (803463,  27,          0) /* ArmorType - None */
     , (803463,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (803463,  95,          8) /* RadarBlipColor - Yellow */
     , (803463, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (803463, 134,         16) /* PlayerKillerStatus - RubberGlue */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803463,   1, True ) /* Stuck */
     , (803463,   8, True ) /* AllowGive */
     , (803463,  19, False) /* Attackable */
     , (803463,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803463,   1,      20) /* HeartbeatInterval */
     , (803463,   2,       0) /* HeartbeatTimestamp */
     , (803463,   3,    0.16) /* HealthRate */
     , (803463,   4,       5) /* StaminaRate */
     , (803463,   5,       1) /* ManaRate */
     , (803463,  13,     0.9) /* ArmorModVsSlash */
     , (803463,  14,       1) /* ArmorModVsPierce */
     , (803463,  15,     1.1) /* ArmorModVsBludgeon */
     , (803463,  16,     0.4) /* ArmorModVsCold */
     , (803463,  17,     0.4) /* ArmorModVsFire */
     , (803463,  18,       1) /* ArmorModVsAcid */
     , (803463,  19,     0.6) /* ArmorModVsElectric */
     , (803463,  39,     1.3) /* DefaultScale */
     , (803463,  64,       1) /* ResistSlash */
     , (803463,  65,       1) /* ResistPierce */
     , (803463,  66,       1) /* ResistBludgeon */
     , (803463,  67,       1) /* ResistFire */
     , (803463,  68,       1) /* ResistCold */
     , (803463,  69,       1) /* ResistAcid */
     , (803463,  70,       1) /* ResistElectric */
     , (803463,  71,       1) /* ResistHealthBoost */
     , (803463,  72,       1) /* ResistStaminaDrain */
     , (803463,  73,       1) /* ResistStaminaBoost */
     , (803463,  74,       1) /* ResistManaDrain */
     , (803463,  75,       1) /* ResistManaBoost */
     , (803463,  76,     0.7) /* Translucency */
     , (803463, 104,      10) /* ObviousRadarRange */
     , (803463, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803463,   1, 'Trapped Spirit') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803463,   1,   33558816) /* Setup */
     , (803463,   2,  150995302) /* MotionTable */
     , (803463,   3,  536871094) /* SoundTable */
     , (803463,   4,  805306429) /* CombatTable */
     , (803463,   6,   67115251) /* PaletteBase */
     , (803463,   7,  268436835) /* ClothingBase */
     , (803463,   8,  100676679) /* Icon */
     , (803463,  22,  872415403) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803463,   1, 140, 0, 0) /* Strength */
     , (803463,   2, 200, 0, 0) /* Endurance */
     , (803463,   3, 160, 0, 0) /* Quickness */
     , (803463,   4, 160, 0, 0) /* Coordination */
     , (803463,   5, 290, 0, 0) /* Focus */
     , (803463,   6, 290, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803463,   1,     0, 0, 0,30250) /* MaxHealth */
     , (803463,   3,   150, 0, 0,  350) /* MaxStamina */
     , (803463,   5,   150, 0, 0,  440) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803463,  6, 0, 2, 0,   1, 0, 0) /* MeleeDefense        Trained */
     , (803463,  7, 0, 2, 0,   1, 0, 0) /* MissileDefense      Trained */
     , (803463, 20, 0, 3, 0, 999, 0, 0) /* Deception           Specialized */
     , (803463, 45, 0, 2, 0,   1, 0, 0) /* LightWeapons        Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803463, 5 /* HeartBeat */, 0.172, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 6 /* Move */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 6, 0, 1, 0, 0, 0);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803463, 5 /* HeartBeat */, 0.272, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 6 /* Move */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 0, 1, 0, 0, 0);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803463, 5 /* HeartBeat */, 0.372, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 6 /* Move */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -6, 6, 0, 1, 0, 0, 0);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803463, 5 /* HeartBeat */, 0.472, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 6 /* Move */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803463, 5 /* HeartBeat */, 0.042, NULL, 0x8000003D /* NonCombat */, 0x41000003 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 6 /* Move */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, 0, 1, 0, 0, 0);

