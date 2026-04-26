DELETE FROM `weenie` WHERE `class_Id` = 1000038;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000038, 'TummieFlatTop', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000038,   1,        128) /* ItemType - Misc */
     , (1000038,   8,        500) /* Mass */
     , (1000038,  16,         32) /* ItemUseable - Remote */
     , (1000038,  19,          0) /* Value */
     , (1000038,  38,         50) /* ResistLockpick */
     , (1000038,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000038,   1, True ) /* Stuck */
     , (1000038,  11, False) /* IgnoreCollisions */
     , (1000038,  12, True ) /* ReportCollisions */
     , (1000038,  13, False) /* Ethereal */
     , (1000038,  14, False) /* GravityStatus */
     , (1000038,  19, True ) /* Attackable */
     , (1000038,  24, True ) /* UiHidden */
     , (1000038,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000038,  11,     300) /* ResetInterval */
     , (1000038,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000038,   1, 'Tumerok Flat Top') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000038,   1,   33557352) /* Setup */
     , (1000038,   2,  150995418) /* MotionTable */
     , (1000038,   3,  536871119) /* SoundTable */
     , (1000038,   8,  100689885) /* Icon */
     , (1000038,  22,  872415325) /* PhysicsEffectTable */;
