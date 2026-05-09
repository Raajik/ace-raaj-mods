DELETE FROM `weenie` WHERE `class_Id` = 300152;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300152, 'TPHazardGenerator', 1, '2020-05-22 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300152,  81,         30) /* MaxGeneratedObjects */
     , (300152,  82,         30) /* InitGeneratedObjects */
     , (300152,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300152, 103,          2) /* GeneratorDestructionType - Destroy */
     , (300152, 142,          3) /* GeneratorTimeType - Event */
     , (300152, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300152,   1, True ) /* Stuck */
     , (300152,  11, True ) /* IgnoreCollisions */
     , (300152,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300152,  41,      10) /* RegenerationInterval */
     , (300152,  43,      50) /* GeneratorRadius */
     , (300152, 121,       0) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300152,   1, 'TPHazardGenerator') /* Name */
     , (300152,  34, 'TPEvent1') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300152,   1,   33555051) /* Setup */
     , (300152,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300152, -1, 800266, 0, 30, 30, 1, 2, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ghost of Banderling Past (5000821) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Scatter */;
