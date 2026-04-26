DELETE FROM `weenie` WHERE `class_Id` = 300154;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300154, 'TPHazardGenerator2', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300154,  81,         60) /* MaxGeneratedObjects */
     , (300154,  82,         60) /* InitGeneratedObjects */
     , (300154,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300154, 103,          2) /* GeneratorDestructionType - Destroy */
     , (300154, 142,          3) /* GeneratorTimeType - Event */
     , (300154, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300154,   1, True ) /* Stuck */
     , (300154,  11, True ) /* IgnoreCollisions */
     , (300154,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300154,  41,      10) /* RegenerationInterval */
     , (300154,  43,      50) /* GeneratorRadius */
     , (300154, 121,       0) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300154,   1, 'TPHazardGenerator2') /* Name */
     , (300154,  34, 'TPEvent2') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300154,   1,   33555051) /* Setup */
     , (300154,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300154, -1, 800266, 0, 60, 60, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
