DELETE FROM `weenie` WHERE `class_Id` = 801540;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801540, 'Elorin the Cursed DO', 10, '2023-01-01 08:16:35') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801540,   1,         16) /* ItemType - Creature */
     , (801540,   2,         31) /* CreatureType - Human */
     , (801540,   6,         -1) /* ItemsCapacity */
     , (801540,   7,         -1) /* ContainersCapacity */
     , (801540,  16,          1) /* ItemUseable - No */
     , (801540,  25,        425) /* Level */
     , (801540,  68,          1) /* TargetingTactic - Random */
     , (801540,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801540, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (801540, 113,          1) /* Gender - Male */
     , (801540, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801540, 146,     999999) /* XpOverride */
     , (801540, 332,    1000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801540,   1, True ) /* Stuck */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801540,   1,       5) /* HeartbeatInterval */
     , (801540,   2,       0) /* HeartbeatTimestamp */
     , (801540,   3,     400) /* HealthRate */
     , (801540,   4,       4) /* StaminaRate */
     , (801540,   5,       2) /* ManaRate */
     , (801540,  13,     0.9) /* ArmorModVsSlash */
     , (801540,  14,       1) /* ArmorModVsPierce */
     , (801540,  15,       1) /* ArmorModVsBludgeon */
     , (801540,  16,       1) /* ArmorModVsCold */
     , (801540,  17,       1) /* ArmorModVsFire */
     , (801540,  18,     0.9) /* ArmorModVsAcid */
     , (801540,  19,       1) /* ArmorModVsElectric */
     , (801540,  31,      24) /* VisualAwarenessRange */
     , (801540,  34,       1) /* PowerupTime */
     , (801540,  36,       1) /* ChargeSpeed */
     , (801540,  39,       3) /* DefaultScale */
     , (801540,  64,     0.3) /* ResistSlash */
     , (801540,  65,     0.1) /* ResistPierce */
     , (801540,  66,     0.1) /* ResistBludgeon */
     , (801540,  67,     0.1) /* ResistFire */
     , (801540,  68,     0.1) /* ResistCold */
     , (801540,  69,     0.3) /* ResistAcid */
     , (801540,  70,     0.1) /* ResistElectric */
     , (801540,  77,       1) /* PhysicsScriptIntensity */
     , (801540, 104,      10) /* ObviousRadarRange */
     , (801540, 125,    0.03) /* ResistHealthDrain */
     , (801540, 166,    0.05) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801540,   1, 'Elorin the Cursed') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801540,   1,   33554433) /* Setup */
     , (801540,   2,  150994945) /* MotionTable */
     , (801540,   3,  536870913) /* SoundTable */
     , (801540,   4,  805306368) /* CombatTable */
     , (801540,   7,  268437336) /* ClothingBase */
     , (801540,   8,  100667446) /* Icon */
     , (801540,  22,  872415236) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801540,   1, 4200, 0, 0) /* Strength */
     , (801540,   2, 1200, 0, 0) /* Endurance */
     , (801540,   3, 420, 0, 0) /* Quickness */
     , (801540,   4, 420, 0, 0) /* Coordination */
     , (801540,   5, 420, 0, 0) /* Focus */
     , (801540,   6, 420, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801540,   1, 225000, 0, 0, 225000) /* MaxHealth */
     , (801540,   3, 157000, 0, 0, 157450) /* MaxStamina */
     , (801540,   5, 110000, 0, 0, 110320) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801540,  6, 0, 2, 0, 370, 0, 0) /* MeleeDefense        Trained */
     , (801540,  7, 0, 2, 0, 380, 0, 0) /* MissileDefense      Trained */
     , (801540, 15, 0, 2, 0, 350, 0, 0) /* MagicDefense        Trained */
     , (801540, 16, 0, 2, 0, 440, 0, 0) /* ManaConversion      Trained */
     , (801540, 31, 0, 2, 0, 600, 0, 0) /* CreatureEnchantment Trained */
     , (801540, 33, 0, 2, 0, 600, 0, 0) /* LifeMagic           Trained */
     , (801540, 34, 0, 2, 0, 600, 0, 0) /* WarMagic            Trained */
     , (801540, 41, 0, 2, 0, 900, 0, 0) /* TwoHandedCombat     Trained */
     , (801540, 43, 0, 2, 0, 4600, 0, 0) /* VoidMagic           Trained */
     , (801540, 44, 0, 2, 0, 4900, 0, 0) /* HeavyWeapons        Trained */
     , (801540, 45, 0, 2, 0, 4900, 0, 0) /* LightWeapons        Trained */
     , (801540, 46, 0, 2, 0, 4900, 0, 0) /* FinesseWeapons      Trained */
     , (801540, 47, 0, 3, 0, 4900, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801540,  0,  4, 3200, 0.75, 3200,  600,  600,  600,  600,  600,  600,  600,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801540,  1,  4, 3200, 0.75, 3200,  600,  600,  600,  600,  600,  600,  600,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801540,  2,  4, 3200, 0.75, 3200,  600,  600,  600,  600,  600,  600,  600,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801540,  3,  4, 3200, 0.75, 3200,  600,  600,  600,  600,  600,  600,  600,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801540,  4,  4, 3200, 0.75, 3200,  600,  600,  600,  600,  600,  600,  600,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801540,  5,  4, 3200, 0.75, 3200,  600,  600,  600,  600,  600,  600,  600,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801540,  6,  4, 3200, 0.75, 3200,  600,  600,  600,  600,  600,  600,  600,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801540,  7,  4, 3200, 0.75, 3200,  600,  600,  600,  600,  600,  600,  600,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801540,  8,  4, 3200, 0.75, 3200,  600,  600,  600,  600,  600,  600,  600,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (801540,  1783,   2.02)  /* Searing Disc */
     , (801540,  1785,   2.02)  /* Cassius' Ring of Fire */
     , (801540,  4436,   2.02)  /* Incantation of Blade Volley */
     , (801540,  4447,   2.02)  /* Incantation of Frost Bolt */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801540,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  24 /* StopEvent */, 0, 1, NULL, 'DOBoss3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  23 /* StartEvent */, 0, 1, NULL, 'DOBoss4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  17 /* LocalBroadcast */, 0.5, 1, NULL, 'Elorin''s Cursed Remains rise from his fallen corpse!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  4,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +50 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801540, 2, 801670,  1, 92, 0, False) /* Create Elorin's Branded Blade (801670) for Wield */;
