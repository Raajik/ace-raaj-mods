DELETE FROM `weenie` WHERE `class_Id` = 1000032;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000032, 'ArramoraWelcomeSign', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000032,   1,        128) /* ItemType - Misc */
     , (1000032,   8,        500) /* Mass */
     , (1000032,  16,         32) /* ItemUseable - Remote */
     , (1000032,  19,          0) /* Value */
     , (1000032,  38,         50) /* ResistLockpick */
     , (1000032,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000032,   1, True ) /* Stuck */
     , (1000032,  11, False) /* IgnoreCollisions */
     , (1000032,  12, True ) /* ReportCollisions */
     , (1000032,  13, False) /* Ethereal */
     , (1000032,  14, False) /* GravityStatus */
     , (1000032,  19, True ) /* Attackable */
     , (1000032,  24, True ) /* UiHidden */
     , (1000032,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000032,  11,     300) /* ResetInterval */
     , (1000032,  39,       3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000032,   1, 'Arramora') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000032,   1,   33558115) /* Setup */
     , (1000032,   2,  150995418) /* MotionTable */
     , (1000032,   3,  536871119) /* SoundTable */
     , (1000032,   8,  100689885) /* Icon */
     , (1000032,  22,  872415325) /* PhysicsEffectTable */;
