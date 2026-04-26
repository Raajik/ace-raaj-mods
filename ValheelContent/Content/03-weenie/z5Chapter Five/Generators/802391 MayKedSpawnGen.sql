DELETE FROM `weenie` WHERE `class_Id` = 802391;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802391, 'MayorKedSpawn', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802391,  81,          1) /* MaxGeneratedObjects */
     , (802391,  82,          1) /* InitGeneratedObjects */
     , (802391,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802391, 103,          2) /* GeneratorDestructionType - Destroy */
     , (802391, 142,          3) /* GeneratorTimeType - Event */
     , (802391, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802391,   1, True ) /* Stuck */
     , (802391,  11, True ) /* IgnoreCollisions */
     , (802391,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802391,  41,      999999) /* RegenerationInterval */
     , (802391,  43,       1) /* GeneratorRadius */
     , (802391, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802391,   1, 'MayorKedSpawn') /* Name */
     , (802391,  34, 'MayorKedSpawn') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802391,   1,   33555051) /* Setup */
     , (802391,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802391, -1, 802390, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;