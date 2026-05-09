DELETE FROM `weenie` WHERE `class_Id` = 803467;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803467, 'rockblack2', 1, '2024-04-08 12:09:16') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803467,  81,          1) /* MaxGeneratedObjects */
     , (803467,  82,          1) /* InitGeneratedObjects */
     , (803467,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803467,   1, True ) /* Stuck */
     , (803467,  11, False ) /* IgnoreCollisions */
     , (803467,  12, True ) /* ReportCollisions */
     , (803467,  14, True ) /* GravityStatus */
     , (803467,  18, False) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803467,  39,     2.5) /* DefaultScale */
     , (803467,  41,       5) /* RegenerationInterval */
     , (803467,  43,      10) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803467,   1, 'rockblack2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803467,   1, 0x02001024) /* Setup */
     , (803467,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803467, -1,  7474, 1, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Kou-an Wasp (850136) (x1 up to max of 2) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
