DELETE FROM `weenie` WHERE `class_Id` = 803318;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803318, 'ColoBoss10PortalGenGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803318,  66,          1) /* CheckpointStatus */
     , (803318,  81,          1) /* MaxGeneratedObjects */
     , (803318,  82,          1) /* InitGeneratedObjects */
     , (803318,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803318, 103,          2) /* GeneratorDestructionType - Destroy */
     , (803318, 142,          3) /* GeneratorTimeType - Event */
     , (803318, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803318,   1, True ) /* Stuck */
     , (803318,  11, True ) /* IgnoreCollisions */
     , (803318,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803318,  41,     600) /* RegenerationInterval */
     , (803318,  43,       1) /* GeneratorRadius */
     , (803318, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803318,   1, 'ColoBoss10PortalGenGen') /* Name */
     , (803318,  34, 'NewColoBoss10') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803318,   1, 0x0200026B) /* Setup */
     , (803318,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803318, 1, 802879, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
