DELETE FROM `weenie` WHERE `class_Id` = 802857;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802857, 'ColoUmbridge', 10, '2023-08-27 06:35:08') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802857,   0,          0) /*  */
     , (802857,   1,         16) /* ItemType - Creature */
     , (802857,   2,         51) /* CreatureType - Empyrean */
     , (802857,   3,         14) /* PaletteTemplate - Red */
     , (802857,   6,         -1) /* ItemsCapacity */
     , (802857,   7,         -1) /* ContainersCapacity */
     , (802857,   8,        120) /* Mass */
     , (802857,  16,          1) /* ItemUseable - No */
     , (802857,  25,        710) /* Level */
     , (802857,  27,          0) /* ArmorType - None */
     , (802857,  67,         64) /* Tolerance - Retaliate */
     , (802857,  68,       0x80) /* TargetingTactic - HasShield */
     , (802857,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802857, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802857, 146,  999999999) /* XpOverride */
     , (802857, 332,  300000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802857,   1, True ) /* Stuck */
     , (802857,  11, False) /* IgnoreCollisions */
     , (802857,  12, True ) /* ReportCollisions */
     , (802857,  13, False) /* Ethereal */
     , (802857,  14, True ) /* GravityStatus */
     , (802857,  19, True ) /* Attackable */
     , (802857,  50, False) /* NeverFailCasting */
     , (802857,  65, True ) /* IgnoreMagicResist */
     , (802857,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802857,   1,       2) /* HeartbeatInterval */
     , (802857,   2,       0) /* HeartbeatTimestamp */
     , (802857,   3,       2) /* HealthRate */
     , (802857,   4,       5) /* StaminaRate */
     , (802857,   5,       1) /* ManaRate */
     , (802857,  13,       5) /* ArmorModVsSlash */
     , (802857,  14,       5) /* ArmorModVsPierce */
     , (802857,  15,       5) /* ArmorModVsBludgeon */
     , (802857,  16,       5) /* ArmorModVsCold */
     , (802857,  17,     3.1) /* ArmorModVsFire */
     , (802857,  18,       5) /* ArmorModVsAcid */
     , (802857,  19,     3.1) /* ArmorModVsElectric */
     , (802857,  31,      13) /* VisualAwarenessRange */
     , (802857,  39,       2) /* DefaultScale */
     , (802857,  64,    0.01) /* ResistSlash */
     , (802857,  65,    0.01) /* ResistPierce */
     , (802857,  66,    0.01) /* ResistBludgeon */
     , (802857,  67,    0.03) /* ResistFire */
     , (802857,  68,    0.01) /* ResistCold */
     , (802857,  69,    0.01) /* ResistAcid */
     , (802857,  70,    0.01) /* ResistElectric */
     , (802857,  71,       1) /* ResistHealthBoost */
     , (802857,  72,       1) /* ResistStaminaDrain */
     , (802857,  73,       1) /* ResistStaminaBoost */
     , (802857,  74,       1) /* ResistManaDrain */
     , (802857,  75,       1) /* ResistManaBoost */
     , (802857,  76,     0.5) /* Translucency */
     , (802857, 104,      10) /* ObviousRadarRange */
     , (802857, 117,     0.5) /* FocusedProbability */
     , (802857, 125,    0.01) /* ResistHealthDrain */
     , (802857, 166,    0.004) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802857,   1, 'Umbridge') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802857,   1, 0x02000001) /* Setup */
     , (802857,   2, 0x09000001) /* MotionTable */
     , (802857,   3, 0x20000001) /* SoundTable */
     , (802857,   4, 0x30000000) /* CombatTable */
     , (802857,   6, 0x0400007E) /* PaletteBase */
     , (802857,   7, 0x100000B0) /* ClothingBase */
     , (802857,   8, 0x06001BBD) /* Icon */
     , (802857,   9, 0x05001151) /* EyesTexture */
     , (802857,  10, 0x05001174) /* NoseTexture */
     , (802857,  11, 0x050011CE) /* MouthTexture */
     , (802857,  15, 0x04001FC8) /* HairPalette */
     , (802857,  16, 0x040004AF) /* EyesPalette */
     , (802857,  17, 0x040002B7) /* SkinPalette */
     , (802857,  22, 0x34000063) /* PhysicsEffectTable */
     , (802857,  31,     802877) /* LinkedPortalOne - Abandoned Mine */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802857,  0,  2,45000, 0.75, 6200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (802857, 16,  4,45000, 0.75, 6200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (802857, 18,  1,45000,  0.5, 6200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (802857, 19,  1,45000, 0.75, 6200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (802857, 20,  1,45000, 0.75, 6200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (802857, 22, 32,45000,  0.5, 6200, 1100, 1100, 1100, 1100, 1100, 1100, 1100,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802857,   1,47500, 0, 0) /* Strength */
     , (802857,   2,2500, 0, 0) /* Endurance */
     , (802857,   3, 500, 0, 0) /* Quickness */
     , (802857,   4, 500, 0, 0) /* Coordination */
     , (802857,   5, 500, 0, 0) /* Focus */
     , (802857,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802857,   1,1600000, 0, 0,1600000) /* MaxHealth */
     , (802857,   3,1200000, 0, 0,1200000) /* MaxStamina */
     , (802857,   5,1200000, 0, 0,1200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802857,  6, 0, 3, 0, 650, 0, 0) /* MeleeDefense        Specialized */
     , (802857,  7, 0, 3, 0, 650, 0, 0) /* MissileDefense      Specialized */
     , (802857, 14, 0, 3, 0, 650, 0, 0) /* ArcaneLore          Specialized */
     , (802857, 15, 0, 3, 0, 650, 0, 0) /* MagicDefense        Specialized */
     , (802857, 16, 0, 3, 0, 650, 0, 0) /* ManaConversion      Specialized */
     , (802857, 19, 0, 3, 0, 650, 0, 0) /* AssessPerson        Specialized */
     , (802857, 20, 0, 3, 0, 650, 0, 0) /* Deception           Specialized */
     , (802857, 21, 0, 3, 0, 650, 0, 0) /* Healing             Specialized */
     , (802857, 22, 0, 3, 0, 650, 0, 0) /* Jump                Specialized */
     , (802857, 24, 0, 3, 0, 650, 0, 0) /* Run                 Specialized */
     , (802857, 31, 0, 3, 0,3500, 0, 0) /* CreatureEnchantment Specialized */
     , (802857, 32, 0, 3, 0,3500, 0, 0) /* ItemEnchantment     Specialized */
     , (802857, 33, 0, 3, 0,3500, 0, 0) /* LifeMagic           Specialized */
     , (802857, 34, 0, 3, 0,3500, 0, 0) /* WarMagic            Specialized */
     , (802857, 44, 0, 3, 0,3500, 0, 0) /* HeavyWeapons        Specialized */
     , (802857, 45, 0, 3, 0,3500, 0, 0) /* LightWeapons        Specialized */
     , (802857, 46, 0, 3, 0,3500, 0, 0) /* FinesseWeapons      Specialized */
     , (802857, 47, 0, 3, 0,3500, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802857, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802857, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802857, 17 /* NewEnemy */, 0.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802857, 17 /* NewEnemy */, 0.6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802857, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'A portal has appeared. Use it to continue to the next round!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 23 /* StartEvent */, 0, 1, NULL, 'NewColoBoss8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 24 /* StopEvent */, 0, 1, NULL, 'NewColoBoss7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802857, 9,802730,  0, 0,  0.2, False) /* Create Elemental Prism for ContainTreasure */
     , (802857, 9,     0,  0, 0,  0.8, False) /* Create Nothing for ContainTreasure */;
