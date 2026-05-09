DELETE FROM `weenie` WHERE `class_Id` = 801307;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801307, 'Isel', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801307,   1,         16) /* ItemType - Creature */
     , (801307,   2,         31) /* CreatureType - Human */
     , (801307,   3,         13) /* PaletteTemplate - Purple */
     , (801307,   6,         -1) /* ItemsCapacity */
     , (801307,   7,         -1) /* ContainersCapacity */
     , (801307,  16,          1) /* ItemUseable - No */
     , (801307,  25,        450) /* Level */
     , (801307,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801307,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801307, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801307, 146,     500000) /* XpOverride */
     , (801307, 332,     200000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801307,   1, True ) /* Stuck */
     , (801307,  65, True ) /* IgnoreMagicResist */
     , (801307,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801307,   1,       5) /* HeartbeatInterval */
     , (801307,   2,       0) /* HeartbeatTimestamp */
     , (801307,   3,     400) /* HealthRate */
     , (801307,   4,       4) /* StaminaRate */
     , (801307,   5,       2) /* ManaRate */
     , (801307,  13,       1) /* ArmorModVsSlash */
     , (801307,  14,       1) /* ArmorModVsPierce */
     , (801307,  15,     0.7) /* ArmorModVsBludgeon */
     , (801307,  16,       1) /* ArmorModVsCold */
     , (801307,  17,       1) /* ArmorModVsFire */
     , (801307,  18,       1) /* ArmorModVsAcid */
     , (801307,  19,     0.7) /* ArmorModVsElectric */
     , (801307,  31,      24) /* VisualAwarenessRange */
     , (801307,  34,       1) /* PowerupTime */
     , (801307,  36,       1) /* ChargeSpeed */
     , (801307,  39,       2) /* DefaultScale */
     , (801307,  64,     0.1) /* ResistSlash */
     , (801307,  65,     0.1) /* ResistPierce */
     , (801307,  66,     0.5) /* ResistBludgeon */
     , (801307,  67,     0.1) /* ResistFire */
     , (801307,  68,     0.1) /* ResistCold */
     , (801307,  69,     0.1) /* ResistAcid */
     , (801307,  70,     0.5) /* ResistElectric */
     , (801307,  77,       1) /* PhysicsScriptIntensity */
     , (801307, 104,      10) /* ObviousRadarRange */
     , (801307, 125,    0.03) /* ResistHealthDrain */
     , (801307, 166,    0.06) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801307,   1, 'Isel') /* Name */
     , (801307,  45, 'IselKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801307,   1,   33554433) /* Setup */
     , (801307,   2,  150994945) /* MotionTable */
     , (801307,   3,  536870913) /* SoundTable */
     , (801307,   4,  805306368) /* CombatTable */
     , (801307,   6,   67108990) /* PaletteBase */
     , (801307,   7,  268435632) /* ClothingBase */
     , (801307,   8,  100670397) /* Icon */
     , (801307,   9,   83890513) /* EyesTexture */
     , (801307,  10,   83890548) /* NoseTexture */
     , (801307,  11,   83890638) /* MouthTexture */
     , (801307,  15,   67117000) /* HairPalette */
     , (801307,  16,   67110063) /* EyesPalette */
     , (801307,  17,   67109559) /* SkinPalette */
     , (801307,  22,  872415331) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801307,   1, 4500, 0, 0) /* Strength */
     , (801307,   2, 1500, 0, 0) /* Endurance */
     , (801307,   3, 800, 0, 0) /* Quickness */
     , (801307,   4, 800, 0, 0) /* Coordination */
     , (801307,   5, 800, 0, 0) /* Focus */
     , (801307,   6, 800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801307,   1, 150000, 0, 0, 150000) /* MaxHealth */
     , (801307,   3, 89200, 0, 0, 90000) /* MaxStamina */
     , (801307,   5, 199200, 0, 0, 200000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801307,  6, 0, 2, 0,  360, 0, 0) /* MeleeDefense        Trained */
     , (801307,  7, 0, 2, 0,  320, 0, 0) /* MissileDefense      Trained */
     , (801307, 15, 0, 2, 0,  340, 0, 0) /* MagicDefense        Trained */
     , (801307, 16, 0, 2, 0,  200, 0, 0) /* ManaConversion      Trained */
     , (801307, 31, 0, 2, 0,  400, 0, 0) /* CreatureEnchantment Trained */
     , (801307, 33, 0, 2, 0,  400, 0, 0) /* LifeMagic           Trained */
     , (801307, 34, 0, 2, 0, 1400, 0, 0) /* WarMagic            Trained */
     , (801307, 41, 0, 2, 0, 4240, 0, 0) /* TwoHandedCombat     Trained */
     , (801307, 44, 0, 2, 0, 3740, 0, 0) /* HeavyWeapons        Trained */
     , (801307, 45, 0, 2, 0, 3250, 0, 0) /* LightWeapons        Trained */
     , (801307, 46, 0, 2, 0, 4140, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801307,  0,  2, 3300, 0.75,  3300, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (801307, 16,  4, 3300, 0.75,  3300, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (801307, 18,  1, 3300,  0.5,  3300, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (801307, 19,  1, 3300, 0.75,  3300, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (801307, 20,  1, 3300, 0.75,  3300, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (801307, 22, 32, 3300,  0.5,  3300, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801307,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  24 /* StopEvent */, 0, 1, NULL, 'IRBoss9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  24 /* StopEvent */, 0, 1, NULL, 'IRActive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  16 /* WorldBroadcast */, 0.5, 1, NULL, 'Isel has met his end, and the warriors have defeated Isel''s Revenge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (801307, 2, 23932,  1, 93, 0, False) /* Create Auroric Exarch Coat (23932) for Wield */
     , (801307, 2, 23938,  1, 93, 0, False) /* Create Auroric Exarch Girth (23938) for Wield */
     , (801307, 2, 23951,  1, 93, 0, False) /* Create Auroric Exarch Leggings (23951) for Wield */
     , (801307, 2, 25812,  1, 93, 0, False) /* Create Sollerets of Grace (25812) for Wield */
     , (801307, 2, 801384,  1, 92, 0, False) /* Create Shadow Blade of the King (801384) for Wield */;
