DELETE FROM `weenie` WHERE `class_Id` = 803236;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803236, 'Dark Overlord', 10, '2024-01-16 08:01:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803236,   0,          0) /*  */
     , (803236,   1,         16) /* ItemType - Creature */
     , (803236,   2,         22) /* CreatureType - Crystal */
     , (803236,   3,         13) /* PaletteTemplate - Red */
     , (803236,   6,         -1) /* ItemsCapacity */
     , (803236,   7,         -1) /* ContainersCapacity */
     , (803236,  16,          1) /* ItemUseable - No */
     , (803236,  25,       5000) /* Level */
     , (803236,  27,          1) /* ArmorType - Cloth */
     , (803236,  40,          2) /* CombatMode - Melee */
     , (803236,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803236, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803236, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803236, 140,          1) /* AiOptions - CanOpenDoors */
     , (803236, 146,          1) /* XpOverride */
     , (803236, 332,     950000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803236,   1, False) /* Stuck */
     , (803236,   6, True ) /* AiUsesMana */
     , (803236,  11, False) /* IgnoreCollisions */
     , (803236,  12, True ) /* ReportCollisions */
     , (803236,  13, False) /* Ethereal */
     , (803236,  19, True ) /* Attackable */
     , (803236,  50, True ) /* NeverFailCasting */
     , (803236,  65, True ) /* IgnoreMagicResist */
     , (803236,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803236,   1,       5) /* HeartbeatInterval */
     , (803236,   2,       0) /* HeartbeatTimestamp */
     , (803236,   3,     0.4) /* HealthRate */
     , (803236,   4,       5) /* StaminaRate */
     , (803236,   5,       1) /* ManaRate */
     , (803236,  13,       7) /* ArmorModVsSlash */
     , (803236,  14,       7) /* ArmorModVsPierce */
     , (803236,  15,       7) /* ArmorModVsBludgeon */
     , (803236,  16,       7) /* ArmorModVsCold */
     , (803236,  17,       7) /* ArmorModVsFire */
     , (803236,  18,       7) /* ArmorModVsAcid */
     , (803236,  19,       7) /* ArmorModVsElectric */
     , (803236,  31,      30) /* VisualAwarenessRange */
     , (803236,  34,       1) /* PowerupTime */
     , (803236,  36,       1) /* ChargeSpeed */
     , (803236,  39,     2.3) /* DefaultScale */
     , (803236,  64,   0.001) /* ResistSlash */
     , (803236,  65,   0.001) /* ResistPierce */
     , (803236,  66,   0.001) /* ResistBludgeon */
     , (803236,  67,   0.001) /* ResistFire */
     , (803236,  68,   0.001) /* ResistCold */
     , (803236,  69,   0.001) /* ResistAcid */
     , (803236,  70,   0.001) /* ResistElectric */
     , (803236,  71,       1) /* ResistHealthBoost */
     , (803236,  72,       1) /* ResistStaminaDrain */
     , (803236,  73,       1) /* ResistStaminaBoost */
     , (803236,  74,       1) /* ResistManaDrain */
     , (803236,  75,       1) /* ResistManaBoost */
     , (803236,  80,       3) /* AiUseMagicDelay */
     , (803236, 104,      10) /* ObviousRadarRange */
     , (803236, 117,     0.5) /* FocusedProbability */
     , (803236, 122,       2) /* AiAcquireHealth */
     , (803236, 125,   0.002) /* ResistHealthDrain */
     , (803236, 166,   0.002) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803236,   1, 'Dark Overlord') /* Name */
     , (803236,  45, 'ENTER') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803236,   1, 0x020013F1) /* Setup */
     , (803236,   2, 0x09000001) /* MotionTable */
     , (803236,   3, 0x20000001) /* SoundTable */
     , (803236,   4, 0x30000028) /* CombatTable */
     , (803236,   8, 0x06001BBE) /* Icon */
     , (803236,  22, 0x34000063) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803236,  0,  4,  0,    0,90000,45000,45000,45000,45000,45000,45000,45000,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803236,  1,  4,  0,    0,90000,45000,45000,45000,45000,45000,45000,45000,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803236,  2,  4,  0,    0,90000,45000,45000,45000,45000,45000,45000,45000,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803236,  3,  4,  0,    0,90000,45000,45000,45000,45000,45000,45000,45000,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803236,  4,  4,  0,    0,90000,45000,45000,45000,45000,45000,45000,45000,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803236,  5,  4,100000, 0.75,90000,45000,45000,45000,45000,45000,45000,45000,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803236,  6,  4,  0,    0,90000,45000,45000,45000,45000,45000,45000,45000,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803236,  7,  4,  0,    0,90000,45000,45000,45000,45000,45000,45000,45000,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803236,  8,  4,100000, 0.75,90000,45000,45000,45000,45000,45000,45000,45000,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803236,   1,100000, 0, 0) /* Strength */
     , (803236,   2, 560, 0, 0) /* Endurance */
     , (803236,   3, 550, 0, 0) /* Quickness */
     , (803236,   4, 500, 0, 0) /* Coordination */
     , (803236,   5, 540, 0, 0) /* Focus */
     , (803236,   6, 590, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803236,   1,2500000, 0, 0,2500000) /* MaxHealth */
     , (803236,   3,300000, 0, 0,300000) /* MaxStamina */
     , (803236,   5,300000, 0, 0,300000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803236,  6, 0, 3, 0,2300, 0, 0) /* MeleeDefense        Specialized */
     , (803236,  7, 0, 3, 0,1375, 0, 0) /* MissileDefense      Specialized */
     , (803236, 14, 0, 3, 0, 220, 0, 0) /* ArcaneLore          Specialized */
     , (803236, 15, 0, 3, 0, 600, 0, 0) /* MagicDefense        Specialized */
     , (803236, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (803236, 31, 0, 3, 0,2000, 0, 0) /* CreatureEnchantment Specialized */
     , (803236, 33, 0, 3, 0,2000, 0, 0) /* LifeMagic           Specialized */
     , (803236, 34, 0, 3, 0,2000, 0, 0) /* WarMagic            Specialized */
     , (803236, 45, 0, 3, 0,2000, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803236, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803236, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 16 /* WorldBroadcast */, 0, 1, NULL, 'With a blade glowing with holy light, the Dark Overlord has been slain!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803236, 9,803238,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803236, 9,803238,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803236, 9,803238,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803236, 9,803238,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803236, 9,803238,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803236, 9,803238,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803236, 9,803238,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803236, 9,803238,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803236, 9,803238,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */;

