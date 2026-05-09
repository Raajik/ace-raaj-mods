DELETE FROM `weenie` WHERE `class_Id` = 300163;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300163, 'TPEventGenerator5', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300163,  81,          6) /* MaxGeneratedObjects */
     , (300163,  82,          6) /* InitGeneratedObjects */
     , (300163,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300163, 103,          2) /* GeneratorDestructionType - Destroy */
     , (300163, 142,          3) /* GeneratorTimeType - Event */
     , (300163, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300163,   1, True ) /* Stuck */
     , (300163,  11, True ) /* IgnoreCollisions */
     , (300163,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300163,  41,      999999) /* RegenerationInterval */
     , (300163,  43,       8) /* GeneratorRadius */
     , (300163, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300163,   1, 'TPEventGenerator5') /* Name */
     , (300163,  34, 'TPEvent5') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300163,   1,   33555051) /* Setup */
     , (300163,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300163, -1, 800662, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;