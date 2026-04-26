DELETE FROM `weenie` WHERE `class_Id` = 803685;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803685, 'BRWave1Gen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803685,  66,          1) /* CheckpointStatus */
     , (803685,  81,          3) /* MaxGeneratedObjects */
     , (803685,  82,          3) /* InitGeneratedObjects */
     , (803685,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803685, 103,          2) /* GeneratorDestructionType - Destroy */
     , (803685, 142,          3) /* GeneratorTimeType - Event */
     , (803685, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803685,   1, True ) /* Stuck */
     , (803685,  11, True ) /* IgnoreCollisions */
     , (803685,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803685,  41,      10) /* RegenerationInterval */
     , (803685,  43,       1) /* GeneratorRadius */
     , (803685, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803685,   1, 'BRWave1Gen') /* Name */
     , (803685,  34, 'AyanOwnedF1') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803685,   1, 0x0200026B) /* Setup */
     , (803685,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803685, 1, 00192, 0, 3, 3, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
