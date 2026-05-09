DELETE FROM `weenie` WHERE `class_Id` = 1000010;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000010, 'Bridge End', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000010,   1,        128) /* ItemType - Misc */
     , (1000010,   8,        500) /* Mass */
     , (1000010,  16,         32) /* ItemUseable - Remote */
     , (1000010,  19,          0) /* Value */
     , (1000010,  38,         50) /* ResistLockpick */
     , (1000010,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000010,   1, True ) /* Stuck */
     , (1000010,   2, False) /* Open */
     , (1000010,   3, True ) /* Locked */
     , (1000010,  11, False) /* IgnoreCollisions */
     , (1000010,  12, True ) /* ReportCollisions */
     , (1000010,  13, False) /* Ethereal */
     , (1000010,  14, False) /* GravityStatus */
     , (1000010,  19, True ) /* Attackable */
     , (1000010,  24, True ) /* UiHidden */
     , (1000010,  33, False) /* ResetMessagePending */
     , (1000010,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000010,  11,     300) /* ResetInterval */
     , (1000010,  39,       0.7) /* DefaultScale */
     , (1000010,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000010,   1, 'Bridge End') /* Name */
     , (1000010,  14, 'Use this item to open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000010,   1,   33554980) /* Setup */
     , (1000010,   2,  150995139) /* MotionTable */
     , (1000010,   3,  536870947) /* SoundTable */
     , (1000010,   8,  100668183) /* Icon */
     , (1000010,  22,  872415275) /* PhysicsEffectTable */;
