DELETE FROM `weenie` WHERE `class_Id` = 803298;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803298, 'Community Chest', 20, '2021-11-01 00:00:00') /* Chest */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803298,   1,        512) /* ItemType - Container */
     , (803298,   5,      10415) /* EncumbranceVal */
     , (803298,   6,        120) /* ItemsCapacity */
     , (803298,   7,        100) /* ContainersCapacity */
     , (803298,   8,       3000) /* Mass */
     , (803298,  16,         48) /* ItemUseable - ViewedRemote */
     , (803298,  19,       2500) /* Value */
     , (803298,  36,       9999) /* ResistMagic */
     , (803298,  38,       9999) /* ResistLockpick */
     , (803298,  83,          2) /* ActivationResponse - Use */
     , (803298,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */
     , (803298,  96,      55000) /* EncumbranceCapacity */
     , (803298, 100,          1) /* GeneratorType - Relative */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803298,   1, True ) /* Stuck */
     , (803298,   2, False) /* Open */
     , (803298,   3, False ) /* Locked */
     , (803298,  12, True ) /* ReportCollisions */
     , (803298,  13, False) /* Ethereal */
     , (803298,  33, False) /* ResetMessagePending */
     , (803298,  34, False) /* DefaultOpen */
     , (803298,  35, False ) /* DefaultLocked */
     /* , (803298,  86, True ) /* ChestRegenOnClose */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803298,  39,       3) /* DefaultScale */
     , (803298,  43,       1) /* GeneratorRadius */
     , (803298,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803298,   1, 'Community Chest') /* Name */
     , (803298,  14, 'Use this item to open it and see its contents.') /* Use */
     /* , (803298,  33, 'chestchorizite803298') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803298,   1,   33554556) /* Setup */
     , (803298,   2,  150994948) /* MotionTable */
     , (803298,   3,  536870945) /* SoundTable */
     , (803298,   6,   67113005) /* PaletteBase */
     , (803298,   7,  268436312) /* ClothingBase */
     , (803298,   8,  100672485) /* Icon */
     , (803298,  22,  872415275) /* PhysicsEffectTable */;