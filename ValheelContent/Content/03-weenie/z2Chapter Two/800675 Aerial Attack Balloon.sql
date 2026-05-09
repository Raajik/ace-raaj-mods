DELETE FROM `weenie` WHERE `class_Id` = 800675;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800675, 'Aerial Attack Balloon', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800675,   1,         16) /* ItemType - Creature */
     , (800675,   2,          3) /* CreatureType - Drudge */
     , (800675,   6,         -1) /* ItemsCapacity */
     , (800675,   7,         -1) /* ContainersCapacity */
     , (800675,  16,          1) /* ItemUseable - No */
     , (800675,  25,        380) /* Level */
     , (800675,  27,          0) /* ArmorType - None */
     , (800675,  40,          2) /* CombatMode - Melee */
     , (800675,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (800675,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800675, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800675, 146,     125000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800675,   1, True ) /* Stuck */
     , (800675,   6, True ) /* AiUsesMana */
     , (800675,  11, False) /* IgnoreCollisions */
     , (800675,  12, True ) /* ReportCollisions */
     , (800675,  13, False) /* Ethereal */
     , (800675,  14, True ) /* GravityStatus */
     , (800675,  19, True ) /* Attackable */
     , (800675,  29, True ) /* NoCorpse */
     , (800675,  50, True ) /* NeverFailCasting */
     , (800675,  52, True ) /* AiImmobile */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800675,   1,       5) /* HeartbeatInterval */
     , (800675,   2,       0) /* HeartbeatTimestamp */
     , (800675,   3,     0.9) /* HealthRate */
     , (800675,   4,       3) /* StaminaRate */
     , (800675,   5,       1) /* ManaRate */
     , (800675,  12,     0.5) /* Shade */
     , (800675,  13,    0.82) /* ArmorModVsSlash */
     , (800675,  14,    0.44) /* ArmorModVsPierce */
     , (800675,  15,    0.83) /* ArmorModVsBludgeon */
     , (800675,  16,    0.72) /* ArmorModVsCold */
     , (800675,  17,    0.83) /* ArmorModVsFire */
     , (800675,  18,    0.72) /* ArmorModVsAcid */
     , (800675,  19,     0.9) /* ArmorModVsElectric */
     , (800675,  31,      18) /* VisualAwarenessRange */
     , (800675,  34,       1) /* PowerupTime */
     , (800675,  36,       1) /* ChargeSpeed */
     , (800675,  64,     0.9) /* ResistSlash */
     , (800675,  65,    0.56) /* ResistPierce */
     , (800675,  66,    0.96) /* ResistBludgeon */
     , (800675,  67,    0.96) /* ResistFire */
     , (800675,  68,    0.85) /* ResistCold */
     , (800675,  69,    0.85) /* ResistAcid */
     , (800675,  70,    0.18) /* ResistElectric */
     , (800675,  71,       1) /* ResistHealthBoost */
     , (800675,  72,       1) /* ResistStaminaDrain */
     , (800675,  73,       1) /* ResistStaminaBoost */
     , (800675,  74,       1) /* ResistManaDrain */
     , (800675,  75,       1) /* ResistManaBoost */
     , (800675,  80,       3) /* AiUseMagicDelay */
     , (800675, 104,      10) /* ObviousRadarRange */
     , (800675, 122,       2) /* AiAcquireHealth */
     , (800675, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800675,   1, 'Aerial Attack Balloon') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800675,   1,   33560305) /* Setup */
     , (800675,   2,  150995405) /* MotionTable */
     , (800675,   3,  536870985) /* SoundTable */
     , (800675,   4,  805306372) /* CombatTable */
     , (800675,   8,  100677393) /* Icon */
     , (800675,  22,  872415331) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800675,   1, 180, 0, 0) /* Strength */
     , (800675,   2, 205, 0, 0) /* Endurance */
     , (800675,   3, 190, 0, 0) /* Quickness */
     , (800675,   4, 170, 0, 0) /* Coordination */
     , (800675,   5, 160, 0, 0) /* Focus */
     , (800675,   6, 160, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800675,   1,   500, 0, 0, 603) /* MaxHealth */
     , (800675,   3,  1000, 0, 0, 1205) /* MaxStamina */
     , (800675,   5,  1000, 0, 0, 1160) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800675,  6, 0, 3, 0, 280, 0, 0) /* MeleeDefense        Specialized */
     , (800675,  7, 0, 3, 0, 215, 0, 0) /* MissileDefense      Specialized */
     , (800675, 14, 0, 3, 0, 350, 0, 0) /* ArcaneLore          Specialized */
     , (800675, 15, 0, 3, 0, 249, 0, 0) /* MagicDefense        Specialized */
     , (800675, 20, 0, 3, 0, 120, 0, 0) /* Deception           Specialized */
     , (800675, 24, 0, 3, 0,  55, 0, 0) /* Run                 Specialized */
     , (800675, 31, 0, 3, 0, 100, 0, 0) /* CreatureEnchantment Specialized */
     , (800675, 33, 0, 3, 0, 180, 0, 0) /* LifeMagic           Specialized */
     , (800675, 34, 0, 3, 0, 5000, 0, 0) /* WarMagic            Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800675,  0,  4,  0,    0,  340,  279,  150,  282,  245,  282,  245,  306,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800675,  1,  4,  0,    0,  345,  283,  152,  286,  248,  286,  248,  311,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800675,  2,  4,  0,    0,  345,  283,  152,  286,  248,  286,  248,  311,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800675,  3,  4,  0,    0,  345,  283,  152,  286,  248,  286,  248,  311,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800675,  4,  4,  0,    0,  340,  279,  150,  282,  245,  282,  245,  306,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800675,  5,  4, 35, 0.75,  340,  279,  150,  282,  245,  282,  245,  306,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800675,  6,  4,  0,    0,  340,  279,  150,  282,  245,  282,  245,  306,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800675,  7,  4,  0,    0,  340,  279,  150,  282,  245,  282,  245,  306,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800675,  8,  4, 35, 0.75,  340,  279,  150,  282,  245,  282,  245,  306,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800675,    80,      3)  /* Lightning Bolt VI */
     , (800675,  1089,      3)  /* Lightning Vulnerability Other VI */
     , (800675,  1161,      5)  /* Heal Self VI */
     , (800675,  1242,      3)  /* Drain Health Other VI */;
