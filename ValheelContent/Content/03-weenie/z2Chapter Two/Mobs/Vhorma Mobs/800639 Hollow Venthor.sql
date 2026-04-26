DELETE FROM `weenie` WHERE `class_Id` = 800639;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800639, 'Hollow Venthor', 10, '2020-05-21 06:54:03') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800639,   1,         16) /* ItemType - Creature */
     , (800639,   2,         84) /* CreatureType - Remoran */
     , (800639,   3,          2) /* PaletteTemplate - Blue */
     , (800639,   6,         -1) /* ItemsCapacity */
     , (800639,   7,         -1) /* ContainersCapacity */
     , (800639,  16,          1) /* ItemUseable - No */
     , (800639,  25,        275) /* Level */
     , (800639,  27,          0) /* ArmorType - None */
     , (800639,  40,          2) /* CombatMode - Melee */
     , (800639,  68,       0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800639,  72,         34) /* FriendType - Moarsman */
     , (800639,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800639, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800639, 146,   30001320) /* XpOverride */
     , (800639, 332,      45000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800639,   1, True ) /* Stuck */
     , (800639,   6, True ) /* AiUsesMana */
     , (800639,  12, True ) /* ReportCollisions */
     , (800639,  14, True ) /* GravityStatus */
     , (800639,  19, True ) /* Attackable */
     , (800639,  50, True ) /* NeverFailCasting */
     , (800639,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800639,   1,       5) /* HeartbeatInterval */
     , (800639,   2,       0) /* HeartbeatTimestamp */
     , (800639,   3,     0.5) /* HealthRate */
     , (800639,   4,       5) /* StaminaRate */
     , (800639,   5,       2) /* ManaRate */
     , (800639,  12,       0) /* Shade */
     , (800639,  13,       1) /* ArmorModVsSlash */
     , (800639,  14,     0.7) /* ArmorModVsPierce */
     , (800639,  15,       1) /* ArmorModVsBludgeon */
     , (800639,  16,       1) /* ArmorModVsCold */
     , (800639,  17,       1) /* ArmorModVsFire */
     , (800639,  18,       1) /* ArmorModVsAcid */
     , (800639,  19,       1) /* ArmorModVsElectric */
     , (800639,  31,      24) /* VisualAwarenessRange */
     , (800639,  34,     0.9) /* PowerupTime */
     , (800639,  36,       1) /* ChargeSpeed */
     , (800639,  39,     1.2) /* DefaultScale */
     , (800639,  64,     0.1) /* ResistSlash */
     , (800639,  65,     0.5) /* ResistPierce */
     , (800639,  66,     0.1) /* ResistBludgeon */
     , (800639,  67,     0.1) /* ResistFire */
     , (800639,  68,     0.1) /* ResistCold */
     , (800639,  69,     0.1) /* ResistAcid */
     , (800639,  70,     0.1) /* ResistElectric */
     , (800639,  71,       1) /* ResistHealthBoost */
     , (800639,  72,       1) /* ResistStaminaDrain */
     , (800639,  73,       1) /* ResistStaminaBoost */
     , (800639,  74,       1) /* ResistManaDrain */
     , (800639,  75,       1) /* ResistManaBoost */
     , (800639, 104,      10) /* ObviousRadarRange */
     , (800639, 125,    0.03) /* ResistHealthDrain */
     , (800639, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800639,   1, 'Hollow Venthor') /* Name */
     , (800639,  45, 'shemtarsKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800639,   1,   33559700) /* Setup */
     , (800639,   2,  150995342) /* MotionTable */
     , (800639,   3,  536871103) /* SoundTable */
     , (800639,   4,  805306396) /* CombatTable */
     , (800639,   6,   67116726) /* PaletteBase */
     , (800639,   7,  268437046) /* ClothingBase */
     , (800639,   8,  100667937) /* Icon */
     , (800639,  22,  872415414) /* PhysicsEffectTable */
     , (800639,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800639,   1,  800, 0, 0) /* Strength */
     , (800639,   2,  800, 0, 0) /* Endurance */
     , (800639,   3,  290, 0, 0) /* Quickness */
     , (800639,   4,  640, 0, 0) /* Coordination */
     , (800639,   5,   70, 0, 0) /* Focus */
     , (800639,   6,   70, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800639,   1,  10000, 0, 0, 10000) /* MaxHealth */
     , (800639,   3,  10000, 0, 0, 10000) /* MaxStamina */
     , (800639,   5,  10000, 0, 0, 10000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800639,  6, 0, 3, 0, 180, 0, 0) /* MeleeDefense        Specialized */
     , (800639,  7, 0, 3, 0, 230, 0, 0) /* MissileDefense      Specialized */
     , (800639, 14, 0, 3, 0,  70, 0, 0) /* ArcaneLore          Specialized */
     , (800639, 15, 0, 3, 0, 230, 0, 0) /* MagicDefense        Specialized */
     , (800639, 20, 0, 3, 0,  50, 0, 0) /* Deception           Specialized */
     , (800639, 31, 0, 3, 0, 400, 0, 0) /* CreatureEnchantment Specialized */
     , (800639, 32, 0, 3, 0, 400, 0, 0) /* ItemEnchantment     Specialized */
     , (800639, 33, 0, 3, 0, 400, 0, 0) /* LifeMagic           Specialized */
     , (800639, 34, 0, 3, 0, 400, 0, 0) /* WarMagic            Specialized */
     , (800639, 45, 0, 3, 0, 400, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800639,  0,  2,  800,  0.35,  450, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (800639,  5,  4,  800,  0.35,  450, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Hand */
     , (800639, 16,  4,  800,  0.35,  450, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (800639, 17,  1,  800,  0.35,  450, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 3,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (800639, 19,  4,  800,  0.35,  450, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Leg */
     , (800639, 21,  4,  800,  0.35,  450, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 1100, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800639,  1156,    0.5)  /* Piercing Vulnerability Other VI */
     , (800639,  2132,    0.5)  /* The Spike */;
	 
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (800639, 9, 300191,  0, 0, 0.02, False) /* Create ValHeel Empowered Key (300191) for ContainTreasure */;
