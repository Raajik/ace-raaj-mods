DELETE FROM `weenie` WHERE `class_Id` = 803066;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803066, 'RottingSporeGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803066,  66,          1) /* CheckpointStatus */
     , (803066,  81,          5) /* MaxGeneratedObjects */
     , (803066,  82,          5) /* InitGeneratedObjects */
     , (803066,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803066, 103,          2) /* GeneratorDestructionType - Destroy */
     , (803066, 142,          3) /* GeneratorTimeType - Event */
     , (803066, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803066,   1, True ) /* Stuck */
     , (803066,  11, True ) /* IgnoreCollisions */
     , (803066,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803066,  41,      30) /* RegenerationInterval */
     , (803066,  43,      10) /* GeneratorRadius */
     , (803066, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803066,   1, 'RottingSporeGen') /* Name */
     , (803066,  34, 'NewColoBoss12') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803066,   1, 0x0200026B) /* Setup */
     , (803066,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803066, 1, 803065, 0, 5, 5, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
