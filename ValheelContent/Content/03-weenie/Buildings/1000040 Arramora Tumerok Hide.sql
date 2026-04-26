DELETE FROM `weenie` WHERE `class_Id` = 1000040;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000040, 'ArramoraTumerokHide', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000040,   1,        128) /* ItemType - Misc */
     , (1000040,   8,        500) /* Mass */
     , (1000040,  16,         32) /* ItemUseable - Remote */
     , (1000040,  19,          0) /* Value */
     , (1000040,  38,         50) /* ResistLockpick */
     , (1000040,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000040,   1, True ) /* Stuck */
     , (1000040,  11, False) /* IgnoreCollisions */
     , (1000040,  12, True ) /* ReportCollisions */
     , (1000040,  13, False) /* Ethereal */
     , (1000040,  14, False) /* GravityStatus */
     , (1000040,  19, True ) /* Attackable */
     , (1000040,  24, True ) /* UiHidden */
     , (1000040,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000040,  11,     300) /* ResetInterval */
     , (1000040,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000040,   1, 'Tumerok Hide') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000040,   1,   33558139) /* Setup */
     , (1000040,   2,  150995418) /* MotionTable */
     , (1000040,   3,  536871119) /* SoundTable */
     , (1000040,   8,  100689885) /* Icon */
     , (1000040,  22,  872415325) /* PhysicsEffectTable */;
