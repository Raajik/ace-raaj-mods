DELETE FROM `weenie` WHERE `class_Id` = 802392;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802392, 'Cedraic III', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802392,   1,         16) /* ItemType - Creature */
     , (802392,   2,         31) /* CreatureType - Human */
     , (802392,   6,         -1) /* ItemsCapacity */
     , (802392,   7,         -1) /* ContainersCapacity */
     , (802392,   8,        120) /* Mass */
     , (802392,  16,          1) /* ItemUseable - No */
     , (802392,  25,        699) /* Level */
     , (802392,  27,          0) /* ArmorType - None */
     , (802392,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (802392,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802392, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (802392, 113,          1) /* Gender - Male */
     , (802392, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802392, 146,   23100000) /* XpOverride */
     , (802392, 332,     325000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802392,   1, True ) /* Stuck */
     , (802392,  11, False) /* IgnoreCollisions */
     , (802392,  12, True ) /* ReportCollisions */
     , (802392,  13, False) /* Ethereal */
     , (802392,  14, True ) /* GravityStatus */
     , (802392,  19, True ) /* Attackable */
     , (802392,  65, True ) /* IgnoreMagicResist */
     , (802392,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802392,   1,       5) /* HeartbeatInterval */
     , (802392,   2,       0) /* HeartbeatTimestamp */
     , (802392,   3,       2) /* HealthRate */
     , (802392,   4,       5) /* StaminaRate */
     , (802392,   5,       1) /* ManaRate */
     , (802392,  13,       1) /* ArmorModVsSlash */
     , (802392,  14,       1) /* ArmorModVsPierce */
     , (802392,  15,       1) /* ArmorModVsBludgeon */
     , (802392,  16,     1.3) /* ArmorModVsCold */
     , (802392,  17,       1) /* ArmorModVsFire */
     , (802392,  18,       1) /* ArmorModVsAcid */
     , (802392,  19,     1.3) /* ArmorModVsElectric */
     , (802392,  31,      13) /* VisualAwarenessRange */
     , (802392,  39,       2) /* DefaultScale */
     , (802392,  64,    0.01) /* ResistSlash */
     , (802392,  65,    0.01) /* ResistPierce */
     , (802392,  66,    0.01) /* ResistBludgeon */
     , (802392,  67,    0.01) /* ResistFire */
     , (802392,  68,    0.03) /* ResistCold */
     , (802392,  69,    0.01) /* ResistAcid */
     , (802392,  70,    0.03) /* ResistElectric */
     , (802392,  71,       1) /* ResistHealthBoost */
     , (802392,  72,       1) /* ResistStaminaDrain */
     , (802392,  73,       1) /* ResistStaminaBoost */
     , (802392,  74,       1) /* ResistManaDrain */
     , (802392,  75,       1) /* ResistManaBoost */
     , (802392,  76,     0.5) /* Translucency */
     , (802392, 104,      10) /* ObviousRadarRange */
     , (802392, 117,     0.5) /* FocusedProbability */
     , (802392, 125,       1) /* ResistHealthDrain */
     , (802392, 166,    0.02) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802392,   1, 'Cedraic III') /* Name */
     , (802392,  45, 'cedraicKT2') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802392,   1,   33555903) /* Setup */
     , (802392,   2,  150994945) /* MotionTable */
     , (802392,   3,  536870913) /* SoundTable */
     , (802392,   4,  805306368) /* CombatTable */
     , (802392,   8,  100667446) /* Icon */
     , (802392,  22,  872415236) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802392,   1, 12200, 0, 0) /* Strength */
     , (802392,   2, 11200, 0, 0) /* Endurance */
     , (802392,   3, 800, 0, 0) /* Quickness */
     , (802392,   4, 800, 0, 0) /* Coordination */
     , (802392,   5, 1200, 0, 0) /* Focus */
     , (802392,   6, 1200, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802392,   1, 450000, 0, 0, 450000) /* MaxHealth */
     , (802392,   3, 12110, 0, 0, 21110) /* MaxStamina */
     , (802392,   5,     0, 0, 0, 80) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802392,  6, 0, 3, 0, 210, 0, 0) /* MeleeDefense        Specialized */
     , (802392,  7, 0, 3, 0, 315, 0, 0) /* MissileDefense      Specialized */
     , (802392, 15, 0, 3, 0, 210, 0, 0) /* MagicDefense        Specialized */
     , (802392, 20, 0, 3, 0, 150, 0, 0) /* Deception           Specialized */
     , (802392, 24, 0, 3, 0,   5, 0, 0) /* Run                 Specialized */
     , (802392, 44, 0, 3, 0, 1350, 0, 0) /* HeavyWeapons        Specialized */
     , (802392, 45, 0, 3, 0, 1350, 0, 0) /* LightWeapons        Specialized */
     , (802392, 46, 0, 3, 0, 1350, 0, 0) /* FinesseWeapons      Specialized */
     , (802392, 47, 0, 3, 0, 1350, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802392,  0,  4,  0,    0, 2850,  234,  260,  286,  104,  104,  260,  156,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802392,  1,  4,  0,    0, 2850,  225,  250,  275,  100,  100,  250,  150,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802392,  2,  4,  0,    0, 2850,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802392,  3,  4,  0,    0, 2850,  216,  240,  264,   96,   96,  240,  144,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802392,  4,  4,  0,    0, 2850,  216,  240,  264,   96,   96,  240,  144,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802392,  5,  4, 6000, 0.75, 2850,  216,  240,  264,   96,   96,  240,  144,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802392,  6,  4,  0,    0, 2850,  234,  260,  286,  104,  104,  260,  156,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802392,  7,  4,  0,    0, 2850,  225,  250,  275,  100,  100,  250,  150,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802392,  8,  4, 6000, 0.75, 2850,  221,  245,  270,   98,   98,  245,  147,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802392,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  24 /* StopEvent */, 0, 1, NULL, 'CedraicSpawn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  16 /* WorldBroadcast */, 0, 1, NULL, 'Cedraic III has been cast into his tomb once again, sealed away for all eternity!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  18 /* DirectBroadcast */, 0, 1, NULL, 'Take the key to Asheron at his Castle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  22 /* StampQuest */, 0, 1, NULL, 'CedraicSlain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802392, 2,  2587,  0, 14, 0.5, False) /* Create Shirt (2587) for Wield */
     , (802392, 2,  2601,  0, 14, 0.5, False) /* Create Pants (2601) for Wield */
     , (802392, 2, 21150,  0, 93, 1, False) /* Create Covenant Sollerets (21150) for Wield */
     , (802392, 2, 21151,  0, 93, 1, False) /* Create Covenant Bracers (21151) for Wield */
     , (802392, 2, 80226,  0, 93, 1, False) /* Create Cloaked Covenant Breastplate (80226) for Wield */
     , (802392, 2, 21153,  0, 93, 1, False) /* Create Covenant Gauntlets (21153) for Wield */
     , (802392, 2, 21154,  0, 93, 1, False) /* Create Covenant Girth (21154) for Wield */
     , (802392, 2, 21155,  0, 93, 1, False) /* Create Covenant Greaves (21155) for Wield */
     , (802392, 2, 21156,  0, 93, 1, False) /* Create Covenant Helm (21156) for Wield */
     , (802392, 2, 21157,  0, 93, 1, False) /* Create Covenant Pauldrons (21157) for Wield */
     , (802392, 2, 21159,  0, 93, 1, False) /* Create Covenant Tassets (21159) for Wield */
     , (802392, 2, 802393,  0, 90, 1, False) /* Create Cedraic's Blade of the Cursed (802393) for Wield */
     , (802392, 9, 803118,  1, 0, 1, False) /* Create Activated Key of the Seal (803118) for ContainTreasure */
     , (802392, 9, 803118,  1, 0, 1, False) /* Create Activated Key of the Seal (803118) for ContainTreasure */
     , (802392, 9, 803118,  1, 0, 1, False) /* Create Activated Key of the Seal (803118) for ContainTreasure */
     , (802392, 9, 803118,  1, 0, 1, False) /* Create Activated Key of the Seal (803118) for ContainTreasure */
     , (802392, 9, 803118,  1, 0, 1, False) /* Create Activated Key of the Seal (803118) for ContainTreasure */
     , (802392, 9, 803118,  1, 0, 1, False) /* Create Activated Key of the Seal (803118) for ContainTreasure */
     , (802392, 9, 803118,  1, 0, 1, False) /* Create Activated Key of the Seal (803118) for ContainTreasure */
     , (802392, 9, 803118,  1, 0, 1, False) /* Create Activated Key of the Seal (803118) for ContainTreasure */
     , (802392, 9, 803118,  1, 0, 1, False) /* Create Activated Key of the Seal (803118) for ContainTreasure */;
