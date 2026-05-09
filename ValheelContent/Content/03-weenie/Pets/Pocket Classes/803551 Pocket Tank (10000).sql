DELETE FROM `weenie` WHERE `class_Id` = 803551;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803551, 'Pocket Tank (10000)', 71, '2025-06-12 09:55:12') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803551,   1,         16) /* ItemType - Creature */
     , (803551,   2,         47) /* CreatureType - Shadow */
     , (803551,   3,          3) /* PaletteTemplate - Red */
     , (803551,   6,         -1) /* ItemsCapacity */
     , (803551,   7,         -1) /* ContainersCapacity */
     , (803551,  16,          1) /* ItemUseable - No */
     , (803551,  25,      10000) /* Level */
     , (803551,  93,       3080) /* PhysicsState - ReportCollisions, Gravity */
     , (803551, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803551, 140,          1) /* AiOptions - CanOpenDoors */
     , (803551, 267,        600) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803551,   1, True ) /* Stuck */
     , (803551,  11, False) /* IgnoreCollisions */
     , (803551,  12, True ) /* ReportCollisions */
     , (803551,  13, False) /* Ethereal */
     , (803551,  50, True ) /* NeverFailCasting */
     , (803551,  52, True ) /* AiImmobile */
     , (803551,  65, True ) /* IgnoreMagicResist */
     , (803551,  66, True ) /* IgnoreMagicArmor */
     , (803551, 103, True ) /* NonProjectileMagicImmune */
     , (803551,9039, True ) /* PetIsTank */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803551,   1,      10) /* HeartbeatInterval */
     , (803551,   2,       0) /* HeartbeatTimestamp */
     , (803551,   3,    0.45) /* HealthRate */
     , (803551,   4,     0.5) /* StaminaRate */
     , (803551,   5,       2) /* ManaRate */
     , (803551,  12,     0.5) /* Shade */
     , (803551,  13,       6) /* ArmorModVsSlash */
     , (803551,  14,       6) /* ArmorModVsPierce */
     , (803551,  15,       6) /* ArmorModVsBludgeon */
     , (803551,  16,       6) /* ArmorModVsCold */
     , (803551,  17,       6) /* ArmorModVsFire */
     , (803551,  18,       6) /* ArmorModVsAcid */
     , (803551,  19,       6) /* ArmorModVsElectric */
     , (803551,  31,      18) /* VisualAwarenessRange */
     , (803551,  34,     1.1) /* PowerupTime */
     , (803551,  36,       2) /* ChargeSpeed */
     , (803551,  39,     1.6) /* DefaultScale */
     , (803551,  64,   0.005) /* ResistSlash */
     , (803551,  65,   0.005) /* ResistPierce */
     , (803551,  66,   0.005) /* ResistBludgeon */
     , (803551,  67,   0.005) /* ResistFire */
     , (803551,  68,   0.005) /* ResistCold */
     , (803551,  69,   0.005) /* ResistAcid */
     , (803551,  70,   0.005) /* ResistElectric */
     , (803551,  71,       1) /* ResistHealthBoost */
     , (803551,  72,       1) /* ResistStaminaDrain */
     , (803551,  73,       1) /* ResistStaminaBoost */
     , (803551,  74,       1) /* ResistManaDrain */
     , (803551,  75,       1) /* ResistManaBoost */
     , (803551,  80,       3) /* AiUseMagicDelay */
     , (803551, 104,      10) /* ObviousRadarRange */
     , (803551, 122,       2) /* AiAcquireHealth */
     , (803551, 125,   0.005) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803551,   1, 'Pocket Tank Crystal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803551,   1, 0x020008FC) /* Setup */
     , (803551,   2, 0x09000097) /* MotionTable */
     , (803551,   3, 0x20000059) /* SoundTable */
     , (803551,   4, 0x30000027) /* CombatTable */
     , (803551,   6, 0x04000BEF) /* PaletteBase */
     , (803551,   7, 0x10000193) /* ClothingBase */
     , (803551,   8, 0x06001B4B) /* Icon */
     , (803551,  22, 0x34000073) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803551,  0,  4,  0,    0, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803551,  1,  4,  0,    0, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803551,  2,  4,  0,    0, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803551,  3,  4,  0,    0, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803551,  4,  4,  0,    0, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803551,  5,  4,500,  0.4, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803551,  6,  4,  0,    0, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803551,  7,  4,  0,    0, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803551,  8,  4,500,  0.4, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803551,   1,5000, 0, 0) /* Strength */
     , (803551,   2,5000, 0, 0) /* Endurance */
     , (803551,   3,5000, 0, 0) /* Quickness */
     , (803551,   4,5000, 0, 0) /* Coordination */
     , (803551,   5,5000, 0, 0) /* Focus */
     , (803551,   6,5000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803551,   1, 50000, 0, 0,50000) /* MaxHealth */
     , (803551,   3, 50000, 0, 0,50000) /* MaxStamina */
     , (803551,   5, 50000, 0, 0,50000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803551,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (803551,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (803551, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (803551, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (803551, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (803551, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (803551, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (803551, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (803551, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (803551, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (803551, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (803551, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803551, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803551, 14 /* Taunt */, 0.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 73 /* PetCastSpellOnOwner */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4310 /* Incantation of Heal Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803551, 2, 15865,  0,93,  0.2, False) /* Create Olthoi Amuli Leggings (37201) for Wield */;

