DELETE FROM `weenie` WHERE `class_Id` = 1000008;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000008, 'Cave Brace', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000008,   1,        128) /* ItemType - Misc */
     , (1000008,   8,        500) /* Mass */
     , (1000008,  16,         32) /* ItemUseable - Remote */
     , (1000008,  19,          0) /* Value */
     , (1000008,  38,         50) /* ResistLockpick */
     , (1000008,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000008,   1, True ) /* Stuck */
     , (1000008,   2, False) /* Open */
     , (1000008,   3, True ) /* Locked */
     , (1000008,  11, False) /* IgnoreCollisions */
     , (1000008,  12, True ) /* ReportCollisions */
     , (1000008,  13, False) /* Ethereal */
     , (1000008,  14, False) /* GravityStatus */
     , (1000008,  19, True ) /* Attackable */
     , (1000008,  24, True ) /* UiHidden */
     , (1000008,  33, False) /* ResetMessagePending */
     , (1000008,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000008,  11,     300) /* ResetInterval */
     , (1000008,  39,       0.7) /* DefaultScale */
     , (1000008,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000008,   1, 'Cave Brace') /* Name */
     , (1000008,  14, 'Use this item to open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000008,   1,   33554946) /* Setup */
     , (1000008,   2,  150995139) /* MotionTable */
     , (1000008,   3,  536870947) /* SoundTable */
     , (1000008,   8,  100668183) /* Icon */
     , (1000008,  22,  872415275) /* PhysicsEffectTable */;
