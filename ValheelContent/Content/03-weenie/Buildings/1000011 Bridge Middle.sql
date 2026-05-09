DELETE FROM `weenie` WHERE `class_Id` = 1000011;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000011, 'Bridge Middle', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000011,   1,        128) /* ItemType - Misc */
     , (1000011,   8,        500) /* Mass */
     , (1000011,  16,         32) /* ItemUseable - Remote */
     , (1000011,  19,          0) /* Value */
     , (1000011,  38,         50) /* ResistLockpick */
     , (1000011,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000011,   1, True ) /* Stuck */
     , (1000011,   2, False) /* Open */
     , (1000011,   3, True ) /* Locked */
     , (1000011,  11, False) /* IgnoreCollisions */
     , (1000011,  12, True ) /* ReportCollisions */
     , (1000011,  13, False) /* Ethereal */
     , (1000011,  14, False) /* GravityStatus */
     , (1000011,  19, True ) /* Attackable */
     , (1000011,  24, True ) /* UiHidden */
     , (1000011,  33, False) /* ResetMessagePending */
     , (1000011,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000011,  11,     300) /* ResetInterval */
     , (1000011,  39,       0.7) /* DefaultScale */
     , (1000011,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000011,   1, 'Bridge Middle') /* Name */
     , (1000011,  14, 'Use this item to open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000011,   1,   33554981) /* Setup */
     , (1000011,   2,  150995139) /* MotionTable */
     , (1000011,   3,  536870947) /* SoundTable */
     , (1000011,   8,  100668183) /* Icon */
     , (1000011,  22,  872415275) /* PhysicsEffectTable */;
