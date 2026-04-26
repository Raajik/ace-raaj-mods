DELETE FROM `weenie` WHERE `class_Id` = 1000027;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000087, 'FractureLightning', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000087,   1,        128) /* ItemType - Misc */
     , (1000087,   8,        500) /* Mass */
     , (1000087,  16,         32) /* ItemUseable - Remote */
     , (1000087,  19,          0) /* Value */
     , (1000087,  38,         50) /* ResistLockpick */
     , (1000087,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000087,   1, True ) /* Stuck */
     , (1000087,   2, False) /* Open */
     , (1000087,   3, True ) /* Locked */
     , (1000087,  11, True) /* IgnoreCollisions */
     , (1000087,  12, True ) /* ReportCollisions */
     , (1000087,  13, False) /* Ethereal */
     , (1000087,  14, False) /* GravityStatus */
     , (1000087,  19, False ) /* Attackable */
     , (1000087,  24, True ) /* UiHidden */
     , (1000087,  33, False) /* ResetMessagePending */
     , (1000087,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000087,  11,     300) /* ResetInterval */
     , (1000087,  39,       1) /* DefaultScale */
     , (1000087,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000087,   1, 'FractureLightning') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000087,   1,   33557496) /* Setup */
     , (1000087,   2,  150995139) /* MotionTable */
     , (1000087,   3,  536870947) /* SoundTable */
     , (1000087,   8,  100668183) /* Icon */
     , (1000087,  22,  872415275) /* PhysicsEffectTable */;
