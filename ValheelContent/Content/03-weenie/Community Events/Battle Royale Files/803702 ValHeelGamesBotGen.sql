DELETE FROM `weenie` WHERE `class_Id` = 803702;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803702, 'ValHeelGamesBotGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803702,  66,          1) /* CheckpointStatus */
     , (803702,  81,          1) /* MaxGeneratedObjects */
     , (803702,  82,          1) /* InitGeneratedObjects */
     , (803702,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803702, 103,          2) /* GeneratorDestructionType - Destroy */
     , (803702, 142,          3) /* GeneratorTimeType - Event */
     , (803702, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803702,   1, True ) /* Stuck */
     , (803702,  11, True ) /* IgnoreCollisions */
     , (803702,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803702,  41,     999) /* RegenerationInterval */
     , (803702,  43,       1) /* GeneratorRadius */
     , (803702, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803702,   1, 'ValHeelGamesBotGen') /* Name */
     , (803702,  34, 'AyanOwnedF4') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803702,   1, 0x0200026B) /* Setup */
     , (803702,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803702, 0.05, 803701, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
