DELETE FROM `weenie` WHERE `class_Id` = 800145;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800145, 'Brother Gorin', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800145,   1,         16) /* ItemType - Creature */
     , (800145,   2,          5) /* CreatureType - Lugian */
     , (800145,   3,          2) /* PaletteTemplate - Blue */
     , (800145,   6,         -1) /* ItemsCapacity */
     , (800145,   7,         -1) /* ContainersCapacity */
     , (800145,   8,       8000) /* Mass */
     , (800145,  16,          1) /* ItemUseable - No */
     , (800145,  25,        350) /* Level */
     , (800145,  27,          0) /* ArmorType - None */
     , (800145,  40,          2) /* CombatMode - Melee */
     , (800145,  67,         64) /* Tolerance - Retaliate */
     , (800145,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800145,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800145, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800145, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800145, 140,          1) /* AiOptions - CanOpenDoors */
     , (800145, 146,     200000) /* XpOverride */
     , (800145, 332,     100000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800145,   1, True ) /* Stuck */
     , (800145,  11, False) /* IgnoreCollisions */
     , (800145,  12, True ) /* ReportCollisions */
     , (800145,  13, False) /* Ethereal */
     , (800145,  14, True ) /* GravityStatus */
     , (800145,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800145,   1,       5) /* HeartbeatInterval */
     , (800145,   2,       0) /* HeartbeatTimestamp */
     , (800145,   3,     0.9) /* HealthRate */
     , (800145,   4,       4) /* StaminaRate */
     , (800145,   5,       2) /* ManaRate */
     , (800145,  12,     0.5) /* Shade */
     , (800145,  13,       1) /* ArmorModVsSlash */
     , (800145,  14,       1) /* ArmorModVsPierce */
     , (800145,  15,       1) /* ArmorModVsBludgeon */
     , (800145,  16,       1) /* ArmorModVsCold */
     , (800145,  17,       1) /* ArmorModVsFire */
     , (800145,  18,       1) /* ArmorModVsAcid */
     , (800145,  19,     0.7) /* ArmorModVsElectric */
     , (800145,  31,      23) /* VisualAwarenessRange */
     , (800145,  34,       3) /* PowerupTime */
     , (800145,  36,       1) /* ChargeSpeed */
     , (800145,  39,     1.3) /* DefaultScale */
     , (800145,  64,     0.1) /* ResistSlash */
     , (800145,  65,     0.1) /* ResistPierce */
     , (800145,  66,     0.1) /* ResistBludgeon */
     , (800145,  67,     0.1) /* ResistFire */
     , (800145,  68,     0.1) /* ResistCold */
     , (800145,  69,     0.1) /* ResistAcid */
     , (800145,  70,     0.5) /* ResistElectric */
     , (800145,  71,       1) /* ResistHealthBoost */
     , (800145,  72,       1) /* ResistStaminaDrain */
     , (800145,  73,       1) /* ResistStaminaBoost */
     , (800145,  74,       1) /* ResistManaDrain */
     , (800145,  75,       1) /* ResistManaBoost */
     , (800145, 104,      10) /* ObviousRadarRange */
     , (800145, 117,     0.5) /* FocusedProbability */
     , (800145, 125,       1) /* ResistHealthDrain */
     , (800145, 166,    0.09) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800145,   1, 'Brother Gorin') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800145,   1,   33557003) /* Setup */
     , (800145,   2,  150994950) /* MotionTable */
     , (800145,   3,  536870922) /* SoundTable */
     , (800145,   4,  805306371) /* CombatTable */
     , (800145,   6,   67113158) /* PaletteBase */
     , (800145,   7,  268436157) /* ClothingBase */
     , (800145,   8,  100667447) /* Icon */
     , (800145,  22,  872415262) /* PhysicsEffectTable */
     , (800145,  32,        275) /* WieldedTreasureType */
     , (800145,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800145,   1, 1290, 0, 0) /* Strength */
     , (800145,   2, 560, 0, 0) /* Endurance */
     , (800145,   3, 260, 0, 0) /* Quickness */
     , (800145,   4, 800, 0, 0) /* Coordination */
     , (800145,   5, 235, 0, 0) /* Focus */
     , (800145,   6, 270, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800145,   1,   9000, 0, 0, 9000) /* MaxHealth */
     , (800145,   3,     23150, 0, 0, 23410) /* MaxStamina */
     , (800145,   5,       1500, 0, 0, 1570) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800145,  6, 0, 2, 0, 170, 0, 0) /* MeleeDefense        Trained */
     , (800145,  7, 0, 3, 0, 280, 0, 0) /* MissileDefense      Specialized */
     , (800145, 15, 0, 3, 0, 250, 0, 0) /* MagicDefense        Specialized */
     , (800145, 16, 0, 3, 0, 440, 0, 0) /* ManaConversion      Specialized */
     , (800145, 31, 0, 3, 0, 440, 0, 0) /* CreatureEnchantment Specialized */
     , (800145, 33, 0, 3, 0, 470, 0, 0) /* LifeMagic           Specialized */
     , (800145, 34, 0, 3, 0, 670, 0, 0) /* WarMagic            Specialized */
     , (800145, 41, 0, 3, 0, 683, 0, 0) /* TwoHandedCombat     Specialized */
     , (800145, 43, 0, 3, 0, 670, 0, 0) /* VoidMagic           Specialized */
     , (800145, 44, 0, 3, 0, 2683, 0, 0) /* HeavyWeapons        Specialized */
     , (800145, 45, 0, 3, 0, 2683, 0, 0) /* LightWeapons        Specialized */
     , (800145, 46, 0, 3, 0, 2683, 0, 0) /* FinesseWeapons      Specialized */
     , (800145, 47, 0, 3, 0, 2580, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800145,  0,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800145,  1,  4, 40,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800145,  2,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800145,  3,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800145,  4,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800145,  5,  4, 20, 0.75,  600,  600,  600,  600,   300,   300,  600,  300,    600, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800145,  6,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800145,  7,  4, 25,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800145,  8,  4, 20, 0.75,  600,  600,  600,  600,   300,   300,  600,  300,    600, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800145,  2074,   2.02)  /* Gossamer Flesh */
     , (800145,  2164,   2.02)  /* Swordsman's Gift */
     , (800145,  2168,   2.02)  /* Gelidite's Gift */
     , (800145,  2174,   2.02)  /* Archer's Gift */
     , (800145,  4436,   1.02)  /* Incantation of Blade Volley */
     , (800145,  4447,   1.02)  /* Incantation of Frost Bolt */
     , (800145,  1783,   1.02)  /* Acid Ring */
     , (800145,  1785,   1.02)  /* Fire Ring */
     , (800145,  1241,   2.02)  /* Drain Health Other V */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800145,  94)
     , (800145, 414);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800145, 9,  800379,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800145, 9,  800379,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800145, 9,  800379,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800145, 9,  800379,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800145, 9,  800379,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800145, 9,  800379,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800145, 9,  800379,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800145, 9,  800379,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800145, 9,  800379,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800145, 9,  800189,  0, 0, 0.05, False) /* Create Gorin's Long Bow for ContainTreasure */
     , (800145, 2,   800146,  1, 2, 0, False) /* Create Fierce Hollow Mace for Wield */;
