DELETE FROM `weenie` WHERE `class_Id` = 803720;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803720, 'VHG Device Sword', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803720,  81,          1) /* MaxGeneratedObjects */
     , (803720,  82,          1) /* InitGeneratedObjects */
     , (803720,  93,       1040) /* PhysicsState - IgnoreCollisions, Gravity */
     , (803720, 100,          1) /* GeneratorType - Relative */
     , (803720, 103,          2) /* GeneratorDestructionType - Destroy */
     , (803720, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803720,   1, True ) /* Stuck */
     , (803720,  11, True ) /* IgnoreCollisions */
     , (803720,  13, False) /* Ethereal */
     , (803720,  14, True ) /* GravityStatus */
     , (803720,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803720,  41,       1) /* RegenerationInterval */
     , (803720,  43,       5) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803720,   1, 'VHG Devices Generator') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803720,   1,   33560747) /* Setup */
     , (803720,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803720, 1, 803714, 3, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Arena Heal (80107) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
