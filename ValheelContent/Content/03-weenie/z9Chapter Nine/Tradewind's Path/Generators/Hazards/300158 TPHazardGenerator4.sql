DELETE FROM `weenie` WHERE `class_Id` = 300158;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300158, 'TPHazardGenerator4', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300158,  81,        120) /* MaxGeneratedObjects */
     , (300158,  82,        120) /* InitGeneratedObjects */
     , (300158,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300158, 103,          2) /* GeneratorDestructionType - Destroy */
     , (300158, 142,          3) /* GeneratorTimeType - Event */
     , (300158, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300158,   1, True ) /* Stuck */
     , (300158,  11, True ) /* IgnoreCollisions */
     , (300158,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300158,  41,      10) /* RegenerationInterval */
     , (300158,  43,      50) /* GeneratorRadius */
     , (300158, 121,       0) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300158,   1, 'TPHazardGenerator4') /* Name */
     , (300158,  34, 'TPEvent4') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300158,   1,   33555051) /* Setup */
     , (300158,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300158, -1, 800266, 0, 120, 120, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
