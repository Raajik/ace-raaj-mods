DELETE FROM `weenie` WHERE `class_Id` = 87154;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (87154, 'ace87154-monsterfightsbettingcagegenerator', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (87154,  81,          8) /* MaxGeneratedObjects */
     , (87154,  82,          8) /* InitGeneratedObjects */
     , (87154,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (87154, 103,          2) /* GeneratorDestructionType - Destroy */
     , (87154, 142,          3) /* GeneratorTimeType - Event */
     , (87154, 145,          2) /* GeneratorEndDestructionType - Destroy */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (87154,   1, True ) /* Stuck */
     , (87154,  11, True ) /* IgnoreCollisions */
     , (87154,  18, True ) /* Visibility */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (87154,  41,  999999) /* RegenerationInterval */
     , (87154,  43,       4) /* GeneratorRadius */
     , (87154, 121,       1) /* GeneratorInitialDelay */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (87154,   1, 'Monster Fights Betting Cage Generator') /* Name */
     , (87154,  34, 'MonsterFightsBettingevent') /* GeneratorEvent */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (87154,   1,   33555051) /* Setup */
     , (87154,   8,  100667494) /* Icon */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (87154, -1, 38981, 1, 1, 1, 1, 4, 0, 0, 0, 0x576B011D, 51.6, -64, 0.005000, -1.000000, 0, 0, 0) /* Generate Kerthump the Ear Taker (38981) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */
     , (87154, -1, 38982, 1, 1, 1, 1, 4, 0, 0, 0, 0x576B011D, 48.3, -64, 0.005000, -1.000000, 0, 0, 0) /* Generate Chief Grogbash (38982) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */
     , (87154, -1, 38983, 1, 1, 1, 1, 4, 0, 0, 0, 0x576B011D, 45.0, -64, 0.005000, -1.000000, 0, 0, 0) /* Generate Champion Bulgara (38983) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */
     , (87154, -1, 38984, 1, 1, 1, 1, 4, 0, 0, 0, 0x576B0117, 41.6, -64, 0.005000, -1.000000, 0, 0, 0) /* Generate Hea Tnakarea (38984) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */
     , (87154, -1, 38985, 1, 1, 1, 1, 4, 0, 0, 0, 0x576B0117, 38.4, -64, 0.005000, -1.000000, 0, 0, 0) /* Generate Warrior Corthos (38985) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */
     , (87154, -1, 38986, 1, 1, 1, 1, 4, 0, 0, 0, 0x576B0111, 35.0, -64, 0.005000, -1.000000, 0, 0, 0) /* Generate Darcusch the Barbarian (38986) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */
     , (87154, -1, 38987, 1, 1, 1, 1, 4, 0, 0, 0, 0x576B0111, 31.6, -64, 0.005000, -1.000000, 0, 0, 0) /* Generate Korgluuk of Bur (38987) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */
     , (87154, -1, 38988, 1, 1, 1, 1, 4, 0, 0, 0, 0x576B0111, 28.3, -64, 0.005000, -1.000000, 0, 0, 0) /* Generate Glormigoth (38988) (x1 up to max of 1) - Regenerate upon Destruction - Location to (re)Generate: Specific */;
