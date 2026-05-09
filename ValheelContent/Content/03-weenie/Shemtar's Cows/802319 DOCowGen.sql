DELETE FROM `weenie` WHERE `class_Id` = 802319;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802319, 'DOCowGen', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802319,  81,          6) /* MaxGeneratedObjects */
     , (802319,  82,          6) /* InitGeneratedObjects */
     , (802319,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802319, 103,          2) /* GeneratorDestructionType - Destroy */
     , (802319, 142,          3) /* GeneratorTimeType - Event */
     , (802319, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802319,   1, True ) /* Stuck */
     , (802319,  11, True ) /* IgnoreCollisions */
     , (802319,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802319,  41,  999999) /* RegenerationInterval */
     , (802319,  43,       1) /* GeneratorRadius */
     , (802319, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802319,   1, 'DOCowGen') /* Name */
     , (802319,  34, 'DOActive') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802319,   1,   33555051) /* Setup */
     , (802319,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802319, -1, 802320, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Shemtar's Cow (802118) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
