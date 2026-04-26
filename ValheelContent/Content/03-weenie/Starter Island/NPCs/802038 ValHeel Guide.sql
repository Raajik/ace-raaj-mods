DELETE FROM `weenie` WHERE `class_Id` = 802038;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802038, 'ValHeelInfo', 10, '2023-02-21 10:59:16') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802038,   1,         16) /* ItemType - Creature */
     , (802038,   2,         31) /* CreatureType - Human */
     , (802038,   3,         39) /* PaletteTemplate - Black */
     , (802038,   6,         -1) /* ItemsCapacity */
     , (802038,   7,         -1) /* ContainersCapacity */
     , (802038,  16,         32) /* ItemUseable - Remote */
     , (802038,  25,        999) /* Level */
     , (802038,  93,    6292504) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment, EdgeSlide */
     , (802038,  95,          8) /* RadarBlipColor - Yellow */
     , (802038, 113,          1) /* Gender - Male */
     , (802038, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (802038, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (802038, 146,          0) /* XpOverride */
     , (802038, 188,          9) /* HeritageGroup - Empyrean */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802038,   1, True ) /* Stuck */
     , (802038,  19, False) /* Attackable */
     , (802038,  52, True ) /* AiImmobile */
     , (802038,  82, True ) /* DontTurnOrMoveWhenGiving */
     , (802038,  83, True ) /* NpcLooksLikeObject */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802038,   1,       5) /* HeartbeatInterval */
     , (802038,   2,       0) /* HeartbeatTimestamp */
     , (802038,   3,       2) /* HealthRate */
     , (802038,   4,       5) /* StaminaRate */
     , (802038,   5,       1) /* ManaRate */
     , (802038,  13,       1) /* ArmorModVsSlash */
     , (802038,  14,       1) /* ArmorModVsPierce */
     , (802038,  15,       1) /* ArmorModVsBludgeon */
     , (802038,  16,       1) /* ArmorModVsCold */
     , (802038,  17,       1) /* ArmorModVsFire */
     , (802038,  18,       1) /* ArmorModVsAcid */
     , (802038,  19,       1) /* ArmorModVsElectric */
     , (802038,  31,      18) /* VisualAwarenessRange */
     , (802038,  39,       1) /* DefaultScale */
     , (802038,  54,       3) /* UseRadius */
     , (802038,  64,       1) /* ResistSlash */
     , (802038,  65,       1) /* ResistPierce */
     , (802038,  66,       1) /* ResistBludgeon */
     , (802038,  67,       1) /* ResistFire */
     , (802038,  68,       1) /* ResistCold */
     , (802038,  69,       1) /* ResistAcid */
     , (802038,  70,       1) /* ResistElectric */
     , (802038,  76,     0.5) /* Translucency */
     , (802038,  80,       2) /* AiUseMagicDelay */
     , (802038, 104,      10) /* ObviousRadarRange */
     , (802038, 122,       2) /* AiAcquireHealth */
     , (802038, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802038,   1, 'ValHeel Starter Guide') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802038,   1, 0x020008FC) /* Setup */
     , (802038,   2, 0x090000A3) /* MotionTable */
     , (802038,   3, 0x20000059) /* SoundTable */
     , (802038,   4, 0x30000027) /* CombatTable */
     , (802038,   6, 0x04000BEF) /* PaletteBase */
     , (802038,   7, 0x10000193) /* ClothingBase */
     , (802038,   8, 0x06001B4B) /* Icon */
     , (802038,  22, 0x34000073) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802038,  0,  4, 50, 0.75,  350,  175,  175,  175,  175,  175,  175,  175,    0, 1,  0.5,  0.2,    0,  0.5,  0.2,    0,    0,    0,    0,    0,    0,    0) /* Head */
     , (802038, 10,  4,  0,    0,  350,  175,  175,  175,  175,  175,  175,  175,    0, 2,  0.2,  0.4,  0.5,  0.2,  0.4,  0.5,    0,    0,    0,    0,    0,    0) /* FrontLeg */
     , (802038, 12,  4, 50, 0.75,  350,  175,  175,  175,  175,  175,  175,  175,    0, 3,    0,    0, 0.25,    0,    0, 0.25,    0,    0,    0,    0,    0,    0) /* FrontFoot */
     , (802038, 13,  4,  0,    0,  350,  175,  175,  175,  175,  175,  175,  175,    0, 2,    0,    0,    0,    0,    0,    0,  0.3,  0.4,  0.5,  0.3,  0.4,  0.5) /* RearLeg */
     , (802038, 15,  4, 50, 0.75,  350,  175,  175,  175,  175,  175,  175,  175,    0, 3,    0,    0,    0,    0,    0,    0,    0,    0, 0.25,    0,    0, 0.25) /* RearFoot */
     , (802038, 16,  4,  0,    0,  350,  175,  175,  175,  175,  175,  175,  175,    0, 2,  0.3,  0.4, 0.25,  0.3,  0.4, 0.25,  0.6,  0.5, 0.25,  0.6,  0.5, 0.25) /* Torso */
     , (802038, 17,  4, 50, 0.75,  350,  175,  175,  175,  175,  175,  175,  175,    0, 2,    0,    0,    0,    0,    0,    0,  0.1,  0.1,    0,  0.1,  0.1,    0) /* Tail */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802038,   1, 999, 0, 0) /* Strength */
     , (802038,   2, 999, 0, 0) /* Endurance */
     , (802038,   3, 999, 0, 0) /* Quickness */
     , (802038,   4, 999, 0, 0) /* Coordination */
     , (802038,   5, 999, 0, 0) /* Focus */
     , (802038,   6, 999, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802038,   1,   999, 0, 0,  999) /* MaxHealth */
     , (802038,   3,   999, 0, 0,  999) /* MaxStamina */
     , (802038,   5,   999, 0, 0,  999) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802038,  6, 0, 2, 0, 132, 0, 0) /* MeleeDefense        Trained */
     , (802038,  7, 0, 2, 0, 149, 0, 0) /* MissileDefense      Trained */
     , (802038, 15, 0, 2, 0, 170, 0, 0) /* MagicDefense        Trained */
     , (802038, 16, 0, 2, 0, 149, 0, 0) /* ManaConversion      Trained */
     , (802038, 31, 0, 2, 0, 149, 0, 0) /* CreatureEnchantment Trained */
     , (802038, 32, 0, 2, 0, 200, 0, 0) /* ItemEnchantment     Trained */
     , (802038, 33, 0, 2, 0, 149, 0, 0) /* LifeMagic           Trained */
     , (802038, 34, 0, 2, 0, 149, 0, 0) /* WarMagic            Trained */
     , (802038, 41, 0, 2, 0, 132, 0, 0) /* TwoHandedCombat     Trained */
     , (802038, 43, 0, 2, 0, 149, 0, 0) /* VoidMagic           Trained */
     , (802038, 44, 0, 2, 0, 132, 0, 0) /* HeavyWeapons        Trained */
     , (802038, 45, 0, 2, 0, 132, 0, 0) /* LightWeapons        Trained */
     , (802038, 46, 0, 2, 0, 132, 0, 0) /* FinesseWeapons      Trained */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802038, 7 /* Use */, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 18 /* DirectBroadcast */, 1, 1, NULL, 'Welcome to ValHeel brave warrior.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 1, 18 /* DirectBroadcast */, 2, 1, NULL, 'Your time in the training hall is complete, so now you are ready for the real fight to begin.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 2, 18 /* DirectBroadcast */, 2, 1, NULL, 'ValHeel is a New Player experience realm. Here you will encounter many new things.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 3, 18 /* DirectBroadcast */, 2, 1, NULL, 'You can still participate in traditional End-of-Retail content, or choose to participate in the ValHeel custom content.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 4, 18 /* DirectBroadcast */, 2, 1, NULL, 'ValHeel offers many things that will be exciting, daunting, and difficult.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 5, 18 /* DirectBroadcast */, 2, 1, NULL, 'For all information regarding custom content, please visit our Fandom Wiki page: https://valheel.fandom.com/wiki/ValHeel_Asheron%27s_Call_Wiki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 6, 18 /* DirectBroadcast */, 2, 1, NULL, 'Your journey begins now, and your path will unfold before you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 7, 18 /* DirectBroadcast */, 2, 1, NULL, 'Bravery will get you far, but perseverance will bring greatness upon you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 8, 18 /* DirectBroadcast */, 2, 1, NULL, 'Be gone now warrior, show the realm of ValHeel who is the greatest.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 9, 22 /* StampQuest */, 0, 1, NULL, 'ValheelRecruit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
     , (@parent_id, 10, 99 /* TeleportTarget */, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0xF3A70024 /* 0xF3A70024 [108.022865 74.68414 62.005] -0.999976 0 0 -0.006875 */, 108.022865, 74.68414, 62.005, -0.999976, 0, 0, -0.006875);

