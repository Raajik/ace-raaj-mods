DELETE FROM `weenie` WHERE `class_Id` = 1000041;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000041, 'ArramoraTumerokSiegeRam', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000041,   1,        128) /* ItemType - Misc */
     , (1000041,   8,        500) /* Mass */
     , (1000041,  16,         32) /* ItemUseable - Remote */
     , (1000041,  19,          0) /* Value */
     , (1000041,  38,         50) /* ResistLockpick */
     , (1000041,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000041,   1, True ) /* Stuck */
     , (1000041,  11, False) /* IgnoreCollisions */
     , (1000041,  12, True ) /* ReportCollisions */
     , (1000041,  13, False) /* Ethereal */
     , (1000041,  14, False) /* GravityStatus */
     , (1000041,  19, True ) /* Attackable */
     , (1000041,  24, True ) /* UiHidden */
     , (1000041,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000041,  11,     300) /* ResetInterval */
     , (1000041,  39,       3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000041,   1, 'Tumerok Siege Ram') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000041,   1,   33558694) /* Setup */
     , (1000041,   2,  150995418) /* MotionTable */
     , (1000041,   3,  536871119) /* SoundTable */
     , (1000041,   8,  100689885) /* Icon */
     , (1000041,  22,  872415325) /* PhysicsEffectTable */;
