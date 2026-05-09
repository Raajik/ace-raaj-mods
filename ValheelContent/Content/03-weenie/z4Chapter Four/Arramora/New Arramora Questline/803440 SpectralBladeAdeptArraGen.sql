DELETE FROM `weenie` WHERE `class_Id` = 803440;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803440, 'SpectralBladeAdeptArraGen2', 1, '2020-12-31 07:36:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803440,  81,          5) /* MaxGeneratedObjects */
     , (803440,  82,          5) /* InitGeneratedObjects */
     , (803440,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803440,   1, True ) /* Stuck */
     , (803440,  11, True ) /* IgnoreCollisions */
     , (803440,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803440,  41,      30) /* RegenerationInterval */
     , (803440,  43,      10) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803440,   1, 'SpectralBladeAdeptArraGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803440,   1,   33555051) /* Setup */
     , (803440,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803440, -1, 803437, 1, 5, 5, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850099) (x2 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;