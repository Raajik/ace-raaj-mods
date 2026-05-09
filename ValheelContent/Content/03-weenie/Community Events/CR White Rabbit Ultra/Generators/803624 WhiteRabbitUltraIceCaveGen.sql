DELETE FROM `weenie` WHERE `class_Id` = 803624;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803624, 'WhiteRabbitUltraIceCaveGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803624,  66,          1) /* CheckpointStatus */
     , (803624,  81,          1) /* MaxGeneratedObjects */
     , (803624,  82,          1) /* InitGeneratedObjects */
     , (803624,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803624, 103,          2) /* GeneratorDestructionType - Destroy */
     , (803624, 142,          3) /* GeneratorTimeType - Event */
     , (803624, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803624,   1, True ) /* Stuck */
     , (803624,  11, True ) /* IgnoreCollisions */
     , (803624,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803624,  41,     600) /* RegenerationInterval */
     , (803624,  43,       1) /* GeneratorRadius */
     , (803624, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803624,   1, 'WhiteRabbitUltraIceCaveGen') /* Name */
     , (803624,  34, 'SpawnBaishiBoss') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803624,   1, 0x0200026B) /* Setup */
     , (803624,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803624, 1, 5000710, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
