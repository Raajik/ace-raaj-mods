DELETE FROM `weenie` WHERE `class_Id` = 800672;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800672, 'CommandersGenWestShore', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800672,  81,         1) /* MaxGeneratedObjects */
     , (800672,  82,         1) /* InitGeneratedObjects */
     , (800672,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800672, 103,          2) /* GeneratorDestructionType - Destroy */
     , (800672, 142,          3) /* GeneratorTimeType - Event */
     , (800672, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800672,   1, True ) /* Stuck */
     , (800672,  11, True ) /* IgnoreCollisions */
     , (800672,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800672,  41,      999999) /* RegenerationInterval */
     , (800672,  43,      2) /* GeneratorRadius */
     , (800672, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800672,   1, 'CommandersGenWestShore') /* Name */
     , (800672,  34, 'WarOnWestShoreEvent') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800672,   1,   33555051) /* Setup */
     , (800672,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800672, -1, 800671, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
