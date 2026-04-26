DELETE FROM `weenie` WHERE `class_Id` = 802020;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802020, 'DecrepitCavernGen2', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802020,  81,        15) /* MaxGeneratedObjects */
     , (802020,  82,        15) /* InitGeneratedObjects */
     , (802020,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802020, 103,          2) /* GeneratorDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802020,   1, True ) /* Stuck */
     , (802020,  11, True ) /* IgnoreCollisions */
     , (802020,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802020,  41,     120) /* RegenerationInterval */
     , (802020,  43,      20) /* GeneratorRadius */
     , (802020, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802020,   1, 'DecrepitCavernGen2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802020,   1,   33555051) /* Setup */
     , (802020,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802020, -1, 801088, 0, 7, 7, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Carnage Drudge (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (802020, -1, 801087, 0, 8, 8, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Corroded Stone Golem (800077) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
