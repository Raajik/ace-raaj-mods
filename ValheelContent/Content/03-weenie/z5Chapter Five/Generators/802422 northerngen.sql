DELETE FROM `weenie` WHERE `class_Id` = 802422;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802422, 'northerngen', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802422,  81,          3) /* MaxGeneratedObjects */
     , (802422,  82,          3) /* InitGeneratedObjects */
     , (802422,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802422,   1, True ) /* Stuck */
     , (802422,  11, True ) /* IgnoreCollisions */
     , (802422,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802422,  41,       1) /* RegenerationInterval */
     , (802422,  43,      45) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802422,   1, 'northerngen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802422,   1,   33555051) /* Setup */
     , (802422,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802422, -1, 802421, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate silvergorthgen (802421) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (802422, -1, 850135, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Burun Generator (850135) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (802422, -1, 850140, 1, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Wasp Generator (850140) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
