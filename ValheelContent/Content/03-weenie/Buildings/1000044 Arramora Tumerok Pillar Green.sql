DELETE FROM `weenie` WHERE `class_Id` = 1000044;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000044, 'ArramoraTumerokPillarGreen', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000044,   1,        128) /* ItemType - Misc */
     , (1000044,   8,        500) /* Mass */
     , (1000044,  16,         32) /* ItemUseable - Remote */
     , (1000044,  19,          0) /* Value */
     , (1000044,  38,         50) /* ResistLockpick */
     , (1000044,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000044,   1, True ) /* Stuck */
     , (1000044,  11, False) /* IgnoreCollisions */
     , (1000044,  12, True ) /* ReportCollisions */
     , (1000044,  13, False) /* Ethereal */
     , (1000044,  14, False) /* GravityStatus */
     , (1000044,  19, True ) /* Attackable */
     , (1000044,  24, True ) /* UiHidden */
     , (1000044,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000044,  11,     300) /* ResetInterval */
     , (1000044,  39,       3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000044,   1, 'Tumerok Pillar Green') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000044,   1,   33557181) /* Setup */
     , (1000044,   2,  150995418) /* MotionTable */
     , (1000044,   3,  536871119) /* SoundTable */
     , (1000044,   8,  100689885) /* Icon */
     , (1000044,  22,  872415325) /* PhysicsEffectTable */;
