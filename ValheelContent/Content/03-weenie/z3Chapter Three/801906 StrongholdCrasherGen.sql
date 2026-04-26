DELETE FROM `weenie` WHERE `class_Id` = 801906;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801906, 'StrongholdCrasherGen', 1, '2020-12-31 07:36:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801906,  81,          6) /* MaxGeneratedObjects */
     , (801906,  82,          6) /* InitGeneratedObjects */
     , (801906,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801906,  142,         4) /* Night */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801906,   1, True ) /* Stuck */
     , (801906,  11, True ) /* IgnoreCollisions */
     , (801906,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801906,  41,      60) /* RegenerationInterval */
     , (801906,  43,      10) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801906,   1, 'StrongholdCrasherGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801906,   1,   33555051) /* Setup */
     , (801906,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801906, -1, 801905, 1800, 2, 2, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850094) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801906, -1, 801905, 1800, 2, 2, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850093) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801906, -1, 801905, 1800, 2, 2, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850093) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;