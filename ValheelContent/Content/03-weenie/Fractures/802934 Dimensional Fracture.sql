DELETE FROM `weenie` WHERE `class_Id` = 802934;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802934, 'DimensionalFracture', 10, '2023-09-21 09:58:05') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802934,   0,          0) /*  */
     , (802934,   1,         16) /* ItemType - Creature */
     , (802934,   2,         53) /* CreatureType - Doll */
     , (802934,   6,         -1) /* ItemsCapacity */
     , (802934,   7,         -1) /* ContainersCapacity */
     , (802934,  16,          1) /* ItemUseable - No */
     , (802934,  25,       1000) /* Level */
     , (802934,  67,          1) /* Tolerance - Retaliate */
     , (802934,  81,          8) /* MaxGeneratedObjects */
     , (802934,  82,          8) /* InitGeneratedObjects */
     , (802934,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (802934, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (802934, 140,          1) /* AiOptions - CanOpenDoors */
     , (802934, 145,          1) /* GeneratorEndDestructionType - Destroy */
     , (802934, 146,          1) /* XpOverride */
     , (802934, 332,          1) /* LuminanceAward */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802934,   1, True ) /* Stuck */
     , (802934,   6, True ) /* AiUsesMana */
     , (802934,  11, False) /* IgnoreCollisions */
     , (802934,  12, False) /* ReportCollisions */
     , (802934,  13, False) /* Ethereal */
     , (802934,  14, False) /* GravityStatus */
     , (802934,  19, True ) /* Attackable */
     , (802934,  29, False ) /* NoCorpse */
     , (802934,  50, True ) /* NeverFailCasting */
     , (802934,  65, True ) /* IgnoreMagicResist */
     , (802934, 120, True ) /* TreasureCorpse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802934,   1,       5) /* HeartbeatInterval */
     , (802934,   2,       0) /* HeartbeatTimestamp */
     , (802934,   3,       3) /* HealthRate */
     , (802934,   4,     0.5) /* StaminaRate */
     , (802934,   5,       2) /* ManaRate */
     , (802934,  12,     0.5) /* Shade */
     , (802934,  13,      15) /* ArmorModVsSlash */
     , (802934,  14,      15) /* ArmorModVsPierce */
     , (802934,  15,      15) /* ArmorModVsBludgeon */
     , (802934,  16,      15) /* ArmorModVsCold */
     , (802934,  17,      15) /* ArmorModVsFire */
     , (802934,  18,      15) /* ArmorModVsAcid */
     , (802934,  19,      15) /* ArmorModVsElectric */
     , (802934,  31,      14) /* VisualAwarenessRange */
     , (802934,  39,     0.5) /* DefaultScale */
     , (802934,  41,      15) /* RegenerationInterval */
     , (802934,  43,      10) /* GeneratorRadius */
     , (802934,  64,    0.01) /* ResistSlash */
     , (802934,  65,    0.01) /* ResistPierce */
     , (802934,  66,    0.01) /* ResistBludgeon */
     , (802934,  67,    0.01) /* ResistFire */
     , (802934,  68,    0.01) /* ResistCold */
     , (802934,  69,    0.01) /* ResistAcid */
     , (802934,  70,    0.01) /* ResistElectric */
     , (802934,  71,       1) /* ResistHealthBoost */
     , (802934,  72,       1) /* ResistStaminaDrain */
     , (802934,  73,       1) /* ResistStaminaBoost */
     , (802934,  74,       1) /* ResistManaDrain */
     , (802934,  75,       1) /* ResistManaBoost */
     , (802934,  77,       1) /* PhysicsScriptIntensity */
     , (802934,  80,       3) /* AiUseMagicDelay */
     , (802934, 104,      10) /* ObviousRadarRange */
     , (802934, 122,       2) /* AiAcquireHealth */
     , (802934, 125,    0.01) /* ResistHealthDrain */
     , (802934, 166,    0.01) /* ResistNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802934,   1, 'Dimensional Fracture') /* Name */
     , (802934,  45, 'fractureKT') /* KillQuest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802934,   1, 0x02000BBF) /* Setup */
     , (802934,   2, 0x0900015A) /* MotionTable */
     , (802934,   6, 0x04001394) /* PaletteBase */
     , (802934,   8, 0x06003344) /* Icon */
     , (802934,  22, 0x3400009D) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (802934,  0,  1,  5, 0.75, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (802934,  1,  1,  5, 0.75, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 2, 0.44, 0.23,    0, 0.44, 0.23,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (802934,  2,  1,  5, 0.75, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 3,    0, 0.23,  0.1,    0, 0.23,  0.2,    0, 0.17, 0.45,    0, 0.17, 0.45) /* Abdomen */
     , (802934,  3,  1,  5, 0.75, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 1, 0.23, 0.04,  0.2, 0.23, 0.04,  0.1, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (802934,  4,  1,  5, 0.75, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 2,    0,  0.3,  0.3,    0,  0.3,  0.4,    0,  0.3,  0.1,    0,  0.3,  0.1) /* LowerArm */
     , (802934,  5,  1,  5, 0.75, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 2,    0,  0.2,  0.3,    0,  0.2,  0.2,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (802934, 17,  1,  5, 0.75, 5000, 2500, 2500, 2500, 2500, 2500, 2500, 2500,    0, 3,    0,    0,  0.1,    0,    0,  0.1,    0, 0.13, 0.45,    0, 0.13, 0.45) /* Tail */
     , (802934, 22, 64,  5,  0.5,    0,    0,    0,    0,    0,    0,    0,    0,    0, 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (802934,   1,2000, 0, 0) /* Strength */
     , (802934,   2,2000, 0, 0) /* Endurance */
     , (802934,   3,2000, 0, 0) /* Quickness */
     , (802934,   4,2000, 0, 0) /* Coordination */
     , (802934,   5,2000, 0, 0) /* Focus */
     , (802934,   6,2000, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (802934,   1,1500000, 0, 0,1500000) /* MaxHealth */
     , (802934,   3,350000, 0, 0,350000) /* MaxStamina */
     , (802934,   5,350000, 0, 0,350000) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (802934,  6, 0, 3, 0, 170, 0, 0) /* MeleeDefense        Specialized */
     , (802934,  7, 0, 3, 0, 170, 0, 0) /* MissileDefense      Specialized */
     , (802934, 14, 0, 3, 0, 200, 0, 0) /* ArcaneLore          Specialized */
     , (802934, 15, 0, 3, 0, 170, 0, 0) /* MagicDefense        Specialized */
     , (802934, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (802934, 24, 0, 2, 0,  80, 0, 0) /* Run                 Trained */
     , (802934, 31, 0, 3, 0,6170, 0, 0) /* CreatureEnchantment Specialized */
     , (802934, 33, 0, 3, 0,6170, 0, 0) /* LifeMagic           Specialized */
     , (802934, 34, 0, 3, 0,6170, 0, 0) /* WarMagic            Specialized */
     , (802934, 45, 0, 3, 0,6374, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (802934, 5 /* HeartBeat */, 0.05, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id, 0, 17 /* LocalBroadcast */, 0, 1, NULL, 'Rolling thunder roars nearby.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802934, -1, 1000087, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Mask of the Order (801559) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (802934, -1, 1000028, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Mask of the Order (801559) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (802934, -1, 802935, 0, 3, 3, 1, 2, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Mask of the Order (801559) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (802934, -1, 802936, 0, 2, 2, 1, 2, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Mask of the Order (801559) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;