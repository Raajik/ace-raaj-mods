DELETE FROM `weenie` WHERE `class_Id` = 803549;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803549, 'Pocket Tank (8000)', 71, '2024-01-22 12:52:04') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803549,   1,         16) /* ItemType - Creature */
     , (803549,   2,         47) /* CreatureType - Shadow */
     , (803549,   3,          3) /* PaletteTemplate - Red */
     , (803549,   6,         -1) /* ItemsCapacity */
     , (803549,   7,         -1) /* ContainersCapacity */
     , (803549,  16,          1) /* ItemUseable - No */
     , (803549,  25,       8000) /* Level */
     , (803549,  93,       3080) /* PhysicsState - ReportCollisions, Gravity */
     , (803549, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803549, 140,          1) /* AiOptions - CanOpenDoors */
     , (803549, 267,        600) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803549,   1, True ) /* Stuck */
     , (803549,  11, False) /* IgnoreCollisions */
     , (803549,  12, True ) /* ReportCollisions */
     , (803549,  13, False) /* Ethereal */
     , (803549,  50, True ) /* NeverFailCasting */
     , (803549,  52, True ) /* AiImmobile */
     , (803549,  65, True ) /* IgnoreMagicResist */
     , (803549,  66, True ) /* IgnoreMagicArmor */
     , (803549, 103, True ) /* NonProjectileMagicImmune */
     , (803549,9039, True ) /* PetIsTank */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803549,   1,      10) /* HeartbeatInterval */
     , (803549,   2,       0) /* HeartbeatTimestamp */
     , (803549,   3,    0.45) /* HealthRate */
     , (803549,   4,     0.5) /* StaminaRate */
     , (803549,   5,       2) /* ManaRate */
     , (803549,  12,     0.5) /* Shade */
     , (803549,  13,       5) /* ArmorModVsSlash */
     , (803549,  14,       5) /* ArmorModVsPierce */
     , (803549,  15,       5) /* ArmorModVsBludgeon */
     , (803549,  16,       5) /* ArmorModVsCold */
     , (803549,  17,       5) /* ArmorModVsFire */
     , (803549,  18,       5) /* ArmorModVsAcid */
     , (803549,  19,       5) /* ArmorModVsElectric */
     , (803549,  31,      18) /* VisualAwarenessRange */
     , (803549,  34,     1.1) /* PowerupTime */
     , (803549,  36,       2) /* ChargeSpeed */
     , (803549,  39,     1.6) /* DefaultScale */
     , (803549,  64,     0.01) /* ResistSlash */
     , (803549,  65,     0.01) /* ResistPierce */
     , (803549,  66,     0.01) /* ResistBludgeon */
     , (803549,  67,     0.01) /* ResistFire */
     , (803549,  68,     0.01) /* ResistCold */
     , (803549,  69,     0.01) /* ResistAcid */
     , (803549,  70,     0.01) /* ResistElectric */
     , (803549,  71,       1) /* ResistHealthBoost */
     , (803549,  72,       1) /* ResistStaminaDrain */
     , (803549,  73,       1) /* ResistStaminaBoost */
     , (803549,  74,       1) /* ResistManaDrain */
     , (803549,  75,       1) /* ResistManaBoost */
     , (803549,  80,       3) /* AiUseMagicDelay */
     , (803549, 104,      10) /* ObviousRadarRange */
     , (803549, 122,       2) /* AiAcquireHealth */
     , (803549, 125,     0.01) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803549,   1, 'Pocket Tank Crystal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803549,   1, 0x020008FC) /* Setup */
     , (803549,   2, 0x09000097) /* MotionTable */
     , (803549,   3, 0x20000059) /* SoundTable */
     , (803549,   4, 0x30000027) /* CombatTable */
     , (803549,   6, 0x04000BEF) /* PaletteBase */
     , (803549,   7, 0x10000193) /* ClothingBase */
     , (803549,   8, 0x06001B4B) /* Icon */
     , (803549,  22, 0x34000073) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803549,  0,  4,  0,    0, 3500,  750,  750,  750,  750,  750,  750,  750,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803549,  1,  4,  0,    0, 3500,  750,  750,  750,  750,  750,  750,  750,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803549,  2,  4,  0,    0, 3500,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803549,  3,  4,  0,    0, 3500,  750,  750,  750,  750,  750,  750,  750,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803549,  4,  4,  0,    0, 3500,  750,  750,  750,  750,  750,  750,  750,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803549,  5,  4,500,  0.4, 3500,  750,  750,  750,  750,  750,  750,  750,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803549,  6,  4,  0,    0, 3500,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803549,  7,  4,  0,    0, 3500,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803549,  8,  4,500,  0.4, 3500,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803549,   1, 2500, 0, 0) /* Strength */
     , (803549,   2, 2500, 0, 0) /* Endurance */
     , (803549,   3, 2500, 0, 0) /* Quickness */
     , (803549,   4, 2500, 0, 0) /* Coordination */
     , (803549,   5, 2500, 0, 0) /* Focus */
     , (803549,   6, 2500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803549,   1, 25000, 0, 0,25000) /* MaxHealth */
     , (803549,   3, 25000, 0, 0,25000) /* MaxStamina */
     , (803549,   5, 25000, 0, 0,25000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803549,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (803549,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (803549, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (803549, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (803549, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (803549, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (803549, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (803549, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (803549, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (803549, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (803549, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (803549, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803549, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803549, 14 /* Taunt */, 0.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 73 /* PetCastSpellOnOwner */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4310 /* Incantation of Heal Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803549, 2, 15865,  0,93,  0.2, False) /* Create Olthoi Amuli Leggings (37201) for Wield */;

