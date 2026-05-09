DELETE FROM `weenie` WHERE `class_Id` = 1000113;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000113, 'Stone Wall3', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000113,   1,        128) /* ItemType - Misc */
     , (1000113,   8,        500) /* Mass */
     , (1000113,  16,         32) /* ItemUseable - Remote */
     , (1000113,  19,          0) /* Value */
     , (1000113,  38,         50) /* ResistLockpick */
     , (1000113,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000113,   1, True ) /* Stuck */
     , (1000113,  11, False) /* IgnoreCollisions */
     , (1000113,  12, True ) /* ReportCollisions */
     , (1000113,  13, False) /* Ethereal */
     , (1000113,  14, False) /* GravityStatus */
     , (1000113,  19, True ) /* Attackable */
     , (1000113,  24, True ) /* UiHidden */
     , (1000113,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000113,  11,     300) /* ResetInterval */
     , (1000113,  39,     6.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000113,   1, 'Stone Wall3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000113,   1,   33560391) /* Setup */
     , (1000113,   2,  150995355) /* MotionTable */
     , (1000113,   3,  536871001) /* SoundTable */
     , (1000113,   8,  100676956) /* Icon */
     , (1000113,  22,  872415328) /* PhysicsEffectTable */;
