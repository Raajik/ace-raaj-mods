DELETE FROM `weenie` WHERE `class_Id` = 801319;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801319, 'IRBoss8', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801319,  81,          6) /* MaxGeneratedObjects */
     , (801319,  82,          6) /* InitGeneratedObjects */
     , (801319,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801319, 103,          2) /* GeneratorDestructionType - Destroy */
     , (801319, 142,          3) /* GeneratorTimeType - Event */
     , (801319, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801319,   1, True ) /* Stuck */
     , (801319,  11, True ) /* IgnoreCollisions */
     , (801319,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801319,  41,      999999) /* RegenerationInterval */
     , (801319,  43,       8) /* GeneratorRadius */
     , (801319, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801319,   1, 'IRBoss8') /* Name */
     , (801319,  34, 'IRBoss8') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801319,   1,   33555051) /* Setup */
     , (801319,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801319, -1, 801306, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;