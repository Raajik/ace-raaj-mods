DELETE FROM `weenie` WHERE `class_Id` = 1000056;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000056, 'IceThrone', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000056,   1,        128) /* ItemType - Misc */
     , (1000056,   8,        500) /* Mass */
     , (1000056,  16,         32) /* ItemUseable - Remote */
     , (1000056,  19,          0) /* Value */
     , (1000056,  38,         50) /* ResistLockpick */
     , (1000056,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000056,   1, True ) /* Stuck */
     , (1000056,  11, False) /* IgnoreCollisions */
     , (1000056,  12, True ) /* ReportCollisions */
     , (1000056,  13, False) /* Ethereal */
     , (1000056,  14, False) /* GravityStatus */
     , (1000056,  19, True ) /* Attackable */
     , (1000056,  24, True ) /* UiHidden */
     , (1000056,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000056,  11,     300) /* ResetInterval */
     , (1000056,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000056,   1, 'IceThrone') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000056,   1,  33561552) /* Setup */
     , (1000056,   2,  0x09000016) /* MotionTable */
     , (1000056,   3,  536871119) /* SoundTable */
     , (1000056,   8,  100689885) /* Icon */
     , (1000056,  22,  0x3400002B) /* PhysicsEffectTable */;
