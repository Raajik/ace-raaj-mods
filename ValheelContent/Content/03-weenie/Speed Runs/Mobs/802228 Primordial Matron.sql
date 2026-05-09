DELETE FROM `weenie` WHERE `class_Id` = 802228;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802228, 'primordialmatron3', 10, '2023-03-15 07:51:34') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802228,   1,         16) /* ItemType - Creature */
     , (802228,   2,          1) /* CreatureType - Olthoi */
     , (802228,   3,         76) /* PaletteTemplate - Orange */
     , (802228,   6,         -1) /* ItemsCapacity */
     , (802228,   7,         -1) /* ContainersCapacity */
     , (802228,   8,       8000) /* Mass */
     , (802228,  16,          1) /* ItemUseable - No */
     , (802228,  25,        375) /* Level */
     , (802228,  27,          0) /* ArmorType - None */
     , (802228,  40,          2) /* CombatMode - Melee */
     , (802228,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (802228,  72,         35) /* FriendType - OlthoiLarvae */
     , (802228,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802228, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802228, 140,          1) /* AiOptions - CanOpenDoors */
     , (802228, 146,    1500000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802228,   1, True ) /* Stuck */
     , (802228,  11, False) /* IgnoreCollisions */
     , (802228,  12, True ) /* ReportCollisions */
     , (802228,  13, False) /* Ethereal */
     , (802228,  14, True ) /* GravityStatus */
     , (802228,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802228,   1,       5) /* HeartbeatInterval */
     , (802228,   2,       0) /* HeartbeatTimestamp */
     , (802228,   3,      45) /* HealthRate */
     , (802228,   4,      30) /* StaminaRate */
     , (802228,   5,       2) /* ManaRate */
     , (802228,  12,     0.5) /* Shade */
     , (802228,  13,     1.1) /* ArmorModVsSlash */
     , (802228,  14,       1) /* ArmorModVsPierce */
     , (802228,  15,       1) /* ArmorModVsBludgeon */
     , (802228,  16,       1) /* ArmorModVsCold */
     , (802228,  17,     1.1) /* ArmorModVsFire */
     , (802228,  18,     1.1) /* ArmorModVsAcid */
     , (802228,  19,     1.1) /* ArmorModVsElectric */
     , (802228,  31,      24) /* VisualAwarenessRange */
     , (802228,  34,       1) /* PowerupTime */
     , (802228,  36,       1) /* ChargeSpeed */
     , (802228,  39,     1.4) /* DefaultScale */
     , (802228,  64,    0.65) /* ResistSlash */
     , (802228,  65,    0.75) /* ResistPierce */
     , (802228,  66,    0.75) /* ResistBludgeon */
     , (802228,  67,    0.75) /* ResistFire */
     , (802228,  68,    0.75) /* ResistCold */
     , (802228,  69,    0.25) /* ResistAcid */
     , (802228,  70,     0.4) /* ResistElectric */
     , (802228,  71,       1) /* ResistHealthBoost */
     , (802228,  72,     0.5) /* ResistStaminaDrain */
     , (802228,  73,       1) /* ResistStaminaBoost */
     , (802228,  74,     0.5) /* ResistManaDrain */
     , (802228,  75,       1) /* ResistManaBoost */
     , (802228,  77,       1) /* PhysicsScriptIntensity */
     , (802228, 104,      10) /* ObviousRadarRange */
     , (802228, 117,     0.6) /* FocusedProbability */
     , (802228, 125,     0.5) /* ResistHealthDrain */
     , (802228, 166,    0.12) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802228,   1, 'Primordial Matron') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802228,   1,   33558451) /* Setup */
     , (802228,   2,  150995253) /* MotionTable */
     , (802228,   3,  536871073) /* SoundTable */
     , (802228,   4,  805306425) /* CombatTable */
     , (802228,   6,   67114502) /* PaletteBase */
     , (802228,   7,  268436679) /* ClothingBase */
     , (802228,   8,  100674878) /* Icon */
     , (802228,  19,         86) /* ActivationAnimation */
     , (802228,  22,  872415400) /* PhysicsEffectTable */
     , (802228,  30,         86) /* PhysicsScript - BreatheAcid */
     , (802228,  35,        449) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802228,   1, 660, 0, 0) /* Strength */
     , (802228,   2, 680, 0, 0) /* Endurance */
     , (802228,   3, 605, 0, 0) /* Quickness */
     , (802228,   4, 625, 0, 0) /* Coordination */
     , (802228,   5, 650, 0, 0) /* Focus */
     , (802228,   6, 620, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802228,   1, 25000, 0, 0, 25000) /* MaxHealth */
     , (802228,   3,  5000, 0, 0, 5380) /* MaxStamina */
     , (802228,   5,     0, 0, 0, 120) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802228,  6, 0, 3, 0, 357, 0, 0) /* MeleeDefense        Specialized */
     , (802228,  7, 0, 3, 0, 360, 0, 0) /* MissileDefense      Specialized */
     , (802228, 15, 0, 3, 0, 364, 0, 0) /* MagicDefense        Specialized */
     , (802228, 20, 0, 3, 0, 300, 0, 0) /* Deception           Specialized */
     , (802228, 22, 0, 3, 0, 300, 0, 0) /* Jump                Specialized */
     , (802228, 24, 0, 3, 0, 300, 0, 0) /* Run                 Specialized */
     , (802228, 45, 0, 3, 0, 315, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802228,  0,  4,  5,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (802228, 16,  4,  5,    0,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (802228, 18,  2, 500,  0.5,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (802228, 19,  2, 500, 0.75,  450,  225,  225,  225,  225,  225,  225,  225,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (802228, 20,  1, 500, 0.75,  450,  225,  225,  225,  225,  225,  225,  225,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (802228, 22, 32, 150,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802228,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  22 /* StampQuest */, 0, 1, NULL, 'PrimordialMatronKilled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  18 /* DirectBroadcast */, 0, 1, NULL, 'You have defeated the Primordial Matron!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802228, 9, 23108,  0, 0, 0.02, False) /* Create Twisted Dark Key (23108) for ContainTreasure */
     , (802228, 9,     0,  0, 0, 0.98, False) /* Create nothing for ContainTreasure */
     , (802228, 9, 23107,  0, 0, 0.01, False) /* Create Mangled Dark Key (23107) for ContainTreasure */
     , (802228, 9,     0,  0, 0, 0.99, False) /* Create nothing for ContainTreasure */;
