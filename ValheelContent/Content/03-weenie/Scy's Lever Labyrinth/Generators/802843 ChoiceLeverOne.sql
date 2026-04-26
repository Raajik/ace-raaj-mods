DELETE FROM `weenie` WHERE `class_Id` = 802843;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802843, 'ChoiceLeverOne', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802843,  66,          1) /* CheckpointStatus */
     , (802843,  81,          1) /* MaxGeneratedObjects */
     , (802843,  82,          1) /* InitGeneratedObjects */
     , (802843,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802843,   1, True ) /* Stuck */
     , (802843,  11, True ) /* IgnoreCollisions */
     , (802843,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802843,  41,     9999) /* RegenerationInterval */
     , (802843,  43,        1) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802843,   1, 'ChoiceLeverOne') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802843,   1,   33555051) /* Setup */
     , (802843,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802843, .3, 802830, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Vile Niffis (801505) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (802843, .7, 802831, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Vile Niffis (801505) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
     