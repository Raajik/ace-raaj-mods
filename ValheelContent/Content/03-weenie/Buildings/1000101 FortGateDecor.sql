DELETE FROM `weenie` WHERE `class_Id` = 1000101;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000101, 'fortgatedecor', 19, '2005-02-09 10:00:00') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000101,   1,        128) /* ItemType - Misc */
     , (1000101,   8,        500) /* Mass */
     , (1000101,  16,         32) /* ItemUseable - Remote */
     , (1000101,  19,          0) /* Value */
     , (1000101,  38,       2121) /* ResistLockpick */
     , (1000101,  93,         24) /* PhysicsState - ReportCollisions, IgnoreCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000101,   1, True ) /* Stuck */
     , (1000101,   2, False) /* Open */
     , (1000101,  12, True ) /* ReportCollisions */
     , (1000101,  13, False) /* Ethereal */
     , (1000101,  14, False) /* GravityStatus */
     , (1000101,  24, True ) /* UiHidden */
     , (1000101,  33, False) /* ResetMessagePending */
     , (1000101,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000101,  11,       8) /* ResetInterval */
     , (1000101,  39,       2) /* Default Scale */
     , (1000101,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000101,   1, 'Gate') /* Name */
     , (1000101,  14, 'Use this item to open it.') /* Use */
     , (1000101,  16, 'A strong gate, used in a fort.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000101,   1,   33558404) /* Setup */
     , (1000101,   2,  150995242) /* MotionTable */
     , (1000101,   3,  536871051) /* SoundTable */
     , (1000101,   8,  100668183) /* Icon */
     , (1000101,  22,  872415275) /* PhysicsEffectTable */;
