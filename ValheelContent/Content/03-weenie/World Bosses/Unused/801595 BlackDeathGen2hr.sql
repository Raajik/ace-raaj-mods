DELETE FROM `weenie` WHERE `class_Id` = 801595;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801595, 'BlackDeathGen2hr', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801595,  66,          1) /* CheckpointStatus */
     , (801595,  81,          1) /* MaxGeneratedObjects */
     , (801595,  82,          1) /* InitGeneratedObjects */
     , (801595,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801595, 103,          2) /* GeneratorDestructionType - Destroy */
     , (801595, 142,          3) /* GeneratorTimeType - Event */
     , (801595, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801595,   1, True ) /* Stuck */
     , (801595,  11, True ) /* IgnoreCollisions */
     , (801595,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801595,  41,    21600) /* RegenerationInterval */
     , (801595,  43,       1) /* GeneratorRadius */
     , (801595, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801595,   1, 'BlackDeathGen2hr') /* Name */
     , (801595,  34, 'WBoss4') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801595,   1, 0x0200026B) /* Setup */
     , (801595,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801595, 1, 801593, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
