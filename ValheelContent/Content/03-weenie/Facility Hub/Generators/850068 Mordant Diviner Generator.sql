DELETE FROM `weenie` WHERE `class_Id` = 850068;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (850068, 'ace850068-mordantdivinergenerator', 1, '2020-12-31 07:36:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (850068,  81,          4) /* MaxGeneratedObjects */
     , (850068,  82,          4) /* InitGeneratedObjects */
     , (850068,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (850068,   1, True ) /* Stuck */
     , (850068,  11, True ) /* IgnoreCollisions */
     , (850068,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (850068,  41,      60) /* RegenerationInterval */
     , (850068,  43,      4) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (850068,   1, 'Mordant Diviner Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (850068,   1,   33555051) /* Setup */
     , (850068,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (850068, -1, 850058, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850058) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
VALUES (850068, -1, 850059, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850059) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
VALUES (850068, -1, 850060, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850060) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
VALUES (850068, -1, 850061, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate (850061) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;