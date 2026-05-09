DELETE FROM `weenie` WHERE `class_Id` = 801476;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801476, 'PebblePupilGen12hr', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801476,  66,          1) /* CheckpointStatus */
     , (801476,  81,          3) /* MaxGeneratedObjects */
     , (801476,  82,          3) /* InitGeneratedObjects */
     , (801476,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801476, 103,          2) /* GeneratorDestructionType - Destroy */
     , (801476, 142,          3) /* GeneratorTimeType - Event */
     , (801476, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801476,   1, True ) /* Stuck */
     , (801476,  11, True ) /* IgnoreCollisions */
     , (801476,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801476,  41,   21600) /* RegenerationInterval */
     , (801476,  43,       1) /* GeneratorRadius */
     , (801476, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801476,   1, 'PebblePupilGen12hr') /* Name */
     , (801476,  34, 'WBoss3') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801476,   1,   33555051) /* Setup */
     , (801476,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801476, 1, 802720, 0, 3, 3, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate  (801475) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
