DELETE FROM `weenie` WHERE `class_Id` = 803547;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803547, 'Pocket Tank (6000)', 71, '2024-01-22 12:52:04') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803547,   1,         16) /* ItemType - Creature */
     , (803547,   2,         47) /* CreatureType - Shadow */
     , (803547,   3,          3) /* PaletteTemplate - Red */
     , (803547,   6,         -1) /* ItemsCapacity */
     , (803547,   7,         -1) /* ContainersCapacity */
     , (803547,  16,          1) /* ItemUseable - No */
     , (803547,  25,       6000) /* Level */
     , (803547,  93,       3080) /* PhysicsState - ReportCollisions, Gravity */
     , (803547, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803547, 140,          1) /* AiOptions - CanOpenDoors */
     , (803547, 267,        600) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803547,   1, True ) /* Stuck */
     , (803547,  11, False) /* IgnoreCollisions */
     , (803547,  12, True ) /* ReportCollisions */
     , (803547,  13, False) /* Ethereal */
     , (803547,  50, True ) /* NeverFailCasting */
     , (803547,  52, True ) /* AiImmobile */
     , (803547,  65, True ) /* IgnoreMagicResist */
     , (803547,  66, True ) /* IgnoreMagicArmor */
     , (803547, 103, True ) /* NonProjectileMagicImmune */
     , (803547,9039, True ) /* PetIsTank */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803547,   1,      10) /* HeartbeatInterval */
     , (803547,   2,       0) /* HeartbeatTimestamp */
     , (803547,   3,    0.45) /* HealthRate */
     , (803547,   4,     0.5) /* StaminaRate */
     , (803547,   5,       2) /* ManaRate */
     , (803547,  12,     0.5) /* Shade */
     , (803547,  13,     4.5) /* ArmorModVsSlash */
     , (803547,  14,     4.5) /* ArmorModVsPierce */
     , (803547,  15,     4.5) /* ArmorModVsBludgeon */
     , (803547,  16,     4.5) /* ArmorModVsCold */
     , (803547,  17,     4.5) /* ArmorModVsFire */
     , (803547,  18,     4.5) /* ArmorModVsAcid */
     , (803547,  19,     4.5) /* ArmorModVsElectric */
     , (803547,  31,      18) /* VisualAwarenessRange */
     , (803547,  34,     1.1) /* PowerupTime */
     , (803547,  36,       2) /* ChargeSpeed */
     , (803547,  39,     1.6) /* DefaultScale */
     , (803547,  64,     0.05) /* ResistSlash */
     , (803547,  65,     0.05) /* ResistPierce */
     , (803547,  66,     0.05) /* ResistBludgeon */
     , (803547,  67,     0.05) /* ResistFire */
     , (803547,  68,     0.05) /* ResistCold */
     , (803547,  69,     0.05) /* ResistAcid */
     , (803547,  70,     0.05) /* ResistElectric */
     , (803547,  71,       1) /* ResistHealthBoost */
     , (803547,  72,       1) /* ResistStaminaDrain */
     , (803547,  73,       1) /* ResistStaminaBoost */
     , (803547,  74,       1) /* ResistManaDrain */
     , (803547,  75,       1) /* ResistManaBoost */
     , (803547,  80,       3) /* AiUseMagicDelay */
     , (803547, 104,      10) /* ObviousRadarRange */
     , (803547, 122,       2) /* AiAcquireHealth */
     , (803547, 125,     0.01) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803547,   1, 'Pocket Tank Crystal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803547,   1, 0x020008FC) /* Setup */
     , (803547,   2, 0x09000097) /* MotionTable */
     , (803547,   3, 0x20000059) /* SoundTable */
     , (803547,   4, 0x30000027) /* CombatTable */
     , (803547,   6, 0x04000BEF) /* PaletteBase */
     , (803547,   7, 0x10000193) /* ClothingBase */
     , (803547,   8, 0x06001B4B) /* Icon */
     , (803547,  22, 0x34000073) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803547,  0,  4,  0,    0, 2500,  750,  750,  750,  750,  750,  750,  750,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803547,  1,  4,  0,    0, 2500,  750,  750,  750,  750,  750,  750,  750,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803547,  2,  4,  0,    0, 2500,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803547,  3,  4,  0,    0, 2500,  750,  750,  750,  750,  750,  750,  750,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803547,  4,  4,  0,    0, 2500,  750,  750,  750,  750,  750,  750,  750,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803547,  5,  4,500,  0.4, 2500,  750,  750,  750,  750,  750,  750,  750,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803547,  6,  4,  0,    0, 2500,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803547,  7,  4,  0,    0, 2500,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803547,  8,  4,500,  0.4, 2500,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803547,   1, 1500, 0, 0) /* Strength */
     , (803547,   2, 1500, 0, 0) /* Endurance */
     , (803547,   3, 1500, 0, 0) /* Quickness */
     , (803547,   4, 1500, 0, 0) /* Coordination */
     , (803547,   5, 1500, 0, 0) /* Focus */
     , (803547,   6, 1500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803547,   1, 15000, 0, 0,15000) /* MaxHealth */
     , (803547,   3, 15000, 0, 0,15000) /* MaxStamina */
     , (803547,   5, 15000, 0, 0,15000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803547,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (803547,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (803547, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (803547, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (803547, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (803547, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (803547, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (803547, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (803547, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (803547, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (803547, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (803547, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803547, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803547, 14 /* Taunt */, 0.10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 73 /* PetCastSpellOnOwner */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4310 /* Incantation of Heal Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803547, 2, 15865,  0,93,  0.2, False) /* Create Olthoi Amuli Leggings (37201) for Wield */;

