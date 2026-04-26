DELETE FROM `weenie` WHERE `class_Id` = 802586;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802586, 'DragonEncounter', 10, '2020-01-17 07:46:19') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802586,   1,         16) /* ItemType - Creature */
     , (802586,   2,         71) /* CreatureType - Margul */
     , (802586,   3,         11) /* PaletteTemplate - Maroon */
     , (802586,   6,         -1) /* ItemsCapacity */
     , (802586,   7,         -1) /* ContainersCapacity */
     , (802586,  16,          1) /* ItemUseable - No */
     , (802586,  25,        750) /* Level */
     , (802586,  27,          0) /* ArmorType - None */
     , (802586,  40,          2) /* CombatMode - Melee */
     , (802586,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (802586,  72,         22) /* FriendType - Shadow */
     , (802586,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802586, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (802586, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802586, 140,          1) /* AiOptions - CanOpenDoors */
     , (802586, 146,   15000000) /* XpOverride */
     , (802586, 332,   30000000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802586,   1, True ) /* Stuck */
     , (802586,   6, True ) /* AiUsesMana */
     , (802586,  11, False) /* IgnoreCollisions */
     , (802586,  12, True ) /* ReportCollisions */
     , (802586,  13, False) /* Ethereal */
     , (802586,  14, True ) /* GravityStatus */
     , (802586,  19, True ) /* Attackable */
     , (802586,  65, True ) /* IgnoreMagicResist */
     , (802586,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802586,   1,       5) /* HeartbeatInterval */
     , (802586,   2,       0) /* HeartbeatTimestamp */
     , (802586,   3,       8) /* HealthRate */
     , (802586,   4,       3) /* StaminaRate */
     , (802586,   5,       1) /* ManaRate */
     , (802586,  12,     0.5) /* Shade */
     , (802586,  13,       1) /* ArmorModVsSlash */
     , (802586,  14,       1) /* ArmorModVsPierce */
     , (802586,  15,     0.7) /* ArmorModVsBludgeon */
     , (802586,  16,       1) /* ArmorModVsCold */
     , (802586,  17,     0.7) /* ArmorModVsFire */
     , (802586,  18,       1) /* ArmorModVsAcid */
     , (802586,  19,       1) /* ArmorModVsElectric */
     , (802586,  31,      24) /* VisualAwarenessRange */
     , (802586,  34,       1) /* PowerupTime */
     , (802586,  36,       1) /* ChargeSpeed */
     , (802586,  39,       4) /* DefaultScale */
     , (802586,  64,     0.1) /* ResistSlash */
     , (802586,  65,     0.1) /* ResistPierce */
     , (802586,  66,     0.3) /* ResistBludgeon */
     , (802586,  67,     0.3) /* ResistFire */
     , (802586,  68,     0.1) /* ResistCold */
     , (802586,  69,     0.1) /* ResistAcid */
     , (802586,  70,     0.1) /* ResistElectric */
     , (802586,  71,       1) /* ResistHealthBoost */
     , (802586,  72,       1) /* ResistStaminaDrain */
     , (802586,  73,       1) /* ResistStaminaBoost */
     , (802586,  74,       1) /* ResistManaDrain */
     , (802586,  75,       1) /* ResistManaBoost */
     , (802586,  77,       1) /* PhysicsScriptIntensity */
     , (802586,  80,       2) /* AiUseMagicDelay */
     , (802586, 104,      10) /* ObviousRadarRange */
     , (802586, 122,       2) /* AiAcquireHealth */
     , (802586, 125,    0.01) /* ResistHealthDrain */
     , (802586, 166,    0.7) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802586,   1, 'Dragon of the Deep') /* Name */
     /*, (802586,  45, 'AetheriaGuardianKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802586,   1,   33558554) /* Setup */
     , (802586,   2,  150995263) /* MotionTable */
     , (802586,   3,  536871080) /* SoundTable */
     , (802586,   4,  805306426) /* CombatTable */
     , (802586,   6,   67114728) /* PaletteBase */
     , (802586,   7,  268436733) /* ClothingBase */
     , (802586,   8,  100675661) /* Icon */
     , (802586,  19,         85) /* ActivationAnimation */
     , (802586,  22,  872415401) /* PhysicsEffectTable */
     , (802586,  30,         85) /* PhysicsScript - BreatheFrost */
     , (802586,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802586,   1, 10000, 0, 0) /* Strength */
     , (802586,   2, 10000, 0, 0) /* Endurance */
     , (802586,   3, 320, 0, 0) /* Quickness */
     , (802586,   4, 750, 0, 0) /* Coordination */
     , (802586,   5, 1400, 0, 0) /* Focus */
     , (802586,   6, 1400, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802586,   1, 180000, 0, 0, 180000) /* MaxHealth */
     , (802586,   3, 20000, 0, 0, 24000) /* MaxStamina */
     , (802586,   5, 20000, 0, 0, 23000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802586,  6, 0, 3, 0, 350, 0, 0) /* MeleeDefense        Specialized */
     , (802586,  7, 0, 3, 0, 350, 0, 0) /* MissileDefense      Specialized */
     , (802586, 15, 0, 3, 0, 350, 0, 0) /* MagicDefense        Specialized */
     , (802586, 31, 0, 3, 0, 2405, 0, 0) /* CreatureEnchantment Specialized */
     , (802586, 32, 0, 3, 0, 2405, 0, 0) /* ItemEnchantment     Specialized */
     , (802586, 33, 0, 3, 0, 2405, 0, 0) /* LifeMagic           Specialized */
     , (802586, 34, 0, 3, 0, 3400, 0, 0) /* WarMagic            Specialized */
     , (802586, 45, 0, 3, 0, 4450, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802586,  0, 16, 15000,  0.5,  8000, 2100, 2100, 2100, 2100, 2100, 2100, 2100,  650, 1,  0.4,  0.1,    0,  0.4,  0.1,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (802586, 10, 16, 15000,  0.5,  8000, 2100, 2100, 2100, 2100, 2100, 2100, 2100,  650, 3,    0,  0.2,  0.8,    0,  0.2,  0.8,    0,    0,    0,    0,    0,    0) /* FrontLeg */
     , (802586, 13, 16, 15000,  0.5,  8000, 2100, 2100, 2100, 2100, 2100, 2100, 2100,  650, 3,    0,    0,    0,    0,    0,    0,  0.1,  0.3,  0.7,  0.1,  0.3,  0.7) /* RearLeg */
     , (802586, 16,  4,    0,    0,  8000, 2100, 2100, 2100, 2100, 2100, 2100, 2100,  650, 2,  0.6,  0.7,  0.2,  0.6,  0.7,  0.2,  0.9,  0.7,  0.3,  0.9,  0.7,  0.3) /* Torso */
     , (802586, 22,  8,  500,  0.5,     0, 2100, 2100, 2100, 2100, 2100, 2100, 2100,  650, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802586, 9, 801857,  0, 0, 0.50, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802586, 9, 801857,  0, 0, 0.50, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802586, 9, 801857,  0, 0, 0.50, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802586, 9, 801857,  0, 0, 0.50, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802586, 9, 801857,  0, 0, 0.50, False) /* Create Ring of Mangled Fervor (800030) for ContainTreasure */
     , (802586, 9, 802401,  0, 0, 0.50, False) /* Create Shemtar's Leggings of Enlightenment (800016) for ContainTreasure */
     , (802586, 9, 802401,  0, 0, 0.50, False) /* Create Shemtar's Leggings of Enlightenment (800016) for ContainTreasure */
     , (802586, 9, 802401,  0, 0, 0.50, False) /* Create Shemtar's Leggings of Enlightenment (800016) for ContainTreasure */
     , (802586, 9, 802401,  0, 0, 0.50, False) /* Create Shemtar's Leggings of Enlightenment (800016) for ContainTreasure */
     , (802586, 9, 802401,  0, 0, 0.50, False) /* Create Shemtar's Leggings of Enlightenment (800016) for ContainTreasure */
     , (802586, 9, 850012,  0, 0, 0.01, False) /* Create Bandit Fort Clue Generator (2111) for ContainTreasure */
     , (802586, 9, 850013,  0, 0, 0.02, False) /* Create Bandit Fort Clue Generator (2111) for ContainTreasure */
     , (802586, 9, 850014,  0, 0, 0.03, False) /* Create Bandit Fort Clue Generator (2111) for ContainTreasure */
     , (802586, 9, 850015,  0, 0, 0.04, False) /* Create Bandit Fort Clue Generator (2111) for ContainTreasure */
     , (802586, 9, 850016,  0, 0, 0.05, False) /* Create Bandit Fort Clue Generator (2111) for ContainTreasure */
     , (802586, 9, 850017,  0, 0, 0.06, False) /* Create Bandit Fort Clue Generator (2111) for ContainTreasure */
     , (802586, 9, 850018,  0, 0, 0.07, False) /* Create Bandit Fort Clue Generator (2111) for ContainTreasure */
     , (802586, 9, 850019,  0, 0, 0.08, False) /* Create Bandit Fort Clue Generator (2111) for ContainTreasure */
     , (802586, 9, 850020,  0, 0, 0.09, False) /* Create Bandit Fort Clue Generator (2111) for ContainTreasure */;