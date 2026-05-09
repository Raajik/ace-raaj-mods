DELETE FROM `weenie` WHERE `class_Id` = 801305;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801305, 'Ringmaster Reborn', 10, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801305,   1,         16) /* ItemType - Creature */
     , (801305,   2,         92) /* CreatureType - ParadoxOlthoi */
     , (801305,   3,         13) /* PaletteTemplate - Purple */
     , (801305,   6,         -1) /* ItemsCapacity */
     , (801305,   7,         -1) /* ContainersCapacity */
     , (801305,  16,          1) /* ItemUseable - No */
     , (801305,  25,        450) /* Level */
     , (801305,  68,         0x80) /* TargetingTactic - Random, LastDamager, TopDamager */
     , (801305,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (801305, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (801305, 146,     500000) /* XpOverride */
     , (801305, 332,     200000) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801305,   1, True ) /* Stuck */
     , (801305,   6, True ) /* AiUsesMana */
     , (801305,  11, False) /* IgnoreCollisions */
     , (801305,  12, True ) /* ReportCollisions */
     , (801305,  13, False) /* Ethereal */
     , (801305,  14, True ) /* GravityStatus */
     , (801305,  19, True ) /* Attackable */
     , (801305,  42, True ) /* AllowEdgeSlide */
     , (801305,  50, True ) /* NeverFailCasting */
     , (801305,  65, True ) /* IgnoreMagicResist */
     , (801305,  66, True ) /* IgnoreMagicArmor */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801305,   1,       5) /* HeartbeatInterval */
     , (801305,   2,       0) /* HeartbeatTimestamp */
     , (801305,   3,      20) /* HealthRate */
     , (801305,   4,      20) /* StaminaRate */
     , (801305,   5,       2) /* ManaRate */
     , (801305,  12,     0.5) /* Shade */
     , (801305,  13,       1) /* ArmorModVsSlash */
     , (801305,  14,       1) /* ArmorModVsPierce */
     , (801305,  15,       1) /* ArmorModVsBludgeon */
     , (801305,  16,       1) /* ArmorModVsCold */
     , (801305,  17,     0.7) /* ArmorModVsFire */
     , (801305,  18,       1) /* ArmorModVsAcid */
     , (801305,  19,       1) /* ArmorModVsElectric */
     , (801305,  31,      18) /* VisualAwarenessRange */
     , (801305,  34,     1.1) /* PowerupTime */
     , (801305,  36,       1) /* ChargeSpeed */
     , (801305,  39,     1.8) /* DefaultScale */
     , (801305,  64,     0.1) /* ResistSlash */
     , (801305,  65,     0.1) /* ResistPierce */
     , (801305,  66,     0.1) /* ResistBludgeon */
     , (801305,  67,     0.5) /* ResistFire */
     , (801305,  68,     0.1) /* ResistCold */
     , (801305,  69,     0.1) /* ResistAcid */
     , (801305,  70,     0.1) /* ResistElectric */
     , (801305,  71,       1) /* ResistHealthBoost */
     , (801305,  72,       1) /* ResistStaminaDrain */
     , (801305,  73,       1) /* ResistStaminaBoost */
     , (801305,  74,       1) /* ResistManaDrain */
     , (801305,  75,       1) /* ResistManaBoost */
     , (801305,  80,       3) /* AiUseMagicDelay */
     , (801305, 104,      10) /* ObviousRadarRange */
     , (801305, 122,       2) /* AiAcquireHealth */
     , (801305, 125,    0.03) /* ResistHealthDrain */
     , (801305, 166,    0.07) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801305,   1, 'Ringmaster Reborn') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801305,   1,   33554839) /* Setup */
     , (801305,   2,  150994967) /* MotionTable */
     , (801305,   3,  536870934) /* SoundTable */
     , (801305,   4,  805306368) /* CombatTable */
     , (801305,   6,   67110722) /* PaletteBase */
     , (801305,   7,  268436626) /* ClothingBase */
     , (801305,   8,  100667942) /* Icon */
     , (801305,  22,  872415272) /* PhysicsEffectTable */
     , (801305,  35,       3111) /* DeathTreasureType */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (801305,   1, 4000, 0, 0) /* Strength */
     , (801305,   2, 1500, 0, 0) /* Endurance */
     , (801305,   3, 400, 0, 0) /* Quickness */
     , (801305,   4, 400, 0, 0) /* Coordination */
     , (801305,   5, 400, 0, 0) /* Focus */
     , (801305,   6, 400, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (801305,   1, 135000, 0, 0, 135000) /* MaxHealth */
     , (801305,   3, 26600, 0, 0, 30000) /* MaxStamina */
     , (801305,   5, 20000, 0, 0, 24500) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (801305,  6, 0, 2, 0,  350, 0, 0) /* MeleeDefense        Trained */
     , (801305,  7, 0, 2, 0,  350, 0, 0) /* MissileDefense      Trained */
     , (801305, 14, 0, 2, 0,  300, 0, 0) /* ArcaneLore          Trained */
     , (801305, 15, 0, 2, 0,  350, 0, 0) /* MagicDefense        Trained */
     , (801305, 20, 0, 2, 0,  150, 0, 0) /* Deception           Trained */
     , (801305, 31, 0, 2, 0,  525, 0, 0) /* CreatureEnchantment Trained */
     , (801305, 33, 0, 2, 0,  525, 0, 0) /* LifeMagic           Trained */
     , (801305, 34, 0, 2, 0, 4250, 0, 0) /* WarMagic            Trained */
     , (801305, 44, 0, 2, 0, 3850, 0, 0) /* HeavyWeapons        Trained */
     , (801305, 45, 0, 2, 0, 3850, 0, 0) /* LightWeapons        Trained */
     , (801305, 46, 0, 2, 0, 3850, 0, 0) /* FinesseWeapons      Trained */
     , (801305, 47, 0, 2, 0, 3850, 0, 0) /* MissileWeapons      Trained */
     , (801305, 48, 0, 2, 0, 1800, 0, 0) /* Shield              Trained */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (801305,  0,  4, 3100, 0.75,  3100, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (801305,  1,  4,  0,    0,   3100, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (801305,  2,  4, 3100, 0.75,  3100, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (801305,  3,  4, 3100, 0.75,  3100, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (801305,  4,  4, 3100, 0.75,  3100, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (801305,  5,  4, 3100, 0.75,  3100, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (801305,  6,  4, 3100, 0.75,  3100, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (801305,  7,  4, 3100, 0.75,  3100, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (801305,  8,  4, 3100, 0.75,  3100, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 12000, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (801305,  3 /* Death */,      1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  23 /* StartEvent */, 0, 1, NULL, 'IRBoss8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  1,  24 /* StopEvent */, 0.5, 1, NULL, 'IRBoss7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id,  2,  16 /* WorldBroadcast */, 0, 1, NULL, 'Reincarnation was not enough to bring the Ringmaster into victory!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
