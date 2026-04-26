DELETE FROM `weenie` WHERE `class_Id` = 800407;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800407, 'Tortured Zefir', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800407,   1,         16) /* ItemType - Creature */
     , (800407,   2,         29) /* CreatureType - Zefir */
     , (800407,   3,         19) /* PaletteTemplate - Copper */
     , (800407,   6,         -1) /* ItemsCapacity */
     , (800407,   7,         -1) /* ContainersCapacity */
     , (800407,  16,          1) /* ItemUseable - No */
     , (800407,  25,        300) /* Level */
     , (800407,  40,          2) /* CombatMode - Melee */
     , (800407,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800407,  72,         29) /* FriendType - Zefir */
     , (800407,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800407, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800407, 146,    26000000) /* XpOverride */
     , (800407, 332,      10000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800407,   1, True ) /* Stuck */
     , (800407,   6, True ) /* AiUsesMana */
     , (800407,  11, False) /* IgnoreCollisions */
     , (800407,  12, True ) /* ReportCollisions */
     , (800407,  13, False) /* Ethereal */
     , (800407,  14, True ) /* GravityStatus */
     , (800407,  19, True ) /* Attackable */
     , (800407,  50, True ) /* NeverFailCasting */
     , (800407,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800407,   1,       5) /* HeartbeatInterval */
     , (800407,   2,       0) /* HeartbeatTimestamp */
     , (800407,   3,       1) /* HealthRate */
     , (800407,   4,     0.3) /* StaminaRate */
     , (800407,   5,     2.5) /* ManaRate */
     , (800407,  13,       1) /* ArmorModVsSlash */
     , (800407,  14,       1) /* ArmorModVsPierce */
     , (800407,  15,       1) /* ArmorModVsBludgeon */
     , (800407,  16,       1) /* ArmorModVsCold */
     , (800407,  17,       1) /* ArmorModVsFire */
     , (800407,  18,       1) /* ArmorModVsAcid */
     , (800407,  19,     0.7) /* ArmorModVsElectric */
     , (800407,  31,      25) /* VisualAwarenessRange */
     , (800407,  34,       2) /* PowerupTime */
     , (800407,  36,       1) /* ChargeSpeed */
     , (800407,  39,     1.8) /* DefaultScale */
     , (800407,  64,       1) /* ResistSlash */
     , (800407,  65,     0.1) /* ResistPierce */
     , (800407,  66,     0.1) /* ResistBludgeon */
     , (800407,  67,     0.1) /* ResistFire */
     , (800407,  68,     0.1) /* ResistCold */
     , (800407,  69,     0.1) /* ResistAcid */
     , (800407,  70,     0.3) /* ResistElectric */
     , (800407,  71,       1) /* ResistHealthBoost */
     , (800407,  72,       1) /* ResistStaminaDrain */
     , (800407,  73,       1) /* ResistStaminaBoost */
     , (800407,  74,       1) /* ResistManaDrain */
     , (800407,  75,       1) /* ResistManaBoost */
     , (800407,  80,       3) /* AiUseMagicDelay */
     , (800407, 104,      10) /* ObviousRadarRange */
     , (800407, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800407,   1, 'Tortured Zefir') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800407,   1,   33555610) /* Setup */
     , (800407,   2,  150995049) /* MotionTable */
     , (800407,   3,  536870975) /* SoundTable */
     , (800407,   4,  805306396) /* CombatTable */
     , (800407,   6,   67109305) /* PaletteBase */
     , (800407,   7,  268435811) /* ClothingBase */
     , (800407,   8,  100669123) /* Icon */
     , (800407,  22,  872415279) /* PhysicsEffectTable */
     , (800407,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800407,   1, 1400, 0, 0) /* Strength */
     , (800407,   2, 900, 0, 0) /* Endurance */
     , (800407,   3, 300, 0, 0) /* Quickness */
     , (800407,   4, 600, 0, 0) /* Coordination */
     , (800407,   5, 410, 0, 0) /* Focus */
     , (800407,   6, 410, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800407,   1,  10800, 0, 0, 10800) /* MaxHealth */
     , (800407,   3,  1250, 0, 0, 1350) /* MaxStamina */
     , (800407,   5,  1200, 0, 0, 1410) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800407,  6, 0, 3, 0, 150, 0, 0) /* MeleeDefense        Specialized */
     , (800407,  7, 0, 3, 0, 135, 0, 0) /* MissileDefense      Specialized */
     , (800407, 15, 0, 3, 0, 220, 0, 0) /* MagicDefense        Specialized */
     , (800407, 20, 0, 3, 0,  20, 0, 0) /* Deception           Specialized */
     , (800407, 22, 0, 3, 0,  70, 0, 0) /* Jump                Specialized */
     , (800407, 24, 0, 3, 0, 110, 0, 0) /* Run                 Specialized */
     , (800407, 33, 0, 3, 0, 525, 0, 0) /* LifeMagic           Specialized */
     , (800407, 34, 0, 3, 0, 525, 0, 0) /* WarMagic            Specialized */
     , (800407, 45, 0, 3, 0, 400, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800407,  0,  2, 1000,  0.5,  200, 1200, 1000, 1200, 1000, 1000, 1000, 1000,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (800407, 16,  4,  0,    0,  200, 1200, 1000, 1200, 1000, 1000, 1000, 1000,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (800407, 17,  1, 1000, 0.75,  200, 1200, 1000, 1200, 1000, 1000, 1000, 1000,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (800407, 21,  4,  0,    0,  200, 1200, 1000, 1200, 1000, 1000, 1000, 1000,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800407,    67,  2.014)  /* Shock Wave IV */
     , (800407,    83,  2.014)  /* Flame Bolt IV */
     , (800407,    89,  2.014)  /* Force Bolt IV */
     , (800407,    95,  2.014)  /* Whirling Blade IV */
     , (800407,  1159,  2.015)  /* Heal Self IV */
     , (800407,  1174,  2.005)  /* Harm Other IV */
     , (800407,  1240,   2.01)  /* Drain Health Other IV */
     , (800407,  1252,   2.01)  /* Drain Stamina Other IV */
     , (800407,  1263,   2.01)  /* Drain Mana Other IV */;
