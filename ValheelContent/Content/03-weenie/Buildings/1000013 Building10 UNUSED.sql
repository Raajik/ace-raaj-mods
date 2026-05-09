DELETE FROM `weenie` WHERE `class_Id` = 1000013;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000013, 'Building10', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000013,   1,        128) /* ItemType - Misc */
     , (1000013,   8,        500) /* Mass */
     , (1000013,  16,         32) /* ItemUseable - Remote */
     , (1000013,  19,          0) /* Value */
     , (1000013,  38,         50) /* ResistLockpick */
     , (1000013,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000013,   1, True ) /* Stuck */
     , (1000013,   2, False) /* Open */
     , (1000013,   3, True ) /* Locked */
     , (1000013,  11, False) /* IgnoreCollisions */
     , (1000013,  12, True ) /* ReportCollisions */
     , (1000013,  13, False) /* Ethereal */
     , (1000013,  14, False) /* GravityStatus */
     , (1000013,  19, True ) /* Attackable */
     , (1000013,  24, True ) /* UiHidden */
     , (1000013,  33, False) /* ResetMessagePending */
     , (1000013,  34, False) /* DefaultOpen */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000013,  11,     300) /* ResetInterval */
     , (1000013,  39,       0.7) /* DefaultScale */
     , (1000013,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000013,   1, 'Building10') /* Name */
     , (1000013,  14, 'Use this item to open it.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000013,   1,   33555876) /* Setup */
     , (1000013,   2,  150995355) /* MotionTable */
     , (1000013,   3,  536871001) /* SoundTable */
     , (1000013,   8,  100676956) /* Icon */
     , (1000013,  22,  872415328) /* PhysicsEffectTable */;
