DELETE FROM `weenie` WHERE `class_Id` = 803517;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803517, 'RaidBossThreeGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803517,  66,          1) /* CheckpointStatus */
     , (803517,  81,          1) /* MaxGeneratedObjects */
     , (803517,  82,          1) /* InitGeneratedObjects */
     , (803517,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803517, 103,          2) /* GeneratorDestructionType - Destroy */
     , (803517, 142,          3) /* GeneratorTimeType - Event */
     , (803517, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803517,   1, True ) /* Stuck */
     , (803517,  11, True ) /* IgnoreCollisions */
     , (803517,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803517,  41,     600) /* RegenerationInterval */
     , (803517,  43,       1) /* GeneratorRadius */
     , (803517, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803517,   1, 'RaidBossThreeGen') /* Name */
     /* , (803517,  34, 'TownBossAyan') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803517,   1, 0x0200026B) /* Setup */
     , (803517,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803517, 1, 803516, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
