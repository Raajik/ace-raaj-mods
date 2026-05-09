DELETE FROM `weenie` WHERE `class_Id` = 300159;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300159, 'TPHazardGenerator5', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300159,  81,        150) /* MaxGeneratedObjects */
     , (300159,  82,        150) /* InitGeneratedObjects */
     , (300159,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300159, 103,          2) /* GeneratorDestructionType - Destroy */
     , (300159, 142,          3) /* GeneratorTimeType - Event */
     , (300159, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300159,   1, True ) /* Stuck */
     , (300159,  11, True ) /* IgnoreCollisions */
     , (300159,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300159,  41,      10) /* RegenerationInterval */
     , (300159,  43,      50) /* GeneratorRadius */
     , (300159, 121,       0) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300159,   1, 'TPHazardGenerator5') /* Name */
     , (300159,  34, 'TPEvent5') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300159,   1,   33555051) /* Setup */
     , (300159,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300159, -1, 800266, 0, 150, 150, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
