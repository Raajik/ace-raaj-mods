DELETE FROM `weenie` WHERE `class_Id` = 1000009;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000009, 'Bridge', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000009,   1,        128) /* ItemType - Misc */
     , (1000009,   8,        500) /* Mass */
     , (1000009,  16,         32) /* ItemUseable - Remote */
     , (1000009,  19,          0) /* Value */
     , (1000009,  38,         50) /* ResistLockpick */
     , (1000009,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000009,   1, True ) /* Stuck */
     , (1000009,   2, False) /* Open */
     , (1000009,   3, True ) /* Locked */
     , (1000009,  11, False) /* IgnoreCollisions */
     , (1000009,  12, True ) /* ReportCollisions */
     , (1000009,  13, False) /* Ethereal */
     , (1000009,  14, False) /* GravityStatus */
     , (1000009,  19, True ) /* Attackable */
     , (1000009,  24, True ) /* UiHidden */
     , (1000009,  33, False) /* ResetMessagePending */
     , (1000009,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000009,  11,     300) /* ResetInterval */
     , (1000009,  39,       0.7) /* DefaultScale */
     , (1000009,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000009,   1, 'Bridge') /* Name */
     , (1000009,  14, 'Use this item to open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000009,   1,   33554978) /* Setup */
     , (1000009,   2,  150995139) /* MotionTable */
     , (1000009,   3,  536870947) /* SoundTable */
     , (1000009,   8,  100668183) /* Icon */
     , (1000009,  22,  872415275) /* PhysicsEffectTable */;
