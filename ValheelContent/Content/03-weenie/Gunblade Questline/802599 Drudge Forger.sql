DELETE FROM `weenie` WHERE `class_Id` = 802599;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802599, 'DrudgeForger', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802599,   1,         16) /* ItemType - Creature */
     , (802599,   2,          3) /* CreatureType - Drudge */
     , (802599,   6,         -1) /* ItemsCapacity */
     , (802599,   7,         -1) /* ContainersCapacity */
     , (802599,  16,          1) /* ItemUseable - No */
     , (802599,  25,        185) /* Level */
     , (802599,  27,          0) /* ArmorType - None */
     , (802599,  40,          2) /* CombatMode - Melee */
     , (802599,  68,          9) /* TargetingTactic - Random, TopDamager */
     , (802599,  93,    4197384) /* PhysicsState - ReportCollisions, Gravity, LightingOn, EdgeSlide */
     , (802599, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (802599, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802599, 140,          1) /* AiOptions - CanOpenDoors */
     , (802599, 146,     650000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802599,   1, True ) /* Stuck */
     , (802599,   6, True ) /* AiUsesMana */
     , (802599,  11, False) /* IgnoreCollisions */
     , (802599,  12, True ) /* ReportCollisions */
     , (802599,  13, False) /* Ethereal */
     , (802599,  14, True ) /* GravityStatus */
     , (802599,  19, True ) /* Attackable */
     , (802599,  50, True ) /* NeverFailCasting */
     , (802599,  65, True ) /* IgnoreMagicResist */
     , (802599,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802599,   1,       5) /* HeartbeatInterval */
     , (802599,   2,       0) /* HeartbeatTimestamp */
     , (802599,   3,    0.69) /* HealthRate */
     , (802599,   4,       3) /* StaminaRate */
     , (802599,   5,       1) /* ManaRate */
     , (802599,  13,    0.72) /* ArmorModVsSlash */
     , (802599,  14,    0.64) /* ArmorModVsPierce */
     , (802599,  15,    0.68) /* ArmorModVsBludgeon */
     , (802599,  16,    0.24) /* ArmorModVsCold */
     , (802599,  17,    0.78) /* ArmorModVsFire */
     , (802599,  18,    0.35) /* ArmorModVsAcid */
     , (802599,  19,    0.49) /* ArmorModVsElectric */
     , (802599,  31,      18) /* VisualAwarenessRange */
     , (802599,  34,       1) /* PowerupTime */
     , (802599,  36,       1) /* ChargeSpeed */
     , (802599,  39,     1.6) /* DefaultScale */
     , (802599,  64,     0.7) /* ResistSlash */
     , (802599,  65,     0.4) /* ResistPierce */
     , (802599,  66,     0.4) /* ResistBludgeon */
     , (802599,  67,     0.7) /* ResistFire */
     , (802599,  68,     0.3) /* ResistCold */
     , (802599,  69,     0.6) /* ResistAcid */
     , (802599,  70,     0.6) /* ResistElectric */
     , (802599,  71,       1) /* ResistHealthBoost */
     , (802599,  72,       1) /* ResistStaminaDrain */
     , (802599,  73,       1) /* ResistStaminaBoost */
     , (802599,  74,       1) /* ResistManaDrain */
     , (802599,  75,       1) /* ResistManaBoost */
     , (802599,  76,    0.25) /* Translucency */
     , (802599,  80,       3) /* AiUseMagicDelay */
     , (802599, 104,      10) /* ObviousRadarRange */
     , (802599, 122,       2) /* AiAcquireHealth */
     , (802599, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802599,   1, 'Drudge Forger') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802599,   1,   33560520) /* Setup */
     , (802599,   2,  150994952) /* MotionTable */
     , (802599,   3,  536870919) /* SoundTable */
     , (802599,   4,  805306372) /* CombatTable */
     , (802599,   8,  100667445) /* Icon */
     , (802599,  22,  872415255) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802599,   1, 300, 0, 0) /* Strength */
     , (802599,   2, 300, 0, 0) /* Endurance */
     , (802599,   3, 300, 0, 0) /* Quickness */
     , (802599,   4, 300, 0, 0) /* Coordination */
     , (802599,   5, 300, 0, 0) /* Focus */
     , (802599,   6, 300, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802599,   1,  9850, 0, 0, 10000) /* MaxHealth */
     , (802599,   3,  4700, 0, 0, 5000) /* MaxStamina */
     , (802599,   5,   700, 0, 0, 1000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802599,  6, 0, 3, 0, 300, 0, 0) /* MeleeDefense        Specialized */
     , (802599,  7, 0, 3, 0, 220, 0, 0) /* MissileDefense      Specialized */
     , (802599, 14, 0, 2, 0, 200, 0, 0) /* ArcaneLore          Trained */
     , (802599, 15, 0, 3, 0, 186, 0, 0) /* MagicDefense        Specialized */
     , (802599, 20, 0, 2, 0, 120, 0, 0) /* Deception           Trained */
     , (802599, 24, 0, 2, 0, 400, 0, 0) /* Run                 Trained */
     , (802599, 31, 0, 3, 0, 250, 0, 0) /* CreatureEnchantment Specialized */
     , (802599, 33, 0, 3, 0, 250, 0, 0) /* LifeMagic           Specialized */
     , (802599, 34, 0, 3, 0, 250, 0, 0) /* WarMagic            Specialized */
     , (802599, 44, 0, 3, 0, 300, 0, 0) /* HeavyWeapons        Specialized */
     , (802599, 45, 0, 3, 0, 300, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802599,  0,  4,  0,    0,  330,  330,  330,  330,  330,  330,  330,  330,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802599,  1,  4,  0,    0,  330,  330,  330,  330,  330,  330,  330,  330,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802599,  2,  4,  0,    0,  330,  330,  330,  330,  330,  330,  330,  330,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (802599,  3,  4,  0,    0,  330,  330,  330,  330,  330,  330,  330,  330,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802599,  4,  4,  0,    0,  330,  330,  330,  330,  330,  330,  330,  330,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (802599,  5,  4, 95, 0.75,  330,  330,  330,  330,  330,  330,  330,  330,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802599,  6,  4,  0,    0,  330,  330,  330,  330,  330,  330,  330,  330,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (802599,  7,  4,  0,    0,  330,  330,  330,  330,  330,  330,  330,  330,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (802599,  8,  4, 95, 0.75,  330,  330,  330,  330,  330,  330,  330,  330,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802599,  2074,   2.03)  /* Gossamer Flesh */
     , (802599,  2084,   2.03)  /* Belly of Lead */
     , (802599,  2088,   2.03)  /* Senescence */
     , (802599,  2170,   2.03)  /* Inferno's Gift */
     , (802599,  4082,   2.03)  /* Big Fire */
     , (802599,  4091,  2.075)  /* Spear */
     , (802599,  4096,  2.008)  /* Flame Chain */;
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802599, 9, 802700,  0, 0,  0.03, False) /* Create Drudge Forge Hammer for ContainTreasure */;

