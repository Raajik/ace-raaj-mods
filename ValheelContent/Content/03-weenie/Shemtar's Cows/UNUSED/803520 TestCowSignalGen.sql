DELETE FROM `weenie` WHERE `class_Id` = 803520;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803520, 'TestCowSignalGen', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803520,  81,          6) /* MaxGeneratedObjects */
     , (803520,  82,          6) /* InitGeneratedObjects */
     , (803520,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803520, 103,          2) /* GeneratorDestructionType - Destroy */
     , (803520, 142,          3) /* GeneratorTimeType - Event */
     , (803520, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803520,   1, True ) /* Stuck */
     , (803520,  11, True ) /* IgnoreCollisions */
     , (803520,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803520,  41,  999999) /* RegenerationInterval */
     , (803520,  43,       1) /* GeneratorRadius */
     , (803520, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803520,   1, 'TestCowSignalGen') /* Name */
     /*, (803520,  34, 'TPActive') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803520,   1,   33555051) /* Setup */
     , (803520,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803520, -1, 803519, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Shemtar's Cow (802118) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
