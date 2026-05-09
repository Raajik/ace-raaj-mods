DELETE FROM `weenie` WHERE `class_Id` = 300187;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300187, 'fortgate', 19, '2005-02-09 10:00:00') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300187,   1,        128) /* ItemType - Misc */
     , (300187,   8,        500) /* Mass */
     , (300187,  16,         32) /* ItemUseable - Remote */
     , (300187,  19,          0) /* Value */
     , (300187,  38,       2121) /* ResistLockpick */
     , (300187,  93,         24) /* PhysicsState - ReportCollisions, IgnoreCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300187,   1, True ) /* Stuck */
     , (300187,   2, False) /* Open */
     , (300187,  12, True ) /* ReportCollisions */
     , (300187,  13, False) /* Ethereal */
     , (300187,  14, False) /* GravityStatus */
     , (300187,  33, False) /* ResetMessagePending */
     , (300187,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300187,  11,       8) /* ResetInterval */
     , (300187,  39,     1.2) /* DefaultScale */
     , (300187,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300187,   1, 'Gate') /* Name */
     , (300187,  14, 'Use this item to open it.') /* Use */
     , (300187,  16, 'A strong gate, used in a fort.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300187,   1,   33558404) /* Setup */
     , (300187,   2,  150995242) /* MotionTable */
     , (300187,   3,  536871051) /* SoundTable */
     , (300187,   8,  100668183) /* Icon */
     , (300187,  22,  872415275) /* PhysicsEffectTable */;
