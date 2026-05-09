DELETE FROM `weenie` WHERE `class_Id` = 850073;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850073, 'ace850073-Dracanvihieromancergenerator', 1, '2020-12-31 07:36:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850073,  81,          4) /* MaxGeneratedObjects */
     , (850073,  82,          4) /* InitGeneratedObjects */
     , (850073,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850073,   1, True ) /* Stuck */
     , (850073,  11, True ) /* IgnoreCollisions */
     , (850073,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850073,  41,      60) /* RegenerationInterval */
     , (850073,  43,      8) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850073,   1, 'Dracanvi Hieromancer Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850073,   1,   33555051) /* Setup */
     , (850073,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (850073, -1, 850072, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850072) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850073, -1, 850072, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850072) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850073, -1, 850072, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850072) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850073, -1, 850072, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850072) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;