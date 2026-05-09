DELETE FROM `weenie` WHERE `class_Id` = 801300;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801300, 'CCGen1', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801300,  81,         30) /* MaxGeneratedObjects */
     , (801300,  82,         30) /* InitGeneratedObjects */
     , (801300,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801300, 103,          2) /* GeneratorDestructionType - Destroy */
     , (801300, 142,          3) /* GeneratorTimeType - Event */
     , (801300, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801300,   1, True ) /* Stuck */
     , (801300,  11, True ) /* IgnoreCollisions */
     , (801300,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801300,  41,      60) /* RegenerationInterval */
     , (801300,  43,      30) /* GeneratorRadius */
     , (801300, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801300,   1, 'CCGen1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801300,   1,   33555051) /* Setup */
     , (801300,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801300, -1, 31313, 0, 30, 30, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Stomper (31313) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
