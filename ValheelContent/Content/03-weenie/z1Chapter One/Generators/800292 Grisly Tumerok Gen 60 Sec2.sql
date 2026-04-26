DELETE FROM `weenie` WHERE `class_Id` = 800292;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800292, 'Grisly Tumerok Gen 60 Sec2', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800292,  81,          2) /* MaxGeneratedObjects */
     , (800292,  82,          2) /* InitGeneratedObjects */
     , (800292,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800292, 142,          3) /* GeneratorTimeType - Event */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800292,   1, True ) /* Stuck */
     , (800292,  11, True ) /* IgnoreCollisions */
     , (800292,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800292,  41,      60) /* RegenerationInterval */
     , (800292,  43,      5) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800292,   1, 'Grisly Tumerok Gen 60 Sec2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800292,   1,   33555051) /* Setup */
     , (800292,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800292, 1, 800290, 1, 2, 2, 1, 2, -1, 0, 0, 0, 0, 2, 0, 0.7, 0, 0, -0.7) /* Generate Grisly Tumerok Berzerker (800290) (x1 up to max of 2) - Regenerate upon PickUp - Location to (re)Generate: OnTop */;
