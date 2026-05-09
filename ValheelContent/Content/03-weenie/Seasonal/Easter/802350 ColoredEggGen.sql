DELETE FROM `weenie` WHERE `class_Id` = 802350;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802350, 'ColoredEggGen', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802350,  81,          6) /* MaxGeneratedObjects */
     , (802350,  82,          6) /* InitGeneratedObjects */
     , (802350,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802350, 103,          2) /* GeneratorDestructionType - Destroy */
     , (802350, 142,          3) /* GeneratorTimeType - Event */
     , (802350, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802350,   1, True ) /* Stuck */
     , (802350,  11, True ) /* IgnoreCollisions */
     , (802350,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802350,  41,      60) /* RegenerationInterval */
     , (802350,  43,      50) /* GeneratorRadius */
     , (802350, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802350,   1, 'ColoredEggGen') /* Name */
     , (802350,  34, 'SpringEasterEggs') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802350,   1,   33555051) /* Setup */
     , (802350,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802350, -1, 802349, 0, 6, 6, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Shemtar's Cow (802118) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
