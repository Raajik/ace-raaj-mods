DELETE FROM `weenie` WHERE `class_Id` = 801987;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801987, 'LadyAerfalleGen', 1, '2020-12-31 07:36:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801987,  81,          1) /* MaxGeneratedObjects */
     , (801987,  82,          1) /* InitGeneratedObjects */
     , (801987,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801987,   1, True ) /* Stuck */
     , (801987,  11, True ) /* IgnoreCollisions */
     , (801987,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801987,  41,      7200) /* RegenerationInterval */
     , (801987,  43,      1) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801987,   1, 'LadyAerfalleGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801987,   1,   33555051) /* Setup */
     , (801987,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801987, -1, 801982, 1, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Shallows Shark Generator (801903) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;