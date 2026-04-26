DELETE FROM `weenie` WHERE `class_Id` = 801539;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801539, 'Isel DO', 10, '2023-01-01 08:10:11') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801539,   1,         16) /* ItemType - Creature */
     , (801539,   2,         31) /* CreatureType - Human */
     , (801539,   3,         13) /* PaletteTemplate - Purple */
     , (801539,   6,         -1) /* ItemsCapacity */
     , (801539,   7,         -1) /* ContainersCapacity */
     , (801539,  16,          1) /* ItemUseable - No */
     , (801539,  25,        475) /* Level */
     , (801539,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801539,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801539, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801539, 146,     999999) /* XpOverride */
     , (801539, 332,    1000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801539,   1, True ) /* Stuck */
     , (801539,  65, False) /* IgnoreMagicResist */
     , (801539,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801539,   1,       5) /* HeartbeatInterval */
     , (801539,   2,       0) /* HeartbeatTimestamp */
     , (801539,   3,     400) /* HealthRate */
     , (801539,   4,       4) /* StaminaRate */
     , (801539,   5,       2) /* ManaRate */
     , (801539,  13,       1) /* ArmorModVsSlash */
     , (801539,  14,     0.9) /* ArmorModVsPierce */
     , (801539,  15,       1) /* ArmorModVsBludgeon */
     , (801539,  16,       1) /* ArmorModVsCold */
     , (801539,  17,       1) /* ArmorModVsFire */
     , (801539,  18,       1) /* ArmorModVsAcid */
     , (801539,  19,     0.9) /* ArmorModVsElectric */
     , (801539,  31,      24) /* VisualAwarenessRange */
     , (801539,  34,       1) /* PowerupTime */
     , (801539,  36,       1) /* ChargeSpeed */
     , (801539,  39,     2.3) /* DefaultScale */
     , (801539,  64,     0.1) /* ResistSlash */
     , (801539,  65,     0.3) /* ResistPierce */
     , (801539,  66,     0.1) /* ResistBludgeon */
     , (801539,  67,     0.1) /* ResistFire */
     , (801539,  68,     0.1) /* ResistCold */
     , (801539,  69,     0.1) /* ResistAcid */
     , (801539,  70,     0.3) /* ResistElectric */
     , (801539,  77,       1) /* PhysicsScriptIntensity */
     , (801539, 104,      10) /* ObviousRadarRange */
     , (801539, 125,    0.03) /* ResistHealthDrain */
     , (801539, 166,    0.06) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801539,   1, 'Isel') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801539,   1,   33554433) /* Setup */
     , (801539,   2,  150994945) /* MotionTable */
     , (801539,   3,  536870913) /* SoundTable */
     , (801539,   4,  805306368) /* CombatTable */
     , (801539,   6,   67108990) /* PaletteBase */
     , (801539,   7,  268435632) /* ClothingBase */
     , (801539,   8,  100670397) /* Icon */
     , (801539,   9,   83890513) /* EyesTexture */
     , (801539,  10,   83890548) /* NoseTexture */
     , (801539,  11,   83890638) /* MouthTexture */
     , (801539,  15,   67117000) /* HairPalette */
     , (801539,  16,   67110063) /* EyesPalette */
     , (801539,  17,   67109559) /* SkinPalette */
     , (801539,  22,  872415331) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801539,   1, 4700, 0, 0) /* Strength */
     , (801539,   2, 1950, 0, 0) /* Endurance */
     , (801539,   3, 300, 0, 0) /* Quickness */
     , (801539,   4, 300, 0, 0) /* Coordination */
     , (801539,   5, 300, 0, 0) /* Focus */
     , (801539,   6, 300, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801539,   1, 200000, 0, 0, 200000) /* MaxHealth */
     , (801539,   3, 89200, 0, 0, 90000) /* MaxStamina */
     , (801539,   5, 199200, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801539,  6, 0, 2, 0, 360, 0, 0) /* MeleeDefense        Trained */
     , (801539,  7, 0, 2, 0, 320, 0, 0) /* MissileDefense      Trained */
     , (801539, 15, 0, 2, 0, 340, 0, 0) /* MagicDefense        Trained */
     , (801539, 16, 0, 2, 0, 200, 0, 0) /* ManaConversion      Trained */
     , (801539, 31, 0, 2, 0, 400, 0, 0) /* CreatureEnchantment Trained */
     , (801539, 33, 0, 2, 0, 400, 0, 0) /* LifeMagic           Trained */
     , (801539, 34, 0, 2, 0, 4600, 0, 0) /* WarMagic            Trained */
     , (801539, 41, 0, 2, 0, 4800, 0, 0) /* TwoHandedCombat     Trained */
     , (801539, 44, 0, 2, 0, 4800, 0, 0) /* HeavyWeapons        Trained */
     , (801539, 45, 0, 2, 0, 4800, 0, 0) /* LightWeapons        Trained */
     , (801539, 46, 0, 2, 0, 4800, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801539,  0,  2, 3100, 0.75, 3100, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (801539, 16,  4, 3100, 0.75, 3100, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (801539, 18,  1, 3100,  0.5, 3100, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (801539, 19,  1, 3100, 0.75, 3100, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (801539, 20,  1, 3100, 0.75, 3100, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (801539, 22, 32, 3100,  0.5, 3100, 1450, 1450, 1450, 1450, 1450, 1450, 1450,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801539,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  24 /* StopEvent */, 0, 1, NULL, 'DOBoss2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  23 /* StartEvent */, 0, 1, NULL, 'DOBoss3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  17 /* LocalBroadcast */, 0.5, 1, NULL, 'Isel has found peace from possession with the final blow!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  3,  33 /* IncrementQuest */, 0, 1, NULL, 'Reputation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  4,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have gained +50 Reputation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801539, 2, 23932,  1, 93, 0, False) /* Create Auroric Exarch Coat (23932) for Wield */
     , (801539, 2, 23938,  1, 93, 0, False) /* Create Auroric Exarch Girth (23938) for Wield */
     , (801539, 2, 23951,  1, 93, 0, False) /* Create Auroric Exarch Leggings (23951) for Wield */
     , (801539, 2, 25812,  1, 93, 0, False) /* Create Sollerets of Grace (25812) for Wield */
     , (801539, 2, 801644,  1, 92, 0, False) /* Create Isel's Branded Blade (801644) for Wield */;
