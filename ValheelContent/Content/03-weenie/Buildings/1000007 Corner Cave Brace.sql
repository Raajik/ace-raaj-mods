DELETE FROM `weenie` WHERE `class_Id` = 1000007;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000007, 'Corner Cave Brace', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000007,   1,        128) /* ItemType - Misc */
     , (1000007,   8,        500) /* Mass */
     , (1000007,  16,         32) /* ItemUseable - Remote */
     , (1000007,  19,          0) /* Value */
     , (1000007,  38,         50) /* ResistLockpick */
     , (1000007,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000007,   1, True ) /* Stuck */
     , (1000007,   2, False) /* Open */
     , (1000007,   3, True ) /* Locked */
     , (1000007,  11, False) /* IgnoreCollisions */
     , (1000007,  12, True ) /* ReportCollisions */
     , (1000007,  13, False) /* Ethereal */
     , (1000007,  14, False) /* GravityStatus */
     , (1000007,  19, True ) /* Attackable */
     , (1000007,  24, True ) /* UiHidden */
     , (1000007,  33, False) /* ResetMessagePending */
     , (1000007,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000007,  11,     300) /* ResetInterval */
     , (1000007,  39,       0.7) /* DefaultScale */
     , (1000007,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000007,   1, 'Corner Cave Brace') /* Name */
     , (1000007,  14, 'Use this item to open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000007,   1,   33554944) /* Setup */
     , (1000007,   2,  150995139) /* MotionTable */
     , (1000007,   3,  536870947) /* SoundTable */
     , (1000007,   8,  100668183) /* Icon */
     , (1000007,  22,  872415275) /* PhysicsEffectTable */;
