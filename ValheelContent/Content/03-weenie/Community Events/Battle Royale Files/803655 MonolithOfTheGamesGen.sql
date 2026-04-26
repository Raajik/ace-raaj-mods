DELETE FROM `weenie` WHERE `class_Id` = 803655;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803655, 'MonolithOfTheGamesGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803655,  66,          1) /* CheckpointStatus */
     , (803655,  81,          1) /* MaxGeneratedObjects */
     , (803655,  82,          1) /* InitGeneratedObjects */
     , (803655,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803655, 103,          2) /* GeneratorDestructionType - Destroy */
     , (803655, 142,          3) /* GeneratorTimeType - Event */
     , (803655, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803655,   1, True ) /* Stuck */
     , (803655,  11, True ) /* IgnoreCollisions */
     , (803655,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803655,  41,     600) /* RegenerationInterval */
     , (803655,  43,       1) /* GeneratorRadius */
     , (803655, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803655,   1, 'MonolithOfTheGamesGen') /* Name */
     , (803655,  34, 'SpawnCragstoneBoss') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803655,   1, 0x0200026B) /* Setup */
     , (803655,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803655, 1, 803649, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
