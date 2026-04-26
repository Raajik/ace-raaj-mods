DELETE FROM `weenie` WHERE `class_Id` = 300162;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300162, 'TPEventGenerator4', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300162,  81,          6) /* MaxGeneratedObjects */
     , (300162,  82,          6) /* InitGeneratedObjects */
     , (300162,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300162, 103,          2) /* GeneratorDestructionType - Destroy */
     , (300162, 142,          3) /* GeneratorTimeType - Event */
     , (300162, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300162,   1, True ) /* Stuck */
     , (300162,  11, True ) /* IgnoreCollisions */
     , (300162,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300162,  41,      999999) /* RegenerationInterval */
     , (300162,  43,       8) /* GeneratorRadius */
     , (300162, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300162,   1, 'TPEventGenerator4') /* Name */
     , (300162,  34, 'TPEvent4') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300162,   1,   33555051) /* Setup */
     , (300162,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300162, -1, 800661, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;