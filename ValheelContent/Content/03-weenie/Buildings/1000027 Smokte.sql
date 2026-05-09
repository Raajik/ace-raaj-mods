DELETE FROM `weenie` WHERE `class_Id` = 1000027;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000027, 'Smoke', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000027,   1,        128) /* ItemType - Misc */
     , (1000027,   8,        500) /* Mass */
     , (1000027,  16,         32) /* ItemUseable - Remote */
     , (1000027,  19,          0) /* Value */
     , (1000027,  38,         50) /* ResistLockpick */
     , (1000027,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000027,   1, True ) /* Stuck */
     , (1000027,   2, False) /* Open */
     , (1000027,   3, True ) /* Locked */
     , (1000027,  11, False) /* IgnoreCollisions */
     , (1000027,  12, True ) /* ReportCollisions */
     , (1000027,  13, False) /* Ethereal */
     , (1000027,  14, False) /* GravityStatus */
     , (1000027,  19, True ) /* Attackable */
     , (1000027,  24, True ) /* UiHidden */
     , (1000027,  33, False) /* ResetMessagePending */
     , (1000027,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000027,  11,     300) /* ResetInterval */
     , (1000027,  39,       1) /* DefaultScale */
     , (1000027,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000027,   1, 'Smoke') /* Name */
     , (1000027,  14, 'Use this item to open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000027,   1,   33555460) /* Setup */
     , (1000027,   2,  150995139) /* MotionTable */
     , (1000027,   3,  536870947) /* SoundTable */
     , (1000027,   8,  100668183) /* Icon */
     , (1000027,  22,  872415275) /* PhysicsEffectTable */;
