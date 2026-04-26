DELETE FROM `weenie` WHERE `class_Id` = 802937;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802937, 'DimensionalFractureGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802937,  66,          1) /* CheckpointStatus */
     , (802937,  81,          1) /* MaxGeneratedObjects */
     , (802937,  82,          1) /* InitGeneratedObjects */
     , (802937,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802937,   1, True ) /* Stuck */
     , (802937,  11, True ) /* IgnoreCollisions */
     , (802937,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802937,  41,     600) /* RegenerationInterval */
     , (802937,  43,       1) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802937,   1, 'DimensionalFractureGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802937,   1,   33555051) /* Setup */
     , (802937,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802937, 0.25, 802934, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Mask of the Order (801559) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (802937, 0.75, 803306, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Mask of the Order (801559) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
	 