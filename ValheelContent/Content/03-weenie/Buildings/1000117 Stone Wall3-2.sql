DELETE FROM `weenie` WHERE `class_Id` = 1000117;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000117, 'Stone Wall3.2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000117,   1,        128) /* ItemType - Misc */
     , (1000117,   8,        500) /* Mass */
     , (1000117,  16,         32) /* ItemUseable - Remote */
     , (1000117,  19,          0) /* Value */
     , (1000117,  38,         50) /* ResistLockpick */
     , (1000117,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000117,   1, True ) /* Stuck */
     , (1000117,  11, False) /* IgnoreCollisions */
     , (1000117,  12, True ) /* ReportCollisions */
     , (1000117,  13, False) /* Ethereal */
     , (1000117,  14, False) /* GravityStatus */
     , (1000117,  19, True ) /* Attackable */
     , (1000117,  24, True ) /* UiHidden */
     , (1000117,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000117,  11,     300) /* ResetInterval */
     , (1000117,  39,     3.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000117,   1, 'Stone Wall3.2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000117,   1,   33560391) /* Setup */
     , (1000117,   2,  150995355) /* MotionTable */
     , (1000117,   3,  536871001) /* SoundTable */
     , (1000117,   8,  100676956) /* Icon */
     , (1000117,  22,  872415328) /* PhysicsEffectTable */;
