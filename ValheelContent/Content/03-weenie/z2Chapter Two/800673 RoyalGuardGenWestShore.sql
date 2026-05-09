DELETE FROM `weenie` WHERE `class_Id` = 800673;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800673, 'RoyalGuardGen', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800673,  81,          1) /* MaxGeneratedObjects */
     , (800673,  82,          1) /* InitGeneratedObjects */
     , (800673,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800673, 103,          2) /* GeneratorDestructionType - Destroy */
     , (800673, 142,          3) /* GeneratorTimeType - Event */
     , (800673, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800673,   1, True ) /* Stuck */
     , (800673,  11, True ) /* IgnoreCollisions */
     , (800673,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800673,  41,      999999) /* RegenerationInterval */
     , (800673,  43,       1) /* GeneratorRadius */
     , (800673, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800673,   1, 'RoyalGuardGen') /* Name */
     , (800673,  34, 'WarOnWestShoreEvent') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800673,   1,   33555051) /* Setup */
     , (800673,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800673, -1, 43007, 0, 1, 1, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
