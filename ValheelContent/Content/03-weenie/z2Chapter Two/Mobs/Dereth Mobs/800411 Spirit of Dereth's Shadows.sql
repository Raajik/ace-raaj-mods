DELETE FROM `weenie` WHERE `class_Id` = 800411;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800411, 'Spirit of Dereth''s Shadows', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800411,   1,         16) /* ItemType - Creature */
     , (800411,   2,         20) /* CreatureType - Wisp */
     , (800411,   6,         -1) /* ItemsCapacity */
     , (800411,   7,         -1) /* ContainersCapacity */
     , (800411,  16,          1) /* ItemUseable - No */
     , (800411,  25,        315) /* Level */
     , (800411,  27,          0) /* ArmorType - None */
     , (800411,  40,          2) /* CombatMode - Melee */
     , (800411,  68,          0x80) /* TargetingTactic - Random, TopDamager */
     , (800411,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800411, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800411, 146,    26000000) /* XpOverride */
     , (800411, 332,      10000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800411,   1, True ) /* Stuck */
     , (800411,   6, True ) /* AiUsesMana */
     , (800411,  11, False) /* IgnoreCollisions */
     , (800411,  12, True ) /* ReportCollisions */
     , (800411,  13, False) /* Ethereal */
     , (800411,  14, True ) /* GravityStatus */
     , (800411,  19, True ) /* Attackable */
     , (800411,  50, True ) /* NeverFailCasting */
     , (800411,  65, True ) /* IgnoreMagicResist */
     , (800411, 120, True ) /* TreasureCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800411,   1,       5) /* HeartbeatInterval */
     , (800411,   2,       0) /* HeartbeatTimestamp */
     , (800411,   3,       1) /* HealthRate */
     , (800411,   4,     0.3) /* StaminaRate */
     , (800411,   5,     2.5) /* ManaRate */
     , (800411,  13,       1) /* ArmorModVsSlash */
     , (800411,  14,       1) /* ArmorModVsPierce */
     , (800411,  15,       1) /* ArmorModVsBludgeon */
     , (800411,  16,       1) /* ArmorModVsCold */
     , (800411,  17,       1) /* ArmorModVsFire */
     , (800411,  18,     0.7) /* ArmorModVsAcid */
     , (800411,  19,       1) /* ArmorModVsElectric */
     , (800411,  31,      25) /* VisualAwarenessRange */
     , (800411,  34,       2) /* PowerupTime */
     , (800411,  36,       1) /* ChargeSpeed */
     , (800411,  39,     1.4) /* DefaultScale */
     , (800411,  64,       1) /* ResistSlash */
     , (800411,  65,     0.1) /* ResistPierce */
     , (800411,  66,     0.1) /* ResistBludgeon */
     , (800411,  67,     0.1) /* ResistFire */
     , (800411,  68,     0.1) /* ResistCold */
     , (800411,  69,     0.3) /* ResistAcid */
     , (800411,  70,     0.1) /* ResistElectric */
     , (800411,  71,       1) /* ResistHealthBoost */
     , (800411,  72,       1) /* ResistStaminaDrain */
     , (800411,  73,       1) /* ResistStaminaBoost */
     , (800411,  74,       1) /* ResistManaDrain */
     , (800411,  75,       1) /* ResistManaBoost */
     , (800411,  80,       3) /* AiUseMagicDelay */
     , (800411, 104,      10) /* ObviousRadarRange */
     , (800411, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800411,   1, 'Spirit of Dereth''s Shadows') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800411,   1,   33555867) /* Setup */
     , (800411,   2,  150994993) /* MotionTable */
     , (800411,   3,  536870985) /* SoundTable */
     , (800411,   4,  805306398) /* CombatTable */
     , (800411,   8,  100668442) /* Icon */
     , (800411,  22,  872415274) /* PhysicsEffectTable */
     , (800411,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800411,   1, 1400, 0, 0) /* Strength */
     , (800411,   2, 920, 0, 0) /* Endurance */
     , (800411,   3, 300, 0, 0) /* Quickness */
     , (800411,   4, 750, 0, 0) /* Coordination */
     , (800411,   5, 1280, 0, 0) /* Focus */
     , (800411,   6, 1280, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800411,   1,  10800, 0, 0, 10800) /* MaxHealth */
     , (800411,   3,  7200, 0, 0, 7320) /* MaxStamina */
     , (800411,   5,  9100, 0, 0, 9280) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800411,  6, 0, 3, 0,  60, 0, 0) /* MeleeDefense        Specialized */
     , (800411,  7, 0, 3, 0, 175, 0, 0) /* MissileDefense      Specialized */
     , (800411, 14, 0, 2, 0, 300, 0, 0) /* ArcaneLore          Trained */
     , (800411, 15, 0, 3, 0, 105, 0, 0) /* MagicDefense        Specialized */
     , (800411, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (800411, 24, 0, 2, 0,  50, 0, 0) /* Run                 Trained */
     , (800411, 31, 0, 3, 0, 975, 0, 0) /* CreatureEnchantment Specialized */
     , (800411, 32, 0, 3, 0, 975, 0, 0) /* ItemEnchantment     Specialized */
     , (800411, 33, 0, 3, 0, 975, 0, 0) /* LifeMagic           Specialized */
     , (800411, 34, 0, 3, 0, 975, 0, 0) /* WarMagic            Specialized */
     , (800411, 45, 0, 3, 0, 400, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800411,  0,  2, 1000,  0.5,  200, 1200, 1000, 1200, 1000, 1000, 1000, 1000,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (800411, 16,  4,  0,    0,  200, 1200, 1000, 1200, 1000, 1000, 1000, 1000,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (800411, 17,  1, 1000, 0.75,  200, 1200, 1000, 1200, 1000, 1000, 1000, 1000,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (800411, 21,  4,  0,    0,  200, 1200, 1000, 1200, 1000, 1000, 1000, 1000,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800411,    71,    2.3)  /* Frost Bolt III */
     , (800411,    77,    2.3)  /* Lightning Bolt III */
     , (800411,   173,   2.17)  /* Fester Other III */
     , (800411,   196,   2.17)  /* Exhaustion Other III */
     , (800411,   220,   2.17)  /* Mana Depletion Other III */
     , (800411,  1158,    2.1)  /* Heal Self III */
     , (800411,  1173,   2.17)  /* Harm Other III */
     , (800411,  1197,   2.17)  /* Enfeeble Other III */
     , (800411,  1221,   2.17)  /* Mana Drain Other III */
     , (800411,  1239,   2.67)  /* Drain Health Other III */
     , (800411,  1251,   2.67)  /* Drain Stamina Other III */
     , (800411,  1262,   2.67)  /* Drain Mana Other III */;
