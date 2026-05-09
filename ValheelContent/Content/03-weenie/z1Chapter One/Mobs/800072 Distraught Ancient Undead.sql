DELETE FROM `weenie` WHERE `class_Id` = 800072;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800072, 'DAU2', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800072,   1,         16) /* ItemType - Creature */
     , (800072,   2,         14) /* CreatureType - Undead */
     , (800072,   3,         69) /* PaletteTemplate - YellowSlime */
     , (800072,   6,         -1) /* ItemsCapacity */
     , (800072,   7,         -1) /* ContainersCapacity */
     , (800072,  16,          1) /* ItemUseable - No */
     , (800072,  25,        275) /* Level */
     , (800072,  27,          0) /* ArmorType - None */
     , (800072,  40,          1) /* CombatMode - NonCombat */
     , (800072,  68,          3) /* TargetingTactic - Random, Focused */
     , (800072,  81,         40) /* MaxGeneratedObjects */
     , (800072,  82,         20) /* InitGeneratedObjects */
     , (800072,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800072, 101,        183) /* AiAllowedCombatStyle - Unarmed, OneHanded, OneHandedAndShield, Bow, Crossbow, ThrownWeapon */
     , (800072, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800072, 140,          1) /* AiOptions - CanOpenDoors */
     , (800072, 146,    7867485) /* XpOverride */
     , (800072, 332,       8000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800072,   1, True ) /* Stuck */
     , (800072,   6, True ) /* AiUsesMana */
     , (800072,  11, False) /* IgnoreCollisions */
     , (800072,  12, True ) /* ReportCollisions */
     , (800072,  13, False) /* Ethereal */
     , (800072,  14, True ) /* GravityStatus */
     , (800072,  19, True ) /* Attackable */
     , (800072,  50, False) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800072,   1,       5) /* HeartbeatInterval */
     , (800072,   2,       0) /* HeartbeatTimestamp */
     , (800072,   3,    0.45) /* HealthRate */
     , (800072,   4,     0.5) /* StaminaRate */
     , (800072,   5,       2) /* ManaRate */
     , (800072,  12,     0.5) /* Shade */
     , (800072,  13,       1) /* ArmorModVsSlash */
     , (800072,  14,       1) /* ArmorModVsPierce */
     , (800072,  15,       1) /* ArmorModVsBludgeon */
     , (800072,  16,       1) /* ArmorModVsCold */
     , (800072,  17,     0.7) /* ArmorModVsFire */
     , (800072,  18,       1) /* ArmorModVsAcid */
     , (800072,  19,       1) /* ArmorModVsElectric */
     , (800072,  31,      18) /* VisualAwarenessRange */
     , (800072,  34,     1.1) /* PowerupTime */
     , (800072,  36,       2) /* ChargeSpeed */
     , (800072,  64,     0.1) /* ResistSlash */
     , (800072,  65,     0.1) /* ResistPierce */
     , (800072,  66,     0.1) /* ResistBludgeon */
     , (800072,  67,     0.3) /* ResistFire */
     , (800072,  68,     0.1) /* ResistCold */
     , (800072,  69,     0.1) /* ResistAcid */
     , (800072,  70,     0.1) /* ResistElectric */
     , (800072,  71,       1) /* ResistHealthBoost */
     , (800072,  72,       1) /* ResistStaminaDrain */
     , (800072,  73,       1) /* ResistStaminaBoost */
     , (800072,  74,       1) /* ResistManaDrain */
     , (800072,  75,       1) /* ResistManaBoost */
     , (800072,  80,       3) /* AiUseMagicDelay */
     , (800072, 104,      10) /* ObviousRadarRange */
     , (800072, 122,       2) /* AiAcquireHealth */
     , (800072, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800072,   1, 'Distraught Ancient Undead') /* Name */
     , (800072,  45, 'RingmasterKilltask') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800072,   1,   33554839) /* Setup */
     , (800072,   2,  150994967) /* MotionTable */
     , (800072,   3,  536870934) /* SoundTable */
     , (800072,   4,  805306368) /* CombatTable */
     , (800072,   6,   67110722) /* PaletteBase */
     , (800072,   7,  268435558) /* ClothingBase */
     , (800072,   8,  100667942) /* Icon */
     , (800072,  22,  872415272) /* PhysicsEffectTable */
     , (800072,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800072,   1, 500, 0, 0) /* Strength */
     , (800072,   2,  30, 0, 0) /* Endurance */
     , (800072,   3, 140, 0, 0) /* Quickness */
     , (800072,   4, 350, 0, 0) /* Coordination */
     , (800072,   5, 250, 0, 0) /* Focus */
     , (800072,   6, 250, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800072,   1,  3000, 0, 0, 3000) /* MaxHealth */
     , (800072,   3,  2000, 0, 0, 2000) /* MaxStamina */
     , (800072,   5,  2000, 0, 0, 2000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800072,  6, 0, 2, 0, 175, 0, 0) /* MeleeDefense        Trained */
     , (800072,  7, 0, 2, 0, 150, 0, 0) /* MissileDefense      Trained */
     , (800072, 14, 0, 2, 0, 100, 0, 0) /* ArcaneLore          Trained */
     , (800072, 15, 0, 2, 0, 100, 0, 0) /* MagicDefense        Trained */
     , (800072, 20, 0, 2, 0, 150, 0, 0) /* Deception           Trained */
     , (800072, 31, 0, 3, 0, 500, 0, 0) /* CreatureEnchantment Specialized */
     , (800072, 33, 0, 3, 0, 500, 0, 0) /* LifeMagic           Specialized */
     , (800072, 34, 0, 2, 0, 500, 0, 0) /* WarMagic            Trained */
     , (800072, 44, 0, 3, 0, 500, 0, 0) /* HeavyWeapons        Specialized */
     , (800072, 45, 0, 3, 0, 500, 0, 0) /* LightWeapons        Specialized */
     , (800072, 46, 0, 3, 0, 500, 0, 0) /* FinesseWeapons      Specialized */
     , (800072, 47, 0, 3, 0, 500, 0, 0) /* MissileWeapons      Specialized */
     , (800072, 48, 0, 3, 0, 500, 0, 0) /* Shield              Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800072,  0,  4,  0,    0,  330,  300,  300,  300,  100,  200,  300,  300,  100, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800072,  1,  4,  0,    0,  360,  300,  300,  300,  100,  200,  300,  300,  100, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800072,  2,  4,  0,    0,  360,  300,  300,  300,  100,  200,  300,  300,  100, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800072,  3,  4,  0,    0,  330,  300,  300,  300,  100,  200,  300,  300,  100, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800072,  4,  4,  0,    0,  360,  300,  300,  300,  100,  200,  300,  300,  100, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800072,  5,  4, 600, 0.75,  390,  400,  300,  300,  100,  200,  300,  300,  100, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800072,  6,  4,  0,    0,  390,  400,  300,  300,  100,  200,  300,  300,  100, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800072,  7,  4,  0,    0,  390,  400,  300,  300,  100,  200,  300,  300,  100, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800072,  8,  4, 600, 0.75,  390,  400,  300,  300,  100,  200,  300,  300,  100, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800072,  2717,      1)  /* Acid Arc VII */
     , (800072,  2731,      1)  /* Frost Arc VII */
     , (800072,  2738,      1)  /* Lightning Arc VII */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800072,  94)
     , (800072, 414);
