DELETE FROM `weenie` WHERE `class_Id` = 804029;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804029, 'ReainmatedVirindiGen', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804029,  81,          2) /* MaxGeneratedObjects */
     , (804029,  82,          2) /* InitGeneratedObjects */
     , (804029,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804029,   1, True ) /* Stuck */
     , (804029,  11, True ) /* IgnoreCollisions */
     , (804029,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804029,  41,      45) /* RegenerationInterval */
     , (804029,  43,      10) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804029,   1, 'ReainmatedVirindiGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804029,   1, 0x0200026B) /* Setup */
     , (804029,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (804029, -1, 804019, 1, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Wasp (850136) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;