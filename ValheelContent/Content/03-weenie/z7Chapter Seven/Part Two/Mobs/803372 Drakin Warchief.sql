DELETE FROM `weenie` WHERE `class_Id` = 803372;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803372, 'Drakin Warchief', 10, '2024-03-13 06:12:07') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803372,   1,         16) /* ItemType - Creature */
     , (803372,   2,         71) /* CreatureType - Margul */
     , (803372,   3,         11) /* PaletteTemplate - Maroon */
     , (803372,   6,         -1) /* ItemsCapacity */
     , (803372,   7,         -1) /* ContainersCapacity */
     , (803372,  16,          1) /* ItemUseable - No */
     , (803372,  25,       5000) /* Level */
     , (803372,  27,          0) /* ArmorType - None */
     , (803372,  40,          2) /* CombatMode - Melee */
     , (803372,  68,       0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (803372,  72,         22) /* FriendType - Shadow */
     , (803372,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803372, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803372, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803372, 140,          1) /* AiOptions - CanOpenDoors */
     , (803372, 146,   99999999) /* XpOverride */
     , (803372, 332,   30000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803372,   1, True ) /* Stuck */
     , (803372,   6, True ) /* AiUsesMana */
     , (803372,  11, False) /* IgnoreCollisions */
     , (803372,  12, True ) /* ReportCollisions */
     , (803372,  13, False) /* Ethereal */
     , (803372,  14, True ) /* GravityStatus */
     , (803372,  19, True ) /* Attackable */
     , (803372,  65, True ) /* IgnoreMagicResist */
     , (803372,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803372,   1,       5) /* HeartbeatInterval */
     , (803372,   2,       0) /* HeartbeatTimestamp */
     , (803372,   3,     0.4) /* HealthRate */
     , (803372,   4,       5) /* StaminaRate */
     , (803372,   5,       1) /* ManaRate */
     , (803372,  13,      10) /* ArmorModVsSlash */
     , (803372,  14,      10) /* ArmorModVsPierce */
     , (803372,  15,      10) /* ArmorModVsBludgeon */
     , (803372,  16,      10) /* ArmorModVsCold */
     , (803372,  17,      10) /* ArmorModVsFire */
     , (803372,  18,      10) /* ArmorModVsAcid */
     , (803372,  19,      10) /* ArmorModVsElectric */
     , (803372,  31,      30) /* VisualAwarenessRange */
     , (803372,  34,       1) /* PowerupTime */
     , (803372,  36,       1) /* ChargeSpeed */
     , (803372,  39,       4) /* DefaultScale */
     , (803372,  64,   0.001) /* ResistSlash */
     , (803372,  65,   0.001) /* ResistPierce */
     , (803372,  66,   0.001) /* ResistBludgeon */
     , (803372,  67,   0.001) /* ResistFire */
     , (803372,  68,   0.001) /* ResistCold */
     , (803372,  69,   0.003) /* ResistAcid */
     , (803372,  70,   0.001) /* ResistElectric */
     , (803372,  71,       1) /* ResistHealthBoost */
     , (803372,  72,       1) /* ResistStaminaDrain */
     , (803372,  73,       1) /* ResistStaminaBoost */
     , (803372,  74,       1) /* ResistManaDrain */
     , (803372,  75,       1) /* ResistManaBoost */
     , (803372,  80,       3) /* AiUseMagicDelay */
     , (803372, 104,      10) /* ObviousRadarRange */
     , (803372, 117,     0.5) /* FocusedProbability */
     , (803372, 122,       2) /* AiAcquireHealth */
     , (803372, 125,   0.001) /* ResistHealthDrain */
     , (803372, 166,   0.001) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803372,   1, 'Drakin Warchief') /* Name */
     , (803372,  45, 'AetheriaGuardianKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803372,   1, 0x0200101A) /* Setup */
     , (803372,   2, 0x0900013F) /* MotionTable */
     , (803372,   3, 0x200000A8) /* SoundTable */
     , (803372,   4, 0x3000003A) /* CombatTable */
     , (803372,   6, 0x040016E8) /* PaletteBase */
     , (803372,   7, 0x100004FD) /* ClothingBase */
     , (803372,   8, 0x0600304D) /* Icon */
     , (803372,  19, 0x00000055) /* ActivationAnimation */
     , (803372,  22, 0x340000A9) /* PhysicsEffectTable */
     , (803372,  30,         85) /* PhysicsScript - BreatheFrost */
     , (803372,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803372,  0, 16,35000,  0.5,35000,17500,17500,17500,17500,17500,17500,17500,    0, 1,  0.4,  0.1,    0,  0.4,  0.1,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (803372, 10, 16,35000,  0.5,35000,17500,17500,17500,17500,17500,17500,17500,    0, 3,    0,  0.2,  0.8,    0,  0.2,  0.8,    0,    0,    0,    0,    0,    0) /* FrontLeg */
     , (803372, 13, 16,35000,  0.5,35000,17500,17500,17500,17500,17500,17500,17500,    0, 3,    0,    0,    0,    0,    0,    0,  0.1,  0.3,  0.7,  0.1,  0.3,  0.7) /* RearLeg */
     , (803372, 16,  4,  0,    0,35000,17500,17500,17500,17500,17500,17500,17500,    0, 2,  0.6,  0.7,  0.2,  0.6,  0.7,  0.2,  0.9,  0.7,  0.3,  0.9,  0.7,  0.3) /* Torso */
     , (803372, 22,  8,35000,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803372,   1,25000, 0, 0) /* Strength */
     , (803372,   2,25000, 0, 0) /* Endurance */
     , (803372,   3, 320, 0, 0) /* Quickness */
     , (803372,   4, 750, 0, 0) /* Coordination */
     , (803372,   5,1400, 0, 0) /* Focus */
     , (803372,   6,1400, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803372,   1,2500000, 0, 0,2500000) /* MaxHealth */
     , (803372,   3,2500000, 0, 0,2500000) /* MaxStamina */
     , (803372,   5,2500000, 0, 0,2500000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803372,  6, 0, 3, 0, 350, 0, 0) /* MeleeDefense        Specialized */
     , (803372,  7, 0, 3, 0, 350, 0, 0) /* MissileDefense      Specialized */
     , (803372, 15, 0, 3, 0, 350, 0, 0) /* MagicDefense        Specialized */
     , (803372, 31, 0, 3, 0,2000, 0, 0) /* CreatureEnchantment Specialized */
     , (803372, 32, 0, 3, 0,2000, 0, 0) /* ItemEnchantment     Specialized */
     , (803372, 33, 0, 3, 0,2000, 0, 0) /* LifeMagic           Specialized */
     , (803372, 34, 0, 3, 0,2000, 0, 0) /* WarMagic            Specialized */
     , (803372, 45, 0, 3, 0,2000, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803372, 20 /* ReceiveCritical */, 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803372, 20 /* ReceiveCritical */, 0.7, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803372, 9,803373,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803373,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803373,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803373,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803373,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803373,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803373,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803373,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803373,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803374,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803374,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803374,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803374,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803374,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803374,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803374,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803374,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (803372, 9,803374,  0, 0,    1, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */;

