DELETE FROM `weenie` WHERE `class_Id` = 803012;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803012, 'MaskOfRoguesGen2', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803012,  66,          1) /* CheckpointStatus */
     , (803012,  81,         20) /* MaxGeneratedObjects */
     , (803012,  82,         20) /* InitGeneratedObjects */
     , (803012,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803012,   1, True ) /* Stuck */
     , (803012,  11, True ) /* IgnoreCollisions */
     , (803012,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803012,  41,      30) /* RegenerationInterval */
     , (803012,  43,      15) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803012,   1, 'MaskOfRoguesGen2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803012,   1,   33555051) /* Setup */
     , (803012,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803012, -1, 801559, 0, 20, 20, 1, 2, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Mask of the Order (801559) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
	 