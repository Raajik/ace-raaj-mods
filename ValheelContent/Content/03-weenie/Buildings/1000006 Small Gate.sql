DELETE FROM `weenie` WHERE `class_Id` = 1000006;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000006, 'Small Gate', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000006,   1,        128) /* ItemType - Misc */
     , (1000006,   8,        500) /* Mass */
     , (1000006,  16,         32) /* ItemUseable - Remote */
     , (1000006,  19,          0) /* Value */
     , (1000006,  38,         50) /* ResistLockpick */
     , (1000006,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000006,   1, True ) /* Stuck */
     , (1000006,   2, False) /* Open */
     , (1000006,   3, True ) /* Locked */
     , (1000006,  11, False) /* IgnoreCollisions */
     , (1000006,  12, True ) /* ReportCollisions */
     , (1000006,  13, False) /* Ethereal */
     , (1000006,  14, False) /* GravityStatus */
     , (1000006,  19, True ) /* Attackable */
     , (1000006,  24, True ) /* UiHidden */
     , (1000006,  33, False) /* ResetMessagePending */
     , (1000006,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000006,  11,     300) /* ResetInterval */
     , (1000006,  39,     0.7) /* DefaultScale */
     , (1000006,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000006,   1, 'Small Gate') /* Name */
     , (1000006,  14, 'Use this item to open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000006,   1,   33557118) /* Setup */
     , (1000006,   2,  150995139) /* MotionTable */
     , (1000006,   3,  536870947) /* SoundTable */
     , (1000006,   8,  100668183) /* Icon */
     , (1000006,  22,  872415275) /* PhysicsEffectTable */;
