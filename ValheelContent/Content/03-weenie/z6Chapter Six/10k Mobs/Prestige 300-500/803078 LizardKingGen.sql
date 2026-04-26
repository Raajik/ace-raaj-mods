DELETE FROM `weenie` WHERE `class_Id` = 803078;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803078, 'LizardKingGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803078,  66,          1) /* CheckpointStatus */
     , (803078,  81,          1) /* MaxGeneratedObjects */
     , (803078,  82,          1) /* InitGeneratedObjects */
     , (803078,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803078, 103,          2) /* GeneratorDestructionType - Destroy */
     , (803078, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803078,   1, True ) /* Stuck */
     , (803078,  11, True ) /* IgnoreCollisions */
     , (803078,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803078,  41,     120) /* RegenerationInterval */
     , (803078,  43,       1) /* GeneratorRadius */
     , (803078, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803078,   1, 'LizardKingGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803078,   1, 0x0200026B) /* Setup */
     , (803078,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803078, 1, 803077, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
