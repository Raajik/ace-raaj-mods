DELETE FROM `weenie` WHERE `class_Id` = 803636;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803636, 'UltraCasinoChest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803636,   1,        512) /* ItemType - Container */
     , (803636,   5,       9000) /* EncumbranceVal */
     , (803636,   6,         -1) /* ItemsCapacity */
     , (803636,   7,         -1) /* ContainersCapacity */
     , (803636,   8,       3000) /* Mass */
     , (803636,  16,         48) /* ItemUseable - ViewedRemote */
     , (803636,  19,       2500) /* Value */
     , (803636,  37,         30) /* ResistItemAppraisal */
     , (803636,  38,       9999) /* ResistLockpick */
     , (803636,  81,          4) /* MaxGeneratedObjects */
     , (803636,  82,          4) /* InitGeneratedObjects */
     , (803636,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (803636,  96,        500) /* EncumbranceCapacity */
     , (803636, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803636,   1, True ) /* Stuck */
     , (803636,   2, False) /* Open */
     , (803636,   3, True ) /* Locked */
     , (803636,  12, True ) /* ReportCollisions */
     , (803636,  13, False) /* Ethereal */
     , (803636,  19, True ) /* Attackable */
     , (803636,  33, False) /* ResetMessagePending */
     , (803636,  34, False) /* DefaultOpen */
     , (803636,  35, True ) /* DefaultLocked */
     , (803636,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803636,  39,       3) /* DefaultScale */
     , (803636,  41,      60) /* RegenerationInterval */
     , (803636,  43,       1) /* GeneratorRadius */
     , (803636,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803636,   1, 'Ultra Casino Chest') /* Name */
     , (803636,  12, 'ultracasinokey') /* LockCode */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803636,   1,   33557027) /* Setup */
     , (803636,   2,  150994948) /* MotionTable */
     , (803636,   3,  536870945) /* SoundTable */
     , (803636,   7,  268436160) /* ClothingBase */
     , (803636,   8,  100671480) /* Icon */
     , (803636,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_generator` (`object_Id`, `probability`, `weenie_Class_Id`, `delay`, `init_Create`, `max_Create`, `when_Create`, `where_Create`, `stack_Size`, `palette_Id`, `shade`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803636, -1, 5000, 1, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (803636, -1, 5000, 1, 1, 1, 2, 72, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate UNKNOWN RANDOMLY GENERATED TREASURE (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: ContainTreasure */
     , (803636, 1, 803637, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ornate Gear Marker (43142) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.0025, 800140, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Foolproof (36619) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.005, 800337, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Foolproof (36620) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.0075, 800037, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Foolproof (36621) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.01, 803571, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Foolproof (36622) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.0125, 803570, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Foolproof (36623) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.015, 803572, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Foolproof (36624) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.0175, 803523, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Foolproof (36625) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.02, 803522, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Foolproof (36634) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.0225, 803521, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Foolproof (36626) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.025, 803254, 1, 1, 1, 2, 8, 500, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Foolproof (36627) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.0275, 801910, 1, 1, 1, 2, 8, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Foolproof (36628) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.03, 20630, 1, 1, 1, 2, 8, 250, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Foolproof (36635) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.0325, 802704, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Foolproof (36636) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.1075, 802713, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ancient Mhoire Coin (35383) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.2075, 802712, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Colosseum Coin (36518) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.2825, 802711, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Small Olthoi Venom Sac (36376) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.4, 802710, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate A'nekshay Token (44240) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.45, 44720, 1, 1, 1, 2, 8, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Gem of Greater Luminance (44720) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.7, 801690, 1, 1, 1, 2, 8, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Mana Forge Key (38456) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */
     , (803636, 0.875, 802614, 1, 1, 1, 2, 8, 250, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0) /* Generate Ancient Falatacot Trinket (34277) (x1 up to max of 1) - Regenerate upon PickUp - Location to (re)Generate: Contain */;

