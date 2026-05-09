DELETE FROM `weenie` WHERE `class_Id` = 1000029;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000029, 'Orange Smoke2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000029,   1,        128) /* ItemType - Misc */
     , (1000029,   8,        500) /* Mass */
     , (1000029,  16,         32) /* ItemUseable - Remote */
     , (1000029,  19,          0) /* Value */
     , (1000029,  38,         50) /* ResistLockpick */
     , (1000029,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000029,   1, True ) /* Stuck */
     , (1000029,   2, False) /* Open */
     , (1000029,   3, True ) /* Locked */
     , (1000029,  11, False) /* IgnoreCollisions */
     , (1000029,  12, True ) /* ReportCollisions */
     , (1000029,  13, False) /* Ethereal */
     , (1000029,  14, False) /* GravityStatus */
     , (1000029,  19, True ) /* Attackable */
     , (1000029,  24, True ) /* UiHidden */
     , (1000029,  33, False) /* ResetMessagePending */
     , (1000029,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000029,  11,     300) /* ResetInterval */
     , (1000029,  39,       1) /* DefaultScale */
     , (1000029,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000029,   1, 'Orange Smoke') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000029,   1,   33556116) /* Setup */
     , (1000029,   2,  150995139) /* MotionTable */
     , (1000029,   3,  536870947) /* SoundTable */
     , (1000029,   8,  100668183) /* Icon */
     , (1000029,  22,  872415275) /* PhysicsEffectTable */;
