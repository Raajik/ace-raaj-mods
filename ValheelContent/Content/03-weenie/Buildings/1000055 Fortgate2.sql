DELETE FROM `weenie` WHERE `class_Id` = 1000055;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000055, 'fortgate2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000055,   1,        128) /* ItemType - Misc */
     , (1000055,   8,        500) /* Mass */
     , (1000055,  16,         32) /* ItemUseable - Remote */
     , (1000055,  19,          0) /* Value */
     , (1000055,  38,         50) /* ResistLockpick */
     , (1000055,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000055,   1, True ) /* Stuck */
     , (1000055,  11, False) /* IgnoreCollisions */
     , (1000055,  12, True ) /* ReportCollisions */
     , (1000055,  13, False) /* Ethereal */
     , (1000055,  14, False) /* GravityStatus */
     , (1000055,  19, True ) /* Attackable */
     , (1000055,  24, True ) /* UiHidden */
     , (1000055,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000055,  11,     300) /* ResetInterval */
     , (1000055,  39,       4) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000055,   1, 'fortgate2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000055,   1,  0x02000281) /* Setup */
     , (1000055,   2,  0x09000016) /* MotionTable */
     , (1000055,   3,  536871119) /* SoundTable */
     , (1000055,   8,  100689885) /* Icon */
     , (1000055,  22,  0x3400002B) /* PhysicsEffectTable */;
