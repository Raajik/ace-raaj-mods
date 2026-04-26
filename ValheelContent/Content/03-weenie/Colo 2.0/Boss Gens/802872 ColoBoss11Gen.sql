DELETE FROM `weenie` WHERE `class_Id` = 802872;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802872, 'ColoBoss11Gen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802872,  66,          1) /* CheckpointStatus */
     , (802872,  81,          1) /* MaxGeneratedObjects */
     , (802872,  82,          1) /* InitGeneratedObjects */
     , (802872,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802872, 103,          2) /* GeneratorDestructionType - Destroy */
     , (802872, 142,          3) /* GeneratorTimeType - Event */
     , (802872, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802872,   1, True ) /* Stuck */
     , (802872,  11, True ) /* IgnoreCollisions */
     , (802872,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802872,  41,     600) /* RegenerationInterval */
     , (802872,  43,       1) /* GeneratorRadius */
     , (802872, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802872,   1, 'ColoBoss11Gen') /* Name */
     , (802872,  34, 'NewColoBoss11') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802872,   1, 0x0200026B) /* Setup */
     , (802872,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802872, 1, 802861, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
