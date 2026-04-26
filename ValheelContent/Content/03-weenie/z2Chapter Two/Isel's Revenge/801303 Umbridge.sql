DELETE FROM `weenie` WHERE `class_Id` = 801303;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801303, 'Umbridge', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801303,   1,         16) /* ItemType - Creature */
     , (801303,   2,         22) /* CreatureType - Shadow */
     , (801303,   3,         13) /* PaletteTemplate - Purple */
     , (801303,   6,         -1) /* ItemsCapacity */
     , (801303,   7,         -1) /* ContainersCapacity */
     , (801303,  16,          1) /* ItemUseable - No */
     , (801303,  25,        450) /* Level */
     , (801303,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801303,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801303, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801303, 146,     500000) /* XpOverride */
     , (801303, 332,     200000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801303,   1, True ) /* Stuck */
     , (801303,  65, True ) /* IgnoreMagicResist */
     , (801303,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801303,   1,       5) /* HeartbeatInterval */
     , (801303,   2,       0) /* HeartbeatTimestamp */
     , (801303,   3,     400) /* HealthRate */
     , (801303,   4,       4) /* StaminaRate */
     , (801303,   5,       2) /* ManaRate */
     , (801303,  13,       1) /* ArmorModVsSlash */
     , (801303,  14,     0.7) /* ArmorModVsPierce */
     , (801303,  15,       1) /* ArmorModVsBludgeon */
     , (801303,  16,       1) /* ArmorModVsCold */
     , (801303,  17,       1) /* ArmorModVsFire */
     , (801303,  18,       1) /* ArmorModVsAcid */
     , (801303,  19,       1) /* ArmorModVsElectric */
     , (801303,  31,      24) /* VisualAwarenessRange */
     , (801303,  34,       1) /* PowerupTime */
     , (801303,  36,       1) /* ChargeSpeed */
     , (801303,  39,     1.8) /* DefaultScale */
     , (801303,  64,     0.1) /* ResistSlash */
     , (801303,  65,     0.5) /* ResistPierce */
     , (801303,  66,     0.1) /* ResistBludgeon */
     , (801303,  67,     0.1) /* ResistFire */
     , (801303,  68,     0.1) /* ResistCold */
     , (801303,  69,     0.1) /* ResistAcid */
     , (801303,  70,     0.1) /* ResistElectric */
     , (801303,  77,       1) /* PhysicsScriptIntensity */
     , (801303, 104,      10) /* ObviousRadarRange */
     , (801303, 125,    0.03) /* ResistHealthDrain */
     , (801303, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801303,   1, 'Umbridge') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801303,   1,   33554433) /* Setup */
     , (801303,   2,  150994945) /* MotionTable */
     , (801303,   3,  536870913) /* SoundTable */
     , (801303,   4,  805306368) /* CombatTable */
     , (801303,   6,   67108990) /* PaletteBase */
     , (801303,   7,  268435632) /* ClothingBase */
     , (801303,   8,  100670397) /* Icon */
     , (801303,   9,   83890513) /* EyesTexture */
     , (801303,  10,   83890548) /* NoseTexture */
     , (801303,  11,   83890638) /* MouthTexture */
     , (801303,  15,   67117000) /* HairPalette */
     , (801303,  16,   67110063) /* EyesPalette */
     , (801303,  17,   67109559) /* SkinPalette */
     , (801303,  22,  872415331) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801303,   1, 3500, 0, 0) /* Strength */
     , (801303,   2, 1500, 0, 0) /* Endurance */
     , (801303,   3, 800, 0, 0) /* Quickness */
     , (801303,   4, 800, 0, 0) /* Coordination */
     , (801303,   5, 800, 0, 0) /* Focus */
     , (801303,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801303,   1, 120000, 0, 0, 120000) /* MaxHealth */
     , (801303,   3, 89200, 0, 0, 90000) /* MaxStamina */
     , (801303,   5, 199200, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801303,  6, 0, 2, 0,  360, 0, 0) /* MeleeDefense        Trained */
     , (801303,  7, 0, 2, 0,  320, 0, 0) /* MissileDefense      Trained */
     , (801303, 15, 0, 2, 0,  340, 0, 0) /* MagicDefense        Trained */
     , (801303, 16, 0, 2, 0,  200, 0, 0) /* ManaConversion      Trained */
     , (801303, 31, 0, 2, 0,  400, 0, 0) /* CreatureEnchantment Trained */
     , (801303, 33, 0, 2, 0,  400, 0, 0) /* LifeMagic           Trained */
     , (801303, 34, 0, 2, 0, 1400, 0, 0) /* WarMagic            Trained */
     , (801303, 41, 0, 2, 0, 4240, 0, 0) /* TwoHandedCombat     Trained */
     , (801303, 44, 0, 2, 0, 3740, 0, 0) /* HeavyWeapons        Trained */
     , (801303, 45, 0, 2, 0, 3250, 0, 0) /* LightWeapons        Trained */
     , (801303, 46, 0, 2, 0, 4140, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801303,  0,  2, 3000, 0.75,  3000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (801303, 16,  4, 3000, 0.75,  3000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (801303, 18,  1, 3000,  0.5,  3000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (801303, 19,  1, 3000, 0.75,  3000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (801303, 20,  1, 3000, 0.75,  3000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (801303, 22, 32, 3000,  0.5,  3000, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801303,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  23 /* StartEvent */, 0, 1, NULL, 'IRBoss7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  24 /* StopEvent */, 0.5, 1, NULL, 'IRBoss6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  16 /* WorldBroadcast */, 0, 1, NULL, 'The shadow of Umbridge fades into the light!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801303, 2, 800215,  1, 93, 0, False) /* Create Hardened Shadow Gauntlets (800215) for Wield */
     , (801303, 2, 800217,  1, 93, 0, False) /* Create Hardened Shadow Leggings (800217) for Wield */
     , (801303, 2, 800214,  1, 93, 0, False) /* Create Hardened Shadow Sollerets (800214) for Wield */
     , (801303, 2, 800213,  1, 93, 0, False) /* Create Hardened Shadow Coat (800213) for Wield */
     , (801303, 2, 801293,  1, 92, 0, False) /* Create  (801293) for Wield */;
