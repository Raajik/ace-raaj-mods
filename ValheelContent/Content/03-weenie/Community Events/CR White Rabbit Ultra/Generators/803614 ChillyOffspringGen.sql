DELETE FROM `weenie` WHERE `class_Id` = 803614;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803614, 'ChillyOffspringGen', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803614,  81,         5) /* MaxGeneratedObjects */
     , (803614,  82,         5) /* InitGeneratedObjects */
     , (803614,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803614, 103,          2) /* GeneratorDestructionType - Destroy */
     /*, (803614, 142,          3) /* GeneratorTimeType - Event */
     , (803614, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803614,   1, True ) /* Stuck */
     , (803614,  11, True ) /* IgnoreCollisions */
     , (803614,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803614,  41,      30) /* RegenerationInterval */
     , (803614,  43,      10) /* GeneratorRadius */
     , (803614, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803614,   1, 'ChillyOffspringGen') /* Name */
     /* , (803614,  34, 'BaishiOwnedF1') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803614,   1, 0x0200026B) /* Setup */
     , (803614,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803614, -1, 803613, 1, 5, 5, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Wasp (850136) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;