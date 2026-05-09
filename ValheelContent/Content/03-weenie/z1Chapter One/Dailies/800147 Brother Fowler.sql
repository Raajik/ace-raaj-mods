DELETE FROM `weenie` WHERE `class_Id` = 800147;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800147, 'Brother Fowler', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800147,   1,         16) /* ItemType - Creature */
     , (800147,   2,          5) /* CreatureType - Lugian */
     , (800147,   3,          2) /* PaletteTemplate - Blue */
     , (800147,   6,         -1) /* ItemsCapacity */
     , (800147,   7,         -1) /* ContainersCapacity */
     , (800147,   8,       8000) /* Mass */
     , (800147,  16,          1) /* ItemUseable - No */
     , (800147,  25,        350) /* Level */
     , (800147,  27,          0) /* ArmorType - None */
     , (800147,  40,          2) /* CombatMode - Melee */
     , (800147,  67,         64) /* Tolerance - Retaliate */
     , (800147,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800147,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800147, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800147, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800147, 140,          1) /* AiOptions - CanOpenDoors */
     , (800147, 146,     200000) /* XpOverride */
     , (800147, 332,     100000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800147,   1, True ) /* Stuck */
     , (800147,  11, False) /* IgnoreCollisions */
     , (800147,  12, True ) /* ReportCollisions */
     , (800147,  13, False) /* Ethereal */
     , (800147,  14, True ) /* GravityStatus */
     , (800147,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800147,   1,       5) /* HeartbeatInterval */
     , (800147,   2,       0) /* HeartbeatTimestamp */
     , (800147,   3,     0.9) /* HealthRate */
     , (800147,   4,       4) /* StaminaRate */
     , (800147,   5,       2) /* ManaRate */
     , (800147,  12,     0.5) /* Shade */
     , (800147,  13,       1) /* ArmorModVsSlash */
     , (800147,  14,       1) /* ArmorModVsPierce */
     , (800147,  15,       1) /* ArmorModVsBludgeon */
     , (800147,  16,       1) /* ArmorModVsCold */
     , (800147,  17,       1) /* ArmorModVsFire */
     , (800147,  18,       1) /* ArmorModVsAcid */
     , (800147,  19,     0.7) /* ArmorModVsElectric */
     , (800147,  31,      23) /* VisualAwarenessRange */
     , (800147,  34,       3) /* PowerupTime */
     , (800147,  36,       1) /* ChargeSpeed */
     , (800147,  39,     1.3) /* DefaultScale */
     , (800147,  64,     0.1) /* ResistSlash */
     , (800147,  65,     0.1) /* ResistPierce */
     , (800147,  66,     0.1) /* ResistBludgeon */
     , (800147,  67,     0.1) /* ResistFire */
     , (800147,  68,     0.1) /* ResistCold */
     , (800147,  69,     0.1) /* ResistAcid */
     , (800147,  70,     0.5) /* ResistElectric */
     , (800147,  71,       1) /* ResistHealthBoost */
     , (800147,  72,       1) /* ResistStaminaDrain */
     , (800147,  73,       1) /* ResistStaminaBoost */
     , (800147,  74,       1) /* ResistManaDrain */
     , (800147,  75,       1) /* ResistManaBoost */
     , (800147, 104,      10) /* ObviousRadarRange */
     , (800147, 117,     0.5) /* FocusedProbability */
     , (800147, 125,       1) /* ResistHealthDrain */
     , (800147, 166,    0.09) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800147,   1, 'Brother Fowler') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800147,   1,   33557003) /* Setup */
     , (800147,   2,  150994950) /* MotionTable */
     , (800147,   3,  536870922) /* SoundTable */
     , (800147,   4,  805306371) /* CombatTable */
     , (800147,   6,   67113158) /* PaletteBase */
     , (800147,   7,  268436157) /* ClothingBase */
     , (800147,   8,  100667447) /* Icon */
     , (800147,  22,  872415262) /* PhysicsEffectTable */
     , (800147,  32,        275) /* WieldedTreasureType */
     , (800147,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800147,   1, 1290, 0, 0) /* Strength */
     , (800147,   2, 560, 0, 0) /* Endurance */
     , (800147,   3, 260, 0, 0) /* Quickness */
     , (800147,   4, 800, 0, 0) /* Coordination */
     , (800147,   5, 235, 0, 0) /* Focus */
     , (800147,   6, 270, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800147,   1,   9000, 0, 0, 9000) /* MaxHealth */
     , (800147,   3,     23150, 0, 0, 23410) /* MaxStamina */
     , (800147,   5,       1500, 0, 0, 1570) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800147,  6, 0, 2, 0, 170, 0, 0) /* MeleeDefense        Trained */
     , (800147,  7, 0, 3, 0, 280, 0, 0) /* MissileDefense      Specialized */
     , (800147, 15, 0, 3, 0, 250, 0, 0) /* MagicDefense        Specialized */
     , (800147, 16, 0, 3, 0, 440, 0, 0) /* ManaConversion      Specialized */
     , (800147, 31, 0, 3, 0, 440, 0, 0) /* CreatureEnchantment Specialized */
     , (800147, 33, 0, 3, 0, 470, 0, 0) /* LifeMagic           Specialized */
     , (800147, 34, 0, 3, 0, 670, 0, 0) /* WarMagic            Specialized */
     , (800147, 41, 0, 3, 0, 683, 0, 0) /* TwoHandedCombat     Specialized */
     , (800147, 43, 0, 3, 0, 670, 0, 0) /* VoidMagic           Specialized */
     , (800147, 44, 0, 3, 0, 2683, 0, 0) /* HeavyWeapons        Specialized */
     , (800147, 45, 0, 3, 0, 2683, 0, 0) /* LightWeapons        Specialized */
     , (800147, 46, 0, 3, 0, 2683, 0, 0) /* FinesseWeapons      Specialized */
     , (800147, 47, 0, 3, 0, 2580, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800147,  0,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800147,  1,  4, 40,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800147,  2,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800147,  3,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800147,  4,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800147,  5,  4, 20, 0.75,  600,  600,  600,  600,   300,   300,  600,  300,    600, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800147,  6,  4,  2,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800147,  7,  4, 25,  0.3,  600,  600,  600,  600,   300,   300,  600,  300,    600, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800147,  8,  4, 20, 0.75,  600,  600,  600,  600,   300,   300,  600,  300,    600, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800147,  2074,   2.02)  /* Gossamer Flesh */
     , (800147,  2164,   2.02)  /* Swordsman's Gift */
     , (800147,  2168,   2.02)  /* Gelidite's Gift */
     , (800147,  2174,   2.02)  /* Archer's Gift */
     , (800147,  4436,   1.02)  /* Incantation of Blade Volley */
     , (800147,  4447,   1.02)  /* Incantation of Frost Bolt */
     , (800147,  1783,   1.02)  /* Acid Ring */
     , (800147,  1785,   1.02)  /* Fire Ring */
     , (800147,  1241,   2.02)  /* Drain Health Other V */;
	 

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800147,  94)
     , (800147, 414);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800147, 9,  800380,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800147, 9,  800380,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800147, 9,  800380,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800147, 9,  800380,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800147, 9,  800380,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800147, 9,  800380,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800147, 9,  800380,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800147, 9,  800380,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800147, 9,  800380,  0, 0, 1, False) /* Create Sturdy Iron Key (6876) for ContainTreasure */
     , (800147, 9,  800188,  0, 0, 0.05, False) /* Create Fowler's Arm for ContainTreasure */
     , (800147, 2,   800146,  1, 2, 0, False) /* Create Fierce Hollow Mace for Wield */;
