DELETE FROM `weenie` WHERE `class_Id` = 1000034;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000034, 'ArramoraTurret', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000034,   1,        128) /* ItemType - Misc */
     , (1000034,   8,        500) /* Mass */
     , (1000034,  16,         32) /* ItemUseable - Remote */
     , (1000034,  19,          0) /* Value */
     , (1000034,  38,         50) /* ResistLockpick */
     , (1000034,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000034,   1, True ) /* Stuck */
     , (1000034,  11, False) /* IgnoreCollisions */
     , (1000034,  12, True ) /* ReportCollisions */
     , (1000034,  13, False) /* Ethereal */
     , (1000034,  14, False) /* GravityStatus */
     , (1000034,  19, True ) /* Attackable */
     , (1000034,  24, True ) /* UiHidden */
     , (1000034,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000034,  11,     300) /* ResetInterval */
     , (1000034,  39,       0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000034,   1, 'Guard Turret') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000034,   1,   33558646) /* Setup */
     , (1000034,   2,  150995418) /* MotionTable */
     , (1000034,   3,  536871119) /* SoundTable */
     , (1000034,   8,  100689885) /* Icon */
     , (1000034,  22,  872415325) /* PhysicsEffectTable */;
