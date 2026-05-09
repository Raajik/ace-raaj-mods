DELETE FROM `weenie` WHERE `class_Id` = 801533;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801533, 'MountainThroneShardGen', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801533,  81,          1) /* MaxGeneratedObjects */
     , (801533,  82,          1) /* InitGeneratedObjects */
     , (801533,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801533, 103,          2) /* GeneratorDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801533,   1, True ) /* Stuck */
     , (801533,  11, True ) /* IgnoreCollisions */
     , (801533,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801533,  41,     120) /* RegenerationInterval */
     , (801533,  43,      10) /* GeneratorRadius */
     , (801533, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801533,   1, 'MountainThroneShardGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801533,   1,   33555051) /* Setup */
     , (801533,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801533, -1, 801532, 45, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Mountain Throne Shard (801532) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: OnTop */;
