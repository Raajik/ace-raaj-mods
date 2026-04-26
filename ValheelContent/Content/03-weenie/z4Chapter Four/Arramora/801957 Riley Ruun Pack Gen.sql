DELETE FROM `weenie` WHERE `class_Id` = 801957;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801957, 'Riley Ruun Pack Gen', 1, '2020-12-31 07:36:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801957,  81,          1) /* MaxGeneratedObjects */
     , (801957,  82,          1) /* InitGeneratedObjects */
     , (801957,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801957,   1, True ) /* Stuck */
     , (801957,  11, True ) /* IgnoreCollisions */
     , (801957,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801957,  41,      30) /* RegenerationInterval */
     , (801957,  43,       0) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801957,   1, 'Riley Ruun Pack Gen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801957,   1,   33555051) /* Setup */
     , (801957,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801957, -1, 801956, 30, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850096) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;