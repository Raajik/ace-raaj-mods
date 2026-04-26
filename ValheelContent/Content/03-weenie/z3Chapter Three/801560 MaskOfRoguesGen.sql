DELETE FROM `weenie` WHERE `class_Id` = 801560;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801560, 'MaskOfRoguesGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801560,  66,          1) /* CheckpointStatus */
     , (801560,  81,         15) /* MaxGeneratedObjects */
     , (801560,  82,         15) /* InitGeneratedObjects */
     , (801560,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801560,   1, True ) /* Stuck */
     , (801560,  11, True ) /* IgnoreCollisions */
     , (801560,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801560,  41,      60) /* RegenerationInterval */
     , (801560,  43,      20) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801560,   1, 'MaskOfRoguesGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801560,   1,   33555051) /* Setup */
     , (801560,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801560, -1, 801559, 0, 5, 5, 1, 2, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Mask of the Order (801559) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801560, -1, 801559, 0, 5, 5, 1, 2, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Mask of the Order (801559) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801560, -1, 801559, 0, 5, 5, 1, 2, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Mask of the Order (801559) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
	 