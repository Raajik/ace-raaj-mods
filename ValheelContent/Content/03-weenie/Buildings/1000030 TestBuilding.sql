DELETE FROM `weenie` WHERE `class_Id` = 1000030;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000030, 'Building15', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000030,   1,        128) /* ItemType - Misc */
     , (1000030,   8,        500) /* Mass */
     , (1000030,  16,         32) /* ItemUseable - Remote */
     , (1000030,  19,          0) /* Value */
     , (1000030,  38,         50) /* ResistLockpick */
     , (1000030,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000030,   1, True ) /* Stuck */
     , (1000030,   2, False) /* Open */
     , (1000030,   3, True ) /* Locked */
     , (1000030,  11, False) /* IgnoreCollisions */
     , (1000030,  12, True ) /* ReportCollisions */
     , (1000030,  13, False) /* Ethereal */
     , (1000030,  14, False) /* GravityStatus */
     , (1000030,  19, True ) /* Attackable */
     , (1000030,  24, True ) /* UiHidden */
     , (1000030,  33, False) /* ResetMessagePending */
     , (1000030,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000030,  11,     300) /* ResetInterval */
     , (1000030,  39,       0.7) /* DefaultScale */
     , (1000030,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000030,   1, 'Building10') /* Name */
     , (1000030,  14, 'Use this item to open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000030,   1,   16779527) /* Setup */
     , (1000030,   2,  150995139) /* MotionTable */
     , (1000030,   3,  536870947) /* SoundTable */
     , (1000030,   8,  100668183) /* Icon */
     , (1000030,  22,  872415275) /* PhysicsEffectTable */;
