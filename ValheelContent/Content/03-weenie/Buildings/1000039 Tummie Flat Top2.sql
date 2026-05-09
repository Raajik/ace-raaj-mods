DELETE FROM `weenie` WHERE `class_Id` = 1000039;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000039, 'TummieFlatTop2', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000039,   1,        128) /* ItemType - Misc */
     , (1000039,   8,        500) /* Mass */
     , (1000039,  16,         32) /* ItemUseable - Remote */
     , (1000039,  19,          0) /* Value */
     , (1000039,  38,         50) /* ResistLockpick */
     , (1000039,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000039,   1, True ) /* Stuck */
     , (1000039,  11, False) /* IgnoreCollisions */
     , (1000039,  12, True ) /* ReportCollisions */
     , (1000039,  13, False) /* Ethereal */
     , (1000039,  14, False) /* GravityStatus */
     , (1000039,  19, True ) /* Attackable */
     , (1000039,  24, True ) /* UiHidden */
     , (1000039,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000039,  11,     300) /* ResetInterval */
     , (1000039,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000039,   1, 'Tumerok Flat Top') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000039,   1,   33558652) /* Setup */
     , (1000039,   2,  150995418) /* MotionTable */
     , (1000039,   3,  536871119) /* SoundTable */
     , (1000039,   8,  100689885) /* Icon */
     , (1000039,  22,  872415325) /* PhysicsEffectTable */;
