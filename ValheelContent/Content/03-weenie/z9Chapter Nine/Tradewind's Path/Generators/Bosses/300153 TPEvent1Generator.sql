DELETE FROM `weenie` WHERE `class_Id` = 300153;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300153, 'TPEventGenerator1', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300153,  81,          6) /* MaxGeneratedObjects */
     , (300153,  82,          6) /* InitGeneratedObjects */
     , (300153,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300153, 103,          2) /* GeneratorDestructionType - Destroy */
     , (300153, 142,          3) /* GeneratorTimeType - Event */
     , (300153, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300153,   1, True ) /* Stuck */
     , (300153,  11, True ) /* IgnoreCollisions */
     , (300153,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300153,  41,      999999) /* RegenerationInterval */
     , (300153,  43,       8) /* GeneratorRadius */
     , (300153, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300153,   1, 'TPEventGenerator1') /* Name */
     , (300153,  34, 'TPEvent1') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300153,   1,   33555051) /* Setup */
     , (300153,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300153, -1, 800658, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;