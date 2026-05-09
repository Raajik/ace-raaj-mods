DELETE FROM `weenie` WHERE `class_Id` = 800291;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800291, 'Grisly Tumerok Gen 60 Sec', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800291,  81,          4) /* MaxGeneratedObjects */
     , (800291,  82,          4) /* InitGeneratedObjects */
     , (800291,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800291, 142,          3) /* GeneratorTimeType - Event */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800291,   1, True ) /* Stuck */
     , (800291,  11, True ) /* IgnoreCollisions */
     , (800291,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800291,  41,      30) /* RegenerationInterval */
     , (800291,  43,      5) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800291,   1, 'Grisly Tumerok Gen 60 Sec') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800291,   1,   33555051) /* Setup */
     , (800291,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800291, -1, 800032, 0, 2, 2, 1, 2, -1, 0, 0, 0, 0, 2, 0, 0.7, 0, 0, -0.7) /* Generate Grisly Tumerok Shaman (800289) (x1 up to max of 2) - Regenerate upon PickUp - Location to (re)Generate: OnTop */
     , (800291, -1, 800032, 0, 2, 2, 1, 2, -1, 0, 0, 0, 0, 2, 0, 0.7, 0, 0, -0.7) /* Generate Grisly Tumerok Shaman (800289) (x1 up to max of 2) - Regenerate upon PickUp - Location to (re)Generate: OnTop */;
