DELETE FROM `weenie` WHERE `class_Id` = 1000042;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000042, 'ArramoraTumerokAltar', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000042,   1,        128) /* ItemType - Misc */
     , (1000042,   8,        500) /* Mass */
     , (1000042,  16,         32) /* ItemUseable - Remote */
     , (1000042,  19,          0) /* Value */
     , (1000042,  38,         50) /* ResistLockpick */
     , (1000042,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000042,   1, True ) /* Stuck */
     , (1000042,  11, False) /* IgnoreCollisions */
     , (1000042,  12, True ) /* ReportCollisions */
     , (1000042,  13, False) /* Ethereal */
     , (1000042,  14, False) /* GravityStatus */
     , (1000042,  19, True ) /* Attackable */
     , (1000042,  24, True ) /* UiHidden */
     , (1000042,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000042,  11,     300) /* ResetInterval */
     , (1000042,  39,       1.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000042,   1, 'Tumerok Altar') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000042,   1,   33559352) /* Setup */
     , (1000042,   2,  150995418) /* MotionTable */
     , (1000042,   3,  536871119) /* SoundTable */
     , (1000042,   8,  100689885) /* Icon */
     , (1000042,  22,  872415325) /* PhysicsEffectTable */;
