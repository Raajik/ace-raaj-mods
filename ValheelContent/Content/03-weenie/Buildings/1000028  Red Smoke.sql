DELETE FROM `weenie` WHERE `class_Id` = 1000028;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000028, 'Red Smoke', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000028,   1,        128) /* ItemType - Misc */
     , (1000028,   8,        500) /* Mass */
     , (1000028,  16,         32) /* ItemUseable - Remote */
     , (1000028,  19,          0) /* Value */
     , (1000028,  38,         50) /* ResistLockpick */
     , (1000028,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000028,   1, True ) /* Stuck */
     , (1000028,   2, False) /* Open */
     , (1000028,   3, True ) /* Locked */
     , (1000028,  11, False) /* IgnoreCollisions */
     , (1000028,  12, True ) /* ReportCollisions */
     , (1000028,  13, False) /* Ethereal */
     , (1000028,  14, False) /* GravityStatus */
     , (1000028,  19, True ) /* Attackable */
     , (1000028,  24, True ) /* UiHidden */
     , (1000028,  33, False) /* ResetMessagePending */
     , (1000028,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000028,  11,     300) /* ResetInterval */
     , (1000028,  39,       1) /* DefaultScale */
     , (1000028,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000028,   1, 'Red Smoke') /* Name */
     , (1000028,  14, 'Use this item to open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000028,   1,   33556094) /* Setup */
     , (1000028,   2,  150995139) /* MotionTable */
     , (1000028,   3,  536870947) /* SoundTable */
     , (1000028,   8,  100668183) /* Icon */
     , (1000028,  22,  872415275) /* PhysicsEffectTable */;
