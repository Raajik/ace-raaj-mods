DELETE FROM `weenie` WHERE `class_Id` = 802863;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802863, 'ColoBoss2Gen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802863,  66,          1) /* CheckpointStatus */
     , (802863,  81,          1) /* MaxGeneratedObjects */
     , (802863,  82,          1) /* InitGeneratedObjects */
     , (802863,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802863, 103,          2) /* GeneratorDestructionType - Destroy */
     , (802863, 142,          3) /* GeneratorTimeType - Event */
     , (802863, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802863,   1, True ) /* Stuck */
     , (802863,  11, True ) /* IgnoreCollisions */
     , (802863,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802863,  41,     600) /* RegenerationInterval */
     , (802863,  43,       1) /* GeneratorRadius */
     , (802863, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802863,   1, 'ColoBoss2Gen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802863,   1, 0x0200026B) /* Setup */
     , (802863,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802863, 1, 802852, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
