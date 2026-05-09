DELETE FROM `weenie` WHERE `class_Id` = 1000112;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000112, 'Stone Wall with Statue', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000112,   1,        128) /* ItemType - Misc */
     , (1000112,   8,        500) /* Mass */
     , (1000112,  16,         32) /* ItemUseable - Remote */
     , (1000112,  19,          0) /* Value */
     , (1000112,  38,         50) /* ResistLockpick */
     , (1000112,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000112,   1, True ) /* Stuck */
     , (1000112,  11, False) /* IgnoreCollisions */
     , (1000112,  12, True ) /* ReportCollisions */
     , (1000112,  13, False) /* Ethereal */
     , (1000112,  14, False) /* GravityStatus */
     , (1000112,  19, True ) /* Attackable */
     , (1000112,  24, True ) /* UiHidden */
     , (1000112,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000112,  11,     300) /* ResetInterval */
     , (1000112,  39,     6.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000112,   1, 'Stone Wall with Statue') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000112,   1,   33558955) /* Setup */
     , (1000112,   2,  150995355) /* MotionTable */
     , (1000112,   3,  536871001) /* SoundTable */
     , (1000112,   8,  100676956) /* Icon */
     , (1000112,  22,  872415328) /* PhysicsEffectTable */;
