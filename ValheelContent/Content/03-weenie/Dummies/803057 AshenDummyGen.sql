DELETE FROM `weenie` WHERE `class_Id` = 803057;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803057, 'AshenDummyGen', 1, '2023-03-02 10:06:50') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803057,  81,          1) /* MaxGeneratedObjects */
     , (803057,  82,          1) /* InitGeneratedObjects */
     , (803057,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803057,   1, True ) /* Stuck */
     , (803057,  11, True ) /* IgnoreCollisions */
     , (803057,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803057,  41,       1) /* RegenerationInterval */
     , (803057,  43,       1) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803057,   1, 'AshenDummyGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803057,   1,   33555051) /* Setup */
     , (803057,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (803057,  0,  4,20000,  0.3, 4000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (803057,  1,  4,20000,  0.3, 4000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (803057,  2,  4,20000,  0.3, 4000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (803057,  3,  4,20000,  0.3, 4000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (803057,  4,  4,20000,  0.3, 4000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (803057,  5,  4,20000,  0.3, 4000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (803057,  6,  4,20000,  0.3, 4000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (803057,  7,  4,20000,  0.3, 4000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (803057,  8,  4,20000,  0.3, 4000, 2000, 2000, 2000, 2000, 2000, 2000, 2000,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803057, -1, 803049, 1, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Northren Grievver (802306) (x5 up to max of 5) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
