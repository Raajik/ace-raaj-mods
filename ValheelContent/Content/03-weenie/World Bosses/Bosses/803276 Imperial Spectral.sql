DELETE FROM `weenie` WHERE `class_Id` = 803276;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803276, 'Imperial Spectral', 10, '2024-01-16 08:01:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803276,   1,         16) /* ItemType - Creature */
     , (803276,   2,         20) /* CreatureType - Crystal */
     , (803276,   3,         13) /* PaletteTemplate - Red */
     , (803276,   6,         -1) /* ItemsCapacity */
     , (803276,   7,         -1) /* ContainersCapacity */
     , (803276,  16,          1) /* ItemUseable - No */
     , (803276,  25,       3000) /* Level */
     , (803276,  27,          1) /* ArmorType - Cloth */
     , (803276,  40,          2) /* CombatMode - Melee */
     , (803276,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803276, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803276, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803276, 140,          1) /* AiOptions - CanOpenDoors */
     , (803276, 146,          1) /* XpOverride */
     , (803276, 332,     950000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803276,   1, False) /* Stuck */
     , (803276,   6, True ) /* AiUsesMana */
     , (803276,  11, False) /* IgnoreCollisions */
     , (803276,  12, True ) /* ReportCollisions */
     , (803276,  13, False) /* Ethereal */
     , (803276,  19, True ) /* Attackable */
     , (803276,  50, True ) /* NeverFailCasting */
     , (803276,  65, True ) /* IgnoreMagicResist */
     , (803276,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803276,   1,       5) /* HeartbeatInterval */
     , (803276,   2,       0) /* HeartbeatTimestamp */
     , (803276,   3,     0.4) /* HealthRate */
     , (803276,   4,       5) /* StaminaRate */
     , (803276,   5,       1) /* ManaRate */
     , (803276,  13,       7) /* ArmorModVsSlash */
     , (803276,  14,       7) /* ArmorModVsPierce */
     , (803276,  15,       7) /* ArmorModVsBludgeon */
     , (803276,  16,       7) /* ArmorModVsCold */
     , (803276,  17,       7) /* ArmorModVsFire */
     , (803276,  18,       7) /* ArmorModVsAcid */
     , (803276,  19,       7) /* ArmorModVsElectric */
     , (803276,  31,      30) /* VisualAwarenessRange */
     , (803276,  34,       1) /* PowerupTime */
     , (803276,  36,       1) /* ChargeSpeed */
     , (803276,  39,     2.3) /* DefaultScale */
     , (803276,  64,   0.001) /* ResistSlash */
     , (803276,  65,   0.001) /* ResistPierce */
     , (803276,  66,   0.001) /* ResistBludgeon */
     , (803276,  67,   0.001) /* ResistFire */
     , (803276,  68,   0.001) /* ResistCold */
     , (803276,  69,   0.001) /* ResistAcid */
     , (803276,  70,   0.001) /* ResistElectric */
     , (803276,  71,       1) /* ResistHealthBoost */
     , (803276,  72,       1) /* ResistStaminaDrain */
     , (803276,  73,       1) /* ResistStaminaBoost */
     , (803276,  74,       1) /* ResistManaDrain */
     , (803276,  75,       1) /* ResistManaBoost */
     , (803276,  80,       3) /* AiUseMagicDelay */
     , (803276, 104,      10) /* ObviousRadarRange */
     , (803276, 117,     0.5) /* FocusedProbability */
     , (803276, 122,       2) /* AiAcquireHealth */
     , (803276, 125,   0.002) /* ResistHealthDrain */
     , (803276, 166,   0.002) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803276,   1, 'Imperial Spectral') /* Name */
     , (803276,  45, 'ENTER') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803276,   1,   33558820) /* Setup */
     , (803276,   2,  150995087) /* MotionTable */
     , (803276,   3,  536870985) /* SoundTable */
     , (803276,   4,  805306368) /* CombatTable */
     , (803276,   8,  100671683) /* Icon */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803276,  0, 32,  60000,  0.5,  60000,  112,  140,  112,  280,  280,  280,  280,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (803276, 16, 32,  60000,    0,  60000,  112,  140,  112,  280,  280,  280,  280,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (803276, 17, 32,  60000, 0.75,  60000,   96,  120,   96,  240,  240,  240,  240,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (803276, 21, 32,  60000,    0,  60000,   88,  110,   88,  220,  220,  220,  220,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803276,   1,100000, 0, 0) /* Strength */
     , (803276,   2, 560, 0, 0) /* Endurance */
     , (803276,   3, 550, 0, 0) /* Quickness */
     , (803276,   4, 500, 0, 0) /* Coordination */
     , (803276,   5, 540, 0, 0) /* Focus */
     , (803276,   6, 590, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803276,   1,2500000, 0, 0,2500000) /* MaxHealth */
     , (803276,   3,300000, 0, 0,300000) /* MaxStamina */
     , (803276,   5,300000, 0, 0,300000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803276,  6, 0, 3, 0,2300, 0, 0) /* MeleeDefense        Specialized */
     , (803276,  7, 0, 3, 0,1375, 0, 0) /* MissileDefense      Specialized */
     , (803276, 14, 0, 3, 0, 220, 0, 0) /* ArcaneLore          Specialized */
     , (803276, 15, 0, 3, 0, 600, 0, 0) /* MagicDefense        Specialized */
     , (803276, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (803276, 31, 0, 3, 0,1205, 0, 0) /* CreatureEnchantment Specialized */
     , (803276, 33, 0, 3, 0,1205, 0, 0) /* LifeMagic           Specialized */
     , (803276, 34, 0, 3, 0,1205, 0, 0) /* WarMagic            Specialized */
     , (803276, 45, 0, 3, 0,3700, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803276, 20 /* ReceiveCritical */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 19 /* CastSpellInstant */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4643 /* Incantation of Drain Health Other */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803276, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 16 /* WorldBroadcast */, 0, 1, NULL, 'With a blade glowing with holy light, the Dark Overlord has been slain!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (803276, 9,803274,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803276, 9,803274,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803276, 9,803274,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803276, 9,803274,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803276, 9,803274,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803276, 9,803274,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803276, 9,803274,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803276, 9,803274,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */
     , (803276, 9,803274,  0, 0,    1, False) /* Create Elemental Prism for ContainTreasure */;

