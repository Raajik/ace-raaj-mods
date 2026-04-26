DELETE FROM `weenie` WHERE `class_Id` = 802855;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802855, 'ColoKingElthorin', 10, '2023-06-30 08:59:48') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802855,   1,         16) /* ItemType - Creature */
     , (802855,   2,         51) /* CreatureType - Empyrean */
     , (802855,   3,         14) /* PaletteTemplate - Red */
     , (802855,   6,         -1) /* ItemsCapacity */
     , (802855,   7,         -1) /* ContainersCapacity */
     , (802855,   8,        120) /* Mass */
     , (802855,  16,          1) /* ItemUseable - No */
     , (802855,  25,        710) /* Level */
     , (802855,  27,          0) /* ArmorType - None */
     , (802855,  67,         64) /* Tolerance - Retaliate */
     , (802855,  68,       0x80) /* TargetingTactic - HasShield */
     , (802855,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802855, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802855, 146,  999999999) /* XpOverride */
     , (802855, 332,  300000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802855,   1, True ) /* Stuck */
     , (802855,  11, False) /* IgnoreCollisions */
     , (802855,  12, True ) /* ReportCollisions */
     , (802855,  13, False) /* Ethereal */
     , (802855,  14, True ) /* GravityStatus */
     , (802855,  19, True ) /* Attackable */
     , (802855,  50, False) /* NeverFailCasting */
     , (802855,  65, True ) /* IgnoreMagicResist */
     , (802855,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802855,   1,       2) /* HeartbeatInterval */
     , (802855,   2,       0) /* HeartbeatTimestamp */
     , (802855,   3,       2) /* HealthRate */
     , (802855,   4,       5) /* StaminaRate */
     , (802855,   5,       5) /* ManaRate */
     , (802855,  13,       5) /* ArmorModVsSlash */
     , (802855,  14,       5) /* ArmorModVsPierce */
     , (802855,  15,       5) /* ArmorModVsBludgeon */
     , (802855,  16,       5) /* ArmorModVsCold */
     , (802855,  17,       5) /* ArmorModVsFire */
     , (802855,  18,       5) /* ArmorModVsAcid */
     , (802855,  19,     3.0) /* ArmorModVsElectric */
     , (802855,  31,      13) /* VisualAwarenessRange */
     , (802855,  39,       2) /* DefaultScale */
     , (802855,  64,    0.01) /* ResistSlash */
     , (802855,  65,    0.01) /* ResistPierce */
     , (802855,  66,    0.01) /* ResistBludgeon */
     , (802855,  67,    0.01) /* ResistFire */
     , (802855,  68,    0.01) /* ResistCold */
     , (802855,  69,    0.01) /* ResistAcid */
     , (802855,  70,    0.03) /* ResistElectric */
     , (802855,  71,       1) /* ResistHealthBoost */
     , (802855,  72,       1) /* ResistStaminaDrain */
     , (802855,  73,       1) /* ResistStaminaBoost */
     , (802855,  74,       1) /* ResistManaDrain */
     , (802855,  75,       1) /* ResistManaBoost */
     , (802855,  76,     0.5) /* Translucency */
     , (802855, 104,      10) /* ObviousRadarRange */
     , (802855, 117,     0.5) /* FocusedProbability */
     , (802855, 125,    0.01) /* ResistHealthDrain */
     , (802855, 166,    0.006) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802855,   1, 'King Elthorin') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802855,   1,   33558814) /* Setup */
     , (802855,   2,  150994967) /* MotionTable */
     , (802855,   3,  536870934) /* SoundTable */
     , (802855,   4,  805306368) /* CombatTable */
     , (802855,   6,   67115246) /* PaletteBase */
     , (802855,   7,  268436834) /* ClothingBase */
     , (802855,   8,  100676639) /* Icon */
     , (802855,  22,  872415272) /* PhysicsEffectTable */
     , (802855,  31,     802876) /* LinkedPortalOne - Abandoned Mine */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802855,  0,  2, 45000, 0.75, 6000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (802855, 16,  4, 45000,    0, 6000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (802855, 18,  1, 45000,  0.5, 6000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (802855, 19,  1, 45000,    0, 6000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (802855, 20,  1, 45000, 0.75, 6000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (802855, 22, 32, 45000,  0.5, 6000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802855,   1,45000, 0, 0) /* Strength */
     , (802855,   2,2500, 0, 0) /* Endurance */
     , (802855,   3, 500, 0, 0) /* Quickness */
     , (802855,   4, 500, 0, 0) /* Coordination */
     , (802855,   5, 500, 0, 0) /* Focus */
     , (802855,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802855,   1,1400000, 0, 0,1400000) /* MaxHealth */
     , (802855,   3,1200000, 0, 0,1200000) /* MaxStamina */
     , (802855,   5,1200000, 0, 0,1200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802855,  6, 0, 3, 0, 650, 0, 0) /* MeleeDefense        Specialized */
     , (802855,  7, 0, 3, 0, 650, 0, 0) /* MissileDefense      Specialized */
     , (802855, 14, 0, 3, 0, 650, 0, 0) /* ArcaneLore          Specialized */
     , (802855, 15, 0, 3, 0, 650, 0, 0) /* MagicDefense        Specialized */
     , (802855, 16, 0, 3, 0, 650, 0, 0) /* ManaConversion      Specialized */
     , (802855, 19, 0, 3, 0, 650, 0, 0) /* AssessPerson        Specialized */
     , (802855, 20, 0, 3, 0, 650, 0, 0) /* Deception           Specialized */
     , (802855, 21, 0, 3, 0, 650, 0, 0) /* Healing             Specialized */
     , (802855, 22, 0, 3, 0, 650, 0, 0) /* Jump                Specialized */
     , (802855, 24, 0, 3, 0, 650, 0, 0) /* Run                 Specialized */
     , (802855, 31, 0, 3, 0,3500, 0, 0) /* CreatureEnchantment Specialized */
     , (802855, 32, 0, 3, 0,3500, 0, 0) /* ItemEnchantment     Specialized */
     , (802855, 33, 0, 3, 0,3500, 0, 0) /* LifeMagic           Specialized */
     , (802855, 34, 0, 3, 0,3500, 0, 0) /* WarMagic            Specialized */
     , (802855, 44, 0, 3, 0,3500, 0, 0) /* HeavyWeapons        Specialized */
     , (802855, 45, 0, 3, 0,3500, 0, 0) /* LightWeapons        Specialized */
     , (802855, 46, 0, 3, 0,3500, 0, 0) /* FinesseWeapons      Specialized */
     , (802855, 47, 0, 3, 0,3500, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802855, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802855, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802855, 17 /* NewEnemy */, 0.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802855, 17 /* NewEnemy */, 0.6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802855, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'A portal has appeared. Use it to continue to the next round!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 23 /* StartEvent */, 0, 1, NULL, 'NewColoBoss7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 24 /* StopEvent */, 0, 1, NULL, 'NewColoBoss5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802855, 9,802730,  0,0,     0.2, False) /* Create Elemental Prism for ContainTreasure */
     , (802855, 9,     0,  0,0,     0.8, False) /* Create Nothing for ContainTreasure */;

