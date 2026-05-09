DELETE FROM `weenie` WHERE `class_Id` = 300119;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300119, 'rynthidjuggernaut', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300119,   1,         16) /* ItemType - Creature */
     , (300119,   2,         19) /* CreatureType - Virindi */
     , (300119,   3,         85) /* PaletteTemplate - DyeDarkRed */
     , (300119,   6,         -1) /* ItemsCapacity */
     , (300119,   7,         -1) /* ContainersCapacity */
     , (300119,  16,          1) /* ItemUseable - No */
     , (300119,  25,        325) /* Level */
     , (300119,  65,          1) /* Placement - RightHandCombat */
     , (300119,  68,          0x80) /* TargetingTactic - Random, Focused */
     , (300119,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (300119, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (300119, 146,    7867485) /* XpOverride */
     , (300119, 332,      10000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300119,   1, True ) /* Stuck */
     , (300119,   6, False) /* AiUsesMana */
     , (300119,  11, False) /* IgnoreCollisions */
     , (300119,  12, True ) /* ReportCollisions */
     , (300119,  13, False) /* Ethereal */
     , (300119,  14, True ) /* GravityStatus */
     , (300119,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300119,   1,       5) /* HeartbeatInterval */
     , (300119,   2,       0) /* HeartbeatTimestamp */
     , (300119,   3,     0.6) /* HealthRate */
     , (300119,   4,     0.5) /* StaminaRate */
     , (300119,   5,       2) /* ManaRate */
     , (300119,  12,       0) /* Shade */
     , (300119,  13,     0.5) /* ArmorModVsSlash */
     , (300119,  14,       1) /* ArmorModVsPierce */
     , (300119,  15,       1) /* ArmorModVsBludgeon */
     , (300119,  16,       1) /* ArmorModVsCold */
     , (300119,  17,     0.5) /* ArmorModVsFire */
     , (300119,  18,     0.5) /* ArmorModVsAcid */
     , (300119,  19,       1) /* ArmorModVsElectric */
     , (300119,  31,      30) /* VisualAwarenessRange */
     , (300119,  34,       1) /* PowerupTime */
     , (300119,  36,       1) /* ChargeSpeed */
     , (300119,  39,     2.2) /* DefaultScale */
     , (300119,  64,     0.5) /* ResistSlash */
     , (300119,  65,     0.1) /* ResistPierce */
     , (300119,  66,     0.1) /* ResistBludgeon */
     , (300119,  67,     0.5) /* ResistFire */
     , (300119,  68,     0.1) /* ResistCold */
     , (300119,  69,     0.5) /* ResistAcid */
     , (300119,  70,     0.1) /* ResistElectric */
     , (300119,  80,       3) /* AiUseMagicDelay */
     , (300119, 104,      10) /* ObviousRadarRange */
     , (300119, 122,       2) /* AiAcquireHealth */
     , (300119, 125,       0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300119,   1, 'Rynthid Juggernaut') /* Name */
     , (300119,  45, 'RynthidJuggernautKilltask') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300119,   1,   33561547) /* Setup */
     , (300119,   2,  150995487) /* MotionTable */
     , (300119,   3,  536870930) /* SoundTable */
     , (300119,   4,  805306381) /* CombatTable */
     , (300119,   6,   67111346) /* PaletteBase */
     , (300119,   7,  268437588) /* ClothingBase */
     , (300119,   8,  100667943) /* Icon */
     , (300119,  22,  872415273) /* PhysicsEffectTable */
     , (300119,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (300119,   1, 600, 0, 0) /* Strength */
     , (300119,   2, 600, 0, 0) /* Endurance */
     , (300119,   3, 400, 0, 0) /* Quickness */
     , (300119,   4, 400, 0, 0) /* Coordination */
     , (300119,   5, 300, 0, 0) /* Focus */
     , (300119,   6, 300, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (300119,   1,  6000, 0, 0, 6000) /* MaxHealth */
     , (300119,   3,  4800, 0, 0, 5300) /* MaxStamina */
     , (300119,   5,  3500, 0, 0, 3900) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (300119,  6, 0, 2, 0, 330, 0, 0) /* MeleeDefense        Trained */
     , (300119,  7, 0, 2, 0, 350, 0, 0) /* MissileDefense      Trained */
     , (300119, 15, 0, 2, 0, 300, 0, 0) /* MagicDefense        Trained */
     , (300119, 16, 0, 2, 0, 380, 0, 0) /* ManaConversion      Trained */
     , (300119, 31, 0, 2, 0, 380, 0, 0) /* CreatureEnchantment Trained */
     , (300119, 33, 0, 2, 0, 380, 0, 0) /* LifeMagic           Trained */
     , (300119, 34, 0, 2, 0, 380, 0, 0) /* WarMagic            Trained */
     , (300119, 41, 0, 2, 0, 460, 0, 0) /* TwoHandedCombat     Trained */
     , (300119, 43, 0, 2, 0, 380, 0, 0) /* VoidMagic           Trained */
     , (300119, 44, 0, 3, 0, 460, 0, 0) /* HeavyWeapons        Specialized */
     , (300119, 45, 0, 3, 0, 460, 0, 0) /* LightWeapons        Specialized */
     , (300119, 46, 0, 3, 0, 460, 0, 0) /* FinesseWeapons      Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (300119,  0, 64,  0,    0,  850,  520,  520,  520,  520,  520,  520,  520,  600, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (300119,  1, 64,  0,    0,  850,  520,  520,  520,  520,  520,  520,  520,  600, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (300119,  2, 64,  0,    0,  850,  520,  520,  520,  520,  520,  520,  520,  600, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (300119,  3, 64,  0,    0,  850,  520,  520,  520,  520,  520,  520,  520,  600, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (300119,  4, 64,  0,    0,  850,  520,  520,  520,  520,  520,  520,  520,  600, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (300119,  5, 64, 600,  0.5,  850,  520,  520,  520,  520,  520,  520,  520,  600, 2,    0, 0.12,    0,    0, 0.12,    0,    0, 0.12,    0,    0, 0.12,    0) /* Hand */
     , (300119,  6, 64,  0,    0,  850,  520,  520,  520,  520,  520,  520,  520,  600, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (300119,  7, 64,  0,    0,  850,  520,  520,  520,  520,  520,  520,  520,  600, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (300119,  8, 64, 600,  0.5,  850,  520,  520,  520,  520,  520,  520,  520,  600, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (300119,  3941,   2.05)  /* Heavy Lightning Ring */
     , (300119,  3989,  2.053)  /* Dark Lightning */
     , (300119,  4483,  2.056)  /* Incantation of Lightning Vulnerability Other */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (300119, 8, 52968,  1, 0, 0.3, False) /* Create Infused Amber Shard (52968) for Treasure */;
