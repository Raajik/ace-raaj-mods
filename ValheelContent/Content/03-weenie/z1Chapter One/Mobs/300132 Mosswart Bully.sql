DELETE FROM `weenie` WHERE `class_Id` = 300132;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300132, 'mosswartbully', 10, '2023-09-18 11:17:23') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300132,   0,          0) /*  */
     , (300132,   1,         16) /* ItemType - Creature */
     , (300132,   2,          4) /* CreatureType - Mosswart */
     , (300132,   3,         77) /* PaletteTemplate - BlueGreen */
     , (300132,   6,         -1) /* ItemsCapacity */
     , (300132,   7,         -1) /* ContainersCapacity */
     , (300132,  16,          1) /* ItemUseable - No */
     , (300132,  25,        300) /* Level */
     , (300132,  27,          0) /* ArmorType - None */
     , (300132,  40,          2) /* CombatMode - Melee */
     , (300132,  72,         50) /* FriendType - Idol */
     , (300132,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (300132,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (300132, 101,        131) /* AiAllowedCombatStyle - Unarmed, OneHanded, ThrownWeapon */
     , (300132, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (300132, 140,          1) /* AiOptions - CanOpenDoors */
     , (300132, 146,    2141500) /* XpOverride */
     , (300132, 332,       8000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300132,   1, True ) /* Stuck */
     , (300132,   6, False) /* AiUsesMana */
     , (300132,  11, False) /* IgnoreCollisions */
     , (300132,  12, True ) /* ReportCollisions */
     , (300132,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300132,   1,       5) /* HeartbeatInterval */
     , (300132,   2,       0) /* HeartbeatTimestamp */
     , (300132,   3,     0.5) /* HealthRate */
     , (300132,   4,       5) /* StaminaRate */
     , (300132,   5,       2) /* ManaRate */
     , (300132,  12,       0) /* Shade */
     , (300132,  13,     1.3) /* ArmorModVsSlash */
     , (300132,  14,     1.5) /* ArmorModVsPierce */
     , (300132,  15,     1.4) /* ArmorModVsBludgeon */
     , (300132,  16,     0.7) /* ArmorModVsCold */
     , (300132,  17,     0.7) /* ArmorModVsFire */
     , (300132,  18,     1.3) /* ArmorModVsAcid */
     , (300132,  19,     0.9) /* ArmorModVsElectric */
     , (300132,  31,      24) /* VisualAwarenessRange */
     , (300132,  34,     0.9) /* PowerupTime */
     , (300132,  36,       1) /* ChargeSpeed */
     , (300132,  39,     0.8) /* DefaultScale */
     , (300132,  64,     0.1) /* ResistSlash */
     , (300132,  65,     0.1) /* ResistPierce */
     , (300132,  66,     0.1) /* ResistBludgeon */
     , (300132,  67,       1) /* ResistFire */
     , (300132,  68,     0.5) /* ResistCold */
     , (300132,  69,     0.5) /* ResistAcid */
     , (300132,  70,     0.1) /* ResistElectric */
     , (300132,  71,       1) /* ResistHealthBoost */
     , (300132,  72,       1) /* ResistStaminaDrain */
     , (300132,  73,       1) /* ResistStaminaBoost */
     , (300132,  74,       1) /* ResistManaDrain */
     , (300132,  75,       1) /* ResistManaBoost */
     , (300132, 104,      10) /* ObviousRadarRange */
     , (300132, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300132,   1, 'Mosswart Bully') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300132,   1, 0x02000B4F) /* Setup */
     , (300132,   2, 0x09000009) /* MotionTable */
     , (300132,   3, 0x2000002F) /* SoundTable */
     , (300132,   4, 0x30000005) /* CombatTable */
     , (300132,   6, 0x040011B8) /* PaletteBase */
     , (300132,   7, 0x10000347) /* ClothingBase */
     , (300132,   8, 0x06001039) /* Icon */
     , (300132,  22, 0x34000020) /* PhysicsEffectTable */
     , (300132,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (300132,  0,  4,  0,    0,  440,  220,  220,  220,  220,  220,  220,  220,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (300132,  1,  4,  0,    0,  440,  220,  220,  220,  220,  220,  220,  220,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (300132,  2,  4,  0,    0,  440,  220,  220,  220,  220,  220,  220,  220,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (300132,  3,  4,  0,    0,  440,  220,  220,  220,  220,  220,  220,  220,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (300132,  4,  4,  0,    0,  440,  220,  220,  220,  220,  220,  220,  220,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (300132,  5,  4,600, 0.75,  440,  220,  220,  220,  220,  220,  220,  220,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (300132,  6,  4,  0,    0,  440,  220,  220,  220,  220,  220,  220,  220,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (300132,  7,  4,  0,    0,  440,  220,  220,  220,  220,  220,  220,  220,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (300132,  8,  4,600, 0.75,  440,  220,  220,  220,  220,  220,  220,  220,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (300132,   1, 350, 0, 0) /* Strength */
     , (300132,   2, 350, 0, 0) /* Endurance */
     , (300132,   3, 350, 0, 0) /* Quickness */
     , (300132,   4, 350, 0, 0) /* Coordination */
     , (300132,   5, 350, 0, 0) /* Focus */
     , (300132,   6, 350, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (300132,   1,  3500, 0, 0, 3500) /* MaxHealth */
     , (300132,   3,  5000, 0, 0, 5220) /* MaxStamina */
     , (300132,   5,  5555, 0, 0, 5775) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (300132,  6, 0, 3, 0, 420, 0, 0) /* MeleeDefense        Specialized */
     , (300132,  7, 0, 3, 0, 420, 0, 0) /* MissileDefense      Specialized */
     , (300132, 14, 0, 3, 0, 250, 0, 0) /* ArcaneLore          Specialized */
     , (300132, 15, 0, 3, 0, 330, 0, 0) /* MagicDefense        Specialized */
     , (300132, 24, 0, 3, 0, 250, 0, 0) /* Run                 Specialized */
     , (300132, 33, 0, 3, 0, 430, 0, 0) /* LifeMagic           Specialized */
     , (300132, 34, 0, 2, 0, 330, 0, 0) /* WarMagic            Trained */
     , (300132, 44, 0, 3, 0, 600, 0, 0) /* HeavyWeapons        Specialized */
     , (300132, 45, 0, 3, 0, 600, 0, 0) /* LightWeapons        Specialized */
     , (300132, 46, 0, 3, 0, 600, 0, 0) /* FinesseWeapons      Specialized */
     , (300132, 47, 0, 3, 0, 600, 0, 0) /* MissileWeapons      Specialized */;

