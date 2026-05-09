DELETE FROM `weenie` WHERE `class_Id` = 803323;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803323, 'DrakinRaidBossOneAddGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803323,  66,          1) /* CheckpointStatus */
     , (803323,  81,          8) /* MaxGeneratedObjects */
     , (803323,  82,          8) /* InitGeneratedObjects */
     , (803323,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803323, 103,          2) /* GeneratorDestructionType - Destroy */
     , (803323, 142,          3) /* GeneratorTimeType - Event */
     , (803323, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803323,   1, True ) /* Stuck */
     , (803323,  11, True ) /* IgnoreCollisions */
     , (803323,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803323,  41,      10) /* RegenerationInterval */
     , (803323,  43,      15) /* GeneratorRadius */
     , (803323, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803323,   1, 'DrakinRaidBossOneAddGen') /* Name */
     , (803323,  34, 'TownBossAyan') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803323,   1, 0x0200026B) /* Setup */
     , (803323,   8, 0x06001066) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803323, 1, 803324, 0, 8, 8, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Place Holder Object (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
