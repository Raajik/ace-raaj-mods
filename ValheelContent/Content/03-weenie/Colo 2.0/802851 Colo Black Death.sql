DELETE FROM `weenie` WHERE `class_Id` = 802851;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802851, 'ColoBlackDeath', 10, '2023-06-30 08:59:48') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802851,   1,         16) /* ItemType - Creature */
     , (802851,   2,         51) /* CreatureType - Empyrean */
     , (802851,   3,         14) /* PaletteTemplate - Red */
     , (802851,   6,         -1) /* ItemsCapacity */
     , (802851,   7,         -1) /* ContainersCapacity */
     , (802851,   8,        120) /* Mass */
     , (802851,  16,          1) /* ItemUseable - No */
     , (802851,  25,        710) /* Level */
     , (802851,  27,          0) /* ArmorType - None */
     , (802851,  67,         64) /* Tolerance - Retaliate */
     , (802851,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802851, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802851, 146,  999999999) /* XpOverride */
     , (802851, 332,  300000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802851,   1, True ) /* Stuck */
     , (802851,  11, False) /* IgnoreCollisions */
     , (802851,  12, True ) /* ReportCollisions */
     , (802851,  13, False) /* Ethereal */
     , (802851,  14, True ) /* GravityStatus */
     , (802851,  19, True ) /* Attackable */
     , (802851,  50, False) /* NeverFailCasting */
     , (802851,  65, True ) /* IgnoreMagicResist */
     , (802851,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802851,   1,       2) /* HeartbeatInterval */
     , (802851,   2,       0) /* HeartbeatTimestamp */
     , (802851,   3,       2) /* HealthRate */
     , (802851,   4,       5) /* StaminaRate */
     , (802851,   5,       1) /* ManaRate */
     , (802851,  13,       1) /* ArmorModVsSlash */
     , (802851,  14,       1) /* ArmorModVsPierce */
     , (802851,  15,       1) /* ArmorModVsBludgeon */
     , (802851,  16,     1.3) /* ArmorModVsCold */
     , (802851,  17,       1) /* ArmorModVsFire */
     , (802851,  18,       1) /* ArmorModVsAcid */
     , (802851,  19,     1.3) /* ArmorModVsElectric */
     , (802851,  31,      13) /* VisualAwarenessRange */
     , (802851,  39,       2) /* DefaultScale */
     , (802851,  64,    0.01) /* ResistSlash */
     , (802851,  65,    0.01) /* ResistPierce */
     , (802851,  66,    0.01) /* ResistBludgeon */
     , (802851,  67,    0.01) /* ResistFire */
     , (802851,  68,    0.03) /* ResistCold */
     , (802851,  69,    0.01) /* ResistAcid */
     , (802851,  70,    0.03) /* ResistElectric */
     , (802851,  71,       1) /* ResistHealthBoost */
     , (802851,  72,       1) /* ResistStaminaDrain */
     , (802851,  73,       1) /* ResistStaminaBoost */
     , (802851,  74,       1) /* ResistManaDrain */
     , (802851,  75,       1) /* ResistManaBoost */
     , (802851,  76,     0.5) /* Translucency */
     , (802851, 104,      10) /* ObviousRadarRange */
     , (802851, 117,     0.5) /* FocusedProbability */
     , (802851, 125,       1) /* ResistHealthDrain */
     , (802851, 166,    0.01) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802851,   1, 'Black Death') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802851,   1, 0x0200100E) /* Setup */
     , (802851,   2, 0x0900009B) /* MotionTable */
     , (802851,   3, 0x20000070) /* SoundTable */
     , (802851,   4, 0x3000002A) /* CombatTable */
     , (802851,   6, 0x040016C4) /* PaletteBase */
     , (802851,   7, 0x100004F6) /* ClothingBase */
     , (802851,   8, 0x06001FBC) /* Icon */
     , (802851,  22, 0x3400008C) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802851,  0,  4,5000, 0.75,25440,12720,12720,12720,12720,12720,12720,12720,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (802851, 16,  4,5000, 0.75,25440,12720,12720,12720,12720,12720,12720,12720,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (802851, 18,  4,5000,  0.5,25440,12720,12720,12720,12720,12720,12720,12720,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (802851, 19,  4,5000, 0.75,25440,12720,12720,12720,12720,12720,12720,12720,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (802851, 20,  2,5000, 0.75,25440,12720,12720,12720,12720,12720,12720,12720,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (802851, 22, 16,5000,  0.5,25440,12720,12720,12720,12720,12720,12720,12720,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802851,   1,2500, 0, 0) /* Strength */
     , (802851,   2,2500, 0, 0) /* Endurance */
     , (802851,   3, 500, 0, 0) /* Quickness */
     , (802851,   4, 500, 0, 0) /* Coordination */
     , (802851,   5, 500, 0, 0) /* Focus */
     , (802851,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802851,   1,800000, 0, 0,800000) /* MaxHealth */
     , (802851,   3,1200000, 0, 0,1200000) /* MaxStamina */
     , (802851,   5,1200000, 0, 0,1200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802851,  6, 0, 3, 0, 650, 0, 0) /* MeleeDefense        Specialized */
     , (802851,  7, 0, 3, 0, 650, 0, 0) /* MissileDefense      Specialized */
     , (802851, 14, 0, 3, 0, 650, 0, 0) /* ArcaneLore          Specialized */
     , (802851, 15, 0, 3, 0, 650, 0, 0) /* MagicDefense        Specialized */
     , (802851, 16, 0, 3, 0, 650, 0, 0) /* ManaConversion      Specialized */
     , (802851, 19, 0, 3, 0, 650, 0, 0) /* AssessPerson        Specialized */
     , (802851, 20, 0, 3, 0, 650, 0, 0) /* Deception           Specialized */
     , (802851, 21, 0, 3, 0, 650, 0, 0) /* Healing             Specialized */
     , (802851, 22, 0, 3, 0, 650, 0, 0) /* Jump                Specialized */
     , (802851, 24, 0, 3, 0, 650, 0, 0) /* Run                 Specialized */
     , (802851, 31, 0, 3, 0,3500, 0, 0) /* CreatureEnchantment Specialized */
     , (802851, 32, 0, 3, 0,3500, 0, 0) /* ItemEnchantment     Specialized */
     , (802851, 33, 0, 3, 0,3500, 0, 0) /* LifeMagic           Specialized */
     , (802851, 34, 0, 3, 0,3500, 0, 0) /* WarMagic            Specialized */
     , (802851, 44, 0, 3, 0,3500, 0, 0) /* HeavyWeapons        Specialized */
     , (802851, 45, 0, 3, 0,3500, 0, 0) /* LightWeapons        Specialized */
     , (802851, 46, 0, 3, 0,3500, 0, 0) /* FinesseWeapons      Specialized */
     , (802851, 47, 0, 3, 0,3500, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802851, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802851, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802851, 17 /* NewEnemy */, 0.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802851, 17 /* NewEnemy */, 0.6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802851, 2,802728,  1,93,    0, False) /* Create Gaerlan's Drain Ring for Wield */
     , (802851, 9,802730,  0,0,     0.1, False) /* Create Elemental Prism for ContainTreasure */
     , (802851, 9,     0,  0,0,     0.9, False) /* Create Nothing for ContainTreasure */;

