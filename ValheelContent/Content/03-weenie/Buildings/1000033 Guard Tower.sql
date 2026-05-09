DELETE FROM `weenie` WHERE `class_Id` = 1000033;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000033, 'ArramoraGuardTower', 19, '2020-01-08 07:59:44') /* Door */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000033,   1,        128) /* ItemType - Misc */
     , (1000033,   8,        500) /* Mass */
     , (1000033,  16,         32) /* ItemUseable - Remote */
     , (1000033,  19,          0) /* Value */
     , (1000033,  38,         50) /* ResistLockpick */
     , (1000033,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000033,   1, True ) /* Stuck */
     , (1000033,  11, False) /* IgnoreCollisions */
     , (1000033,  12, True ) /* ReportCollisions */
     , (1000033,  13, False) /* Ethereal */
     , (1000033,  14, False) /* GravityStatus */
     , (1000033,  19, True ) /* Attackable */
     , (1000033,  24, True ) /* UiHidden */
     , (1000033,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000033,  11,     300) /* ResetInterval */
     , (1000033,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000033,   1, 'Guard Tower') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000033,   1,   33558389) /* Setup */
     , (1000033,   2,  150995418) /* MotionTable */
     , (1000033,   3,  536871119) /* SoundTable */
     , (1000033,   8,  100689885) /* Icon */
     , (1000033,  22,  872415325) /* PhysicsEffectTable */;
