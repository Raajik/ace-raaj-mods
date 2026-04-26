DELETE FROM `weenie` WHERE `class_Id` = 803622;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803622, 'WhiteRabbitUltraGen', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803622,  81,         1) /* MaxGeneratedObjects */
     , (803622,  82,         1) /* InitGeneratedObjects */
     , (803622,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803622, 103,          2) /* GeneratorDestructionType - Destroy */
     /*, (803622, 142,          3) /* GeneratorTimeType - Event */
     , (803622, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803622,   1, True ) /* Stuck */
     , (803622,  11, True ) /* IgnoreCollisions */
     , (803622,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803622,  41,     600) /* RegenerationInterval */
     , (803622,  43,      10) /* GeneratorRadius */
     , (803622, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803622,   1, 'WhiteRabbitUltraGen') /* Name */
     /* , (803622,  34, 'BaishiOwnedF1') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803622,   1, 0x0200026B) /* Setup */
     , (803622,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803622, -1, 803621, 1, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Wasp (850136) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;