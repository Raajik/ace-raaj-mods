DELETE FROM `weenie` WHERE `class_Id` = 300116;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300116, 'ace300116-ragingrynthidsorcerer', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300116,   1,         16) /* ItemType - Creature */
     , (300116,   2,         19) /* CreatureType - Virindi */
     , (300116,   3,         39) /* PaletteTemplate - Black */
     , (300116,   6,         -1) /* ItemsCapacity */
     , (300116,   7,         -1) /* ContainersCapacity */
     , (300116,  16,          1) /* ItemUseable - No */
     , (300116,  25,        315) /* Level */
     , (300116,  65,          1) /* Placement - RightHandCombat */
     , (300116,  68,          0x80) /* TargetingTactic - Random, Focused */
     , (300116,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (300116, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (300116, 146,    7867485) /* XpOverride */
     , (300116, 332,      10000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300116,   1, True ) /* Stuck */
     , (300116,   6, False) /* AiUsesMana */
     , (300116,  11, False) /* IgnoreCollisions */
     , (300116,  12, True ) /* ReportCollisions */
     , (300116,  13, False) /* Ethereal */
     , (300116,  14, True ) /* GravityStatus */
     , (300116,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300116,   1,       5) /* HeartbeatInterval */
     , (300116,   2,       0) /* HeartbeatTimestamp */
     , (300116,   3,     0.6) /* HealthRate */
     , (300116,   4,     0.5) /* StaminaRate */
     , (300116,   5,       2) /* ManaRate */
     , (300116,  12,       0) /* Shade */
     , (300116,  13,     0.7) /* ArmorModVsSlash */
     , (300116,  14,       1) /* ArmorModVsPierce */
     , (300116,  15,       1) /* ArmorModVsBludgeon */
     , (300116,  16,       1) /* ArmorModVsCold */
     , (300116,  17,     0.7) /* ArmorModVsFire */
     , (300116,  18,     0.7) /* ArmorModVsAcid */
     , (300116,  19,       1) /* ArmorModVsElectric */
     , (300116,  31,      30) /* VisualAwarenessRange */
     , (300116,  34,       1) /* PowerupTime */
     , (300116,  36,       1) /* ChargeSpeed */
     , (300116,  39,     1.2) /* DefaultScale */
     , (300116,  55,     100) /* HomeRadius */
     , (300116,  64,     0.3) /* ResistSlash */
     , (300116,  65,     0.1) /* ResistPierce */
     , (300116,  66,     0.1) /* ResistBludgeon */
     , (300116,  67,     0.3) /* ResistFire */
     , (300116,  68,     0.1) /* ResistCold */
     , (300116,  69,     0.3) /* ResistAcid */
     , (300116,  70,     0.1) /* ResistElectric */
     , (300116,  80,       3) /* AiUseMagicDelay */
     , (300116, 104,      10) /* ObviousRadarRange */
     , (300116, 122,       2) /* AiAcquireHealth */
     , (300116, 125,       0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300116,   1, 'Rynthid Enforcer') /* Name */
     , (300116,  45, 'RynthidEnforcerKilltask') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300116,   1,   33561563) /* Setup */
     , (300116,   2,  150995487) /* MotionTable */
     , (300116,   3,  536870930) /* SoundTable */
     , (300116,   4,  805306381) /* CombatTable */
     , (300116,   6,   67111346) /* PaletteBase */
     , (300116,   7,  268437588) /* ClothingBase */
     , (300116,   8,  100667943) /* Icon */
     , (300116,  22,  872415273) /* PhysicsEffectTable */
     , (300116,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (300116,   1, 350, 0, 0) /* Strength */
     , (300116,   2, 350, 0, 0) /* Endurance */
     , (300116,   3, 320, 0, 0) /* Quickness */
     , (300116,   4, 380, 0, 0) /* Coordination */
     , (300116,   5, 380, 0, 0) /* Focus */
     , (300116,   6, 380, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (300116,   1,  6000, 0, 0, 6000) /* MaxHealth */
     , (300116,   3,  3350, 0, 0, 3350) /* MaxStamina */
     , (300116,   5,  5280, 0, 0, 5280) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (300116,  6, 0, 2, 0, 350, 0, 0) /* MeleeDefense        Trained */
     , (300116,  7, 0, 2, 0, 340, 0, 0) /* MissileDefense      Trained */
     , (300116, 15, 0, 2, 0, 300, 0, 0) /* MagicDefense        Trained */
     , (300116, 16, 0, 2, 0, 430, 0, 0) /* ManaConversion      Trained */
     , (300116, 31, 0, 2, 0, 430, 0, 0) /* CreatureEnchantment Trained */
     , (300116, 33, 0, 2, 0, 430, 0, 0) /* LifeMagic           Trained */
     , (300116, 34, 0, 2, 0, 330, 0, 0) /* WarMagic            Trained */
     , (300116, 41, 0, 2, 0, 450, 0, 0) /* TwoHandedCombat     Trained */
     , (300116, 43, 0, 2, 0, 430, 0, 0) /* VoidMagic           Trained */
     , (300116, 44, 0, 2, 0, 450, 0, 0) /* HeavyWeapons        Trained */
     , (300116, 45, 0, 2, 0, 450, 0, 0) /* LightWeapons        Trained */
     , (300116, 46, 0, 2, 0, 450, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (300116,  0, 16,  0,    0,  850,  520,  520,  520,  520,  520,  520,  520,  600, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (300116,  1, 16,  0,    0,  850,  520,  520,  520,  520,  520,  520,  520,  600, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (300116,  2, 16,  0,    0,  850,  520,  520,  520,  520,  520,  520,  520,  600, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (300116,  3, 16,  0,    0,  850,  520,  520,  520,  520,  520,  520,  520,  600, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (300116,  4, 16,  0,    0,  850,  520,  520,  520,  520,  520,  520,  520,  600, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (300116,  5, 16, 600,  0.5,  850,  520,  520,  520,  520,  520,  520,  520,  600, 2,    0, 0.12,    0,    0, 0.12,    0,    0, 0.12,    0,    0, 0.12,    0) /* Hand */
     , (300116,  6, 16,  0,    0,  850,  520,  520,  520,  520,  520,  520,  520,  600, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (300116,  7, 16,  0,    0,  850,  520,  520,  520,  520,  520,  520,  520,  600, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (300116,  8, 16, 600,  0.5,  850,  520,  520,  520,  520,  520,  520,  520,  600, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (300116,  3882,   2.21)  /* Incendiary Ring */
     , (300116,  3940,  2.266)  /* Exsanguinating Wave */
     , (300116,  4312,  2.206)  /* Incantation of Imperil Other */
     , (300116,  4439,  2.414)  /* Incantation of Flame Bolt */
     , (300116,  4481,  2.259)  /* Incantation of Fire Vulnerability Other */;

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (300116, 8, 51859,  1, 0, 0.03, False) /* Create Rynthid Sorcerer of Rage's Mask (51859) for Treasure */
     , (300116, 8, 52968,  1, 0, 0.3, False) /* Create Infused Amber Shard (52968) for Treasure */
     , (300116, 9,     0,  0, 0, 0.97, False) /* Create nothing for ContainTreasure */;
