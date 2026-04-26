DELETE FROM `weenie` WHERE `class_Id` = 800669;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800669, 'WarOnWestShoreGen', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800669,  81,        75) /* MaxGeneratedObjects */
     , (800669,  82,        75) /* InitGeneratedObjects */
     , (800669,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800669, 103,          2) /* GeneratorDestructionType - Destroy */
     , (800669, 142,          3) /* GeneratorTimeType - Event */
     , (800669, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800669,   1, True ) /* Stuck */
     , (800669,  11, True ) /* IgnoreCollisions */
     , (800669,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800669,  41,  999999) /* RegenerationInterval */
     , (800669,  43,      50) /* GeneratorRadius */
     , (800669, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800669,   1, 'WarOnWestShoreGen') /* Name */
     , (800669,  34, 'WarOnWestShoreEvent') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800669,   1,   33555051) /* Setup */
     , (800669,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800669, -1, 800026, 0, 15, 15, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Carnage Drudge (800026) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (800669, -1, 800077, 0, 15, 15, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Corroded Stone Golem (800077) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (800669, -1, 300119, 0, 15, 15, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Rynthid Juggernaut (300119) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (800669, -1, 300121, 0, 15, 15, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Tormented Shadow Soldier (300121) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */
     , (800669, -1, 300027, 0, 15, 15, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Carnage Eviscerator (300027) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
