DELETE FROM `weenie` WHERE `class_Id` = 802056;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802056, 'Fragmentgen1', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802056,  81,          6) /* MaxGeneratedObjects */
     , (802056,  82,          6) /* InitGeneratedObjects */
     , (802056,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802056,   1, True ) /* Stuck */
     , (802056,  11, True ) /* IgnoreCollisions */
     , (802056,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802056,  41,      60) /* RegenerationInterval */
     , (802056,  43,      10) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802056,   1, 'Fragmentgen1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802056,   1,   33555051) /* Setup */
     , (802056,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802056, -1, 880010, 1, 6, 6, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Caulnalain Satellite Fragment (880010) (x6 up to max of 6) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
