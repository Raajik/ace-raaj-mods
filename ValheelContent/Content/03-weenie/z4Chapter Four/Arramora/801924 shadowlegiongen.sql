DELETE FROM `weenie` WHERE `class_Id` = 801924;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801924, 'shadowlegiongen', 1, '2020-12-31 07:36:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801924,  81,          8) /* MaxGeneratedObjects */
     , (801924,  82,          8) /* InitGeneratedObjects */
     , (801924,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801924,   1, True ) /* Stuck */
     , (801924,  11, True ) /* IgnoreCollisions */
     , (801924,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801924,  41,      60) /* RegenerationInterval */
     , (801924,  43,      20) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801924,   1, 'shadowlegiongen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801924,   1,   33555051) /* Setup */
     , (801924,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801924, -1, 801923, 1, 4, 4, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850099) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801924, -1, 801923, 1, 4, 4, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850100) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;