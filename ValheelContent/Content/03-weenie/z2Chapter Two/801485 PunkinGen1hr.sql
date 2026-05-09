DELETE FROM `weenie` WHERE `class_Id` = 801485;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801485, 'PunkinGen1hr', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801485,  66,          1) /* CheckpointStatus */
     , (801485,  81,          1) /* MaxGeneratedObjects */
     , (801485,  82,          1) /* InitGeneratedObjects */
     , (801485,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801485, 103,          2) /* GeneratorDestructionType - Destroy */
     , (801485, 142,          3) /* GeneratorTimeType - Event */
     , (801485, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801485,   1, True ) /* Stuck */
     , (801485,  11, True ) /* IgnoreCollisions */
     , (801485,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801485,  41,    3600) /* RegenerationInterval */
     , (801485,  43,       1) /* GeneratorRadius */
     , (801485, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801485,   1, 'PunkinGen1hr') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801485,   1, 0x0200026B) /* Setup */
     , (801485,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801485, 1, 801481, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
