DELETE FROM `weenie` WHERE `class_Id` = 1000026;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000026, 'Pillar', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000026,   1,        128) /* ItemType - Misc */
     , (1000026,   8,        500) /* Mass */
     , (1000026,  16,         32) /* ItemUseable - Remote */
     , (1000026,  19,          0) /* Value */
     , (1000026,  38,         50) /* ResistLockpick */
     , (1000026,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000026,   1, True ) /* Stuck */
     , (1000026,   2, False) /* Open */
     , (1000026,   3, True ) /* Locked */
     , (1000026,  11, False) /* IgnoreCollisions */
     , (1000026,  12, True ) /* ReportCollisions */
     , (1000026,  13, False) /* Ethereal */
     , (1000026,  14, False) /* GravityStatus */
     , (1000026,  19, True ) /* Attackable */
     , (1000026,  24, True ) /* UiHidden */
     , (1000026,  33, False) /* ResetMessagePending */
     , (1000026,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000026,  11,     300) /* ResetInterval */
     , (1000026,  39,       1) /* DefaultScale */
     , (1000026,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000026,   1, 'Pillar') /* Name */
     , (1000026,  14, 'Use this item to open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000026,   1,   33555400) /* Setup */
     , (1000026,   2,  150995139) /* MotionTable */
     , (1000026,   3,  536870947) /* SoundTable */
     , (1000026,   8,  100668183) /* Icon */
     , (1000026,  22,  872415275) /* PhysicsEffectTable */;
