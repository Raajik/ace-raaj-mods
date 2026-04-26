DELETE FROM `weenie` WHERE `class_Id` = 800000;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800000, 'newzombielichlord', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800000,   1,         16) /* ItemType - Creature */
     , (800000,   2,         14) /* CreatureType - Undead */
     , (800000,   3,         69) /* PaletteTemplate - YellowSlime */
     , (800000,   6,         -1) /* ItemsCapacity */
     , (800000,   7,         -1) /* ContainersCapacity */
     , (800000,  16,          1) /* ItemUseable - No */
     , (800000,  25,        275) /* Level */
     , (800000,  27,          0) /* ArmorType - None */
     , (800000,  40,          1) /* CombatMode - NonCombat */
     , (800000,  68,          3) /* TargetingTactic - Random, Focused */
     , (800000,  81,         40) /* MaxGeneratedObjects */
     , (800000,  82,         20) /* InitGeneratedObjects */
     , (800000,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800000, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (800000, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800000, 140,          1) /* AiOptions - CanOpenDoors */
     , (800000, 146,    7867485) /* XpOverride */
     , (800000, 332,       8500) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800000,   1, True ) /* Stuck */
     , (800000,   6, True ) /* AiUsesMana */
     , (800000,  11, False) /* IgnoreCollisions */
     , (800000,  12, True ) /* ReportCollisions */
     , (800000,  13, False) /* Ethereal */
     , (800000,  14, True ) /* GravityStatus */
     , (800000,  19, True ) /* Attackable */
     , (800000,  50, False) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800000,   1,       5) /* HeartbeatInterval */
     , (800000,   2,       0) /* HeartbeatTimestamp */
     , (800000,   3,    0.45) /* HealthRate */
     , (800000,   4,     0.5) /* StaminaRate */
     , (800000,   5,       2) /* ManaRate */
     , (800000,  12,     0.5) /* Shade */
     , (800000,  13,       1) /* ArmorModVsSlash */
     , (800000,  14,       1) /* ArmorModVsPierce */
     , (800000,  15,       1) /* ArmorModVsBludgeon */
     , (800000,  16,       1) /* ArmorModVsCold */
     , (800000,  17,     0.7) /* ArmorModVsFire */
     , (800000,  18,       1) /* ArmorModVsAcid */
     , (800000,  19,       1) /* ArmorModVsElectric */
     , (800000,  31,      18) /* VisualAwarenessRange */
     , (800000,  34,     1.1) /* PowerupTime */
     , (800000,  36,       2) /* ChargeSpeed */
     , (800000,  64,     0.1) /* ResistSlash */
     , (800000,  65,     0.1) /* ResistPierce */
     , (800000,  66,     0.1) /* ResistBludgeon */
     , (800000,  67,     0.3) /* ResistFire */
     , (800000,  68,     0.1) /* ResistCold */
     , (800000,  69,     0.1) /* ResistAcid */
     , (800000,  70,     0.1) /* ResistElectric */
     , (800000,  71,       1) /* ResistHealthBoost */
     , (800000,  72,       1) /* ResistStaminaDrain */
     , (800000,  73,       1) /* ResistStaminaBoost */
     , (800000,  74,       1) /* ResistManaDrain */
     , (800000,  75,       1) /* ResistManaBoost */
     , (800000,  80,       3) /* AiUseMagicDelay */
     , (800000, 104,      10) /* ObviousRadarRange */
     , (800000, 122,       2) /* AiAcquireHealth */
     , (800000, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800000,   1, 'Distraught Ancient Undead') /* Name */
     , (800000,  45, 'SubLichKilltask') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800000,   1,   33554839) /* Setup */
     , (800000,   2,  150994967) /* MotionTable */
     , (800000,   3,  536870934) /* SoundTable */
     , (800000,   4,  805306368) /* CombatTable */
     , (800000,   6,   67110722) /* PaletteBase */
     , (800000,   7,  268435558) /* ClothingBase */
     , (800000,   8,  100667942) /* Icon */
     , (800000,  22,  872415272) /* PhysicsEffectTable */
     , (800000,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800000,   1, 500, 0, 0) /* Strength */
     , (800000,   2,  30, 0, 0) /* Endurance */
     , (800000,   3, 140, 0, 0) /* Quickness */
     , (800000,   4, 350, 0, 0) /* Coordination */
     , (800000,   5, 250, 0, 0) /* Focus */
     , (800000,   6, 250, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800000,   1,  3000, 0, 0, 3000) /* MaxHealth */
     , (800000,   3,  2000, 0, 0, 2000) /* MaxStamina */
     , (800000,   5,  2000, 0, 0, 2000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800000,  6, 0, 2, 0, 375, 0, 0) /* MeleeDefense        Trained */
     , (800000,  7, 0, 2, 0, 350, 0, 0) /* MissileDefense      Trained */
     , (800000, 14, 0, 2, 0, 300, 0, 0) /* ArcaneLore          Trained */
     , (800000, 15, 0, 2, 0, 300, 0, 0) /* MagicDefense        Trained */
     , (800000, 20, 0, 2, 0, 350, 0, 0) /* Deception           Trained */
     , (800000, 31, 0, 3, 0, 500, 0, 0) /* CreatureEnchantment Specialized */
     , (800000, 33, 0, 3, 0, 500, 0, 0) /* LifeMagic           Specialized */
     , (800000, 34, 0, 2, 0, 500, 0, 0) /* WarMagic            Trained */
     , (800000, 44, 0, 3, 0, 575, 0, 0) /* HeavyWeapons        Specialized */
     , (800000, 45, 0, 3, 0, 575, 0, 0) /* LightWeapons        Specialized */
     , (800000, 46, 0, 3, 0, 575, 0, 0) /* FinesseWeapons      Specialized */
     , (800000, 47, 0, 3, 0, 500, 0, 0) /* MissileWeapons      Specialized */
     , (800000, 48, 0, 3, 0, 475, 0, 0) /* Shield              Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800000,  0,  4,  0,    0,  120,  300,  300,  300,  100,   50,  300,  300,  100, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800000,  1,  4,  0,    0,  120,  300,  300,  300,  100,   50,  300,  300,  100, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800000,  2,  4,  0,    0,  120,  300,  300,  300,  100,   50,  300,  300,  100, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800000,  3,  4,  0,    0,  120,  300,  300,  300,  100,   50,  300,  300,  100, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800000,  4,  4,  0,    0,  120,  300,  300,  300,  100,   50,  300,  300,  100, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800000,  5,  4, 600, 0.75,  120,  400,  300,  300,  100,   50,  300,  300,  100, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800000,  6,  4,  0,    0,  120,  400,  300,  300,  100,   50,  300,  300,  100, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800000,  7,  4,  0,    0,  120,  400,  300,  300,  100,   50,  300,  300,  100, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800000,  8,  4, 600, 0.75,  120,  400,  300,  300,  100,   50,  300,  300,  100, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800000,  2717,      1)  /* Acid Arc VII */
     , (800000,  2731,      1)  /* Frost Arc VII */
     , (800000,  2738,      1)  /* Lightning Arc VII */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800000,  94)
     , (800000, 414);