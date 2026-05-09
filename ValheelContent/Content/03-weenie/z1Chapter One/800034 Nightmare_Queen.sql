DELETE FROM `weenie` WHERE `class_Id` = 800034;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800034, 'nightmarequeen', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800034,   1,         16) /* ItemType - Creature */
     , (800034,   2,         92) /* CreatureType - ParadoxOlthoi */
     , (800034,   3,         13) /* PaletteTemplate - Purple */
     , (800034,   6,         -1) /* ItemsCapacity */
     , (800034,   7,         -1) /* ContainersCapacity */
     , (800034,  16,          1) /* ItemUseable - No */
     , (800034,  25,        300) /* Level */
     , (800034,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800034,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800034, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800034, 146,   20000000) /* XpOverride */
     , (800034, 332,     100000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800034,   1, True ) /* Stuck */
     , (800034,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800034,   1,       5) /* HeartbeatInterval */
     , (800034,   2,       0) /* HeartbeatTimestamp */
     , (800034,   3,       2) /* HealthRate */
     , (800034,   4,       4) /* StaminaRate */
     , (800034,   5,       2) /* ManaRate */
     , (800034,  13,       3) /* ArmorModVsSlash */
     , (800034,  14,       2) /* ArmorModVsPierce */
     , (800034,  15,     1.5) /* ArmorModVsBludgeon */
     , (800034,  16,       3) /* ArmorModVsCold */
     , (800034,  17,       3) /* ArmorModVsFire */
     , (800034,  18,       3) /* ArmorModVsAcid */
     , (800034,  19,       3) /* ArmorModVsElectric */
     , (800034,  31,      24) /* VisualAwarenessRange */
     , (800034,  34,       1) /* PowerupTime */
     , (800034,  36,       1) /* ChargeSpeed */
     , (800034,  39,     1.3) /* DefaultScale */
     , (800034,  64,       3) /* ResistSlash */
     , (800034,  65,       2) /* ResistPierce */
     , (800034,  66,     1.5) /* ResistBludgeon */
     , (800034,  67,       3) /* ResistFire */
     , (800034,  68,       3) /* ResistCold */
     , (800034,  69,       3) /* ResistAcid */
     , (800034,  70,       3) /* ResistElectric */
     , (800034,  77,       1) /* PhysicsScriptIntensity */
     , (800034, 104,      10) /* ObviousRadarRange */
     , (800034, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800034,   1, 'Nightmare Queen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800034,   1,   33560333) /* Setup */
     , (800034,   2,  150995411) /* MotionTable */
     , (800034,   3,  536871037) /* SoundTable */
     , (800034,   4,  805306419) /* CombatTable */
     , (800034,   6,   67113288) /* PaletteBase */
     , (800034,   7,  268437210) /* ClothingBase */
     , (800034,   8,  100667623) /* Icon */
     , (800034,  22,  872415379) /* PhysicsEffectTable */
     , (800034,  30,         86) /* PhysicsScript - BreatheAcid */
     , (800034,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800034,   1,  600, 0, 0) /* Strength */
     , (800034,   2,  800, 0, 0) /* Endurance */
     , (800034,   3,  800, 0, 0) /* Quickness */
     , (800034,   4, 1600, 0, 0) /* Coordination */
     , (800034,   5,  800, 0, 0) /* Focus */
     , (800034,   6,  800, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800034,   1, 250000, 0, 0, 250000) /* MaxHealth */
     , (800034,   3, 250000, 0, 0, 250000) /* MaxStamina */
     , (800034,   5, 250000, 0, 0, 250000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800034,  6, 0, 2, 0, 160, 0, 0) /* MeleeDefense        Trained */
     , (800034,  7, 0, 2, 0, 120, 0, 0) /* MissileDefense      Trained */
     , (800034, 15, 0, 2, 0, 240, 0, 0) /* MagicDefense        Trained */
     , (800034, 16, 0, 2, 0, 200, 0, 0) /* ManaConversion      Trained */
     , (800034, 31, 0, 2, 0, 400, 0, 0) /* CreatureEnchantment Trained */
     , (800034, 33, 0, 2, 0, 400, 0, 0) /* LifeMagic           Trained */
     , (800034, 34, 0, 2, 0, 400, 0, 0) /* WarMagic            Trained */
     , (800034, 41, 0, 2, 0, 140, 0, 0) /* TwoHandedCombat     Trained */
     , (800034, 44, 0, 3, 0, 640, 0, 0) /* HeavyWeapons        Trained */
     , (800034, 45, 0, 2, 0, 250, 0, 0) /* LightWeapons        Trained */
     , (800034, 46, 0, 2, 0, 340, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800034,  0,  2, 150, 0.75,  1800,  600,  800,  1200,  1200,  1200,  1200,  1200,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (800034, 16,  4,   0,    0,  1800,  600,  800,  1200,  1200,  1200,  1200,  1200,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (800034, 18,  1, 150,  0.5,  1800,  600,  800,  1200,  1200,  1200,  1200,  1200,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (800034, 19,  1,   0,    0,  1800,  600,  800,  1200,  1200,  1200,  1200,  1200,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (800034, 20,  1, 150, 0.75,  1800,  600,  800,  1200,  1200,  1200,  1200,  1200,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (800034, 22, 32, 150,  0.5,  1800,  600,  800,  1200,  1200,  1200,  1200,  1200,    0, 0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Breath */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800034,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  16 /* WorldBroadcast */, 0, 1, NULL, 'As %s strikes the final blow against the Nightmare Queen, a piercing howl fills your mind. Amidst the horrifying noise in your skull, you hear the following words, "You may have stopped me for a time, but you will never be rid of me. I am no simple insect that can be driven off or so simply destroyed. I will rid the world of you pathetic meatbags, and we will usher a new age into this reality."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800034, 9, 800121,  0, 0, .2, False) /* Create Shemtar's Gauntlets (800018) for ContainTreasure */
	 , (800034, 9, 800036,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 800036,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 800036,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 800036,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 800036,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 800036,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 800036,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 800036,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 800036,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 803699,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 803699,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 803699,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 803699,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 803699,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 803699,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 803699,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 803699,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */
	 , (800034, 9, 803699,  1, 0,  1, False) /* Create Nightmare Stone (800036) for ContainTreasure */;
