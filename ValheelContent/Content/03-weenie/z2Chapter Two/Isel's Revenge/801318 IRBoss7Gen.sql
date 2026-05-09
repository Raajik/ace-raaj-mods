DELETE FROM `weenie` WHERE `class_Id` = 801318;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801318, 'IRBoss7', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801318,  81,          6) /* MaxGeneratedObjects */
     , (801318,  82,          6) /* InitGeneratedObjects */
     , (801318,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801318, 103,          2) /* GeneratorDestructionType - Destroy */
     , (801318, 142,          3) /* GeneratorTimeType - Event */
     , (801318, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801318,   1, True ) /* Stuck */
     , (801318,  11, True ) /* IgnoreCollisions */
     , (801318,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801318,  41,      999999) /* RegenerationInterval */
     , (801318,  43,       8) /* GeneratorRadius */
     , (801318, 121,       3) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801318,   1, 'IRBoss7') /* Name */
     , (801318,  34, 'IRBoss7') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801318,   1,   33555051) /* Setup */
     , (801318,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801318, -1, 801305, 0, 1, 1, 1, 1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;