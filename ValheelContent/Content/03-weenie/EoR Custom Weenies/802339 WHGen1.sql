DELETE FROM `weenie` WHERE `class_Id` = 802339;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802339, 'WHGen1', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802339,  81,          10) /* MaxGeneratedObjects */
     , (802339,  82,          10) /* InitGeneratedObjects */
     , (802339,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802339,   1, True ) /* Stuck */
     , (802339,  11, True ) /* IgnoreCollisions */
     , (802339,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802339,  41,      30) /* RegenerationInterval */
     , (802339,  43,      30) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802339,   1, 'WHGen1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802339,   1,   33555051) /* Setup */
     , (802339,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802339, 1, 30686, 1, 5, 5, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Bronze Armoredillo (19) (x4 up to max of 4) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (802339, 1, 30687, 1, 5, 5, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Bronze Armoredillo (19) (x4 up to max of 4) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
