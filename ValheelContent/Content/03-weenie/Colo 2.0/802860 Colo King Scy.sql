DELETE FROM `weenie` WHERE `class_Id` = 802860;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802860, 'ColoKingScy', 10, '2023-06-30 08:59:48') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802860,   1,         16) /* ItemType - Creature */
     , (802860,   2,         51) /* CreatureType - Empyrean */
     , (802860,   3,         14) /* PaletteTemplate - Red */
     , (802860,   6,         -1) /* ItemsCapacity */
     , (802860,   7,         -1) /* ContainersCapacity */
     , (802860,   8,        120) /* Mass */
     , (802860,  16,          1) /* ItemUseable - No */
     , (802860,  25,        710) /* Level */
     , (802860,  27,          0) /* ArmorType - None */
     , (802860,  67,         64) /* Tolerance - Retaliate */
     , (802860,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802860, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802860, 146,  999999999) /* XpOverride */
     , (802860, 332,  300000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802860,   1, True ) /* Stuck */
     , (802860,  11, False) /* IgnoreCollisions */
     , (802860,  12, True ) /* ReportCollisions */
     , (802860,  13, False) /* Ethereal */
     , (802860,  14, True ) /* GravityStatus */
     , (802860,  19, True ) /* Attackable */
     , (802860,  50, False) /* NeverFailCasting */
     , (802860,  65, True ) /* IgnoreMagicResist */
     , (802860,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802860,   1,       2) /* HeartbeatInterval */
     , (802860,   2,       0) /* HeartbeatTimestamp */
     , (802860,   3,       2) /* HealthRate */
     , (802860,   4,       5) /* StaminaRate */
     , (802860,   5,       1) /* ManaRate */
     , (802860,  13,       1) /* ArmorModVsSlash */
     , (802860,  14,       1) /* ArmorModVsPierce */
     , (802860,  15,       1) /* ArmorModVsBludgeon */
     , (802860,  16,     1.3) /* ArmorModVsCold */
     , (802860,  17,       1) /* ArmorModVsFire */
     , (802860,  18,       1) /* ArmorModVsAcid */
     , (802860,  19,     1.3) /* ArmorModVsElectric */
     , (802860,  31,      13) /* VisualAwarenessRange */
     , (802860,  39,       2) /* DefaultScale */
     , (802860,  64,    0.01) /* ResistSlash */
     , (802860,  65,    0.01) /* ResistPierce */
     , (802860,  66,    0.01) /* ResistBludgeon */
     , (802860,  67,    0.01) /* ResistFire */
     , (802860,  68,    0.03) /* ResistCold */
     , (802860,  69,    0.01) /* ResistAcid */
     , (802860,  70,    0.03) /* ResistElectric */
     , (802860,  71,       1) /* ResistHealthBoost */
     , (802860,  72,       1) /* ResistStaminaDrain */
     , (802860,  73,       1) /* ResistStaminaBoost */
     , (802860,  74,       1) /* ResistManaDrain */
     , (802860,  75,       1) /* ResistManaBoost */
     , (802860,  76,     0.5) /* Translucency */
     , (802860, 104,      10) /* ObviousRadarRange */
     , (802860, 117,     0.5) /* FocusedProbability */
     , (802860, 125,       1) /* ResistHealthDrain */
     , (802860, 166,    0.01) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802860,   1, 'King Scy') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802860,   1,   33554433) /* Setup */
     , (802860,   2,  150994945) /* MotionTable */
     , (802860,   3,  536870913) /* SoundTable */
     , (802860,   4,  805306368) /* CombatTable */
     , (802860,   6,   67108990) /* PaletteBase */
     , (802860,   7,  268435632) /* ClothingBase */
     , (802860,   8,  100670397) /* Icon */
     , (802860,   9,   83890513) /* EyesTexture */
     , (802860,  10,   83890548) /* NoseTexture */
     , (802860,  11,   83890638) /* MouthTexture */
     , (802860,  15,   67117000) /* HairPalette */
     , (802860,  16,   67110063) /* EyesPalette */
     , (802860,  17,   67109559) /* SkinPalette */
     , (802860,  22,  872415331) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802860,  0,  2, 14000, 0.75, 1200, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (802860, 16,  4, 14000,    0, 1200, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (802860, 18,  1, 14000,  0.5, 1200, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (802860, 19,  1, 14000,    0, 1200, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (802860, 20,  1, 14000, 0.75, 1200, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (802860, 22, 32, 14000,  0.5, 1200, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 8000, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802860,   1,2500, 0, 0) /* Strength */
     , (802860,   2,2500, 0, 0) /* Endurance */
     , (802860,   3, 500, 0, 0) /* Quickness */
     , (802860,   4, 500, 0, 0) /* Coordination */
     , (802860,   5, 500, 0, 0) /* Focus */
     , (802860,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802860,   1,900000, 0, 0,900000) /* MaxHealth */
     , (802860,   3,1200000, 0, 0,1200000) /* MaxStamina */
     , (802860,   5,1200000, 0, 0,1200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802860,  6, 0, 3, 0, 650, 0, 0) /* MeleeDefense        Specialized */
     , (802860,  7, 0, 3, 0, 650, 0, 0) /* MissileDefense      Specialized */
     , (802860, 14, 0, 3, 0, 650, 0, 0) /* ArcaneLore          Specialized */
     , (802860, 15, 0, 3, 0, 650, 0, 0) /* MagicDefense        Specialized */
     , (802860, 16, 0, 3, 0, 650, 0, 0) /* ManaConversion      Specialized */
     , (802860, 19, 0, 3, 0, 650, 0, 0) /* AssessPerson        Specialized */
     , (802860, 20, 0, 3, 0, 650, 0, 0) /* Deception           Specialized */
     , (802860, 21, 0, 3, 0, 650, 0, 0) /* Healing             Specialized */
     , (802860, 22, 0, 3, 0, 650, 0, 0) /* Jump                Specialized */
     , (802860, 24, 0, 3, 0, 650, 0, 0) /* Run                 Specialized */
     , (802860, 31, 0, 3, 0,3500, 0, 0) /* CreatureEnchantment Specialized */
     , (802860, 32, 0, 3, 0,3500, 0, 0) /* ItemEnchantment     Specialized */
     , (802860, 33, 0, 3, 0,3500, 0, 0) /* LifeMagic           Specialized */
     , (802860, 34, 0, 3, 0,3500, 0, 0) /* WarMagic            Specialized */
     , (802860, 44, 0, 3, 0,3500, 0, 0) /* HeavyWeapons        Specialized */
     , (802860, 45, 0, 3, 0,3500, 0, 0) /* LightWeapons        Specialized */
     , (802860, 46, 0, 3, 0,3500, 0, 0) /* FinesseWeapons      Specialized */
     , (802860, 47, 0, 3, 0,3500, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802860, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802860, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802860, 17 /* NewEnemy */, 0.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802860, 17 /* NewEnemy */, 0.6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802860, 2,802728,  1,93,    0, False) /* Create Gaerlan's Drain Ring for Wield */
     , (802860, 9,802730,  0,0,     0.1, False) /* Create Elemental Prism for ContainTreasure */
     , (802860, 9,     0,  0,0,     0.9, False) /* Create Nothing for ContainTreasure */;

