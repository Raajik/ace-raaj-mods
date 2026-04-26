DELETE FROM `weenie` WHERE `class_Id` = 880010;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (880010, 'thecrystalcaulnalainsatellite', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (880010,   1,         16) /* ItemType - Creature */
     , (880010,   2,         47) /* CreatureType - Crystal */
     , (880010,   3,         13) /* PaletteTemplate - Purple */
     , (880010,   6,         -1) /* ItemsCapacity */
     , (880010,   7,         -1) /* ContainersCapacity */
     , (880010,  16,          1) /* ItemUseable - No */
     , (880010,  25,         60) /* Level */
     , (880010,  27,          0) /* ArmorType - None */
     , (880010,  40,          2) /* CombatMode - Melee */
     , (880010,  68,          5) /* TargetingTactic - Random, LastDamager */
     , (880010,  69,          4) /* CombatTactic - LastDamager */
     , (880010,  93,       3080) /* PhysicsState - ReportCollisions, Gravity, LightingOn */
     , (880010, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (880010, 146,      17500) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (880010,   1, True ) /* Stuck */
     , (880010,   6, True ) /* AiUsesMana */
     , (880010,  11, False) /* IgnoreCollisions */
     , (880010,  12, True ) /* ReportCollisions */
     , (880010,  13, False) /* Ethereal */
     , (880010,  14, True ) /* GravityStatus */
     , (880010,  15, True ) /* LightsStatus */
     , (880010,  19, True ) /* Attackable */
     , (880010,  29, False) /* NoCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (880010,   1,       5) /* HeartbeatInterval */
     , (880010,   2,       0) /* HeartbeatTimestamp */
     , (880010,   3,     0.7) /* HealthRate */
     , (880010,   4,       5) /* StaminaRate */
     , (880010,   5,       2) /* ManaRate */
     , (880010,  12,     0.5) /* Shade */
     , (880010,  13,     1.1) /* ArmorModVsSlash */
     , (880010,  14,       1) /* ArmorModVsPierce */
     , (880010,  15,     0.9) /* ArmorModVsBludgeon */
     , (880010,  16,     1.1) /* ArmorModVsCold */
     , (880010,  17,       2) /* ArmorModVsFire */
     , (880010,  18,       2) /* ArmorModVsAcid */
     , (880010,  19,       1) /* ArmorModVsElectric */
     , (880010,  31,      12) /* VisualAwarenessRange */
     , (880010,  34,       1) /* PowerupTime */
     , (880010,  36,       1) /* ChargeSpeed */
     , (880010,  39,     1.5) /* DefaultScale */
     , (880010,  64,       1) /* ResistSlash */
     , (880010,  65,     0.9) /* ResistPierce */
     , (880010,  66,       1) /* ResistBludgeon */
     , (880010,  67,       0) /* ResistFire */
     , (880010,  68,     0.6) /* ResistCold */
     , (880010,  69,     0.3) /* ResistAcid */
     , (880010,  70,       1) /* ResistElectric */
     , (880010,  71,       1) /* ResistHealthBoost */
     , (880010,  72,       0) /* ResistStaminaDrain */
     , (880010,  73,       1) /* ResistStaminaBoost */
     , (880010,  74,       0) /* ResistManaDrain */
     , (880010,  75,       1) /* ResistManaBoost */
     , (880010,  80,       2) /* AiUseMagicDelay */
     , (880010, 104,      10) /* ObviousRadarRange */
     , (880010, 122,       2) /* AiAcquireHealth */
     , (880010, 125,       0) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (880010,   1, 'Caulnalain Satellite Fragment') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (880010,   1,   33556729) /* Setup */
     , (880010,   2,  150995096) /* MotionTable */
     , (880010,   3,  536871001) /* SoundTable */
     , (880010,   4,  805306407) /* CombatTable */
     , (880010,   6,   67111919) /* PaletteBase */
     , (880010,   7,  268435859) /* ClothingBase */
     , (880010,   8,  100670283) /* Icon */
     , (880010,  22,  872415348) /* PhysicsEffectTable */
     , (880010,  35,        463) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (880010,   1, 100, 0, 0) /* Strength */
     , (880010,   2, 100, 0, 0) /* Endurance */
     , (880010,   3, 130, 0, 0) /* Quickness */
     , (880010,   4, 130, 0, 0) /* Coordination */
     , (880010,   5, 110, 0, 0) /* Focus */
     , (880010,   6, 150, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (880010,   1,    90, 0, 0, 140) /* MaxHealth */
     , (880010,   3,   100, 0, 0, 200) /* MaxStamina */
     , (880010,   5,   150, 0, 0, 300) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (880010,  6, 0, 3, 0, 183, 0, 0) /* MeleeDefense        Specialized */
     , (880010,  7, 0, 3, 0, 303, 0, 0) /* MissileDefense      Specialized */
     , (880010, 15, 0, 3, 0, 168, 0, 0) /* MagicDefense        Specialized */
     , (880010, 20, 0, 3, 0, 100, 0, 0) /* Deception           Specialized */
     , (880010, 24, 0, 2, 0,  10, 0, 0) /* Run                 Trained */
     , (880010, 31, 0, 3, 0, 115, 0, 0) /* CreatureEnchantment Specialized */
     , (880010, 33, 0, 3, 0, 115, 0, 0) /* LifeMagic           Specialized */
     , (880010, 34, 0, 3, 0, 115, 0, 0) /* WarMagic            Specialized */
     , (880010, 45, 0, 3, 0, 183, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (880010,  0,  4, 50, 0.75,  120,  132,  120,  108,  132,  240,  240,  120,    0, 1,  0.5,  0.2,    0,  0.5,  0.2,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (880010, 10,  4, 50,    0,  120,  132,  120,  108,  132,  240,  240,  120,    0, 2,  0.2,  0.4,  0.5,  0.2,  0.4,  0.5,    0,    0,    0,    0,    0,    0) /* FrontLeg */
     , (880010, 12,  4, 50, 0.75,  120,  132,  120,  108,  132,  240,  240,  120,    0, 3,    0,    0, 0.25,    0,    0, 0.25,    0,    0,    0,    0,    0,    0) /* FrontFoot */
     , (880010, 13,  4, 50,    0,  120,  132,  120,  108,  132,  240,  240,  120,    0, 2,    0,    0,    0,    0,    0,    0,  0.3,  0.4,  0.5,  0.3,  0.4,  0.5) /* RearLeg */
     , (880010, 15,  4, 50, 0.75,  120,  132,  120,  108,  132,  240,  240,  120,    0, 3,    0,    0,    0,    0,    0,    0,    0,    0, 0.25,    0,    0, 0.25) /* RearFoot */
     , (880010, 16,  4, 50,    0,  120,  132,  120,  108,  132,  240,  240,  120,    0, 2,  0.3,  0.4, 0.25,  0.3,  0.4, 0.25,  0.6,  0.5, 0.25,  0.6,  0.5, 0.25) /* Torso */
     , (880010, 17,  4, 50, 0.75,  120,  132,  120,  108,  132,  240,  240,  120,    0, 2,    0,    0,    0,    0,    0,    0,  0.1,  0.1,    0,  0.1,  0.1,    0) /* Tail */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (880010,    76,  2.115)  /* Lightning Bolt II */
     , (880010,    77,  2.031)  /* Lightning Bolt III */
     , (880010,   167,  2.032)  /* Regeneration Self III */
     , (880010,   276,  2.032)  /* Magic Resistance Self III */
     , (880010,   281,  2.044)  /* Magic Yield Other II */
     , (880010,   606,  2.032)  /* Life Magic Mastery Self II */
     , (880010,   624,  2.044)  /* Life Magic Ineptitude Other II */
     , (880010,   655,  2.032)  /* Mana Conversion Mastery Self III */
     , (880010,  1085,  2.044)  /* Lightning Vulnerability Other II */
     , (880010,  1158,   2.04)  /* Heal Self III */
     , (880010,  1173,  2.044)  /* Harm Other III */
     , (880010,  1238,  2.044)  /* Drain Health Other II */
     , (880010,  1309,   2.04)  /* Armor Self III */
     , (880010,  1417,  2.044)  /* Slowness Other III */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (880010, 9, 880011,  0, 0, 0.3, True) /* Create Caulnalain Soul Gem (880011) for ContainTreasure */
     , (880010, 9, 6060,  0, 0, 0.05, True) /* Create Caulnalain Soul Gem (880011) for ContainTreasure */
     , (880010, 9, 6057,  0, 0, 0.05, True) /* Create Caulnalain Soul Gem (880011) for ContainTreasure */;
