DELETE FROM `weenie` WHERE `class_Id` = 800026;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800026, 'carnagedrudge', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800026,   1,         16) /* ItemType - Creature */
     , (800026,   2,          3) /* CreatureType - Drudge */
     , (800026,   3,         88) /* PaletteTemplate - DyeWinterBlue */
     , (800026,   6,         -1) /* ItemsCapacity */
     , (800026,   7,         -1) /* ContainersCapacity */
     , (800026,  16,          1) /* ItemUseable - No */
     , (800026,  25,        225) /* Level */
     , (800026,  27,          0) /* ArmorType - None */
     , (800026,  40,          2) /* CombatMode - Melee */
     , (800026,  68,          0x80) /* TargetingTactic - Random, TopDamager */
     , (800026,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800026, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (800026, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800026, 140,          1) /* AiOptions - CanOpenDoors */
     , (800026, 146,    7867485) /* XpOverride */
     , (800026, 332,       9500) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800026,   1, True ) /* Stuck */
     , (800026,  11, False) /* IgnoreCollisions */
     , (800026,  12, True ) /* ReportCollisions */
     , (800026,  13, False) /* Ethereal */
     , (800026,  14, True ) /* GravityStatus */
     , (800026,  19, True ) /* Attackable */
     , (800026,  66, False ) /* IgnoreMagicArmor */
     , (800026, 103, False) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800026,   1,       5) /* HeartbeatInterval */
     , (800026,   2,       0) /* HeartbeatTimestamp */
     , (800026,   3,    0.45) /* HealthRate */
     , (800026,   4,     0.5) /* StaminaRate */
     , (800026,   5,       2) /* ManaRate */
     , (800026,  12,     0.5) /* Shade */
     , (800026,  13,       1) /* ArmorModVsSlash */
     , (800026,  14,       1) /* ArmorModVsPierce */
     , (800026,  15,       1) /* ArmorModVsBludgeon */
     , (800026,  16,       1) /* ArmorModVsCold */
     , (800026,  17,     0.7) /* ArmorModVsFire */
     , (800026,  18,       1) /* ArmorModVsAcid */
     , (800026,  19,       1) /* ArmorModVsElectric */
     , (800026,  31,      18) /* VisualAwarenessRange */
     , (800026,  34,     1.1) /* PowerupTime */
     , (800026,  36,       2) /* ChargeSpeed */
     , (800026,  64,     0.1) /* ResistSlash */
     , (800026,  65,     0.1) /* ResistPierce */
     , (800026,  66,     0.1) /* ResistBludgeon */
     , (800026,  67,     0.7) /* ResistFire */
     , (800026,  68,     0.1) /* ResistCold */
     , (800026,  69,     0.1) /* ResistAcid */
     , (800026,  70,     0.1) /* ResistElectric */
     , (800026,  71,       1) /* ResistHealthBoost */
     , (800026,  72,       1) /* ResistStaminaDrain */
     , (800026,  73,       1) /* ResistStaminaBoost */
     , (800026,  74,       1) /* ResistManaDrain */
     , (800026,  75,       1) /* ResistManaBoost */
     , (800026,  80,       3) /* AiUseMagicDelay */
     , (800026, 104,      10) /* ObviousRadarRange */
     , (800026, 122,       2) /* AiAcquireHealth */
     , (800026, 125,       0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800026,   1, 'Carnage Drudge') /* Name */
     , (800026,  45, 'carnagedrudgeKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800026,   1,   33556445) /* Setup */
     , (800026,   2,  150994952) /* MotionTable */
     , (800026,   3,  536870919) /* SoundTable */
     , (800026,   4,  805306372) /* CombatTable */
     , (800026,   6,   67112812) /* PaletteBase */
     , (800026,   7,  268436614) /* ClothingBase */
     , (800026,   8,  100667445) /* Icon */
     , (800026,  22,  872415258) /* PhysicsEffectTable */
     , (800026,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800026,   1, 470, 0, 0) /* Strength */
     , (800026,   2, 326, 0, 0) /* Endurance */
     , (800026,   3, 360, 0, 0) /* Quickness */
     , (800026,   4, 390, 0, 0) /* Coordination */
     , (800026,   5, 255, 0, 0) /* Focus */
     , (800026,   6, 255, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800026,   1,  2670, 0, 0, 2670) /* MaxHealth */
     , (800026,   3,  3674, 0, 0, 4000) /* MaxStamina */
     , (800026,   5,  2000, 0, 0, 2255) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800026,  6, 0, 3, 0, 210, 0, 0) /* MeleeDefense        Specialized */
     , (800026,  7, 0, 3, 0, 245, 0, 0) /* MissileDefense      Specialized */
     , (800026, 14, 0, 3, 0, 350, 0, 0) /* ArcaneLore          Specialized */
     , (800026, 15, 0, 3, 0, 176, 0, 0) /* MagicDefense        Specialized */
     , (800026, 20, 0, 3, 0, 120, 0, 0) /* Deception           Specialized */
     , (800026, 24, 0, 3, 0,  75, 0, 0) /* Run                 Specialized */
     , (800026, 31, 0, 3, 0, 200, 0, 0) /* CreatureEnchantment Specialized */
     , (800026, 33, 0, 3, 0, 200, 0, 0) /* LifeMagic           Specialized */
     , (800026, 34, 0, 3, 0, 200, 0, 0) /* WarMagic            Specialized */
     , (800026, 44, 0, 3, 0, 475, 0, 0) /* HeavyWeapons        Specialized */
     , (800026, 45, 0, 3, 0, 475, 0, 0) /* LightWeapons        Specialized */
     , (800026, 46, 0, 3, 0, 475, 0, 0) /* FinesseWeapons      Specialized */
     , (800026, 47, 0, 3, 0, 440, 0, 0) /* MissileWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800026,  0,  4,  0,    0,  250,  213,  113,  213,  188,  213,  188,  225,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800026,  1,  4,  0,    0,  250,  213,  113,  213,  188,  213,  188,  225,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800026,  2,  4,  0,    0,  250,  213,  113,  213,  188,  213,  188,  225,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800026,  3,  4,  0,    0,  250,  213,  113,  213,  188,  213,  188,  225,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800026,  4,  4,  0,    0,  250,  213,  113,  213,  188,  213,  188,  225,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800026,  5,  4, 600,  0,  250,  213,  113,  213,  188,  213,  188,  225,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800026,  6,  4,  0,    0,  250,  213,  113,  213,  188,  213,  188,  225,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800026,  7,  4,  0,    0,  250,  213,  113,  213,  188,  213,  188,  225,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800026,  8,  4, 600,  0,  250,  213,  113,  213,  188,  213,  188,  225,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800026,    80,  2.011)  /* Lightning Bolt VI */
     , (800026,  1089,  2.011)  /* Lightning Vulnerability Other VI */
     , (800026,  1161,  2.011)  /* Heal Self VI */
     , (800026,  1242,  2.011)  /* Drain Health Other VI */
     , (800026,  1325,  2.011)  /* Imperil Other IV */
     , (800026,  2056,  2.011)  /* Ataxia */
     , (800026,  2064,  2.011)  /* Self Loathing */
     , (800026,  2140,  2.011)  /* Alset's Coil */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800026,  94)
     , (800026, 414);
