DELETE FROM `weenie` WHERE `class_Id` = 300121;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300121, 'tormentedshadowsoldierinv', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300121,   1,         16) /* ItemType - Creature */
     , (300121,   2,         22) /* CreatureType - Shadow */
     , (300121,   3,         39) /* PaletteTemplate - Black */
     , (300121,   6,         -1) /* ItemsCapacity */
     , (300121,   7,         -1) /* ContainersCapacity */
     , (300121,  16,          1) /* ItemUseable - No */
     , (300121,  25,        240) /* Level */
     , (300121,  68,          0x80) /* TargetingTactic - Random, Focused */
     , (300121,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (300121, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (300121, 146,    7867485) /* XpOverride */
     , (300121, 332,      10000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300121,   1, True ) /* Stuck */
     , (300121,   6, True ) /* AiUsesMana */
     , (300121,  11, False) /* IgnoreCollisions */
     , (300121,  12, True ) /* ReportCollisions */
     , (300121,  13, False) /* Ethereal */
     , (300121,  14, True ) /* GravityStatus */
     , (300121,  19, True ) /* Attackable */
     , (300121,  42, True ) /* AllowEdgeSlide */
     , (300121,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300121,   1,       5) /* HeartbeatInterval */
     , (300121,   2,       0) /* HeartbeatTimestamp */
     , (300121,   3,     0.6) /* HealthRate */
     , (300121,   4,     2.5) /* StaminaRate */
     , (300121,   5,       1) /* ManaRate */
     , (300121,  12,     0.5) /* Shade */
     , (300121,  13,     0.7) /* ArmorModVsSlash */
     , (300121,  14,       1) /* ArmorModVsPierce */
     , (300121,  15,       1) /* ArmorModVsBludgeon */
     , (300121,  16,       1) /* ArmorModVsCold */
     , (300121,  17,     0.7) /* ArmorModVsFire */
     , (300121,  18,     0.7) /* ArmorModVsAcid */
     , (300121,  19,       1) /* ArmorModVsElectric */
     , (300121,  31,      30) /* VisualAwarenessRange */
     , (300121,  34,     1.1) /* PowerupTime */
     , (300121,  36,       1) /* ChargeSpeed */
     , (300121,  64,     0.3) /* ResistSlash */
     , (300121,  65,     0.1) /* ResistPierce */
     , (300121,  66,     0.1) /* ResistBludgeon */
     , (300121,  67,     0.3) /* ResistFire */
     , (300121,  68,     0.1) /* ResistCold */
     , (300121,  69,     0.3) /* ResistAcid */
     , (300121,  70,     0.1) /* ResistElectric */
     , (300121,  80,       3) /* AiUseMagicDelay */
     , (300121, 104,      10) /* ObviousRadarRange */
     , (300121, 122,       5) /* AiAcquireHealth */
     , (300121, 125,       0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300121,   1, 'Tormented Shadow Soldier') /* Name */
     , (300121,  45, 'TormentedShadowSoldierKilltask') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300121,   1,   33561595) /* Setup */
     , (300121,   2,  150995455) /* MotionTable */
     , (300121,   3,  536870914) /* SoundTable */
     , (300121,   4,  805306368) /* CombatTable */
     , (300121,   7,  268435632) /* ClothingBase */
     , (300121,   8,  100670398) /* Icon */
     , (300121,  22,  872415331) /* PhysicsEffectTable */
     , (300121,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (300121,   1, 350, 0, 0) /* Strength */
     , (300121,   2, 350, 0, 0) /* Endurance */
     , (300121,   3, 320, 0, 0) /* Quickness */
     , (300121,   4, 380, 0, 0) /* Coordination */
     , (300121,   5, 300, 0, 0) /* Focus */
     , (300121,   6, 300, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (300121,   1,  6000, 0, 0, 6000) /* MaxHealth */
     , (300121,   3,  2000, 0, 0, 2260) /* MaxStamina */
     , (300121,   5,  2000, 0, 0, 2190) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (300121,  6, 0, 2, 0, 350, 0, 0) /* MeleeDefense        Trained */
     , (300121,  7, 0, 2, 0, 350, 0, 0) /* MissileDefense      Trained */
     , (300121, 15, 0, 2, 0, 300, 0, 0) /* MagicDefense        Trained */
     , (300121, 16, 0, 2, 0, 380, 0, 0) /* ManaConversion      Trained */
     , (300121, 31, 0, 2, 0, 380, 0, 0) /* CreatureEnchantment Trained */
     , (300121, 33, 0, 2, 0, 380, 0, 0) /* LifeMagic           Trained */
     , (300121, 34, 0, 2, 0, 380, 0, 0) /* WarMagic            Trained */
     , (300121, 41, 0, 2, 0, 530, 0, 0) /* TwoHandedCombat     Trained */
     , (300121, 43, 0, 2, 0, 380, 0, 0) /* VoidMagic           Trained */
     , (300121, 44, 0, 2, 0, 530, 0, 0) /* HeavyWeapons        Trained */
     , (300121, 45, 0, 2, 0, 530, 0, 0) /* LightWeapons        Trained */
     , (300121, 46, 0, 2, 0, 530, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (300121,  0,  4,  0,    0,  420,  190,  158,  169,  134,  190,  140,  158,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (300121,  1,  4,  0,    0,  420,  190,  158,  169,  134,  190,  140,  158,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (300121,  2,  4,  0,    0,  420,  190,  158,  169,  134,  190,  140,  158,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (300121,  3,  4,  0,    0,  420,  190,  158,  169,  134,  190,  140,  158,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (300121,  4,  4,  0,    0,  420,  190,  158,  169,  134,  190,  140,  158,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (300121,  5,  4, 600, 0.75,  420,  190,  158,  169,  134,  190,  140,  158,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (300121,  6,  4,  0,    0,  420,  190,  158,  169,  134,  190,  140,  158,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (300121,  7,  4,  0,    0,  420,  190,  158,  169,  134,  190,  140,  158,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (300121,  8,  4, 600, 0.75,  420,  190,  158,  169,  134,  190,  140,  158,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (300121,  2281,  2.104)  /* Aura of Resistance */
     , (300121,  2282,   2.08)  /* Futility */
     , (300121,  4302,  2.087)  /* Incantation of Feeblemind Other */
     , (300121,  4322,  2.095)  /* Incantation of Slowness Other */
     , (300121,  4633,  2.184)  /* Incantation of Vulnerability Other */
     , (300121,  5356,  2.226)  /* Incantation of Nether Bolt */
     , (300121,  5394,  2.233)  /* Incantation of Corrosion */;
