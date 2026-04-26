DELETE FROM `weenie` WHERE `class_Id` = 801791;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801791, 'SwampRuinGen2', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801791,  66,          1) /* CheckpointStatus */
     , (801791,  81,          4) /* MaxGeneratedObjects */
     , (801791,  82,          4) /* InitGeneratedObjects */
     , (801791,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801791,   1, True ) /* Stuck */
     , (801791,  11, True ) /* IgnoreCollisions */
     , (801791,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801791,  41,      60) /* RegenerationInterval */
     , (801791,  43,      10) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801791,   1, 'SwampRuinGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801791,   1,   33555051) /* Setup */
     , (801791,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801791, -1, 850042, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Sand Tusker Sultan (850043) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801791, -1, 850042, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Klaatu Barada Nikto (850040) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801791, -1, 850042, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Plagued Spirit (850042) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801791, -1, 850042, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Sand Tusker Sultan (850043) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
