DELETE FROM `weenie` WHERE `class_Id` = 300161;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300161, 'TPEventGenerator3', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300161,  81,          6) /* MaxGeneratedObjects */
     , (300161,  82,          6) /* InitGeneratedObjects */
     , (300161,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300161, 103,          2) /* GeneratorDestructionType - Destroy */
     , (300161, 142,          3) /* GeneratorTimeType - Event */
     , (300161, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300161,   1, True ) /* Stuck */
     , (300161,  11, True ) /* IgnoreCollisions */
     , (300161,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300161,  41,      999999) /* RegenerationInterval */
     , (300161,  43,       8) /* GeneratorRadius */
     , (300161, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300161,   1, 'TPEventGenerator3') /* Name */
     , (300161,  34, 'TPEvent3') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300161,   1,   33555051) /* Setup */
     , (300161,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300161, -1, 800660, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;