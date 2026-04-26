DELETE FROM `weenie` WHERE `class_Id` = 801306;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801306, 'Gearin the Frozen', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801306,   1,         16) /* ItemType - Creature */
     , (801306,   2,         13) /* CreatureType - Golem */
     , (801306,   3,         13) /* PaletteTemplate - Purple */
     , (801306,   6,         -1) /* ItemsCapacity */
     , (801306,   7,         -1) /* ContainersCapacity */
     , (801306,  16,          1) /* ItemUseable - No */
     , (801306,  25,        450) /* Level */
     , (801306,  27,          0) /* ArmorType - None */
     , (801306,  68,          0x80) /* TargetingTactic - Random, TopDamager */
     , (801306,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801306, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801306, 146,     500000) /* XpOverride */
     , (801306, 332,     200000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801306,   1, True ) /* Stuck */
     , (801306,   6, True ) /* AiUsesMana */
     , (801306,  11, False) /* IgnoreCollisions */
     , (801306,  12, True ) /* ReportCollisions */
     , (801306,  13, False) /* Ethereal */
     , (801306,  14, True ) /* GravityStatus */
     , (801306,  19, True ) /* Attackable */
     , (801306,  65, True ) /* IgnoreMagicResist */
     , (801306,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801306,   1,       5) /* HeartbeatInterval */
     , (801306,   2,       0) /* HeartbeatTimestamp */
     , (801306,   3,       2) /* HealthRate */
     , (801306,   4,    20.5) /* StaminaRate */
     , (801306,   5,      20) /* ManaRate */
     , (801306,   6,     0.1) /* HealthUponResurrection */
     , (801306,   7,    0.25) /* StaminaUponResurrection */
     , (801306,   8,     0.3) /* ManaUponResurrection */
     , (801306,  12,     0.5) /* Shade */
     , (801306,  13,       1) /* ArmorModVsSlash */
     , (801306,  14,       1) /* ArmorModVsPierce */
     , (801306,  15,     0.7) /* ArmorModVsBludgeon */
     , (801306,  16,       1) /* ArmorModVsCold */
     , (801306,  17,     0.7) /* ArmorModVsFire */
     , (801306,  18,       1) /* ArmorModVsAcid */
     , (801306,  19,       1) /* ArmorModVsElectric */
     , (801306,  31,      17) /* VisualAwarenessRange */
     , (801306,  34,     1.3) /* PowerupTime */
     , (801306,  39,     1.8) /* DefaultScale */
     , (801306,  41,     600) /* RegenerationInterval */
     , (801306,  43,       5) /* GeneratorRadius */
     , (801306,  64,     0.1) /* ResistSlash */
     , (801306,  65,     0.1) /* ResistPierce */
     , (801306,  66,     0.5) /* ResistBludgeon */
     , (801306,  67,     0.5) /* ResistFire */
     , (801306,  68,     0.1) /* ResistCold */
     , (801306,  69,     0.1) /* ResistAcid */
     , (801306,  70,     0.1) /* ResistElectric */
     , (801306,  71,       1) /* ResistHealthBoost */
     , (801306,  72,       1) /* ResistStaminaDrain */
     , (801306,  73,       1) /* ResistStaminaBoost */
     , (801306,  74,       1) /* ResistManaDrain */
     , (801306,  75,       1) /* ResistManaBoost */
     , (801306,  76,     0.3) /* Translucency */
     , (801306,  80,       3) /* AiUseMagicDelay */
     , (801306, 104,      10) /* ObviousRadarRange */
     , (801306, 122,       2) /* AiAcquireHealth */
     , (801306, 125,    0.03) /* ResistHealthDrain */
     , (801306, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801306,   1, 'Gearin the Frozen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801306,   1,   33556439) /* Setup */
     , (801306,   2,  150995073) /* MotionTable */
     , (801306,   3,  536870933) /* SoundTable */
     , (801306,   4,  805306376) /* CombatTable */
     , (801306,   6,   67112808) /* PaletteBase */
     , (801306,   7,  268435983) /* ClothingBase */
     , (801306,   8,  100667940) /* Icon */
     , (801306,  22,  872415322) /* PhysicsEffectTable */
     , (801306,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801306,   1, 4200, 0, 0) /* Strength */
     , (801306,   2, 1500, 0, 0) /* Endurance */
     , (801306,   3, 400, 0, 0) /* Quickness */
     , (801306,   4, 400, 0, 0) /* Coordination */
     , (801306,   5, 400, 0, 0) /* Focus */
     , (801306,   6, 400, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801306,   1, 140000, 0, 0, 140000) /* MaxHealth */
     , (801306,   3, 250000, 0, 0, 250000) /* MaxStamina */
     , (801306,   5, 250000, 0, 0, 250000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801306,  6, 0, 3, 0,  350, 0, 0) /* MeleeDefense        Specialized */
     , (801306,  7, 0, 3, 0,  350, 0, 0) /* MissileDefense      Specialized */
     , (801306, 14, 0, 2, 0,  300, 0, 0) /* ArcaneLore          Trained */
     , (801306, 15, 0, 3, 0,  350, 0, 0) /* MagicDefense        Specialized */
     , (801306, 20, 0, 2, 0,  100, 0, 0) /* Deception           Trained */
     , (801306, 22, 0, 2, 0,  310, 0, 0) /* Jump                Trained */
     , (801306, 24, 0, 2, 0,  310, 0, 0) /* Run                 Trained */
     , (801306, 31, 0, 3, 0, 1180, 0, 0) /* CreatureEnchantment Specialized */
     , (801306, 33, 0, 3, 0, 1180, 0, 0) /* LifeMagic           Specialized */
     , (801306, 34, 0, 3, 0, 1180, 0, 0) /* WarMagic            Specialized */
     , (801306, 45, 0, 3, 0, 2543, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801306,  0,  4, 3200, 0.75,  3200, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 12000, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801306,  1,  4, 3200, 0.75,  3200, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 12000, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801306,  2,  4, 3200, 0.75,  3200, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 12000, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801306,  3,  4, 3200, 0.75,  3200, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 12000, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801306,  4,  4, 3200, 0.75,  3200, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 12000, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801306,  5,  4, 3200, 0.75,  3200, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 12000, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801306,  6,  4, 3200, 0.75,  3200, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 12000, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801306,  7,  4, 3200, 0.75,  3200, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 12000, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801306,  8,  4, 3200, 0.75,  3200, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 12000, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (801306,  94)
     , (801306, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801306,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  23 /* StartEvent */, 0, 1, NULL, 'IRBoss9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  24 /* StopEvent */, 0.5, 1, NULL, 'IRBoss8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  16 /* WorldBroadcast */, 0, 1, NULL, 'Gearin has been shattered into dust!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
