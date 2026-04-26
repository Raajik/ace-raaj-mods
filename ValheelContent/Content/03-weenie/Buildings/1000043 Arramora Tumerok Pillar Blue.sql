DELETE FROM `weenie` WHERE `class_Id` = 1000043;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000043, 'ArramoraTumerokPillarBlue', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000043,   1,        128) /* ItemType - Misc */
     , (1000043,   8,        500) /* Mass */
     , (1000043,  16,         32) /* ItemUseable - Remote */
     , (1000043,  19,          0) /* Value */
     , (1000043,  38,         50) /* ResistLockpick */
     , (1000043,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000043,   1, True ) /* Stuck */
     , (1000043,  11, False) /* IgnoreCollisions */
     , (1000043,  12, True ) /* ReportCollisions */
     , (1000043,  13, False) /* Ethereal */
     , (1000043,  14, False) /* GravityStatus */
     , (1000043,  19, True ) /* Attackable */
     , (1000043,  24, True ) /* UiHidden */
     , (1000043,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000043,  11,     300) /* ResetInterval */
     , (1000043,  39,       3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000043,   1, 'Tumerok Pillar Blue') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000043,   1,   33557180) /* Setup */
     , (1000043,   2,  150995418) /* MotionTable */
     , (1000043,   3,  536871119) /* SoundTable */
     , (1000043,   8,  100689885) /* Icon */
     , (1000043,  22,  872415325) /* PhysicsEffectTable */;
