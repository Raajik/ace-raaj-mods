DELETE FROM `weenie` WHERE `class_Id` = 801921;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801921, 'shadowvirindigen', 1, '2020-12-31 07:36:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801921,  81,          4) /* MaxGeneratedObjects */
     , (801921,  82,          4) /* InitGeneratedObjects */
     , (801921,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801921,   1, True ) /* Stuck */
     , (801921,  11, True ) /* IgnoreCollisions */
     , (801921,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801921,  41,      60) /* RegenerationInterval */
     , (801921,  43,      10) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801921,   1, 'shadowvirindigen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801921,   1,   33555051) /* Setup */
     , (801921,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801921, -1, 801920, 1, 2, 2, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850099) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801921, -1, 801920, 1, 2, 2, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850100) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;