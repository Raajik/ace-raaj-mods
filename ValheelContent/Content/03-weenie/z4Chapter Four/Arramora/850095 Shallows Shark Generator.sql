DELETE FROM `weenie` WHERE `class_Id` = 850095;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850095, 'ace850095-shallowssharkgenerator', 1, '2020-12-31 07:36:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850095,  81,          8) /* MaxGeneratedObjects */
     , (850095,  82,          8) /* InitGeneratedObjects */
     , (850095,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850095,   1, True ) /* Stuck */
     , (850095,  11, True ) /* IgnoreCollisions */
     , (850095,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850095,  41,      60) /* RegenerationInterval */
     , (850095,  43,      40) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850095,   1, 'Shallows Shark Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850095,   1,   33555051) /* Setup */
     , (850095,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (850095, -1, 801903, 1800, 2, 2, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Shallows Shark Generator (801903) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850095, -1, 850098, 1800, 2, 2, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Coastal Niffis Generator (850098) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850095, -1, 850101, 1800, 2, 2, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Coastal Shreth Generator (850101) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850095, -1, 850108, 1800, 2, 2, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Coastal Shreth Generator (850101) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
