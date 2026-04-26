DELETE FROM `weenie` WHERE `class_Id` = 801531;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801531, 'ImperviousShardGen', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801531,  66,          1) /* CheckpointStatus */
     , (801531,  81,         3) /* MaxGeneratedObjects */
     , (801531,  82,         3) /* InitGeneratedObjects */
     , (801531,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801531,   1, True ) /* Stuck */
     , (801531,  11, True ) /* IgnoreCollisions */
     , (801531,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801531,  41,      60) /* RegenerationInterval */
     , (801531,  43,      15) /* GeneratorRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801531,   1, 'ImperviousShardGen') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801531,   1,   33555051) /* Setup */
     , (801531,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801531, -1, 801529, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Impervious Shard (801529) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801531, -1, 801529, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Impervious Shard (801529) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801531, -1, 801529, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Impervious Shard (801529) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801531, -1, 801529, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Impervious Shard (801529) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801531, -1, 801529, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Impervious Shard (801529) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801531, -1, 801529, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Impervious Shard (801529) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801531, -1, 801529, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Impervious Shard (801529) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801531, -1, 801529, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Impervious Shard (801529) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801531, -1, 801529, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Impervious Shard (801529) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (801531, -1, 801529, 0, 3, 3, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Impervious Shard (801529) (x3 up to max of 3) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
