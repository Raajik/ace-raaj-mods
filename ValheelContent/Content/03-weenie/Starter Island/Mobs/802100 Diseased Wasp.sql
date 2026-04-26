DELETE FROM `weenie` WHERE `class_Id` = 802100;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802100, 'DiseasedWasp', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802100,   1,         16) /* ItemType - Creature */
     , (802100,   2,          9) /* CreatureType - PhyntosWasp */
     , (802100,   3,          8) /* PaletteTemplate - Green */
     , (802100,   6,         -1) /* ItemsCapacity */
     , (802100,   7,         -1) /* ContainersCapacity */
     , (802100,  16,          1) /* ItemUseable - No */
     , (802100,  25,        135) /* Level */
     , (802100,  40,          2) /* CombatMode - Melee */
     , (802100,  68,         13) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (802100,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802100, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802100, 146,    1000000) /* XpOverride */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802100,   1, True ) /* Stuck */
     , (802100,   6, True ) /* AiUsesMana */
     , (802100,  11, False) /* IgnoreCollisions */
     , (802100,  12, True ) /* ReportCollisions */
     , (802100,  13, False) /* Ethereal */
     , (802100,  14, True ) /* GravityStatus */
     , (802100,  19, True ) /* Attackable */
     , (802100,  50, True ) /* NeverFailCasting */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802100,   1,       5) /* HeartbeatInterval */
     , (802100,   2,       0) /* HeartbeatTimestamp */
     , (802100,   3,     0.6) /* HealthRate */
     , (802100,   4,     0.5) /* StaminaRate */
     , (802100,   5,       2) /* ManaRate */
     , (802100,  12,     0.5) /* Shade */
     , (802100,  13,     1.2) /* ArmorModVsSlash */
     , (802100,  14,       1) /* ArmorModVsPierce */
     , (802100,  15,     1.2) /* ArmorModVsBludgeon */
     , (802100,  16,     1.2) /* ArmorModVsCold */
     , (802100,  17,     1.2) /* ArmorModVsFire */
     , (802100,  18,     1.2) /* ArmorModVsAcid */
     , (802100,  19,     0.9) /* ArmorModVsElectric */
     , (802100,  31,      30) /* VisualAwarenessRange */
     , (802100,  34,     1.9) /* PowerupTime */
     , (802100,  36,       1) /* ChargeSpeed */
     , (802100,  39,     1.5) /* DefaultScale */
     , (802100,  64,     0.8) /* ResistSlash */
     , (802100,  65,       1) /* ResistPierce */
     , (802100,  66,     0.8) /* ResistBludgeon */
     , (802100,  67,     0.5) /* ResistFire */
     , (802100,  68,     0.5) /* ResistCold */
     , (802100,  69,     0.7) /* ResistAcid */
     , (802100,  70,       1) /* ResistElectric */
     , (802100,  71,       1) /* ResistHealthBoost */
     , (802100,  72,       1) /* ResistStaminaDrain */
     , (802100,  73,       1) /* ResistStaminaBoost */
     , (802100,  74,       1) /* ResistManaDrain */
     , (802100,  75,       1) /* ResistManaBoost */
     , (802100,  80,       3) /* AiUseMagicDelay */
     , (802100, 104,      10) /* ObviousRadarRange */
     , (802100, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802100,   1, 'Diseased Wasp') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802100,   1,   33558817) /* Setup */
     , (802100,   2,  150995303) /* MotionTable */
     , (802100,   3,  536870926) /* SoundTable */
     , (802100,   4,  805306385) /* CombatTable */
     , (802100,   6,   67115262) /* PaletteBase */
     , (802100,   7,  268436836) /* ClothingBase */
     , (802100,   8,  100667450) /* Icon */
     , (802100,  22,  872415266) /* PhysicsEffectTable */
     , (802100,  35,       5105) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802100,   1, 160, 0, 0) /* Strength */
     , (802100,   2, 180, 0, 0) /* Endurance */
     , (802100,   3, 215, 0, 0) /* Quickness */
     , (802100,   4, 215, 0, 0) /* Coordination */
     , (802100,   5, 160, 0, 0) /* Focus */
     , (802100,   6, 140, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802100,   1,   460, 0, 0, 550) /* MaxHealth */
     , (802100,   3,   500, 0, 0, 680) /* MaxStamina */
     , (802100,   5,   320, 0, 0, 460) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802100,  6, 0, 3, 0, 305, 0, 0) /* MeleeDefense        Specialized */
     , (802100,  7, 0, 3, 0, 410, 0, 0) /* MissileDefense      Specialized */
     , (802100, 14, 0, 3, 0, 285, 0, 0) /* ArcaneLore          Specialized */
     , (802100, 15, 0, 3, 0, 240, 0, 0) /* MagicDefense        Specialized */
     , (802100, 20, 0, 3, 0,   5, 0, 0) /* Deception           Specialized */
     , (802100, 22, 0, 3, 0, 800, 0, 0) /* Jump                Specialized */
     , (802100, 24, 0, 3, 0,  70, 0, 0) /* Run                 Specialized */
     , (802100, 34, 0, 3, 0, 170, 0, 0) /* WarMagic            Specialized */
     , (802100, 45, 0, 3, 0, 318, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802100,  0,  2, 165,  0.5,  350,  420,  350,  420,  420,  420,  420,  315,    0, 1,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Head */
     , (802100, 16,  4,  0,    0,  350,  420,  350,  420,  420,  420,  420,  315,    0, 2,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4,  0.4) /* Torso */
     , (802100, 17,  1, 165, 0.75,  350,  420,  350,  420,  420,  420,  420,  315,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Tail */
     , (802100, 21,  4,  0,    0,  350,  420,  350,  420,  420,  420,  420,  315,    0, 2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2,  0.2) /* Wings */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802100,    63,    2.2)  /* Acid Stream VI */
     , (802100,   130,    2.2)  /* Acid Volley VI */
     , (802100,  1795,    2.2)  /* Acid Streak VI */
     , (802100,  2121,   2.05)  /* Corrosive Flash */
     , (802100,  2122,   2.05)  /* Disintegration */
     , (802100,  2123,   2.05)  /* Celdiseth's Searing */
     , (802100,  2716,    2.2)  /* Acid Arc VI */
     , (802100,  2717,   2.05)  /* Acid Arc VII */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (802100, 414);

INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (802100, 9, 24477,  0, 0, 0.01, False) /* Create Sturdy Steel Key (24477) for ContainTreasure */
     , (802100, 9, 802099,  0, 0, 0.5, False) /* Create Diseased Wasp Wing (802099) for ContainTreasure */;
