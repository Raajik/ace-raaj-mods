DELETE FROM `weenie` WHERE `class_Id` = 801527;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801527, 'DarkMukkirGen', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801527,  81,         1) /* MaxGeneratedObjects */
     , (801527,  82,         1) /* InitGeneratedObjects */
     , (801527,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801527, 103,          2) /* GeneratorDestructionType - Destroy */
     , (801527, 142,          3) /* GeneratorTimeType - Event */
     , (801527, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801527,   1, True ) /* Stuck */
     , (801527,  11, True ) /* IgnoreCollisions */
     , (801527,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801527,  41,      60) /* RegenerationInterval */
     , (801527,  43,       1) /* GeneratorRadius */
     , (801527, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801527,   1, 'DarkMukkirGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801527,   1,   33555051) /* Setup */
     , (801527,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801527, -1, 801526, 45, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;