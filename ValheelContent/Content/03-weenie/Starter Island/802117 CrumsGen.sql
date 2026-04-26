DELETE FROM `weenie` WHERE `class_Id` = 802117;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802117, 'CrumsGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802117,  81,          1) /* MaxGeneratedObjects */
     , (802117,  82,          1) /* InitGeneratedObjects */
     , (802117,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802117,   1, True ) /* Stuck */
     , (802117,  11, True ) /* IgnoreCollisions */
     , (802117,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802117,  41,      60) /* RegenerationInterval */
     , (802117,  43,       1) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802117,   1, 'CrumsGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802117,   1,   33555051) /* Setup */
     , (802117,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802117, -1, 880021, 1, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Wasp Keeper (880006) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
