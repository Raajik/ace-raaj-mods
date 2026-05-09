DELETE FROM `weenie` WHERE `class_Id` = 1000115;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000115, 'Stone Wall5', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000115,   1,        128) /* ItemType - Misc */
     , (1000115,   8,        500) /* Mass */
     , (1000115,  16,         32) /* ItemUseable - Remote */
     , (1000115,  19,          0) /* Value */
     , (1000115,  38,         50) /* ResistLockpick */
     , (1000115,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000115,   1, True ) /* Stuck */
     , (1000115,  11, False) /* IgnoreCollisions */
     , (1000115,  12, True ) /* ReportCollisions */
     , (1000115,  13, False) /* Ethereal */
     , (1000115,  14, False) /* GravityStatus */
     , (1000115,  19, True ) /* Attackable */
     , (1000115,  24, True ) /* UiHidden */
     , (1000115,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000115,  11,     300) /* ResetInterval */
     , (1000115,  39,     6.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000115,   1, 'Stone Wall5') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000115,   1,   33561240) /* Setup */
     , (1000110,   2,  150995355) /* MotionTable */
     , (1000110,   3,  536871001) /* SoundTable */
     , (1000110,   8,  100676956) /* Icon */
     , (1000110,  22,  872415328) /* PhysicsEffectTable */;
