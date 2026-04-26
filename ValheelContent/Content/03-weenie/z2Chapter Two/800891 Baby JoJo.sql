DELETE FROM `weenie` WHERE `class_Id` = 800891;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800891, 'Baby JoJo', 71, '2021-11-29 06:19:28') /* Creature */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800891,   1,         16) /* ItemType - Creature */
     , (800891,   2,          8) /* CreatureType - Marionette */
     , (800891,   3,         14) /* PaletteTemplate - White */
     , (800891,   6,         -1) /* ItemsCapacity */
     , (800891,   7,         -1) /* ContainersCapacity */
     , (800891,  16,          1) /* ItemUseable - No */
     , (800891,  25,        220) /* Level */
     , (800891,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800891, 133,          2) /* ShowableOnRadar - ShowMovement */
     , (800891, 140,          1) /* AiOptions - CanOpenDoors */
	 , (800891, 267,         43) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800891,   1, True ) /* Stuck */
     , (800891,  11, False) /* IgnoreCollisions */
     , (800891,  12, True ) /* ReportCollisions */
     , (800891,  13, False) /* Ethereal */
     , (800891, 103, True ) /* NonProjectileMagicImmune */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800891,   1,       5) /* HeartbeatInterval */
     , (800891,   2,       0) /* HeartbeatTimestamp */
     , (800891,   3,    0.45) /* HealthRate */
     , (800891,   4,     0.5) /* StaminaRate */
     , (800891,   5,       2) /* ManaRate */
     , (800891,  12,     0.5) /* Shade */
     , (800891,  13,       1) /* ArmorModVsSlash */
     , (800891,  14,       1) /* ArmorModVsPierce */
     , (800891,  15,       1) /* ArmorModVsBludgeon */
     , (800891,  16,       1) /* ArmorModVsCold */
     , (800891,  17,    0.38) /* ArmorModVsFire */
     , (800891,  18,       1) /* ArmorModVsAcid */
     , (800891,  19,       1) /* ArmorModVsElectric */
     , (800891,  31,      18) /* VisualAwarenessRange */
     , (800891,  34,     1.1) /* PowerupTime */
     , (800891,  36,       2) /* ChargeSpeed */
	 , (800891,  39,     0.3) /* DefaultScale */
     , (800891,  64,       1) /* ResistSlash */
     , (800891,  65,       1) /* ResistPierce */
     , (800891,  66,       1) /* ResistBludgeon */
     , (800891,  67,    0.38) /* ResistFire */
     , (800891,  68,       1) /* ResistCold */
     , (800891,  69,       1) /* ResistAcid */
     , (800891,  70,       1) /* ResistElectric */
     , (800891,  71,       1) /* ResistHealthBoost */
     , (800891,  72,       1) /* ResistStaminaDrain */
     , (800891,  73,       1) /* ResistStaminaBoost */
     , (800891,  74,       1) /* ResistManaDrain */
     , (800891,  75,       1) /* ResistManaBoost */
     , (800891,  80,       3) /* AiUseMagicDelay */
     , (800891, 104,      10) /* ObviousRadarRange */
     , (800891, 122,       2) /* AiAcquireHealth */
     , (800891, 125,       1) /* ResistHealthDrain */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800891,   1, 'Baby JoJo') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800891,   1,   33560348) /* Setup */
     , (800891,   2,  150994956) /* MotionTable */
     , (800891,   3,  536870929) /* SoundTable */
     , (800891,   4,  805306379) /* CombatTable */
     , (800891,   6,   67113007) /* PaletteBase */
     , (800891,   7,  268436483) /* ClothingBase */
     , (800891,   8,  100667443) /* Icon */
     , (800891,  22,  872415271) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (800891,   1, 1300, 0, 0) /* Strength */
     , (800891,   2, 1370, 0, 0) /* Endurance */
     , (800891,   3, 1210, 0, 0) /* Quickness */
     , (800891,   4, 1200, 0, 0) /* Coordination */
     , (800891,   5, 1160, 0, 0) /* Focus */
     , (800891,   6, 1120, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (800891,   1,  20000, 0, 0, 22500) /* MaxHealth */
     , (800891,   3,  42000, 0, 0, 45700) /* MaxStamina */
     , (800891,   5,     0, 0, 0, 1200) /* MaxMana */;

INSERT INTO `weenie_properties_skill` (`object_Id`, `type`, `level_From_P_P`, `s_a_c`, `p_p`, `init_Level`, `resistance_At_Last_Check`, `last_Used_Time`)
VALUES (800891,  6, 0, 3, 0, 360, 0, 0) /* MeleeDefense        Specialized */
     , (800891,  7, 0, 3, 0, 350, 0, 0) /* MissileDefense      Specialized */
     , (800891, 15, 0, 3, 0, 315, 0, 0) /* MagicDefense        Specialized */
     , (800891, 20, 0, 2, 0, 100, 0, 0) /* Deception           Trained */
     , (800891, 22, 0, 2, 0, 200, 0, 0) /* Jump                Trained */
     , (800891, 24, 0, 2, 0, 380, 0, 0) /* Run                 Trained */
     , (800891, 45, 0, 3, 0, 1000, 0, 0) /* LightWeapons        Specialized */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (800891,  0,  4,  5,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Head */
     , (800891, 16,  4,  5,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45, 0.45,  0.4, 0.45) /* Torso */
     , (800891, 18,  4, 65,  0.5,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1,    0,  0.2,  0.1) /* Arm */
     , (800891, 19,  4, 65,    0,  440,  264,  192,  192,  240,  264,  264,  240,    0, 3,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45,    0,  0.2, 0.45) /* Leg */
     , (800891, 20,  2, 65, 0.75,  440,  264,  192,  192,  240,  264,  264,  240,    0, 2, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0, 0.45,  0.2,    0) /* Claw */
     , (800891, 22, 16, 60,  0.5,  440,  264,  192,  192,  240,  264,  264,  240,    0, 1,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0,  0.1,    0,    0) /* Breath */;

INSERT INTO `weenie_properties_event_filter` (`object_Id`, `event`)
VALUES (800891,  94)
     , (800891, 414);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (800891,  5 /* HeartBeat */,   1, NULL, 2147483708 /* HandCombat */, 1090519043 /* Ready */, NULL, NULL, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  1,  72 /* Generate */, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800891, 1, 800244, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) /* Generate Master of Wind (87753) (x1 up to max of 1) - Regenerate upon Death - Location to (re)Generate: Scatter */;
 