DELETE FROM `weenie` WHERE `class_Id` = 802119;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802119, 'IRCowGen', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802119,  81,          6) /* MaxGeneratedObjects */
     , (802119,  82,          6) /* InitGeneratedObjects */
     , (802119,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802119, 103,          2) /* GeneratorDestructionType - Destroy */
     , (802119, 142,          3) /* GeneratorTimeType - Event */
     , (802119, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802119,   1, True ) /* Stuck */
     , (802119,  11, True ) /* IgnoreCollisions */
     , (802119,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802119,  41,  999999) /* RegenerationInterval */
     , (802119,  43,       1) /* GeneratorRadius */
     , (802119, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802119,   1, 'IRCowGen') /* Name */
     , (802119,  34, 'IRActive') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802119,   1,   33555051) /* Setup */
     , (802119,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802119, -1, 802118, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Shemtar's Cow (802118) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
