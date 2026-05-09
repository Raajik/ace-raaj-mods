DELETE FROM `weenie` WHERE `class_Id` = 803261;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803261, 'Totem of Offense', 71, '2024-01-22 09:12:17') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803261,   1,         16) /* ItemType - Creature */
     , (803261,   2,         47) /* CreatureType - Shadow */
     , (803261,   3,          3) /* PaletteTemplate - Red */
     , (803261,   6,         -1) /* ItemsCapacity */
     , (803261,   7,         -1) /* ContainersCapacity */
     , (803261,  16,          1) /* ItemUseable - No */
     , (803261,  25,        500) /* Level */
     , (803261,  93,       3080) /* PhysicsState - ReportCollisions, Gravity */
     , (803261, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803261, 140,          1) /* AiOptions - CanOpenDoors */
     , (803261, 267,        600) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803261,   1, True ) /* Stuck */
     , (803261,  11, False) /* IgnoreCollisions */
     , (803261,  12, True ) /* ReportCollisions */
     , (803261,  13, False) /* Ethereal */
     , (803261,  50, True ) /* NeverFailCasting */
     , (803261,  52, True ) /* AiImmobile */
     , (803261,  65, True ) /* IgnoreMagicResist */
     , (803261,  66, True ) /* IgnoreMagicArmor */
     , (803261, 103, True ) /* NonProjectileMagicImmune */
     , (803261,9038, True ) /* PetIsDPS */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803261,   1,      10) /* HeartbeatInterval */
     , (803261,   2,       0) /* HeartbeatTimestamp */
     , (803261,   3,    0.45) /* HealthRate */
     , (803261,   4,     0.5) /* StaminaRate */
     , (803261,   5,       2) /* ManaRate */
     , (803261,  12,     0.5) /* Shade */
     , (803261,  13,       2) /* ArmorModVsSlash */
     , (803261,  14,       2) /* ArmorModVsPierce */
     , (803261,  15,       2) /* ArmorModVsBludgeon */
     , (803261,  16,       2) /* ArmorModVsCold */
     , (803261,  17,       2) /* ArmorModVsFire */
     , (803261,  18,       2) /* ArmorModVsAcid */
     , (803261,  19,       2) /* ArmorModVsElectric */
     , (803261,  31,      18) /* VisualAwarenessRange */
     , (803261,  34,     1.1) /* PowerupTime */
     , (803261,  36,       2) /* ChargeSpeed */
     , (803261,  39,     1.2) /* DefaultScale */
     , (803261,  64,     0.7) /* ResistSlash */
     , (803261,  65,     0.7) /* ResistPierce */
     , (803261,  66,     0.7) /* ResistBludgeon */
     , (803261,  67,     0.7) /* ResistFire */
     , (803261,  68,     0.7) /* ResistCold */
     , (803261,  69,     0.7) /* ResistAcid */
     , (803261,  70,     0.7) /* ResistElectric */
     , (803261,  71,       1) /* ResistHealthBoost */
     , (803261,  72,       1) /* ResistStaminaDrain */
     , (803261,  73,       1) /* ResistStaminaBoost */
     , (803261,  74,       1) /* ResistManaDrain */
     , (803261,  75,       1) /* ResistManaBoost */
     , (803261,  80,       3) /* AiUseMagicDelay */
     , (803261, 104,      10) /* ObviousRadarRange */
     , (803261, 122,       2) /* AiAcquireHealth */
     , (803261, 125,     0.7) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803261,   1, 'Pocket Damage Crystal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803261,   1, 0x020008FC) /* Setup */
     , (803261,   2, 0x09000097) /* MotionTable */
     , (803261,   3, 0x20000059) /* SoundTable */
     , (803261,   4, 0x30000027) /* CombatTable */
     , (803261,   6, 0x04000BEF) /* PaletteBase */
     , (803261,   7, 0x10000193) /* ClothingBase */
     , (803261,   8, 0x06001B4B) /* Icon */
     , (803261,  22, 0x34000073) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803261,  0,  4,15000,    0,  500,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803261,  1,  4,15000,    0,  500,  250,  250,  250,  250,  250,  250,  250,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803261,  2,  4,15000,    0,  500,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803261,  3,  4,15000,    0,  500,  250,  250,  250,  250,  250,  250,  250,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803261,  4,  4,15000,    0,  500,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803261,  5,  4,15000,  0.4,  500,  250,  250,  250,  250,  250,  250,  250,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803261,  6,  4,15000,    0,  500,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803261,  7,  4,15000,    0,  500,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803261,  8,  4,15000,  0.4,  500,  250,  250,  250,  250,  250,  250,  250,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803261,   1,3000, 0, 0) /* Strength */
     , (803261,   2,3000, 0, 0) /* Endurance */
     , (803261,   3,3000, 0, 0) /* Quickness */
     , (803261,   4,3000, 0, 0) /* Coordination */
     , (803261,   5,3000, 0, 0) /* Focus */
     , (803261,   6,3000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803261,   1, 15000, 0, 0,15000) /* MaxHealth */
     , (803261,   3, 15000, 0, 0,15000) /* MaxStamina */
     , (803261,   5, 15000, 0, 0,15000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803261,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (803261,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (803261, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (803261, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (803261, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (803261, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (803261, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (803261, 34, 0, 3, 0,6000, 0, 0) /* WarMagic            Specialized */
     , (803261, 44, 0, 3, 0,6000, 0, 0) /* HeavyWeapons        Specialized */
     , (803261, 45, 0, 3, 0,6000, 0, 0) /* LightWeapons        Specialized */
     , (803261, 46, 0, 3, 0,6000, 0, 0) /* FinesseWeapons      Specialized */
     , (803261, 47, 0, 3, 0,6000, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803261, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803261, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803261, 17 /* NewEnemy */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/* INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803261, 2,803176,  0,93,  0.2, False) /* Create Olthoi Amuli Leggings (37201) for Wield */;

