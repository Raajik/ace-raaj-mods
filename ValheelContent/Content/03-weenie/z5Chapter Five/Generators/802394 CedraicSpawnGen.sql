DELETE FROM `weenie` WHERE `class_Id` = 802394;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802394, 'CedraicSpawn', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802394,  81,          1) /* MaxGeneratedObjects */
     , (802394,  82,          1) /* InitGeneratedObjects */
     , (802394,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802394, 103,          2) /* GeneratorDestructionType - Destroy */
     , (802394, 142,          3) /* GeneratorTimeType - Event */
     , (802394, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802394,   1, True ) /* Stuck */
     , (802394,  11, True ) /* IgnoreCollisions */
     , (802394,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802394,  41,      999999) /* RegenerationInterval */
     , (802394,  43,       1) /* GeneratorRadius */
     , (802394, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802394,   1, 'CedraicSpawn') /* Name */
     , (802394,  34, 'CedraicSpawn') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802394,   1,   33555051) /* Setup */
     , (802394,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802394, -1, 802392, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;