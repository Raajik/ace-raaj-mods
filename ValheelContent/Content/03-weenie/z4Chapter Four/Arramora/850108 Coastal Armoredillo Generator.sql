DELETE FROM `weenie` WHERE `class_Id` = 850108;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850108, 'ace850108-coastalarmoredillogenerator', 1, '2020-12-31 07:36:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850108,  81,          4) /* MaxGeneratedObjects */
     , (850108,  82,          4) /* InitGeneratedObjects */
     , (850108,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850108,   1, True ) /* Stuck */
     , (850108,  11, True ) /* IgnoreCollisions */
     , (850108,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850108,  41,      60) /* RegenerationInterval */
     , (850108,  43,      4) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850108,   1, 'Coastal Armoredillo Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850108,   1,   33555051) /* Setup */
     , (850108,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (850108, -1, 850106, 1800, 2, 2, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850106) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (850108, -1, 850107, 1800, 2, 2, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850107) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;