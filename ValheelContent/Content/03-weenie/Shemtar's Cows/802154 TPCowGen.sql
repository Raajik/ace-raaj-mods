DELETE FROM `weenie` WHERE `class_Id` = 802154;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802154, 'TPCowGen', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802154,  81,          6) /* MaxGeneratedObjects */
     , (802154,  82,          6) /* InitGeneratedObjects */
     , (802154,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802154, 103,          2) /* GeneratorDestructionType - Destroy */
     , (802154, 142,          3) /* GeneratorTimeType - Event */
     , (802154, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802154,   1, True ) /* Stuck */
     , (802154,  11, True ) /* IgnoreCollisions */
     , (802154,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802154,  41,  999999) /* RegenerationInterval */
     , (802154,  43,       1) /* GeneratorRadius */
     , (802154, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802154,   1, 'TPCowGen') /* Name */
     , (802154,  34, 'TPActive') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802154,   1,   33555051) /* Setup */
     , (802154,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802154, -1, 802152, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Shemtar's Cow (802118) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
