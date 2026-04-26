DELETE FROM `weenie` WHERE `class_Id` = 801547;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801547, 'DOBoss5Gen', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801547,  81,         1) /* MaxGeneratedObjects */
     , (801547,  82,         1) /* InitGeneratedObjects */
     , (801547,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801547, 103,          2) /* GeneratorDestructionType - Destroy */
     , (801547, 142,          3) /* GeneratorTimeType - Event */
     , (801547, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801547,   1, True ) /* Stuck */
     , (801547,  11, True ) /* IgnoreCollisions */
     , (801547,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801547,  41,      999999) /* RegenerationInterval */
     , (801547,  43,       10) /* GeneratorRadius */
     , (801547, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801547,   1, 'DOBoss5Gen') /* Name */
     , (801547,  34, 'DOBoss5') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801547,   1,   33555051) /* Setup */
     , (801547,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801547, -1, 801542, 45, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;