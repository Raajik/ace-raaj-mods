DELETE FROM `weenie` WHERE `class_Id` = 802064;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802064, 'DerangedSycGen2', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802064,  81,          6) /* MaxGeneratedObjects */
     , (802064,  82,          6) /* InitGeneratedObjects */
     , (802064,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802064,   1, True ) /* Stuck */
     , (802064,  11, True ) /* IgnoreCollisions */
     , (802064,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802064,  41,      60) /* RegenerationInterval */
     , (802064,  43,      10) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802064,   1, 'DerangedSycGen2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802064,   1,   33555051) /* Setup */
     , (802064,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802064, -1, 31339, 1, 6, 6, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Bandit Forger (31339) (x6 up to max of 6) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
