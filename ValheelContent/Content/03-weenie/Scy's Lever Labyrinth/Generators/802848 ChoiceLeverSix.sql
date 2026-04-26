DELETE FROM `weenie` WHERE `class_Id` = 802848;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802848, 'ChoiceLeverSix', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802848,  66,          1) /* CheckpointStatus */
     , (802848,  81,          1) /* MaxGeneratedObjects */
     , (802848,  82,          1) /* InitGeneratedObjects */
     , (802848,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802848,   1, True ) /* Stuck */
     , (802848,  11, True ) /* IgnoreCollisions */
     , (802848,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802848,  41,     9999) /* RegenerationInterval */
     , (802848,  43,        1) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802848,   1, 'ChoiceLeverSix') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802848,   1,   33555051) /* Setup */
     , (802848,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802848, .3, 802841, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Vile Niffis (801505) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (802848, .7, 802842, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Vile Niffis (801505) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
     