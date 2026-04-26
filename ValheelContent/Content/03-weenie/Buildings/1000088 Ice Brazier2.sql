DELETE FROM `weenie` WHERE `class_Id` = 1000088;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000088, 'IceBrazier2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000088,   1,        128) /* ItemType - Misc */
     , (1000088,   8,        500) /* Mass */
     , (1000088,  16,         32) /* ItemUseable - Remote */
     , (1000088,  19,          0) /* Value */
     , (1000088,  38,         50) /* ResistLockpick */
     , (1000088,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000088,   1, True ) /* Stuck */
     , (1000088,  11, False) /* IgnoreCollisions */
     , (1000088,  12, True ) /* ReportCollisions */
     , (1000088,  13, False) /* Ethereal */
     , (1000088,  14, False) /* GravityStatus */
     , (1000088,  19, True ) /* Attackable */
     , (1000088,  24, True ) /* UiHidden */
     , (1000088,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000088,  11,     300) /* ResetInterval */
     , (1000088,  39,       0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000088,   1, 'Ice Brazier') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000088,   1,  33561552) /* Setup */
     , (1000088,   2,  0x09000016) /* MotionTable */
     , (1000088,   3,  536871119) /* SoundTable */
     , (1000088,   8,  100689885) /* Icon */
     , (1000088,  22,  0x3400002B) /* PhysicsEffectTable */;
