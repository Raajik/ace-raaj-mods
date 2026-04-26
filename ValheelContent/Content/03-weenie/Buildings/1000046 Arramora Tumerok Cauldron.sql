DELETE FROM `weenie` WHERE `class_Id` = 1000046;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000046, 'ArramoraTumerokCauldron', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000046,   1,        128) /* ItemType - Misc */
     , (1000046,   8,        500) /* Mass */
     , (1000046,  16,         32) /* ItemUseable - Remote */
     , (1000046,  19,          0) /* Value */
     , (1000046,  38,         50) /* ResistLockpick */
     , (1000046,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000046,   1, True ) /* Stuck */
     , (1000046,  11, False) /* IgnoreCollisions */
     , (1000046,  12, True ) /* ReportCollisions */
     , (1000046,  13, False) /* Ethereal */
     , (1000046,  14, False) /* GravityStatus */
     , (1000046,  19, True ) /* Attackable */
     , (1000046,  24, True ) /* UiHidden */
     , (1000046,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000046,  11,     300) /* ResetInterval */
     , (1000046,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000046,   1, 'Tumerok Cauldron') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000046,   1,   33557214) /* Setup */
     , (1000046,   2,  150995418) /* MotionTable */
     , (1000046,   3,  536871119) /* SoundTable */
     , (1000046,   8,  100689885) /* Icon */
     , (1000046,  22,  872415325) /* PhysicsEffectTable */;
