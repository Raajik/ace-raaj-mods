DELETE FROM `weenie` WHERE `class_Id` = 800149;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800149, 'Brother Trexx', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800149,   1,         16) /* ItemType - Creature */
     , (800149,   2,          5) /* CreatureType - Lugian */
     , (800149,   3,          2) /* PaletteTemplate - Blue */
     , (800149,   6,         -1) /* ItemsCapacity */
     , (800149,   7,         -1) /* ContainersCapacity */
     , (800149,   8,       8000) /* Mass */
     , (800149,  16,          1) /* ItemUseable - No */
     , (800149,  25,        350) /* Level */
     , (800149,  27,          0) /* ArmorType - None */
     , (800149,  40,          2) /* CombatMode - Melee */
     , (800149,  67,         64) /* Tolerance - Retaliate */
     , (800149,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800149,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800149, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800149, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800149, 140,          1) /* AiOptions - CanOpenDoors */
     , (800149, 146,     200000) /* XpOverride */
     , (800149, 332,     100000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800149,   1, True ) /* Stuck */
     , (800149,  11, False) /* IgnoreCollisions */
     , (800149,  12, True ) /* ReportCollisions */
     , (800149,  13, False) /* Ethereal */
     , (800149,  14, True ) /* GravityStatus */
     , (800149,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800149,   1,       5) /* HeartbeatInterval */
     , (800149,   2,       0) /* HeartbeatTimestamp */
     , (800149,   3,     0.9) /* HealthRate */
     , (800149,   4,       4) /* StaminaRate */
     , (800149,   5,       2) /* ManaRate */
     , (800149,  12,     0.5) /* Shade */
     , (800149,  13,       1) /* ArmorModVsSlash */
     , (800149,  14,       1) /* ArmorModVsPierce */
     , (800149,  15,       1) /* ArmorModVsBludgeon */
     , (800149,  16,       1) /* ArmorModVsCold */
     , (800149,  17,       1) /* ArmorModVsFire */
     , (800149,  18,       1) /* ArmorModVsAcid */
     , (800149,  19,     0.7) /* ArmorModVsElectric */
     , (800149,  31,      23) /* VisualAwarenessRange */
     , (800149,  34,       3) /* PowerupTime */
     , (800149,  36,       1) /* ChargeSpeed */
     , (800149,  39,     1.3) /* DefaultScale */
     , (800149,  64,     0.1) /* ResistSlash */
     , (800149,  65,     0.1) /* ResistPierce */
     , (800149,  66,     0.1) /* ResistBludgeon */
     , (800149,  67,     0.1) /* ResistFire */
     , (800149,  68,     0.1) /* ResistCold */
     , (800149,  69,     0.1) /* ResistAcid */
     , (800149,  70,     0.5) /* ResistElectric */
     , (800149,  71,       1) /* ResistHealthBoost */
     , (800149,  72,       1) /* ResistStaminaDrain */
     , (800149,  73,       1) /* ResistStaminaBoost */
     , (800149,  74,       1) /* ResistManaDrain */
     , (800149,  75,       1) /* ResistManaBoost */
     , (800149, 104,      10) /* ObviousRadarRange */
     , (800149, 117,     0.5) /* FocusedProbability */
     , (800149, 125,       1) /* ResistHealthDrain */
     , (800149, 166,    0.09) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800149,   1, 'Brother Trexx') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800149,   1,   33557003) /* Setup */
     , (800149,   2,  150994950) /* MotionTable */
     , (800149,   3,  536870922) /* SoundTable */
     , (800149,   4,  805306371) /* CombatTable */
     , (800149,   6,   67113158) /* PaletteBase */
     , (800149,   7,  268436157) /* ClothingBase */
     , (800149,   8,  100667447) /* Icon */
     , (800149,  22,  872415262) /* PhysicsEffectTable */
     , (800149,  32,        275) /* WieldedTreasureType */
     , (800149,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800149,   1, 1290, 0, 0) /* Strength */
     , (800149,   2, 560, 0, 0) /* Endurance */
     , (800149,   3, 260, 0, 0) /* Quickness */
     , (800149,   4, 800, 0, 0) /* Coordination */
     , (800149,   5, 235, 0, 0) /* Focus */
     , (800149,   6, 270, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800149,   1,   9000, 0, 0, 9000) /* MaxHealth */
     , (800149,   3,     23150, 0, 0, 23410) /* MaxStamina */
     , (800149,   5,       1500, 0, 0, 1570) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800149,  6, 0, 2, 0, 170, 0, 0) /* MeleeDefense        Trained */
     , (800149,  7, 0, 3, 0, 280, 0, 0) /* MissileDefense      Specialized */
     , (800149, 15, 0, 3, 0, 250, 0, 0) /* MagicDefense        Specialized */
     , (800149, 16, 0, 3, 0, 440, 0, 0) /* ManaConversion      Specialized */
     , (800149, 31, 0, 3, 0, 440, 0, 0) /* CreatureEnchantment Specialized */
     , (800149, 33, 0, 3, 0, 470, 0, 0) /* LifeMagic           Specialized */
     , (800149, 34, 0, 3, 0, 670, 0, 0) /* WarMagic            Specialized */
     , (800149, 41, 0, 3, 0, 683, 0, 0) /* TwoHandedCombat     Specialized */
     , (800149, 43, 0, 3, 0, 670, 0, 0) /* VoidMagic           Specialized */
     , (800149, 44, 0, 3, 0, 2683, 0, 0) /* HeavyWeapons        Specialized */
     , (800149, 45, 0, 3, 0, 2683, 0, 0) /* LightWeapons        Specialized */
     , (800149, 46, 0, 3, 0, 2683, 0, 0) /* FinesseWeapons      Specialized */
     , (800149, 47, 0, 3, 0, 2580, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800149,  0,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800149,  1,  4, 40,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800149,  2,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800149,  3,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800149,  4,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800149,  5,  4, 20, 0.75,  600,  600,  600,  600,   300,   300,  600,  300,    600, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800149,  6,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800149,  7,  4, 25,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800149,  8,  4, 20, 0.75,  600,  600,  600,  600,   300,   300,  600,  300,    600, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800149,  2074,   2.02)  /* Gossamer Flesh */
     , (800149,  2164,   2.02)  /* Swordsman's Gift */
     , (800149,  2168,   2.02)  /* Gelidite's Gift */
     , (800149,  2174,   2.02)  /* Archer's Gift */
     , (800149,  4436,   1.02)  /* Incantation of Blade Volley */
     , (800149,  4447,   1.02)  /* Incantation of Frost Bolt */
     , (800149,  1783,   1.02)  /* Acid Ring */
     , (800149,  1785,   1.02)  /* Fire Ring */
     , (800149,  1241,   2.02)  /* Drain Health Other V */;
	 
INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800149,  94)
     , (800149, 414);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800149, 9,  800382,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800149, 9,  800382,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800149, 9,  800382,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800149, 9,  800382,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800149, 9,  800382,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800149, 9,  800382,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800149, 9,  800382,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800149, 9,  800382,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800149, 9,  800382,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800149, 9,  800190,  0, 0, 0.05, False) /* Create Trexx's Claw	 for ContainTreasure */
     , (800149, 2,   800146,  1, 2, 0, False) /* Create Fierce Hollow Mace for Wield */;
