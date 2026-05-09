DELETE FROM `weenie` WHERE `class_Id` = 803984;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803984, 'Rogue of the Old Council', 10, '2024-03-16 11:35:17') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803984,   1,         16) /* ItemType - Creature */
     , (803984,   2,         31) /* CreatureType - Golem */
     , (803984,   3,          2) /* PaletteTemplate - White */
     , (803984,   6,         -1) /* ItemsCapacity */
     , (803984,   7,         -1) /* ContainersCapacity */
     , (803984,  16,          1) /* ItemUseable - No */
     , (803984,  25,       4100) /* Level */
     , (803984,  27,          1) /* ArmorType - Cloth */
     , (803984,  40,          2) /* CombatMode - Melee */
     , (803984,  68,       0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (803984,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (803984, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (803984, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (803984, 140,          1) /* AiOptions - CanOpenDoors */
     , (803984, 146,     825000) /* XpOverride */
     , (803984, 332,     825000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803984,   1, False) /* Stuck */
     , (803984,   6, True ) /* AiUsesMana */
     , (803984,  11, False) /* IgnoreCollisions */
     , (803984,  12, True ) /* ReportCollisions */
     , (803984,  13, False) /* Ethereal */
     , (803984,  19, True ) /* Attackable */
     , (803984,  50, True ) /* NeverFailCasting */
     , (803984,  65, True ) /* IgnoreMagicResist */
     , (803984,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803984,   1,       5) /* HeartbeatInterval */
     , (803984,   2,       0) /* HeartbeatTimestamp */
     , (803984,   3,     0.4) /* HealthRate */
     , (803984,   4,       5) /* StaminaRate */
     , (803984,   5,       1) /* ManaRate */
     , (803984,  13,       5) /* ArmorModVsSlash */
     , (803984,  14,       5) /* ArmorModVsPierce */
     , (803984,  15,       5) /* ArmorModVsBludgeon */
     , (803984,  16,       5) /* ArmorModVsCold */
     , (803984,  17,       5) /* ArmorModVsFire */
     , (803984,  18,       5) /* ArmorModVsAcid */
     , (803984,  19,       5) /* ArmorModVsElectric */
     , (803984,  31,      30) /* VisualAwarenessRange */
     , (803984,  34,       1) /* PowerupTime */
     , (803984,  36,       1) /* ChargeSpeed */
     , (803984,  39,     1.3) /* DefaultScale */
     , (803984,  64,   0.001) /* ResistSlash */
     , (803984,  65,   0.001) /* ResistPierce */
     , (803984,  66,   0.001) /* ResistBludgeon */
     , (803984,  67,   0.003) /* ResistFire */
     , (803984,  68,   0.001) /* ResistCold */
     , (803984,  69,   0.001) /* ResistAcid */
     , (803984,  70,   0.001) /* ResistElectric */
     , (803984,  71,       1) /* ResistHealthBoost */
     , (803984,  72,       1) /* ResistStaminaDrain */
     , (803984,  73,       1) /* ResistStaminaBoost */
     , (803984,  74,       1) /* ResistManaDrain */
     , (803984,  75,       1) /* ResistManaBoost */
     , (803984,  80,       3) /* AiUseMagicDelay */
     , (803984, 104,      10) /* ObviousRadarRange */
     , (803984, 117,     0.5) /* FocusedProbability */
     , (803984, 122,       2) /* AiAcquireHealth */
     , (803984, 125,   0.002) /* ResistHealthDrain */
     , (803984, 166,   0.002) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803984,   1, 'Rogue of the Old Council') /* Name */
     /* , (803984,  45, 'blightedundeadKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803984,   1,   33554433) /* Setup */
     , (803984,   2,  150994945) /* MotionTable */
     , (803984,   3,  536870913) /* SoundTable */
     , (803984,   4,  805306368) /* CombatTable */
     , (803984,   6,   67108990) /* PaletteBase */
     , (803984,   7,  268437191) /* ClothingBase */
     , (803984,   8,  100667446) /* Icon */
     , (803984,  22,  872415236) /* PhysicsEffectTable */
     , (803984,  35,       5000) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803984,  0,  4,  0,    0,  40000,  198,  261,  387,  149,  149,  360,  450,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803984,  1,  4,  0,    0,  40000,  198,  261,  387,  149,  149,  360,  450,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803984,  2,  4,  0,    0,  40000,  198,  261,  387,  149,  149,  360,  450,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803984,  3,  4,  0,    0,  40000,  198,  261,  387,  149,  149,  360,  450,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803984,  4,  4,  0,    0,  40000,  198,  261,  387,  149,  149,  360,  450,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803984,  5,  4, 65000,  0.6,  40000,  198,  261,  387,  149,  149,  360,  450,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803984,  6,  4,  0,    0,  40000,  198,  261,  387,  149,  149,  360,  450,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803984,  7,  4,  0,    0,  40000,  198,  261,  387,  149,  149,  360,  450,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803984,  8,  4, 65000,  0.6,  40000,  198,  261,  387,  149,  149,  360,  450,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (803984,   1,27000, 0, 0) /* Strength */
     , (803984,   2,27000, 0, 0) /* Endurance */
     , (803984,   3, 550, 0, 0) /* Quickness */
     , (803984,   4, 500, 0, 0) /* Coordination */
     , (803984,   5, 540, 0, 0) /* Focus */
     , (803984,   6, 590, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (803984,   1,4750000, 0, 0,4750000) /* MaxHealth */
     , (803984,   3, 750000, 0, 0,750000) /* MaxStamina */
     , (803984,   5, 750000, 0, 0,750000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (803984,  6, 0, 3, 0,2300, 0, 0) /* MeleeDefense        Specialized */
     , (803984,  7, 0, 3, 0,1375, 0, 0) /* MissileDefense      Specialized */
     , (803984, 14, 0, 3, 0, 220, 0, 0) /* ArcaneLore          Specialized */
     , (803984, 15, 0, 3, 0, 600, 0, 0) /* MagicDefense        Specialized */
     , (803984, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (803984, 31, 0, 3, 0,2000, 0, 0) /* CreatureEnchantment Specialized */
     , (803984, 33, 0, 3, 0,2000, 0, 0) /* LifeMagic           Specialized */
     , (803984, 34, 0, 3, 0,2000, 0, 0) /* WarMagic            Specialized */
     , (803984, 45, 0, 3, 0,2000, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803984, 3 /* Death */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 21 /* InqQuest */, 0, 1, NULL, 'RingsCollected@2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803984, 13 /* QuestFailure */, 1, NULL, NULL, NULL, 'RingsCollected@2', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 76 /* InqOwnsItems */, 0, 1, NULL, 'OwnsItem-803983_3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803983, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803984, 22 /* TestSuccess */, 1, NULL, NULL, NULL, 'OwnsItem-803983_3', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 22 /* StampQuest */, 0, 1, NULL, 'RingsCollected', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (803984, 23 /* TestFailure */, 1, NULL, NULL, NULL, 'OwnsItem-803983_3', NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 3 /* Give */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 803983, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

