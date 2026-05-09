DELETE FROM `weenie` WHERE `class_Id` = 1000024;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000024, 'Archway', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000024,   1,        128) /* ItemType - Misc */
     , (1000024,   8,        500) /* Mass */
     , (1000024,  16,         32) /* ItemUseable - Remote */
     , (1000024,  19,          0) /* Value */
     , (1000024,  38,         50) /* ResistLockpick */
     , (1000024,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000024,   1, True ) /* Stuck */
     , (1000024,   2, False) /* Open */
     , (1000024,   3, True ) /* Locked */
     , (1000024,  11, False) /* IgnoreCollisions */
     , (1000024,  12, True ) /* ReportCollisions */
     , (1000024,  13, False) /* Ethereal */
     , (1000024,  14, False) /* GravityStatus */
     , (1000024,  19, True ) /* Attackable */
     , (1000024,  24, True ) /* UiHidden */
     , (1000024,  33, False) /* ResetMessagePending */
     , (1000024,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000024,  11,     300) /* ResetInterval */
     , (1000024,  39,       1) /* DefaultScale */
     , (1000024,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000024,   1, 'Archway') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000024,   1,   33554511) /* Setup */
     , (1000024,   2,  150995139) /* MotionTable */
     , (1000024,   3,  536870947) /* SoundTable */
     , (1000024,   8,  100668183) /* Icon */
     , (1000024,  22,  872415275) /* PhysicsEffectTable */;
