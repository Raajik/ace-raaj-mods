DELETE FROM `weenie` WHERE `class_Id` = 800289;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800289, 'Grisly Tumerok Shaman', 10, '2021-11-01 00:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800289,   1,         16) /* ItemType - Creature */
     , (800289,   2,          6) /* CreatureType - Tumerok */
     , (800289,   3,         12) /* PaletteTemplate - Navy */
     , (800289,   6,         -1) /* ItemsCapacity */
     , (800289,   7,         -1) /* ContainersCapacity */
     , (800289,  16,          1) /* ItemUseable - No */
     , (800289,  25,        235) /* Level */
     , (800289,  68,          0x80) /* TargetingTactic - Random, LastDamager */
     , (800289,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800289, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800289, 140,          1) /* AiOptions - CanOpenDoors */
     , (800289, 146,     6984195) /* XpOverride */
     , (800289, 332,      10000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800289,   1, True ) /* Stuck */
     , (800289,   6, False) /* AiUsesMana */
     , (800289,  11, False) /* IgnoreCollisions */
     , (800289,  12, True ) /* ReportCollisions */
     , (800289,  13, False) /* Ethereal */
     , (800289,  14, True ) /* GravityStatus */
     , (800289,  19, True ) /* Attackable */
     , (800289,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800289,   1,       5) /* HeartbeatInterval */
     , (800289,   2,       0) /* HeartbeatTimestamp */
     , (800289,   3,      24) /* HealthRate */
     , (800289,   4,      23) /* StaminaRate */
     , (800289,   5,       8) /* ManaRate */
     , (800289,  12,   0.571) /* Shade */
     , (800289,  13,    0.95) /* ArmorModVsSlash */
     , (800289,  14,    0.92) /* ArmorModVsPierce */
     , (800289,  15,    0.88) /* ArmorModVsBludgeon */
     , (800289,  16,    0.54) /* ArmorModVsCold */
     , (800289,  17,    0.52) /* ArmorModVsFire */
     , (800289,  18,    0.82) /* ArmorModVsAcid */
     , (800289,  19,    0.82) /* ArmorModVsElectric */
     , (800289,  31,      16) /* VisualAwarenessRange */
     , (800289,  34,       1) /* PowerupTime */
     , (800289,  36,       1) /* ChargeSpeed */
     , (800289,  39,     1.2) /* DefaultScale */
     , (800289,  64,    0.68) /* ResistSlash */
     , (800289,  65,    0.71) /* ResistPierce */
     , (800289,  66,    0.71) /* ResistBludgeon */
     , (800289,  67,       1) /* ResistFire */
     , (800289,  68,    0.55) /* ResistCold */
     , (800289,  69,    0.55) /* ResistAcid */
     , (800289,  70,    0.55) /* ResistElectric */
     , (800289,  71,       1) /* ResistHealthBoost */
     , (800289,  72,       1) /* ResistStaminaDrain */
     , (800289,  73,       1) /* ResistStaminaBoost */
     , (800289,  74,       1) /* ResistManaDrain */
     , (800289,  75,       1) /* ResistManaBoost */
     , (800289,  80,       3) /* AiUseMagicDelay */
     , (800289, 104,      10) /* ObviousRadarRange */
     , (800289, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800289,   1, 'Grisly Tumerok Shaman') /* Name */
     , (800289,  45, 'doKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800289,   1,   33559568) /* Setup */
     , (800289,   2,  150994954) /* MotionTable */
     , (800289,   3,  536870931) /* SoundTable */
     , (800289,   4,  805306380) /* CombatTable */
     , (800289,   6,   67116625) /* PaletteBase */
     , (800289,   7,  268437016) /* ClothingBase */
     , (800289,   8,  100667452) /* Icon */
     , (800289,  22,  872415270) /* PhysicsEffectTable */
     , (800289,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800289,   1, 300, 0, 0) /* Strength */
     , (800289,   2, 300, 0, 0) /* Endurance */
     , (800289,   3, 325, 0, 0) /* Quickness */
     , (800289,   4, 300, 0, 0) /* Coordination */
     , (800289,   5, 280, 0, 0) /* Focus */
     , (800289,   6, 270, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800289,   1,  2850, 0, 0, 3000) /* MaxHealth */
     , (800289,   3,  1300, 0, 0, 1600) /* MaxStamina */
     , (800289,   5,   600, 0, 0, 670) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800289,  6, 0, 3, 0, 210, 0, 0) /* MeleeDefense        Specialized */
     , (800289,  7, 0, 3, 0, 230, 0, 0) /* MissileDefense      Specialized */
     , (800289, 14, 0, 3, 0, 300, 0, 0) /* ArcaneLore          Specialized */
     , (800289, 15, 0, 3, 0, 210, 0, 0) /* MagicDefense        Specialized */
     , (800289, 20, 0, 3, 0, 150, 0, 0) /* Deception           Specialized */
     , (800289, 24, 0, 3, 0, 160, 0, 0) /* Run                 Specialized */
     , (800289, 31, 0, 3, 0, 230, 0, 0) /* CreatureEnchantment Specialized */
     , (800289, 33, 0, 3, 0, 230, 0, 0) /* LifeMagic           Specialized */
     , (800289, 34, 0, 3, 0, 230, 0, 0) /* WarMagic            Specialized */
     , (800289, 44, 0, 3, 0, 285, 0, 0) /* HeavyWeapons        Specialized */
     , (800289, 45, 0, 3, 0, 285, 0, 0) /* LightWeapons        Specialized */
     , (800289, 46, 0, 3, 0, 285, 0, 0) /* FinesseWeapons      Specialized */
     , (800289, 47, 0, 3, 0, 250, 0, 0) /* MissileWeapons      Specialized */
     , (800289, 48, 0, 3, 0, 285, 0, 0) /* Shield              Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800289,  0,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (800289,  1,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (800289,  2,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (800289,  3,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (800289,  4,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (800289,  5,  4, 135, 0.75,  450,  450,  450,  450,  450,  450,  450,  450,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (800289,  6,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (800289,  7,  4,  0,    0,  450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (800289,  8,  4, 135, 0.75,  450,  450,  450,  450,  450,  450,  450,  450,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800289,    62,  2.015)  /* Acid Stream V */
     , (800289,    68,  2.015)  /* Shock Wave V */
     , (800289,    73,  2.015)  /* Frost Bolt V */
     , (800289,    79,  2.015)  /* Lightning Bolt V */
     , (800289,    84,  2.015)  /* Flame Bolt V */
     , (800289,    90,  2.015)  /* Force Bolt V */
     , (800289,    96,  2.015)  /* Whirling Blade V */
     , (800289,  1160,  2.009)  /* Heal Self V */;
