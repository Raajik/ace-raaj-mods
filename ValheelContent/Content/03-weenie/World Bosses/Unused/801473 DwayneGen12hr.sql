DELETE FROM `weenie` WHERE `class_Id` = 801473;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801473, 'DwayneGen12hr', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801473,  66,          1) /* CheckpointStatus */
     , (801473,  81,          1) /* MaxGeneratedObjects */
     , (801473,  82,          1) /* InitGeneratedObjects */
     , (801473,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801473, 103,          2) /* GeneratorDestructionType - Destroy */
     , (801473, 142,          3) /* GeneratorTimeType - Event */
     , (801473, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801473,   1, True ) /* Stuck */
     , (801473,  11, True ) /* IgnoreCollisions */
     , (801473,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801473,  41,   21600) /* RegenerationInterval */
     , (801473,  43,       1) /* GeneratorRadius */
     , (801473, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801473,   1, 'DwayneGen12hr') /* Name */
     , (801473,  34, 'WBoss3') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801473,   1,   33555051) /* Setup */
     , (801473,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801473, 1, 801471, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate  (801471) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
