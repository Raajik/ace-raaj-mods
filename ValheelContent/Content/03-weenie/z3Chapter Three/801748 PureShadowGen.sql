DELETE FROM `weenie` WHERE `class_Id` = 801748;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801748, 'PureShadowGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801748,  66,          1) /* CheckpointStatus */
     , (801748,  81,          6) /* MaxGeneratedObjects */
     , (801748,  82,          6) /* InitGeneratedObjects */
     , (801748,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801748,   1, True ) /* Stuck */
     , (801748,  11, True ) /* IgnoreCollisions */
     , (801748,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801748,  41,      60) /* RegenerationInterval */
     , (801748,  43,       5) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801748,   1, 'PureShadowGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801748,   1,   33555051) /* Setup */
     , (801748,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801748, -1, 801747, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Vile Niffis (801505) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801748, -1, 801747, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Vile Niffis (801505) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801748, -1, 801747, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Vile Niffis (801505) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801748, -1, 801747, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Vile Niffis (801505) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801748, -1, 801747, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Vile Niffis (801505) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801748, -1, 801747, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Vile Niffis (801505) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
