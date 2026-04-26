DELETE FROM `weenie` WHERE `class_Id` = 800409;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800409, 'Paladin Zefir', 10, '2005-02-09 10:00:00') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800409,   1,         16) /* ItemType - Creature */
     , (800409,   2,         29) /* CreatureType - Zefir */
     , (800409,   3,         76) /* PaletteTemplate - Orange */
     , (800409,   6,         -1) /* ItemsCapacity */
     , (800409,   7,         -1) /* ContainersCapacity */
     , (800409,  16,          1) /* ItemUseable - No */
     , (800409,  25,        315) /* Level */
     , (800409,  40,          2) /* CombatMode - Melee */
     , (800409,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (800409,  93,    4195336) /* PhysicsState - ReportCollisions, Gravity, EdgeSlide */
     , (800409, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800409, 146,    26000000) /* XpOverride */
     , (800409, 332,      10000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800409,   1, True ) /* Stuck */
     , (800409,   6, True ) /* AiUsesMana */
     , (800409,  11, False) /* IgnoreCollisions */
     , (800409,  12, True ) /* ReportCollisions */
     , (800409,  13, False) /* Ethereal */
     , (800409,  42, True ) /* AllowEdgeSlide */
     , (800409,  50, True ) /* NeverFailCasting */
     , (800409,  65, True ) /* IgnoreMagicResist */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800409,   1,       5) /* HeartbeatInterval */
     , (800409,   2,       0) /* HeartbeatTimestamp */
     , (800409,   3,       1) /* HealthRate */
     , (800409,   4,     0.3) /* StaminaRate */
     , (800409,   5,     2.5) /* ManaRate */
     , (800409,  13,       1) /* ArmorModVsSlash */
     , (800409,  14,       1) /* ArmorModVsPierce */
     , (800409,  15,       1) /* ArmorModVsBludgeon */
     , (800409,  16,       1) /* ArmorModVsCold */
     , (800409,  17,       1) /* ArmorModVsFire */
     , (800409,  18,       1) /* ArmorModVsAcid */
     , (800409,  19,     0.7) /* ArmorModVsElectric */
     , (800409,  31,      25) /* VisualAwarenessRange */
     , (800409,  34,       2) /* PowerupTime */
     , (800409,  36,       1) /* ChargeSpeed */
     , (800409,  39,       1) /* DefaultScale */
     , (800409,  64,       1) /* ResistSlash */
     , (800409,  65,     0.1) /* ResistPierce */
     , (800409,  66,     0.1) /* ResistBludgeon */
     , (800409,  67,     0.1) /* ResistFire */
     , (800409,  68,     0.1) /* ResistCold */
     , (800409,  69,     0.1) /* ResistAcid */
     , (800409,  70,     0.3) /* ResistElectric */
     , (800409,  71,       1) /* ResistHealthBoost */
     , (800409,  72,       1) /* ResistStaminaDrain */
     , (800409,  73,       1) /* ResistStaminaBoost */
     , (800409,  74,       1) /* ResistManaDrain */
     , (800409,  75,       1) /* ResistManaBoost */
     , (800409,  80,       3) /* AiUseMagicDelay */
     , (800409, 104,      10) /* ObviousRadarRange */
     , (800409, 125,    0.03) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800409,   1, 'Paladin Zefir') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800409,   1,   33555610) /* Setup */
     , (800409,   2,  150995049) /* MotionTable */
     , (800409,   3,  536870975) /* SoundTable */
     , (800409,   4,  805306396) /* CombatTable */
     , (800409,   6,   67109305) /* PaletteBase */
     , (800409,   7,  268435811) /* ClothingBase */
     , (800409,   8,  100669123) /* Icon */
     , (800409,  22,  872415279) /* PhysicsEffectTable */
     , (800409,  35,       2111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800409,   1, 1400, 0, 0) /* Strength */
     , (800409,   2, 1100, 0, 0) /* Endurance */
     , (800409,   3, 220, 0, 0) /* Quickness */
     , (800409,   4, 1190, 0, 0) /* Coordination */
     , (800409,   5, 780, 0, 0) /* Focus */
     , (800409,   6, 750, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800409,   1, 10800, 0, 0, 10800) /* MaxHealth */
     , (800409,   3,  2100, 0, 0, 2200) /* MaxStamina */
     , (800409,   5,  1100, 0, 0, 1250) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800409,  6, 0, 2, 0, 120, 0, 585.6204068825466) /* MeleeDefense        Trained */
     , (800409,  7, 0, 2, 0, 140, 0, 585.6204068825466) /* MissileDefense      Trained */
     , (800409, 13, 0, 2, 0, 400, 0, 585.6204068825466) /* UnarmedCombat       Trained */
     , (800409, 14, 0, 2, 0, 850, 0, 585.6204068825466) /* ArcaneLore          Trained */
     , (800409, 15, 0, 2, 0, 230, 0, 585.6204068825466) /* MagicDefense        Trained */
     , (800409, 20, 0, 2, 0,  20, 0, 585.6204068825466) /* Deception           Trained */
     , (800409, 22, 0, 2, 0, 170, 0, 585.6204068825466) /* Jump                Trained */
     , (800409, 24, 0, 2, 0, 130, 0, 585.6204068825466) /* Run                 Trained */
     , (800409, 31, 0, 2, 0, 932, 0, 585.6204068825466) /* CreatureEnchantment Trained */
     , (800409, 33, 0, 2, 0, 942, 0, 585.6204068825466) /* LifeMagic           Trained */
     , (800409, 34, 0, 2, 0, 950, 0, 585.6204068825466) /* WarMagic            Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800409,  0,  2, 1000,  0.5, 1200, 1200, 1000, 1200, 1000, 1000, 1000, 1000,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (800409, 16,  4,  0,    0, 1200, 1200, 1000, 1200, 1000, 1000, 1000, 1000,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (800409, 17,  1, 1000, 0.75, 1200, 1200, 1000, 1200, 1000, 1000, 1000, 1000,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (800409, 21,  4,  0,    0, 1200, 1200, 1000, 1200, 1000, 1000, 1000, 1000,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800409,    67,  2.034)  /* Shock Wave IV */
     , (800409,    83,  2.034)  /* Flame Bolt IV */
     , (800409,    84,  2.045)  /* Flame Bolt V */
     , (800409,    89,  2.034)  /* Force Bolt IV */
     , (800409,    95,  2.034)  /* Whirling Blade IV */
     , (800409,    96,  2.045)  /* Whirling Blade V */
     , (800409,   283,  2.005)  /* Magic Yield Other IV */
     , (800409,  1160,  2.015)  /* Heal Self V */
     , (800409,  1173,  2.005)  /* Harm Other III */
     , (800409,  1198,  2.005)  /* Enfeeble Other IV */
     , (800409,  1240,   2.01)  /* Drain Health Other IV */
     , (800409,  1252,   2.01)  /* Drain Stamina Other IV */
     , (800409,  1262,  2.005)  /* Drain Mana Other III */
     , (800409,  1263,   2.01)  /* Drain Mana Other IV */
     , (800409,  1369,  2.005)  /* Frailty Other III */
     , (800409,  1418,  2.005)  /* Slowness Other IV */;
