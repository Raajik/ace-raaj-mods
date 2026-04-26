DELETE FROM `weenie` WHERE `class_Id` = 802237;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802237, 'SRCow200Gen', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802237,  81,          6) /* MaxGeneratedObjects */
     , (802237,  82,          6) /* InitGeneratedObjects */
     , (802237,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802237, 103,          2) /* GeneratorDestructionType - Destroy */
     , (802237, 142,          3) /* GeneratorTimeType - Event */
     , (802237, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802237,   1, True ) /* Stuck */
     , (802237,  11, True ) /* IgnoreCollisions */
     , (802237,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802237,  41,  999999) /* RegenerationInterval */
     , (802237,  43,       1) /* GeneratorRadius */
     , (802237, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802237,   1, 'SRCow200Gen') /* Name */
     , (802237,  34, 'SR200Active') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802237,   1,   33555051) /* Setup */
     , (802237,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802237, -1, 802236, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Shemtar's Cow (802118) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
