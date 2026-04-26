DELETE FROM `weenie` WHERE `class_Id` = 803259;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803259, 'Totem of Defense', 71, '2024-01-22 12:52:04') /* CombatPet */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803259,   1,         16) /* ItemType - Creature */
     , (803259,   2,         47) /* CreatureType - Shadow */
     , (803259,   3,          3) /* PaletteTemplate - Red */
     , (803259,   6,         -1) /* ItemsCapacity */
     , (803259,   7,         -1) /* ContainersCapacity */
     , (803259,  16,          1) /* ItemUseable - No */
     , (803259,  25,       1500) /* Level */
     , (803259,  93,       3080) /* PhysicsState - ReportCollisions, Gravity */
     , (803259, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803259, 140,          1) /* AiOptions - CanOpenDoors */
     , (803259, 267,        600) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803259,   1, True ) /* Stuck */
     , (803259,  11, False) /* IgnoreCollisions */
     , (803259,  12, True ) /* ReportCollisions */
     , (803259,  13, False) /* Ethereal */
     , (803259,  50, True ) /* NeverFailCasting */
     , (803259,  52, True ) /* AiImmobile */
     , (803259,  65, True ) /* IgnoreMagicResist */
     , (803259,  66, True ) /* IgnoreMagicArmor */
     , (803259, 103, True ) /* NonProjectileMagicImmune */
     , (803259,9039, True ) /* PetIsTank */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803259,   1,      10) /* HeartbeatInterval */
     , (803259,   2,       0) /* HeartbeatTimestamp */
     , (803259,   3,    0.45) /* HealthRate */
     , (803259,   4,     0.5) /* StaminaRate */
     , (803259,   5,       2) /* ManaRate */
     , (803259,  12,     0.5) /* Shade */
     , (803259,  13,       3) /* ArmorModVsSlash */
     , (803259,  14,       3) /* ArmorModVsPierce */
     , (803259,  15,       3) /* ArmorModVsBludgeon */
     , (803259,  16,       3) /* ArmorModVsCold */
     , (803259,  17,       3) /* ArmorModVsFire */
     , (803259,  18,       3) /* ArmorModVsAcid */
     , (803259,  19,       3) /* ArmorModVsElectric */
     , (803259,  31,      18) /* VisualAwarenessRange */
     , (803259,  34,     1.1) /* PowerupTime */
     , (803259,  36,       2) /* ChargeSpeed */
     , (803259,  39,     1.2) /* DefaultScale */
     , (803259,  64,     0.1) /* ResistSlash */
     , (803259,  65,     0.1) /* ResistPierce */
     , (803259,  66,     0.1) /* ResistBludgeon */
     , (803259,  67,     0.1) /* ResistFire */
     , (803259,  68,     0.1) /* ResistCold */
     , (803259,  69,     0.1) /* ResistAcid */
     , (803259,  70,     0.1) /* ResistElectric */
     , (803259,  71,       1) /* ResistHealthBoost */
     , (803259,  72,       1) /* ResistStaminaDrain */
     , (803259,  73,       1) /* ResistStaminaBoost */
     , (803259,  74,       1) /* ResistManaDrain */
     , (803259,  75,       1) /* ResistManaBoost */
     , (803259,  80,       3) /* AiUseMagicDelay */
     , (803259, 104,      10) /* ObviousRadarRange */
     , (803259, 122,       2) /* AiAcquireHealth */
     , (803259, 125,     0.1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803259,   1, 'Pocket Tank Crystal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803259,   1, 0x020008FC) /* Setup */
     , (803259,   2, 0x09000097) /* MotionTable */
     , (803259,   3, 0x20000059) /* SoundTable */
     , (803259,   4, 0x30000027) /* CombatTable */
     , (803259,   6, 0x04000BEF) /* PaletteBase */
     , (803259,   7, 0x10000193) /* ClothingBase */
     , (803259,   8, 0x06001B4B) /* Icon */
     , (803259,  22, 0x34000073) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803259,  0,  4,  0,    0, 1000,  750,  750,  750,  750,  750,  750,  750,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803259,  1,  4,  0,    0, 1000,  750,  750,  750,  750,  750,  750,  750,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803259,  2,  4,  0,    0, 1000,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803259,  3,  4,  0,    0, 1000,  750,  750,  750,  750,  750,  750,  750,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803259,  4,  4,  0,    0, 1000,  750,  750,  750,  750,  750,  750,  750,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803259,  5,  4,500,  0.4, 1000,  750,  750,  750,  750,  750,  750,  750,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803259,  6,  4,  0,    0, 1000,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803259,  7,  4,  0,    0, 1000,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803259,  8,  4,500,  0.4, 1000,  750,  750,  750,  750,  750,  750,  750,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803259,   1, 500, 0, 0) /* Strength */
     , (803259,   2, 500, 0, 0) /* Endurance */
     , (803259,   3, 500, 0, 0) /* Quickness */
     , (803259,   4, 500, 0, 0) /* Coordination */
     , (803259,   5, 500, 0, 0) /* Focus */
     , (803259,   6, 500, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803259,   1, 5000, 0, 0,5000) /* MaxHealth */
     , (803259,   3, 5000, 0, 0,5000) /* MaxStamina */
     , (803259,   5, 5000, 0, 0,5000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803259,  6, 0, 3, 0, 235, 0, 0) /* MeleeDefense        Specialized */
     , (803259,  7, 0, 3, 0, 345, 0, 0) /* MissileDefense      Specialized */
     , (803259, 14, 0, 2, 0, 320, 0, 0) /* ArcaneLore          Trained */
     , (803259, 15, 0, 3, 0, 205, 0, 0) /* MagicDefense        Specialized */
     , (803259, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (803259, 31, 0, 3, 0, 310, 0, 0) /* CreatureEnchantment Specialized */
     , (803259, 33, 0, 3, 0, 310, 0, 0) /* LifeMagic           Specialized */
     , (803259, 34, 0, 3, 0, 310, 0, 0) /* WarMagic            Specialized */
     , (803259, 44, 0, 3, 0, 325, 0, 0) /* HeavyWeapons        Specialized */
     , (803259, 45, 0, 3, 0, 325, 0, 0) /* LightWeapons        Specialized */
     , (803259, 46, 0, 3, 0, 380, 0, 0) /* FinesseWeapons      Specialized */
     , (803259, 47, 0, 3, 0, 320, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803259, 5 /* HeartBeat */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4311 /* Incantation of Heal Self */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803259, 2, 15865,  0,93,  0.2, False) /* Create Olthoi Amuli Leggings (37201) for Wield */;

