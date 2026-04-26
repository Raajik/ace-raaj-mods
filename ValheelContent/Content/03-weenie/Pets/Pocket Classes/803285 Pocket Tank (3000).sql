DELETE FROM `weenie` WHERE `class_Id` = 803285;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803285, 'Pocket Tank (3000)', 71, '2024-01-22 12:52:04') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803285,   1,         16) /* ItemType - Creature */
     , (803285,   2,         47) /* CreatureType - Shadow */
     , (803285,   3,          3) /* PaletteTemplate - Red */
     , (803285,   6,         -1) /* ItemsCapacity */
     , (803285,   7,         -1) /* ContainersCapacity */
     , (803285,  16,          1) /* ItemUseable - No */
     , (803285,  25,       3000) /* Level */
     , (803285,  93,       3080) /* PhysicsState - ReportCollisions, Gravity */
     , (803285, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803285, 140,          1) /* AiOptions - CanOpenDoors */
     , (803285, 267,        600) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803285,   1, True ) /* Stuck */
     , (803285,  11, False) /* IgnoreCollisions */
     , (803285,  12, True ) /* ReportCollisions */
     , (803285,  13, False) /* Ethereal */
     , (803285,  50, True ) /* NeverFailCasting */
     , (803285,  52, True ) /* AiImmobile */
     , (803285,  65, True ) /* IgnoreMagicResist */
     , (803285,  66, True ) /* IgnoreMagicArmor */
     , (803285, 103, True ) /* NonProjectileMagicImmune */
     , (803285,9039, True ) /* PetIsTank */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803285,   1,      10) /* HeartbeatInterval */
     , (803285,   2,       0) /* HeartbeatTimestamp */
     , (803285,   3,    0.45) /* HealthRate */
     , (803285,   4,     0.5) /* StaminaRate */
     , (803285,   5,       2) /* ManaRate */
     , (803285,  12,     0.5) /* Shade */
     , (803285,  13,     3.5) /* ArmorModVsSlash */
     , (803285,  14,     3.5) /* ArmorModVsPierce */
     , (803285,  15,     3.5) /* ArmorModVsBludgeon */
     , (803285,  16,     3.5) /* ArmorModVsCold */
     , (803285,  17,     3.5) /* ArmorModVsFire */
     , (803285,  18,     3.5) /* ArmorModVsAcid */
     , (803285,  19,     3.5) /* ArmorModVsElectric */
     , (803285,  31,      18) /* VisualAwarenessRange */
     , (803285,  34,     1.1) /* PowerupTime */
     , (803285,  36,       2) /* ChargeSpeed */
     , (803285,  39,     1.6) /* DefaultScale */
     , (803285,  64,     0.1) /* ResistSlash */
     , (803285,  65,     0.1) /* ResistPierce */
     , (803285,  66,     0.1) /* ResistBludgeon */
     , (803285,  67,     0.1) /* ResistFire */
     , (803285,  68,     0.1) /* ResistCold */
     , (803285,  69,     0.1) /* ResistAcid */
     , (803285,  70,     0.1) /* ResistElectric */
     , (803285,  71,       1) /* ResistHealthBoost */
     , (803285,  72,       1) /* ResistStaminaDrain */
     , (803285,  73,       1) /* ResistStaminaBoost */
     , (803285,  74,       1) /* ResistManaDrain */
     , (803285,  75,       1) /* ResistManaBoost */
     , (803285,  80,       3) /* AiUseMagicDelay */
     , (803285, 104,      10) /* ObviousRadarRange */
     , (803285, 122,       2) /* AiAcquireHealth */
     , (803285, 125,     0.1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803285,   1, 'Pocket Tank Crystal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803285,   1, 0x020008FC) /* Setup */
     , (803285,   2, 0x09000097) /* MotionTable */
     , (803285,   3, 0x20000059) /* SoundTable */
     , (803285,   4, 0x30000027) /* CombatTable */
     , (803285,   6, 0x04000BEF) /* PaletteBase */
     , (803285,   7, 0x10000193) /* ClothingBase */
     , (803285,   8, 0x06001B4B) /* Icon */
     , (803285,  22, 0x34000073) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803285,  0,  4,  0,    0, 1500,  750,  750,  750,  750,  750,  750,  750,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803285,  1,  4,  0,    0, 1500,  750,  750,  750,  750,  750,  750,  750,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803285,  2,  4,  0,    0, 1500,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803285,  3,  4,  0,    0, 1500,  750,  750,  750,  750,  750,  750,  750,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803285,  4,  4,  0,    0, 1500,  750,  750,  750,  750,  750,  750,  750,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803285,  5,  4,500,  0.4, 1500,  750,  750,  750,  750,  750,  750,  750,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803285,  6,  4,  0,    0, 1500,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803285,  7,  4,  0,    0, 1500,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803285,  8,  4,500,  0.4, 1500,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803285,   1, 750, 0, 0) /* Strength */
     , (803285,   2, 750, 0, 0) /* Endurance */
     , (803285,   3, 750, 0, 0) /* Quickness */
     , (803285,   4, 750, 0, 0) /* Coordination */
     , (803285,   5, 750, 0, 0) /* Focus */
     , (803285,   6, 750, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803285,   1, 7500, 0, 0,7500) /* MaxHealth */
     , (803285,   3, 7500, 0, 0,7500) /* MaxStamina */
     , (803285,   5, 7500, 0, 0,7500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803285,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (803285,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (803285, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (803285, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (803285, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (803285, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (803285, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (803285, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (803285, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (803285, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (803285, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (803285, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803285, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803285, 14 /* Taunt */, 0.05, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 73 /* PetCastSpellOnOwner */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4310 /* Incantation of Heal Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803285, 2, 15865,  0,93,  0.2, False) /* Create Olthoi Amuli Leggings (37201) for Wield */;

