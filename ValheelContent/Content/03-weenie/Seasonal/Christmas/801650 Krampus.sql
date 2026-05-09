DELETE FROM `weenie` WHERE `class_Id` = 801650;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801650, 'Krampus', 10, '2022-12-01 12:16:07') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801650,   1,         16) /* ItemType - Creature */
     , (801650,   2,         14) /* CreatureType - Undead */
     , (801650,   3,         69) /* PaletteTemplate - YellowSlime */
     , (801650,   6,         -1) /* ItemsCapacity */
     , (801650,   7,         -1) /* ContainersCapacity */
     , (801650,  16,          1) /* ItemUseable - No */
     , (801650,  25,        500) /* Level */
     , (801650,  27,          0) /* ArmorType - None */
     , (801650,  40,          1) /* CombatMode - NonCombat */
     , (801650,  68,          3) /* TargetingTactic - Random, Focused */
     , (801650,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801650, 101,          3) /* AiAllowedCombatStyle - Unarmed, OneHanded */
     , (801650, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801650, 140,          1) /* AiOptions - CanOpenDoors */
     , (801650, 146,  500000000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801650,   1, True ) /* Stuck */
     , (801650,   6, True ) /* AiUsesMana */
     , (801650,  11, False) /* IgnoreCollisions */
     , (801650,  12, True ) /* ReportCollisions */
     , (801650,  13, False) /* Ethereal */
     , (801650,  14, True ) /* GravityStatus */
     , (801650,  19, True ) /* Attackable */
     , (801650,  42, True ) /* AllowEdgeSlide */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801650,   1,       5) /* HeartbeatInterval */
     , (801650,   2,       0) /* HeartbeatTimestamp */
     , (801650,   3,      15) /* HealthRate */
     , (801650,   4,     150) /* StaminaRate */
     , (801650,   5,       2) /* ManaRate */
     , (801650,  12,     0.5) /* Shade */
     , (801650,  13,       1) /* ArmorModVsSlash */
     , (801650,  14,       1) /* ArmorModVsPierce */
     , (801650,  15,       1) /* ArmorModVsBludgeon */
     , (801650,  16,     1.2) /* ArmorModVsCold */
     , (801650,  17,       1) /* ArmorModVsFire */
     , (801650,  18,       1) /* ArmorModVsAcid */
     , (801650,  19,       1) /* ArmorModVsElectric */
     , (801650,  31,      18) /* VisualAwarenessRange */
     , (801650,  34,       1) /* PowerupTime */
     , (801650,  36,       1) /* ChargeSpeed */
     , (801650,  39,       2) /* DefaultScale */
     , (801650,  64,     0.1) /* ResistSlash */
     , (801650,  65,     0.1) /* ResistPierce */
     , (801650,  66,     0.1) /* ResistBludgeon */
     , (801650,  67,     0.1) /* ResistFire */
     , (801650,  68,     0.7) /* ResistCold */
     , (801650,  69,     0.1) /* ResistAcid */
     , (801650,  70,     0.1) /* ResistElectric */
     , (801650,  71,       1) /* ResistHealthBoost */
     , (801650,  72,       1) /* ResistStaminaDrain */
     , (801650,  73,       1) /* ResistStaminaBoost */
     , (801650,  74,       1) /* ResistManaDrain */
     , (801650,  75,       1) /* ResistManaBoost */
     , (801650,  80,       3) /* AiUseMagicDelay */
     , (801650, 104,      10) /* ObviousRadarRange */
     , (801650, 125,       1) /* ResistHealthDrain */
     , (801650, 166,     0.4) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801650,   1, 'Krampus') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801650,   1, 0x02000FA5) /* Setup */
     , (801650,   2, 0x09000017) /* MotionTable */
     , (801650,   3, 0x20000016) /* SoundTable */
     , (801650,   4, 0x30000000) /* CombatTable */
     , (801650,   6, 0x040015F0) /* PaletteBase */
     , (801650,   7, 0x100004C0) /* ClothingBase */
     , (801650,   8, 0x06002CF5) /* Icon */
     , (801650,  22, 0x34000028) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801650,  0,  4,100,    0, 1100,  550,  550,  550,  550,  550,  550,  550,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801650,  1,  4,100,    0, 1100,  550,  550,  550,  550,  550,  550,  550,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801650,  2,  4,100,    0, 1100,  550,  550,  550,  550,  550,  550,  550,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801650,  3,  4,100,    0, 1100,  550,  550,  550,  550,  550,  550,  550,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801650,  4,  4,100,    0, 1100,  550,  550,  550,  550,  550,  550,  550,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801650,  5,  4,100, 0.75, 1100,  550,  550,  550,  550,  550,  550,  550,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801650,  6,  4,100,    0, 1100,  550,  550,  550,  550,  550,  550,  550,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801650,  7,  4,100,    0, 1100,  550,  550,  550,  550,  550,  550,  550,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801650,  8,  4,100, 0.75, 1100,  550,  550,  550,  550,  550,  550,  550,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801650,   1, 800, 0, 0) /* Strength */
     , (801650,   2, 500, 0, 0) /* Endurance */
     , (801650,   3, 200, 0, 0) /* Quickness */
     , (801650,   4, 200, 0, 0) /* Coordination */
     , (801650,   5, 200, 0, 0) /* Focus */
     , (801650,   6, 200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801650,   1,570590, 0, 0,570590) /* MaxHealth */
     , (801650,   3, 33330, 0, 0,33330) /* MaxStamina */
     , (801650,   5, 33330, 0, 0,33330) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801650,  6, 0, 3, 0, 113, 0, 0) /* MeleeDefense        Specialized */
     , (801650,  7, 0, 3, 0, 168, 0, 0) /* MissileDefense      Specialized */
     , (801650, 15, 0, 3, 0, 106, 0, 0) /* MagicDefense        Specialized */
     , (801650, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (801650, 31, 0, 3, 0, 110, 0, 0) /* CreatureEnchantment Specialized */
     , (801650, 32, 0, 3, 0, 110, 0, 0) /* ItemEnchantment     Specialized */
     , (801650, 33, 0, 3, 0, 110, 0, 0) /* LifeMagic           Specialized */
     , (801650, 34, 0, 3, 0, 110, 0, 0) /* WarMagic            Specialized */
     , (801650, 44, 0, 3, 0, 517, 0, 0) /* HeavyWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801650, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'Krampus'' body freezes and shatters to the ground. Christmas is saved!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801650, 9, 801649,  0, 0,    1, False) /* Create Cloak of Krampus (801649) for ContainTreasure */
     , (801650, 9, 801649,  0, 0,    1, False) /* Create Cloak of Krampus (801649) for ContainTreasure */
     , (801650, 9, 801649,  0, 0,    1, False) /* Create Cloak of Krampus (801649) for ContainTreasure */
     , (801650, 9, 801649,  0, 0,    1, False) /* Create Cloak of Krampus (801649) for ContainTreasure */
     , (801650, 9, 801649,  0, 0,    1, False) /* Create Cloak of Krampus (801649) for ContainTreasure */
     , (801650, 9, 801649,  0, 0,    1, False) /* Create Cloak of Krampus (801649) for ContainTreasure */
     , (801650, 9, 801649,  0, 0,    1, False) /* Create Cloak of Krampus (801649) for ContainTreasure */
     , (801650, 9, 801649,  0, 0,    1, False) /* Create Cloak of Krampus (801649) for ContainTreasure */
     , (801650, 9, 801649,  0, 0,    1, False) /* Create Cloak of Krampus (801649) for ContainTreasure */
     , (801650, 2, 801651,  1, 14,   0, False) /* Create Candy Stick (801651) for Wield */;

